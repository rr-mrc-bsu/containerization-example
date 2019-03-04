<!-- badges: start -->
[![Build Status](https://travis-ci.org/rr-mrc-bsu/containerization-example.svg?branch=master)](https://travis-ci.org/rr-mrc-bsu/containerization-example)
<!-- badges: end -->

# Containerization using docker and singularity

This is an example repository accompanying the  [chapter 'dependency management'](https://rr-mrc-bsu.github.io/reproducible-research/dependency-management.html)
of the reproducible research compendium.

To get started, clone it 

```
git clone https://github.com/rr-mrc-bsu/containerization-example.git
```

Both a GNU make `Makefile` and a snakemake `Snakefile` are provided to compile
the R Markdown report.
The snakemake workflow requires snakemake to be installed on your system.

Both workflow managers can leverage a pre-build [docker container](https://cloud.docker.com/repository/docker/kkmann/rr-containerization-example)
to run the analysis in a cmpletely isolated environment.

To use GNU make, run make inside of the docker container via singularity
```
singularity exec docker://kkmann/rr-containerization-example@sha256:17414f63929b0283f82e70ded3ca9cd9b61f37e13fe3d103a2bdf24b9056114e make
```

To use snakemake instead, simply invoke
```
snakemake --use-singularity
```
(make sure that any previous output is deleted!).
