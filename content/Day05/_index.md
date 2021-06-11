---
title: "5. Day 05"
day: "Day 05"
---

## Journal club (1h)

We will discuss in groups either a paper on cell cycle analysis, or this informative blog post on testing for differential expression.

> Schwabe et al.: 
*The transcriptome dynamics of single cells during the cell cycle*, **Molecular Systems Biology 2020** (DOI: [10.15252/msb.20209946](https://doi.org/10.15252/msb.20209946))

> [Handling confounded samples for differential expression in scRNA-seq experiments](https://www.nxn.se/valent/2019/2/15/handling-confounded-samples-for-differential-expression-in-scrna-seq-experiments)

Read one, or both texts, for Friday, and identify 1-2 points that you would wish to discuss with the group.

---

## Group projects 

The rest of the day will be dedicated to group projects. In small groups, you will perform analysis of a real scRNAseq dataset. Here is the dataset that we have provided:

> Differentiating multiciliated cells: 

This 10X genomics scRNAseq dataset has been obtained from cells dissected from mouse brain lateral ventricles and forced to differentiate *in vitro* into multiciliated cells (MCCs, specialized cells synchronoulsy beating to ensure proper flow of the cerebrospinal fluids). The interest of this dataset is that it contains progenitors of the MCCs (both cycling and post-mitotic commited progenitors), as well as **post-mitotic** differentiating cells and terminally differentiated MCCs. Although the differentiation happens after the last mitosis of the progenitors, differentiating cells co-opt the cell cycle machinery to amplify their centrioles. 

Watch out, there are 2 batches of cells with different genetic backgrounds!! 
Also, the cells have been filtered already to (mostly) high quality cells, 
so that you can focus on the investigation of biological aspects of the dataset.

![](/{{<myPackageUrl>}}img/mcc.png)
([Tan et al., Developement 2013](https://doi.org/10.1242/dev.094102))

Here are few suggestions to work with the dataset:

- Data import
- Batch correction
- Normalization, HVG selection, clustering, dimensionality reduction, visualization
- Automated/Manual cell type annotation 
- Gene modules anaylysis with NMF
- Cell cycle phase annotation 
- Trajectory analysis

> Where to find the data 

The data will be available at the following location: 

```shell
~/Share/day05-project/
```

---

## Group presentations

During the last hour or so, each group will give a very brief presentation of their work. 

Each presentation should be +/- 4-5 slides max, and should definitely take less 
than 10' max with some questions. 

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

Don't spend half of your time polishing your slides! There is no evaluation here, we want you to focus on 
what you have done with the data, more than the quality of your "results" or the prettiness of your slides ;) 

---

## Happy hour time 

For those who want, once the course is over, we will be having a more informal 
hang out time, so that everybody can chat together and have a nice time. 
This is the end of a week-long workshop, now is time to relax!

What online workshops cannot provide (sadly): 

- Snacks 
- Drinks 
- Couches 

What we can **definitely** provide: 

- Informal feedbacks
- Friendly discussions
- Good vibes