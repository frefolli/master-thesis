@all: thesis.pdf

./figures/monte-carlo-tree-chess.png: ./figures/monte-carlo-tree-chess.d2
	d2 ./figures/monte-carlo-tree-chess.d2 ./figures/monte-carlo-tree-chess.png

./figures/markov-chain.png: ./figures/markov-chain.d2
	d2 ./figures/markov-chain.d2 ./figures/markov-chain.png

./figures/markov-decision-process.png: ./figures/markov-decision-process.d2
	d2 ./figures/markov-decision-process.d2 ./figures/markov-decision-process.png

./figures/sumo-rl-architecture.png: ./figures/sumo-rl-architecture.d2
	d2 ./figures/sumo-rl-architecture.d2 ./figures/sumo-rl-architecture.png

./figures/sumo-rl-observation-functions.png: ./figures/sumo-rl-observation-functions.d2
	d2 ./figures/sumo-rl-observation-functions.d2 ./figures/sumo-rl-observation-functions.png

./figures/sumo-rl-reward-functions.png: ./figures/sumo-rl-reward-functions.d2
	d2 ./figures/sumo-rl-reward-functions.d2 ./figures/sumo-rl-reward-functions.png

thesis.pdf: thesis.tex quotes.bib figures/*.jpg figures/*.d2 ./figures/monte-carlo-tree-chess.png ./figures/markov-chain.png ./figures/markov-decision-process.png ./figures/sumo-rl-architecture.png ./figures/sumo-rl-observation-functions.png ./figures/sumo-rl-reward-functions.png figures/*.png chapters/*.tex
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex

clean:
	rm -f thesis.aux thesis.bbl thesis.blg thesis.cls thesis.log missfont.log thesis.out thesis.pdf thesis-blx.bib thesis.ilg thesis.idx thesis.ind thesis.run.xml thesis.toc abstract.aux
	rm -f ./chapters/*.aux
	rm -f ./figures/monte-carlo-tree-chess.png
	rm -f ./figures/markov-chain.png
	rm -f ./figures/markov-decision-process.png
	rm -f ./figures/sumo-rl-architecture.png
	rm -f ./figures/sumo-rl-observation-functions.png
	rm -f ./figures/sumo-rl-reward-functions.png
