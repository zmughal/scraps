clean:
	-rm -f *.out *.log *.aux *.toc *.bbl *.blg *.nav *.snm *.vrb *.tpt *.lof *.lot *.fdb_latexmk *.fls
cleanall:	clean
	-rm -f *.pdf *.dvi

.PHONY:	clean cleanall
