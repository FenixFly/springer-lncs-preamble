all: build make

build:
	latexmk -pvc -f -pdf index.tex

clean:
	latexmk -c
	rm -f -r *.lol
	rm -f -r *.bbl
