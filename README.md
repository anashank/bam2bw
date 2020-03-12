# bam2bw
Converts BAM files to Bigwig files for downstream visualizations using deeptols bamCoverage (https://deeptools.readthedocs.io/en/develop/content/tools/bamCoverage.html)

# Before running
In the `config.yaml` file you should include details,paths of BAM samples to be converted and other neccessary parameters.

### Dependiencies
* [snakemake](https://snakemake.readthedocs.io/en/stable/)
* [deeptools](https://deeptools.readthedocs.io/en/develop/index.html)

# How to run?
```bash
Dry run: snakemake -n
Actual run: snakemake --cores [number of cores]

Run snakemake --unlock if directory is locked
```
