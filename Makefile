all: r-and-python.html

clean:
	rm r-and-python.html

r-and-python.html: r-and-python.Rmd
	# render the .Rmd file, all paths must be relative to .Rmd!
	Rscript -e "rmarkdown::render(\
input       = 'r-and-python.Rmd',\
output_file = 'r-and-python.html'\
)"
