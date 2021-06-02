# Hermann et al., Cell Rep. 2018 (DOI: 10.1016/j.celrep.2018.10.026)

require(SingleCellExperiment)
require(tidyverse)
require(patchwork)

### Import cells

sce <- scRNAseq::HermannSpermatogenesisData(strip = TRUE, location = TRUE)
sce$celltype[grepl('spermatogonia', sce$celltype)] <- 'Spermatogonia'
sce$celltype[sce$celltype == 'DIplotene/Secondary spermatocytes'] <- 'Secondary spermatocytes'
sce$celltype[grepl('tene', sce$celltype)] <- 'Primary spermatocytes'
sce$AnnotatedClusters <- factor(
    sce$celltype, 
    levels = c(
        'Spermatogonia',
        'Primary spermatocytes', 
        'Secondary spermatocytes', 
        'Early Round spermatids', 
        'Mid Round spermatids', 
        'Late Round spermatids', 
        'Sertoli cells'
    )
)

### Filter to remove unwanted cells

sce <- sce[, !is.na(sce$AnnotatedClusters) & sce$AnnotatedClusters != 'Sertoli cells']

### Filter to remove unnecessary genes

ah <- AnnotationHub::AnnotationHub()
AnnotationHub::query(ah, 'Ensembl 102 EnsDb for Mus musculus')
ens.mm.102 <- AnnotationHub::query(ah, 'Ensembl 102 EnsDb for Mus musculus')[[1]]
rowData(sce)$ID <- rownames(sce)
rowData(sce)$Symbol <- AnnotationDbi::mapIds(ens.mm.102, keys = rowData(sce)$ID, keytype = "GENEID", column = "GENENAME")
rowData(sce)$uID <- scuttle::uniquifyFeatureNames(rowData(sce)$ID, rowData(sce)$Symbol)
rownames(sce) <- rowData(sce)$uID
rowData(sce)$chr <- AnnotationDbi::mapIds(ens.mm.102, keys = rowData(sce)$ID, keytype = "GENEID", column = "SEQNAME")
rowData(sce)$gene_biotype <- AnnotationDbi::mapIds(ens.mm.102, keys = rowData(sce)$ID, keytype = "GENEID", column = "GENEBIOTYPE")
rowData(sce)$isMito <- 1:nrow(sce) %in% which( rowData(sce)$chr == "MT" )
colData(sce)$pctMito <- colSums(assay(sce, 'spliced')[rowData(sce)$isMito, ]) / colSums(assay(sce, 'spliced'))
rowData(sce)$isRibo <- grepl('^Rpl|^Rps', rowData(sce)$Symbol)
colData(sce)$pctRibo <- colSums(assay(sce, 'spliced')[rowData(sce)$isRibo, ]) / colSums(assay(sce, 'spliced'))
sce <- sce[which(rowData(sce)$gene_biotype == 'protein_coding' & ! rowData(sce)$isMito & ! rowData(sce)$isRibo), ]

### Normalize counts 

sce <- scuttle::logNormCounts(sce, assay.type = 'spliced')

### Feature selection

sce_poissonvariance <- scran::modelGeneVarByPoisson(sce, assay.type = 'spliced')
HVGs <- sce_poissonvariance %>% 
    as_tibble(rownames = "gene") %>% 
    dplyr::filter(bio > 0) %>% 
    slice_max(bio, n = 500) %>% 
    pull(gene)
rowData(sce)$isHVG <- rownames(sce) %in% HVGs

### Dimension reduction on filtered dataset

set.seed(200)
sce <- scran::denoisePCA(
    sce, 
    technical = sce_poissonvariance, 
    subset.row = HVGs, 
    min.rank = 15
)
sce <- scater::runDiffusionMap(sce, subset_row = HVGs)

