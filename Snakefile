singularity:
    "docker://kkmann/rr-containerization-example@sha256:5225e53f934d749bf3017f140e5169b0d2eadc0512799b89c2f854a2d002d0c4"

rule build_report:
    input:
        "r-and-python.Rmd"
    output:
        "r-and-python.html"
    shell:
        """
        Rscript -e "rmarkdown::render(\\"{input}\\")"
        """
