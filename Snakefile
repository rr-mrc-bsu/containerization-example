rule build-report:
    input:
        rmd = "{filename}.Rmd"
    output:
        hmtl = "{filename}.html"
    shell:
        """
        Rscript -e "rmarkdown::render(\\"{input.rmd}\\")"
        """
