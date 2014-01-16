paper.pdf: paper.tex *.tex
	cd . \
		&& pdflatex -interaction=nonstopmode paper \
		&& pdflatex -interaction=nonstopmode paper \
		&& pdflatex -interaction=nonstopmode paper \
		&& pdflatex -interaction=nonstopmode paper
		#&& bibtex paper \

# ~/make/texclean.mk
clean:
	-rm -f *.out *.log *.aux *.toc *.bbl *.blg *.nav *.snm *.vrb *.tpt *.lof *.lot
cleanall:	clean
	-rm -f *.pdf *.dvi

.PHONY:	clean cleanall
