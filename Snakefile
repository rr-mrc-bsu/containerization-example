singularity:
    "docker://kkmann/rr-containerization-example@sha256:83179a6865013043474cd9bc7cc7739a0d3eebaf8b5846133667b9ef1ddce2e8"

rule build_report:
    input:
        "r-and-python.Rmd"
    output:
        "r-and-python.html"
    shell:
        """
        Rscript -e "rmarkdown::render(\\"{input}\\")"
        """
