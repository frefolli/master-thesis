@all: thesis.pdf

thesis.pdf: thesis.tex quotes.bib figures/*.jpg figures/*.png chapters/*.tex
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex

clean:
	rm -f thesis.aux thesis.bbl thesis.blg thesis.cls thesis.log missfont.log thesis.out thesis.pdf
