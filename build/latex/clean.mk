clean::
	find . -regex '.*\.\(out\|log\|aux\|toc\|bbl\|blg\|bcf\|nav\|snm\|vrb\|tpt\|lof\|lot\|fdb_latexmk\|fls\|run\.xml\|glg\|glo\|gls\|glsdefs\|ist\|acn\|acr\|alg\|loa\|synctex\.gz\|xwm\)$$' -delete -printf "removed '%p'\n"
cleanall:: clean
	-rm -vf *.pdf *.dvi

.PHONY: clean cleanall
