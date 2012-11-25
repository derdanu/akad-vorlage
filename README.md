# AKAD Latex Vorlage für ein Assignment

Dateien

	einleitung.tex 
		Einleitung
	grundlagen.tex
		Grundlagen
	hauptteil.tex
		Hauptteil
	schluss.tex
		Schluss
	literatur.bib
		Literatur in BibTex Syntax. 
		- Zitatsgenerator http://www.literatur-generator.de/
	abkuerzungen.tex
		Abkürzungverzeichniss
	einstellungen.tex
		Einstellungen
		- Benutzer
		- Anzeige der jeweiligen Verzeichnisse


Zum Erstellen folgende Latex Kommandos ausführen:

	pdflatex vorlage
	bibtex vorlage
	pdflatex vorlage
	pdflatex vorlage



## Windows
-------

* Latex Portable Umgebung http://miktex.org/portable

## Linux
-----

Es reicht eine einfaches "make" zum Erstellen der PDF. 

"make view" erstellt und zeigt diese auch sofort an.

* Benötigte Packete bei einem Debian System installieren
  * aptitude install git texlive textlive-lang-german textlive-latex-extra bibtex


## Mac OS X 
--------

Es reicht eine einfaches "make" zum Erstellen der PDF. 

"make view" erstellt und zeigt diese auch sofort an.

* Benötigte Packete
  * Um make nutzen zu können müssen die XCode Developer Commandline Tools installiert sein. https://developer.apple.com/xcode/
  * Latex Umgebung http://www.tug.org/mactex/
