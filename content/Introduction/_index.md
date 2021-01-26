---
title: " Single-cell RNA-seq analysis with R/Bioconductor"
---

This repo contains the instructions related to the 2021 Physalia course entitled "Single-cell RNA-seq analysis with R/Bioconductor". 

## IP for today (2021-01-14): 

```sh
IP="54.188.62.211"
```

## To log in RStudio server: 

[Simply go to the following web page](http://54.188.62.211:8787/): `http://54.188.62.211:8787/`

Username and password are both your user ID (e.g. `user24`).

## To log in your AWS session: 

```sh
KEY="c1.pem"
chmod 600 ${KEY}
USER="user1"
IP="54.188.62.211"
ssh -i ${KEY} ${USER}@${IP}
```

More information is available [here](/{{<myPackageUrl>}}how_to_load_in_aws/#connect-to-pre-configured-aws-machine) if needed. 

## Shared Google Drive folder

[Here is a link to our shared Google Drive folder](https://drive.google.com/drive/folders/1AhShrHbS4bK_ta7gKqcXGLGgAEXmc9lJ?usp=sharing)  
