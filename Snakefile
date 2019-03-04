singularity:
    "docker://kkmann/rr-containerization-example@sha256:17414f63929b0283f82e70ded3ca9cd9b61f37e13fe3d103a2bdf24b9056114e"

rule build_report:
    input:
        "r-and-python.Rmd"
    output:
        "r-and-python.html"
    shell:
        """
        Rscript -e "rmarkdown::render(\\"{input}\\")"
        """
