RUBBER=rubber
VIEWER=xdg-open
DOT=dot

all: main.pdf
	$(info ARTIFACTS:main.pdf)

.PHONY: main.pdf
main.pdf:
	$(RUBBER) -d main.tex

show: all
	screen -dm $(VIEWER) main.pdf

clean:
	find . -type f -name '*.toc' -delete
	find . -type f -name '*.aux' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.out' -delete
	find . -type f -name '*.pdf' -delete

