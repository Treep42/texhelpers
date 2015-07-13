NAME = name_of_your_texfile
.PHONY: clean

all: $(NAME).pdf

%.dvi: %.tex
	latex $<

%.ps: %.dvi
	dvips -P pdf -t landscape $<

%.pdf: %.ps
	ps2pdf $<

clean:
	rm -rf $(NAME).ps $(NAME).dvi $(NAME).aux $(NAME).log
