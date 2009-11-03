# Makefile to compile latex files
CC = pdflatex
FILE = appunti_sistemi

all:	pdf 

pdf:
	makeindex $(FILE).idx
	$(CC) $(FILE).tex

show:
	nohup evince $(FILE).pdf &

clean:	
	rm *.aux
#	rm *.dvi
	rm *.toc
	rm *.log
	rm *.out
