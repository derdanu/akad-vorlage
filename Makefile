filename = vorlage

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S), Linux)
	pdflatexcmd = pdflatex
	bibtexcmd = bibtex
	pdfviewercmd = open
endif

ifeq ($(UNAME_S), Darwin)
	pdflatexcmd = /usr/texbin/pdflatex
	bibtexcmd = /usr/texbin/bibtex
	pdfviewercmd = open
endif


all: latex clean
latex:
	$(pdflatexcmd) $(filename)
	$(bibtexcmd) $(filename)
	$(pdflatexcmd) $(filename)
	$(pdflatexcmd) $(filename)

view:
	if [ -f $(filename).pdf ]; then \
		$(pdfviewercmd) $(filename).pdf; \
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
