# Nestorowa et al., Blood 2016 (DOI: 10.1182/blood-2016-05-716480)

sce <- scRNAseq::NestorowaHSCData()
sce <- sce[rowSums(counts(sce) > 0)> 200,]
sce$label <- stringr::str_replace(colnames(sce), '_.*', '')
altExps(sce) <- NULL
sce <- scuttle::logNormCounts(sce)
var <- scran::modelGeneVarByPoisson(sce)
sce <- sce[row.names(var[order(var$bio, decreasing = TRUE),])[1:500],]

