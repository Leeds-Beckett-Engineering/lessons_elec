# Makefile for managing "Lessons In Electric Circuits -- Experiments"
# modified  01/7/2006 (DC) -Added mini-TOC  to each chapter of html, .latex
# modified 09/22/2007 (DC) - eps: target modified for smaller better looking (pdf) files
# modified 10/03/2008 (DC) -Added sml2latx.sed, sml2html.sed to Latex and html sections--
#                           -- to for rebuild for changes to these .sed files.
# modified 08/28/2008 (DC) -Added 54*.png processing to eps: target
# 			   -Added rm 2\*.eps to eps: tagget; \*=not wild card
# modified 01/15/2010 (DC) -Added 555.sml
# modified 01/15/2010 (DC) -Added png to eps processing for 45???.png images
#                           Some authors send me .png instead of prefered .eps
# modified 02/15/2020 (DC) -Changed  mogrify -density 120 -format png 0*.eps
# modified 02/15/2020 (DC) -to mogrify -density 120 -colorspace RGB -format png 0*.eps
# modified 02/15/2020 (DC) -Changed  mogrify -density 120 -format png 0*.eps
# modified 02/15/2020 (DC) -to mogrify -density 120 -colorspace RGB -format png 0*.eps
# modified 11/25/2022 (DC) -png: eps: eps2: targets now only produce output forchanged source.
# modified 11/25/2022 (DC) -Added clean_latex target.

# This shrinks screen capture height eps:
YRES=108

SRC = intro.sml \
      basic.sml \
      dc.sml \
      ac.sml \
      discrete.sml \
      a_ic.sml \
      d_ic.sml \
      555.sml \
      about.sml \
      contrib.sml \
      dsl.sml \
      hi.tex \
      bye.tex \
      hi.latex \
      hi_appendix.latex \
      bye.latex \
      hi_1.html \
      hi_2.html \
      hi_3.html \
      hi_4.html \
      hi_5.html \
      hi_6.html \
      hi_7.html \
      hi_8.html \
      hi_A1.html \
      hi_A2.html \
      hi_A3.html \
      bye_1.html \
      bye_2.html \
      bye_3.html \
      bye_4.html \
      bye_5.html \
      bye_6.html \
      bye_7.html \
      bye_8.html \
      bye_A1.html \
      bye_A2.html \
      bye_A3.html \
      index.html \
      Makefile


# Generates HTML output
html : $(SRC) sml2html.sed
	make EXP_1.html
	make EXP_2.html
	make EXP_3.html
	make EXP_4.html
	make EXP_5.html
	make EXP_6.html
	make EXP_7.html
	make EXP_8.html
	make EXP_A1.html
	make EXP_A2.html
	make EXP_A3.html


# Converts SubML source into TeX source
intro.tex : intro.sml
	sed -f sml2tex.sed intro.sml > intro.tex

basic.tex : basic.sml
	sed -f sml2tex.sed basic.sml > basic.tex

dc.tex : dc.sml
	sed -f sml2tex.sed dc.sml > dc.tex

ac.tex : ac.sml
	sed -f sml2tex.sed ac.sml > ac.tex

discrete.tex : discrete.sml
	sed -f sml2tex.sed discrete.sml > discrete.tex

a_ic.tex : a_ic.sml
	sed -f sml2tex.sed a_ic.sml > a_ic.tex

d_ic.tex : d_ic.sml
	sed -f sml2tex.sed d_ic.sml > d_ic.tex

555.tex : 555.sml
	sed -f sml2tex.sed 555.sml > 555.tex

about.tex : about.sml
	sed -f sml2tex.sed about.sml > about.tex

contrib.tex : contrib.sml
	sed -f sml2tex.sed contrib.sml > contrib.tex

dsl.tex : dsl.sml
	sed -f sml2tex.sed dsl.sml > dsl.tex


# Converts SubML source into LaTeX source
intro.latex : intro.sml sml2latx.sed
	sed -f sml2latx.sed intro.sml > intro.latex

basic.latex : basic.sml sml2latx.sed
	sed -f sml2latx.sed basic.sml > basic.latex

