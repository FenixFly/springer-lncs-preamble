all: build make

build:
	rm -rf rfc.bib && curl -O http://tm.uka.de/~bless/rfc.bib
	rm -rf id.bib && curl -O http://cnds.eecs.jacobs-university.de/users/vbajpai/id2bib/id.bib
	latexmk -pvc -f -pdf index.tex

clean:
	latexmk -c
	rm -f -r *.lol
	rm -f -r *.bbl
