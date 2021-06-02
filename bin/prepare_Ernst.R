# Ernst, Eling et al., Nature Communications 2019 (DOI: 10.1038/s41467-019-09182-1)

require(SingleCellExperiment)
require(tidyverse)
require(patchwork)

### ----- Import cells

sce <- scRNAseq::ErnstSpermatogenesisData(method = 'Cellranger')

### ----- Filter to only retain germinal cells corresponding to adult sample (B6)

sce <- sce[, sce$BroadClusters == 'Germ' & sce$Sample == 'B6']
sce$AnnotatedClusters <- factor(
    sce$AnnotatedClusters, 
    levels = c(
        'Spermatogonia', 
        'eP1', 'eP2', 'mP', 'lP1', 'lP2', 'D', 'MI', 'MII',
        'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10', 'S11'
    )
)

### ----- Filter to remove unnecessary genes

ah <- AnnotationHub::AnnotationHub()
AnnotationHub::query(ah, 'Ensembl 102 EnsDb for Mus musculus')
ens.mm.102 <- AnnotationHub::query(ah, 'Ensembl 102 EnsDb for Mus musculus')[[1]]
rowData(sce)$uID <- scuttle::uniquifyFeatureNames(rowData(sce)$ID, rowData(sce)$Symbol)
rownames(sce) <- rowData(sce)$uID
rowData(sce)$chr <- AnnotationDbi::mapIds(ens.mm.102, keys = rowData(sce)$ID, keytype = "GENEID", column = "SEQNAME")
rowData(sce)$gene_biotype <- AnnotationDbi::mapIds(ens.mm.102, keys = rowData(sce)$ID, keytype = "GENEID", column = "GENEBIOTYPE")
rowData(sce)$isMito <- 1:nrow(sce) %in% which( rowData(sce)$chr == "MT" )
colData(sce)$pctMito <- colSums(counts(sce)[rowData(sce)$isMito, ]) / colSums(counts(sce))
rowData(sce)$isRibo <- grepl('^Rpl|^Rps', rowData(sce)$Symbol)
colData(sce)$pctRibo <- colSums(counts(sce)[rowData(sce)$isRibo, ]) / colSums(counts(sce))
sce <- sce[which(rowData(sce)$gene_biotype == 'protein_coding' & ! rowData(sce)$isMito & ! rowData(sce)$isRibo), ]
sce
dim(sce)

### ----- Normalize counts 

sce <- scuttle::logNormCounts(sce)

### ----- Feature selection

sce_poissonvariance <- scran::modelGeneVarByPoisson(sce)
HVGs <- sce_poissonvariance %>% 
    as_tibble(rownames = "gene") %>% 
    dplyr::filter(bio > 0) %>% 
    slice_max(bio, n = 500) %>% 
    pull(gene)
rowData(sce)$isHVG <- rownames(sce) %in% HVGs

### ----- Dimension reduction on filtered dataset

set.seed(200)
sce <- scran::denoisePCA(
    sce, 
    technical = sce_poissonvariance, 
    subset.row = HVGs, 
    min.rank = 15
)
sce <- scater::runTSNE(sce, subset_row = HVGs)

### ----- Clustering

#... 

### ----- Data visualization

#... 

### ----- Trajectory inference 

#...

