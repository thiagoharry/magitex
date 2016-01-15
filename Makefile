TEXPATH=/opt/texlive/bin

all:
	initex magitex.tex
test:
	tex \&magitex teste.tex
	dvipdf teste.dvi
	xpdf teste.pdf
clean:
	rm -rf *~ *.log *.pdf *.dvi *.fmt
