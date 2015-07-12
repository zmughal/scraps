clean:
	find . -regex '.*\.\(out\|log\|aux\|toc\|bbl\|blg\|nav\|snm\|vrb\|tpt\|lof\|lot\|fdb_latexmk\|fls\)$$' -delete -printf "removed '%p'\n"
cleanall: clean
	-rm -vf *.pdf *.dvi

.PHONY: clean cleanall