dc.latex : dc.sml sml2latx.sed
	sed -f sml2latx.sed dc.sml > dc.latex

ac.latex : ac.sml sml2latx.sed
	sed -f sml2latx.sed ac.sml > ac.latex

discrete.latex : discrete.sml sml2latx.sed
	sed -f sml2latx.sed discrete.sml > discrete.latex

a_ic.latex : a_ic.sml sml2latx.sed
	sed -f sml2latx.sed a_ic.sml > a_ic.latex

d_ic.latex : d_ic.sml sml2latx.sed
	sed -f sml2latx.sed d_ic.sml > d_ic.latex

555.latex : 555.sml sml2latx.sed
	sed -f sml2latx.sed 555.sml > 555.latex

about.latex : about.sml sml2latx.sed
	sed -f sml2latx.sed about.sml > about.latex
	#no mini-TOC for this chapter-- remove it
	cp about.latex about.latex~
	sed  s/\\minitoc//g about.latex~ >about.latex
	rm about.latex~
	
contrib.latex : contrib.sml sml2latx.sed
	sed -f sml2latx.sed contrib.sml > contrib.latex
	#no mini-TOC for this chapter-- remove it
	cp contrib.latex contrib.latex~
	sed  s/\\minitoc//g contrib.latex~ >contrib.latex
	rm contrib.latex~

dsl.latex : dsl.sml sml2latx.sed
	sed -f sml2latx.sed dsl.sml > dsl.latex
	#no mini-TOC for this chapter-- remove it
	cp dsl.latex dsl.latex~
	sed  s/\\minitoc//g dsl.latex~ >dsl.latex
	rm dsl.latex~


# Converts SubML source into plain ASCII text
intro.txt : intro.sml sml2latx.sed
	sed -f sml2txt.sed intro.sml > intro.txt

basic.txt : basic.sml
	sed -f sml2txt.sed basic.sml > basic.txt

dc.txt : dc.sml
	sed -f sml2txt.sed dc.sml > dc.txt

ac.txt : ac.sml
	sed -f sml2txt.sed ac.sml > ac.txt

discrete.txt : discrete.sml
	sed -f sml2txt.sed discrete.sml > discrete.txt

a_ic.txt : a_ic.sml
	sed -f sml2txt.sed a_ic.sml > a_ic.txt

d_ic.txt : d_ic.sml
	sed -f sml2txt.sed d_ic.sml > d_ic.txt

555.txt : 555.sml
	sed -f sml2txt.sed 555.sml > 555.txt

about.txt : about.sml
	sed -f sml2txt.sed about.sml > about.txt

contrib.txt : contrib.sml
	sed -f sml2txt.sed contrib.sml > contrib.txt

dsl.txt : dsl.sml
	sed -f sml2txt.sed dsl.sml > dsl.txt


# Converts SubML source into HTML source
# toc.map is necessary to htmltoc2 perl script
# added htmltoc2 for mini-table of contnets in chapters
EXP_1.html : intro.sml hi_1.html bye_1.html sml2html.sed
	cat hi_1.html > EXP_1.html
	sed -f sml2html.sed intro.sml >> EXP_1.html
	cat bye_1.html >> EXP_1.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_1.html

EXP_2.html : basic.sml hi_2.html bye_2.html sml2html.sed
	cat hi_2.html > EXP_2.html
	sed -f sml2html.sed basic.sml >> EXP_2.html
	cat bye_2.html >> EXP_2.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_2.html

EXP_3.html : dc.sml hi_3.html bye_3.html sml2html.sed
	cat hi_3.html > EXP_3.html
	sed -f sml2html.sed dc.sml >> EXP_3.html
	cat bye_3.html >> EXP_3.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_3.html

EXP_4.html : ac.sml hi_4.html bye_4.html sml2html.sed
	cat hi_4.html > EXP_4.html
	sed -f sml2html.sed ac.sml >> EXP_4.html
	cat bye_4.html >> EXP_4.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_4.html

EXP_5.html : discrete.sml hi_5.html bye_5.html sml2html.sed
	cat hi_5.html > EXP_5.html
	sed -f sml2html.sed discrete.sml >> EXP_5.html
	cat bye_5.html >> EXP_5.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_5.html

