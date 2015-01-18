clean:
	-rm -f *.out *.log *.aux *.toc *.bbl *.blg *.nav *.snm *.vrb *.tpt *.lof *.lot
cleanall:	clean
	-rm -f *.pdf *.dvi

.PHONY:	clean cleanall
