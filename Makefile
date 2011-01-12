name=class_slides

all: $(name).pdf

%.eps: %.jpg
	convert $< $@

%.eps: %.png
	convert $< $@

$(name).dvi: $(name).tex
	-rm $@
	latex $<

%.pdf: %.dvi
	dvipdf $<

clean:
	rm -f $(name)*.log $(name)*.toc $(name)*.nav $(name)*.snm \
			$(name)*.out $(name)*.dvi $(name)*.aux \
			$(name)*.vrb texput.log *.eps

realclean:
	rm -f $(name)*.log $(name)*.toc $(name)*.nav $(name)*.snm \
			$(name)*.out $(name)*.dvi $(name)*.aux $(name)*.pdf \
			$(name)*.vrb texput.log *.eps
