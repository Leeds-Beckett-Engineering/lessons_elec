archive :
	tar cvf cmar0301.tar Makefile sml2*.sed hi.tex validate* submlmake* \
                tutorial.sml test.* subml*

output:
	sed -f sml2html.sed tutorial.sml > tutorial.html
	sed -f sml2latx.sed tutorial.sml > tutorial.latex
	cp tutorial.latex  tutorial.latex~
	sed  s/\\minitoc//g  tutorial.latex~ >tutorial.latex
	latex tutorial.latex
	dvips -Ppdf -o tutorial.ps tutorial.dvi
	ps2pdf tutorial.ps tutorial.pdf

