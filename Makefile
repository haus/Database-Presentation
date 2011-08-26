# Makefile

TEXCC=pdflatex
TEXFLAGS=-file-line-error -halt-on-error

.PHONY: all clean

all: presentation.pdf

%.pdf: %.tex
	$(TEXCC) $(TEXFLAGS) $< && $(TEXCC) $(TEXFLAGS) $< 

clean: 
	rm -f \
	  presentation.{log,nav,out,snm,toc,aux,pdf}
