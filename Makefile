RUBBER=rubber
LATEXMK=latexmk
VIEWER=xdg-open
DOT=dot

all: main.pdf
	$(info ARTIFACTS:main.pdf)

.PHONY: main.pdf
main.pdf:
	$(LATEXMK) -pdf main.tex

.PHONY: main_rubber
main_rubber:
	$(RUBBER) -d main.tex

show: all
	screen -dm $(VIEWER) main.pdf

clean:
	find . -type f -name '*.toc' -delete
	find . -type f -name '*.aux' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.out' -delete
	find . -type f -name '*.pdf' -delete
	find . -type f -name '*.fls' -delete
	find . -type f -name '*.synctex.gz' -delete
	find . -type f -name '*.fdb_latexmk' -delete

