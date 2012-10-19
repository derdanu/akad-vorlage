all: latex clean
latex:
	pdflatex vorlage
	bibtex vorlage
	pdflatex vorlage
	pdflatex vorlage

view:
	evince vorlage.pdf
clean:
	rm vorlage.aux
	rm vorlage.bbl
	rm vorlage.blg
	rm vorlage.lot
	rm vorlage.lof
	rm vorlage.log
	rm vorlage.toc
