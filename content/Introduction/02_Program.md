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

### Lecture 1 – scRNA-Seq experimental design 

  - General introduction: cell atlas overviews
  - Comparison of Bulk and single cell RNA-Seq
  - Overview of available scRNA-seq technologies (10x) and experimental protocols

### Lecture 2 - Intro to Data processing: from bcl file to count matrix

  - scRNA-Seq processing workflow starting with choice of sequencer (NextSeq, HiSeq, MiSeq) / barcode swapping and bcl files
  - Overview of Popular tools and algorithms
  - Common single-cell analyses and interpretation
  - Sequencing data: alignment and quality control
  - Looking at cool things in alignment like where reads are, mutations, splicing
  - Read & UMI counting (Kallisto alignment-free pseudocounts as well), how RSEM works (length dependence, sequencing depth, multimapping reads), CellRanger (dropest), bustools

### Lab 1 – Familiarizing yourself with the course AWS instance

  - Logging in AWS
  - Shell and Unix commands to navigate directories, create folders, open files
  - Raw file formats
  - Using RStudio
  - Get data from 10x website, single cell portal, from GEO (fastqs, counts)

### Lab 2 – Processing raw scRNA-Seq data

  - Data outputs from different scRNAseq technologies (10x, Smart-seq2) 
  - Quality Control reports (CellRanger, dropEst, fastqc)
  - Mapping sequencing data with Cellranger

## Tuesday – Classes from 14:00 to 20:00 (Paris time)

### Lecture 3 - Expression QC, normalisation and gene-level batch correction 
  - What CellRanger does for quality filtering
  - PBMC data
  - Normalisation methods https://www.nature.com/articles/nmeth.4292
  - Doublets, empty droplets, DropletUtils
  - Barcode swapping
  - Regression with technical covariates
  - What about imputation?

### Lab 3 - Introduction to R/Bioconductor
  - Installing packages with CRAN and Bioconductor
  - Data types
  - Data manipulation, slicing
  - I/O

### Lab 4 – Data wrangling for scRNAseq data 
  - Introducing SingleCellExperiment object
  - Quality control of cells and genes (doublets, ambient, empty drops)
  - Data exploration: violin plots…
  - Genes
  - Mitochondrial & ribosomal genes
  - Filter
  - Normalize
  - Find variable genes

## Wednesday – Classes from 14:00 to 20:00 (Paris time)

### Lecture 4 - Identifying cell populations 
  - Feature selection
  - Dimensionality reduction
  - Graph-based clustering 
  - Assigning cluster identity
  - Differential expression tests

### Lecture 5 - Batch effects correction 
  - Batch correction methods (regress out batch, scaling within batch, Seurat v3, MNN, Liger, Harmony, scvi, scgen)
  - Evaluation methods for batch correction (ARI, average silhouette width, kBET…)

### Lab 5 – Feature selection & Clustering analyses 
  - Parameters and clustering
  - Comparison of feature selection methods
  - Annotating clusters

### Lab 6 - Correcting batch effects 
  - Comparison of batch correction methods
  - Choosing the optimal batch correction approach

## Thursday – Classes from 14:00 to 20:00 (Paris time)

### Lecture 6 - Advanced topics 
  - Trajectory inference
  - RNA velocity 
  - Pseudotime inference
  - Differential expression through pseudotime

### Lecture 7 - Single-cell multi-omic technologies 
  - Introduction to other omic data types
  - Integrating scRNA-seq with other single-cell modalities (CITE, Perturb, ATAC, methylation…)

### Lab 7 - Pseudotime analyses 
  - Popular tools and packages for functional analysis (https://github.com/dynverse/dynmethods#list-of-included-methods)
  - Review concepts from papers
  - Comparison of pseudotime methods

### Lab 8 - Functional analyses
  - GO over-representation analyses
  - GSEA analyses
  - Finding regulatory elements with scATAC-seq and CICERO: https://www.bioconductor.org/packages/devel/bioc/vignettes/cicero/inst/doc/website.html

## Friday – Classes from 14:00 to 20:00 (Paris time)

Individual projects: analysing scRNA-seq data by yourself, from A to Z. 

- Small groups 
- Pick your favorite scRNA-seq dataset (one you have never looked at before!)
- Work your way through pre-processing / analysis / interpretation of the data
- Support from Jacques & Manik whenever needed: try and solve things by yourself, but don't hesitate if you are stuck!
- Flash presentation at the end of the day: what/why/where/when/how, conclusions


