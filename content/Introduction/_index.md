---
title: " Single-cell RNA-seq analysis with R/Bioconductor"
---

## Course content: 

The workshop content is available [at this adress: https://github.com/js2264/scRNAseq_Physalia_2021](https://github.com/js2264/scRNAseq_Physalia_2021). 

You can clone it locally with `git`: 

```sh
git clone https://github.com/js2264/scRNAseq_Physalia_2021.git
```

To download it without the command-line tool `git`, go to 
[the GitHub repo page](https://github.com/js2264/scRNAseq_Physalia_2021), click on the 
green `Code` button, then `Download ZIP`. Beware, the download may take a significant 
time based on your internet connection (several hundreds MB). 

## To log in RStudio server: 

[Simply go to the following web page](http://54.200.240.166:8787/): `http://54.200.240.166:8787/`

## IP for today (2021-06-07): 

```sh
IP="54.200.240.166"
```

## To log by SSH to your AWS session: 

```sh
KEY="path/to/key.pem"
chmod 600 "${KEY}"
USER="myuserID"
IP="54.200.240.166"
ssh -i "${KEY}" "${USER}"@"${IP}"
```

More information is available [here](/{{<myPackageUrl>}}docs/Connection_to_the_Amazon_EC2_service_.pdf) if needed. 

