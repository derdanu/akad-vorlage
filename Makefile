filename = vorlage
all: latex clean
latex:
	pdflatex $(filename)
	bibtex $(filename)
	pdflatex $(filename)
	pdflatex $(filename)

view:
	if [ -f $(filename).pdf ]; then \
		evince $(filename).pdf; \
	else \
		$(MAKE) all ;\
		$(MAKE) view ;\
	fi
clean:
	rm $(filename).aux
	rm $(filename).bbl
	rm $(filename).blg
	rm $(filename).lot
	rm $(filename).lof
	rm $(filename).log
	rm $(filename).toc

distclean:
	rm $(filename).pdf
	$(MAKE) clean
