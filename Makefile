all: build make

build:
	rm -rf rfc.bib && wget http://tm.uka.de/~bless/rfc.bib
	latexmk -pvc -f -pdf index.tex

clean:
	latexmk -c
	rm -f -r *.lol
	rm -f -r *.bbl
