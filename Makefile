
USE_BIBTEX=yes
TEX=pdflatex
BIBTEX=bibtex
PDF=dvipdf
all: BlackDemon1.pdf 


BlackDemon1.pdf: BlackDemon1.tex
	$(TEX) BlackDemon1.tex $@
	$(TEX) BlackDemon1.tex $@	
	$(BIBTEX) BlackDemon1
	$(BIBTEX) BlackDemon1
	$(TEX) BlackDemon1.tex $@
	$(BIBTEX) BlackDemon1
	$(TEX) BlackDemon1.tex $@
	$(TEX) BlackDemon1.tex $@
#$(PDF) BlackDemon1.dvi
.PHONY : clean

clean:
	rm -f *.log *.aux *.out *.dvi *.blg *.toc *.lof *.lot *.tbx \
	 *.fgx *~ BlackDemon1.pdf BlackDemon1.ps *.bbl

