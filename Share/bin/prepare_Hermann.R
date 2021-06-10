# Hermann et al., Cell Rep. 2018 (DOI: 10.1016/j.celrep.2018.10.026)

require(SingleCellExperiment)
require(tidyverse)

### Import cells

sce <- scRNAseq::HermannSpermatogenesisData(strip = TRUE, location = TRUE)

### Clarify the names of the cell types

sce$celltype[grepl('spermatogonia', sce$celltype)] <- 'Spermatogonia'
sce$celltype[sce$celltype == 'DIplotene/Secondary spermatocytes'] <- 'Secondary spermatocytes'
sce$celltype[grepl('tene', sce$celltype)] <- 'Primary spermatocytes'
sce$label <- factor(
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

### Add human-readable gene names

ah <- AnnotationHub::AnnotationHub()
AnnotationHub::query(ah, 'Ensembl 102 EnsDb for Mus musculus')
ens.mm.102 <- AnnotationHub::query(ah, 'Ensembl 102 EnsDb for Mus musculus')[[1]]
rowData(sce)$ID <- rownames(sce)
rowData(sce)$Symbol <- AnnotationDbi::mapIds(ens.mm.102, keys = rowData(sce)$ID, keytype = "GENEID", column = "GENENAME")
rownames(sce) <- scuttle::uniquifyFeatureNames(rowData(sce)$ID, rowData(sce)$Symbol)

### Filter to remove unwanted genes (non-protein-coding)

rowData(sce)$gene_biotype <- AnnotationDbi::mapIds(ens.mm.102, keys = rowData(sce)$ID, keytype = "GENEID", column = "GENEBIOTYPE")
sce <- sce[which(rowData(sce)$gene_biotype == 'protein_coding'), ]

### Filter to remove unwanted cells (Sertoli or NA)

sce <- sce[, !is.na(sce$label) & sce$label != 'Sertoli cells']

### Normalize counts 

sce <- scuttle::logNormCounts(sce, assay.type = 'spliced')

### Feature selection

sce_poissonvariance <- scran::modelGeneVar(sce, assay.type = 'spliced')
HVGs <- scran::getTopHVGs(sce_poissonvariance, p = 0.1)
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

message("The `sce` object was successfuly created!")