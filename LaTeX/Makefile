PAPER_DIR := . # TODO
PAPER_TARGET:= paper # TODO
$(PAPER_DIR)/$(PAPER_TARGET).pdf: $(PAPER_DIR)/$(PAPER_TARGET).tex $(PAPER_DIR)/*.tex
	cd $(PAPER_DIR) \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET) \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET) \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET) \
		&& pdflatex -interaction=nonstopmode $(PAPER_TARGET)
		#&& bibtex $(PAPER_TARGET)

# ~/make/texclean.mk
clean:
	-rm -f $(PAPER_DIR)/*.out $(PAPER_DIR)/*.log \
	       $(PAPER_DIR)/*.aux $(PAPER_DIR)/*.toc \
	       $(PAPER_DIR)/*.bbl $(PAPER_DIR)/*.blg \
	       $(PAPER_DIR)/*.nav $(PAPER_DIR)/*.snm \
	       $(PAPER_DIR)/*.vrb $(PAPER_DIR)/*.tpt \
	       $(PAPER_DIR)/*.lof $(PAPER_DIR)/*.lot
cleanall:	clean
	-rm -f $(PAPER_DIR)/*.pdf $(PAPER_DIR)/*.dvi

%.texin: %.sk
	sketch $< > $@

.PHONY:	clean cleanall dist


# zip up the files for distribution
DIST_TARGET:= "dist" # TODO

dist:
	-mkdir "$(DIST_TARGET)"
	cp -puv $(PAPER_DIR)/$(PAPER_TARGET).pdf $(DIST_TARGET)/$(DIST_TARGET).pdf
	# exlude hidden files (e.g. Vim swap files)
	#rsync -avzP --stats --exclude=".*" src $(DIST_TARGET)
	zip -r $(DIST_TARGET).zip $(DIST_TARGET)