EXP_6.html : a_ic.sml hi_6.html bye_6.html sml2html.sed
	cat hi_6.html > EXP_6.html
	sed -f sml2html.sed a_ic.sml >> EXP_6.html
	cat bye_6.html >> EXP_6.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_6.html

EXP_7.html : d_ic.sml hi_7.html bye_7.html sml2html.sed
	cat hi_7.html > EXP_7.html
	sed -f sml2html.sed d_ic.sml >> EXP_7.html
	cat bye_7.html >> EXP_7.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_7.html

EXP_8.html : 555.sml hi_8.html bye_8.html sml2html.sed
	cat hi_8.html > EXP_8.html
	sed -f sml2html.sed 555.sml >> EXP_8.html
	cat bye_8.html >> EXP_8.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" EXP_8.html

EXP_A1.html : about.sml hi_A1.html bye_A1.html  sml2html.sed
	cat hi_A1.html > EXP_A1.html
	sed -f sml2html.sed about.sml >> EXP_A1.html
	cat bye_A1.html >> EXP_A1.html

EXP_A2.html : contrib.sml hi_A2.html bye_A2.html  sml2html.sed
	cat hi_A2.html > EXP_A2.html
	sed -f sml2html.sed contrib.sml >> EXP_A2.html
	cat bye_A2.html >> EXP_A2.html

EXP_A3.html : dsl.sml hi_A3.html bye_A3.html  sml2html.sed
	cat hi_A3.html > EXP_A3.html
	sed -f sml2html.sed dsl.sml >> EXP_A3.html
	cat bye_A3.html >> EXP_A3.html


# Generates DVI output using TeX
tex : $(SRC) sml2html.sed
	make intro.tex
	make basic.tex
	make dc.tex
	make ac.tex
	make discrete.tex
	make a_ic.tex
	make d_ic.tex
	make about.tex
	make contrib.tex
	make dsl.tex
	make 555.tex
	cat hi.tex \
           intro.tex \
           basic.tex \
           dc.tex \
           ac.tex \
           discrete.tex \
           a_ic.tex \
           d_ic.tex \
           555.tex \
           about.tex \
           contrib.tex \
           dsl.tex \
           bye.tex > EXP.tex
	tex EXP.tex
	touch tex


# Generates DVI output using LaTeX
latex : $(SRC) sml2latx.sed
	make intro.latex
	make basic.latex
	make dc.latex
	make ac.latex
	make discrete.latex
	make a_ic.latex
	make d_ic.latex
	make 555.latex
	make about.latex
	make contrib.latex
	make dsl.latex
	cat hi.latex \
           intro.latex \
           basic.latex \
           dc.latex \
           ac.latex \
           discrete.latex \
           a_ic.latex \
           d_ic.latex \
           555.latex \
           hi_appendix.latex \
           about.latex \
           contrib.latex \
           dsl.latex \
           bye.latex > EXP.latex
	latex EXP.latex
	makeindex EXP.idx
	latex EXP.latex
	latex EXP.latex
	touch latex


# Generates plain ASCII output
txt : $(SRC)
	make intro.txt
	make basic.txt
	make dc.txt
	make ac.txt
	make discrete.txt
	make a_ic.txt
	make d_ic.txt
	make 555.txt
	make about.txt
	make contrib.txt
	make dsl.txt
	cat intro.txt \
           basic.txt \
           dc.txt \
           ac.txt \
           discrete.txt \
           a_ic.txt \
           d_ic.txt \
           555.txt \
           about.txt \
           contrib.txt \
           dsl.txt > EXP.txt
	touch txt


# Generates compressed PostScript and PDF output
EXP.ps : $(SRC)
	make latex
	dvips -z -Ppdf -o EXP.ps EXP.dvi
	ps2pdf EXP.ps EXP.pdf
	gzip -f EXP.ps



# Converts [01]????.eps -> .png, 4????.jpg, -> .eps 4????.png, -> .eps
# 5????.jpg -> .eps,  2????.png -> .eps

