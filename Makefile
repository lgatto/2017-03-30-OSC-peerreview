%.md: %.Rmd
	Rscript -e "knitr::knit('$^')"

%.html: %.md
	Rscript -e "rmarkdown::render('$^')"

index.html: slides.html
	mv slides.html ./docs/index.html
