@all: thesis.pdf

./figures/markov-chain.png: ./figures/markov-chain.d2
	d2 ./figures/markov-chain.d2 ./figures/markov-chain.png

./figures/markov-decision-process.png: ./figures/markov-decision-process.d2
	d2 ./figures/markov-decision-process.d2 ./figures/markov-decision-process.png

thesis.pdf: thesis.tex quotes.bib figures/*.jpg figures/*.png chapters/*.tex
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex

clean:
	rm -f thesis.aux thesis.bbl thesis.blg thesis.cls thesis.log missfont.log thesis.out thesis.pdf
