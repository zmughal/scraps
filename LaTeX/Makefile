PAPER_TARGET:= paper
$(PAPER_TARGET).pdf: $(PAPER_TARGET).tex *.tex
	cd . \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET) \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET) \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET) \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET)
		#&& bibtex $(PAPER_TARGET)

# ~/make/texclean.mk
clean:
	-rm -f *.out *.log *.aux *.toc *.bbl *.blg *.nav *.snm *.vrb *.tpt *.lof *.lot
cleanall:	clean
	-rm -f *.pdf *.dvi

%.texin: %.sk
	sketch $< > $@

.PHONY:	clean cleanall
