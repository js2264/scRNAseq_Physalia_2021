---
title: "5. Day 05"
day: "Day 05"
---

## Journal club (1h)    

We will discuss in group(s) about two method papers published in 2020. 

> Schwabe et al.: 
*The transcriptome dynamics of single cells during the cell cycle*, **Molecular Systems Biology 2020** (DOI: [10.15252/msb.20209946](https://doi.org/10.15252/msb.20209946))

> XXX

Read them ahead and identify one or two points that you would wish to discuss with the group.

---

## Group projects 

The rest of the day will be dedicated to group projects. In small groups, you will perform analysis of a real scRNAseq dataset. Here are the following datasets you can choose to work with. 

### Differentiating multiciliated cells: 

This Smart-seq2 dataset contains both malignant and non-malignant cells from multiple tumors. Cells exhibit signatures of astrocytoma, oligodendroglioma, stemness and proliferation. 

![](/{{<myPackageUrl>}}img/tumors.png)
([Venteicher, Tirosh et al., Science 2017](https://doi.org/10.1126/science.aai8478))

Here are few suggestions to analyse these cells: 

- Decide whether you want to work on a single tumor at a time, or a few tumors together
- QC and cell filtering 
- PCA and investigation of the meaning of PC1
- Clustering of malignant cells
- Subclustering and programs

### Differentiating multiciliated cells: 

This 10X genomics scRNAseq dataset has been obtained from cells dissected from mouse brain lateral ventricles and forced to differentiate *in vitro* into multiciliated cells (MCCs, specialized cells synchronoulsy beating to ensure proper flow of the cerebrospinal fluids). The interest of this dataset is that it contains progenitors of the MCCs (both cycling and post-mitotic commited progenitors), as well as **post-mitotic** differentiating cells and terminally differentiated MCCs. Although the differentiation happens after the last mitosis of the progenitors, differentiating cells co-opt the cell cycle machinery to amplify their centrioles. 

![](/{{<myPackageUrl>}}img/mcc.png)
([Tan et al., Developement 2013](https://doi.org/10.1242/dev.094102))

Here are few suggestions to analyse these cells: 

- Cell filtering
- HVG selection
- Clustering 
- Automated cell type annotation 
- Cell cycle phase annotation 
- Patterns of module expression 

---

## Group presentations

During the last hour or so, each group will give a very brief presentation of their work. 

Each presentation should be ~5-6 slides max, and should definitely take less than 10' max. 

Focus on the important points: 

- What
- Why
- Where
- When
- How

The aim for these presentations is to outline the question(s) you raised, the approach you used, 
and the general workflow. 

Focus on presenting the dataset (nature, quality of the data), its composition (clusters, cell types), 
and if you had time to investigate it, the lineage(s) and anything else you thought of. 

The biological "impact" of the study is not the primary goal: 
don't forget this is a half-day project, whereas scRNAseq biocomputational investigation 
typically takes months to reach a publishable level, so don't focus too much on this!

---

## Happy hour time 

For those who want it, once the course is over, we will be having a more informal 
hang out time, so that everybody can chat together and have a nice time. 
This is the end of a week-long workshop, now is time to relax!

What online workshops cannot provide (sadly): 

- Snacks 
- Drinks 
- Couches 

What we will **definitely** provide: 

- Informal feedbacks
- Friendly discussions
- Good vibes