# ??xxx.* First two digits of 5-digit image number indicate:
#         1 The type of image
#         2 A number corresponding to the volume; DC, AC. etc.
# ??xxxx.* image numbering: first digit image type, 2nd digit: volume
# ||
# | \--Schematic | Table/Equationm | Schreenshots | Art  | Photos |
# |         .eps |            .eps |       .png   | .jpg |  .jpg  |
# |              |                 |              | .png |        |
# |            0 |               1 |          2   |   4  |    5   |
# |- DC=0, AC=2, Semi=3, Digital=4,  Ref=1, Exper=5, -2nd digit   |

# | DC | AC | Semi | Digital | Ref | Exper |
# |  0 |  2 |   3  |    4    |  1  |   5   |
# |    |    |   x  |    x    |     |   x   |  x= 4*.png contra Kuphaldt
#Targets  png: eps: eps2: only update output for changed sources.

eps : [245]*.eps
	make eps45
	make eps4
	make eps2

#Converts Schematics, Tables/Equations [01]????.eps -> .png for html
png_obj_files := $(patsubst %.eps,%.png,$(wildcard [01]????.eps))
png: $(png_obj_files)
%.png : %.eps
	mogrify -density 120 -colorspace RGB -format png $<

# Converts photograph [45]????.jpg -> .eps used by LaTeX/PS/PDF
eps45_obj_files := $(patsubst %.jpg,%.eps,$(wildcard [45]????.jpg))
eps45: $(eps45_obj_files)
%.eps : %.jpg
	mogrify -density 175 -format eps   $<   

# Converts artwork 4????.png -> .eps (non-standard) used by LaTeX/PS/PDF
eps4_obj_files := $(patsubst %.png,%.eps,$(wildcard 4????.png))
eps4: $(eps4_obj_files)
%.eps : %.png
	mogrify -density 175 -format eps   $<   

#Converts screen captures 2????.png -> .eps, used by LaTeX/PS/PDF
eps2_obj_files := $(patsubst %.png,%.eps,$(wildcard 2????.png))
eps2: $(eps2_obj_files)
%.eps : %.png
	mogrify -density 108 -format eps   $<

#Old make for png: for reference
#png:
#	mogrify -density 120 -colorspace RGB -format png 0*.eps
#	mogrify -density 120 -colorspace RGB -format png 1*.eps


# Generates a .tar.gz archive containing source files
EXPsrc.tar.gz: $(SRC)
	tar cvf EXPsrc.tar \
            $(SRC) \
            *.eps \
            *.jpg \
            *.png \
            *.lps \
            *.sed \
            toc.map \
            htmltoc2 \
            Makefile
	gzip -f EXPsrc.tar


# Generates a .tar.gz archive containing only ESSENTIAL source files
EXPtiny.tar.gz: $(SRC)
	tar cvf EXPtiny.tar \
            $(SRC) \
             0*.eps \
             1*.eps \
	     4*.[jp][pn]g \
             5*.jpg \
            previous.jpg \
            contents.jpg \
            next.jpg \
            ps.* \
            pdf.* \
            src1.* \
            src2.* \
            *.lps \
            *.sed \
            toc.map \
            htmltoc2 \
            Makefile
	gzip -f EXPtiny.tar


# Cleans out old, unwanted files
clean:
	-rm *.bak
	-rm *.spn
	-rm junk*
	-rm core
	-rm *.ind
	-rm *.ilg
	-rm *.mtc*
	-rm *.maf
	-rm *.aux
	-rm *.toc
	-rm *.out
	-rm *.idx
	-rm *.dvi
	-rm *.log
	-rm REF.latex
	-rm intro.latex
	-rm basic.latex
	-rm dc.latex
	-rm ac.latex
	-rm discrete.latex
	-rm a_ic.latex
	-rm d_ic.latex
	-rm 555.latex
	-rm about.latex
	-rm contrib.latex
	-rm dsl.latex
	-rm latex
	-rm *.latex~
	-rm *.html~



#clean latex environment prior to make *.ps, *= one of AC DC, etc
latex_clean:
	-rm *.ind
	-rm *.ilg
	-rm *.mtc*
	-rm *.maf
	-rm *.aux
	-rm *.toc
	-rm *.out
	-rm *.idx
	-rm *.dvi
	-rm *.mtc*
	-rm EXP.latex

