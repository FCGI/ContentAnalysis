#########################
# Makefile
# Simon Goring
#########################

content: paleomultivar.Rmd
	Rscript -e 'rmarkdown::render(c("$<"))'

clean:
	rm -rf paleomultivar.html paleomultivar.md *.docx figure/ cache/

localbuild: paleomultivar.Rmd
	Rscript -e 'rmarkdown::render(c("$<"))' || Rscript -e 'knitr::purl(c("$<"))'
