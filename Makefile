filename = vorlage
all: latex clean
latex:
	pdflatex $(filename)
	bibtex $(filename)
	pdflatex $(filename)
	pdflatex $(filename)

view:
	evince $(filename).pdf
clean:
	rm $(filename).aux
	rm $(filename).bbl
	rm $(filename).blg
	rm $(filename).lot
	rm $(filename).lof
	rm $(filename).log
	rm $(filename).toc
