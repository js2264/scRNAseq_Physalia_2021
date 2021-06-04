# Getting data files 

- `GSM4486714` and `SRR11575369` data (`Leir ... Harris, Life Sci Alliance 2020`, DOI: `10.26508/lsa.202000744`)

```sh
wget https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM4486nnn/GSM4486714/suppl/GSM4486714_AXH009_barcodes.tsv.gz
wget https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM4486nnn/GSM4486714/suppl/GSM4486714_AXH009_genes.tsv.gz
wget https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM4486nnn/GSM4486714/suppl/GSM4486714_AXH009_matrix.mtx
curl -Ss ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/069/SRR11575369/SRR11575369_1.fastq.gz \
    | zcat \
    | head -n 100000 \
    | gzip > SRR11575369_1.fastq.gz
```

- GRCm39 annotations

```sh
curl -Ss http://ftp.ensembl.org/pub/release-104/gff3/mus_musculus/Mus_musculus.GRCm39.104.gff3.gz
# Then import it in R, filter out features that are not `gene`, and export it as `gff3` or `bed`
```

