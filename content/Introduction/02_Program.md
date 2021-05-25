---
title: "2. Program"
---

Classes are from: 

- 2 to 8 pm Paris time.
- 1 to 7 pm London time.
- 8 am to 2 pm NY time.
- 5 am to 11 am SF time.

## Monday – Classes from 14:00 to 20:00 (Paris time)

1. 30-sec presentation

2. Shared Google doc: 
  - We're a team! Present yourself! 
  - Course notes
  - Ideas/questions/challenges/feedbacks...

3. Overview of the course

### Lecture 1 – scRNA-Seq experimental design [Orr] 

  - General introduction: cell atlas overviews
  - Comparison of bulk and single cell RNA-Seq
  - Overview of available scRNA-seq technologies (10x) and experimental protocols

### Lab 1 – Familiarizing yourself with the course AWS instance [Jacques] 

  - Logging in AWS
  - Shell and Unix commands to navigate directories, create folders, open files
  - Raw file formats
  - Using RStudio
  - Get data from 10x website, single cell portal, from GEO (fastqs, counts)

### Lecture 2 - Intro to Data processing: from bcl file to count matrix [Jacques] 

  - scRNA-Seq processing workflow starting with choice of sequencer (NextSeq, HiSeq, MiSeq) / barcode swapping and bcl files
  - Overview of Popular tools and algorithms
  - Common single-cell analyses and interpretation
  - Sequencing data: alignment and quality control
  - IGV: Looking at cool things in alignment like where reads are, mutations, splicing

### Lab 2 – Processing raw scRNA-Seq data [Orr] 

  - Data outputs from different scRNAseq technologies (10x, Smart-seq2) 
  - Demultiplexing sequencing data
  - Quality Control reports (CellRanger, dropEst, fastqc)
  - Mapping sequencing data with Cellranger

## Tuesday – Classes from 14:00 to 20:00 (Paris time)

### Flash talks [Everybody] 

### Lab 3 - Introduction to R/Bioconductor [Jacques] 
  - Installing packages with CRAN and Bioconductor
  - Data types, data manipulation, slicing
  - I/O

### Lecture 3 - Expression QC, normalisation and gene-level batch correction [Orr] 
  - What CellRanger does for quality filtering
  - PBMC data
  - Normalisation methods https://www.nature.com/articles/nmeth.4292
  - Doublets, empty droplets, DropletUtils
  - Barcode swapping
  - Regression with technical covariates
  - What about imputation?

### Lab 4 – Data wrangling for scRNAseq data [Orr]  
  - Introducing SingleCellExperiment object
  - Quality control of cells and genes (doublets, ambient, empty drops)
  - Data exploration: violin plots…
  - Genes
  - Mitochondrial & ribosomal genes
  - Filter
  - Normalize
  - Find variable genes

## Wednesday – Classes from 14:00 to 20:00 (Paris time)

### Lecture 4 - Identifying cell populations [Jacques] 
  - Feature selection
  - Dimensionality reduction
  - Graph-based clustering 
  - Assigning cluster identity
  - Differential expression tests

### Lab 5 – Feature selection & Clustering analyses [Jacques] 
  - Parameters and clustering
  - Comparison of feature selection methods
  - Annotating clusters

### Lecture 5 - Batch effects correction [Orr] 
  - Batch correction methods (regress out batch, scaling within batch, Seurat v3, MNN, Liger, Harmony, scvi, scgen)
  - Evaluation methods for batch correction (ARI, average silhouette width, kBET…)

### Lab 6 - Correcting batch effects [Orr] 
  - Comparison of batch correction methods
  - Choosing the optimal batch correction approach

## Thursday – Classes from 14:00 to 20:00 (Paris time)

### Lecture 6 - Trajectories and pseudotimes [Jacques] 
  - Trajectory inference
  - Popular tools and packages for trajectory analysis (https://github.com/dynverse/dynmethods#list-of-included-methods)
  - Pseudotime inference
  - RNA velocity 
  - Differential expression through pseudotime

### Lab 7 - Pseudotime analyses [Jacques] 
  - Review concepts from papers
  - Comparison of pseudotime methods

### Lecture 7 - Single-cell multi-omic technologies [Orr] 
  - Introduction to other omic data types
  - Integrating scRNA-seq with other single-cell modalities (CITE, Perturb, ATAC, methylation…)

### Lab 8 - multi-Omics: analysis of spatial single-cell transcriptomics [Orr] 
  - GO over-representation analyses
  - GSEA analyses
  - Finding regulatory elements with scATAC-seq and CICERO: https://www.bioconductor.org/packages/devel/bioc/vignettes/cicero/inst/doc/website.html

## Friday – Classes from 14:00 to 20:00 (Paris time)

Friday will be divided in three parts: 

- Morning (1h): "Journal club": discussion of a method paper
- Morning (1h + 1h30): Group projects: analysing scRNA-seq data by yourself, from A to Z
- Afternoon (1h): Group presentations (10' each group, max 5 slides: what/why/where/when/how, conclusions)

Happy hour time!!

