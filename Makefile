@all: thesis.pdf

./figures/monte-carlo-tree-chess.png: ./figures/monte-carlo-tree-chess.d2
	d2 ./figures/monte-carlo-tree-chess.d2 ./figures/monte-carlo-tree-chess.png

./figures/markov-chain.png: ./figures/markov-chain.d2
	d2 ./figures/markov-chain.d2 ./figures/markov-chain.png

./figures/markov-decision-process.png: ./figures/markov-decision-process.d2
	d2 ./figures/markov-decision-process.d2 ./figures/markov-decision-process.png

./figures/sumo-rf-architecture.png: ./figures/sumo-rf-architecture.d2
	d2 ./figures/sumo-rf-architecture.d2 ./figures/sumo-rf-architecture.png

./figures/observation-function-trait.png: ./figures/observation-function-trait.d2
	d2 ./figures/observation-function-trait.d2 ./figures/observation-function-trait.png

./figures/reward-function-trait.png: ./figures/reward-function-trait.d2
	d2 ./figures/reward-function-trait.d2 ./figures/reward-function-trait.png

./figures/agent-trait.png: ./figures/agent-trait.d2
	d2 ./figures/agent-trait.d2 ./figures/agent-trait.png

./figures/executor-architecture.png: ./figures/executor-architecture.d2
	d2 ./figures/executor-architecture.d2 ./figures/executor-architecture.png

thesis.pdf: listings-xml.sty listings-json.sty thesis.tex quotes.bib figures/*.jpg figures/*.d2 ./figures/monte-carlo-tree-chess.png ./figures/markov-chain.png ./figures/markov-decision-process.png ./figures/sumo-rf-architecture.png ./figures/observation-function-trait.png ./figures/reward-function-trait.png ./figures/agent-trait.png ./figures/executor-architecture.png figures/*.png figures/exp/*.png chapters/*.tex
	pdflatex thesis.tex
	bibtex thesis.aux
	makeglossaries thesis.glo
	pdflatex thesis.tex

clean:
	rm -f thesis.aux thesis.bbl thesis.blg thesis.cls thesis.log missfont.log thesis.out thesis.pdf thesis-blx.bib thesis.ilg thesis.idx thesis.ind thesis.run.xml thesis.toc abstract.aux thesis.glg  thesis.glo  thesis.gls thesis.ist
	rm -f ./chapters/*.aux
	rm -f ./figures/monte-carlo-tree-chess.png
	rm -f ./figures/markov-chain.png
	rm -f ./figures/markov-decision-process.png
	rm -f ./figures/sumo-rf-architecture.png
	rm -f ./figures/observation-function-trait.png
	rm -f ./figures/reward-function-trait.png
	rm -f ./figures/agent-trait.png
	rm -f ./figures/executor-architecture.png
