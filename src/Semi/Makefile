# Makefile for managing "Lessons In Electric Circuits -- Semiconductors"
# modified 06/14/2005 (DC) 2*.png \ added to SEMItiny.tar:
# modified 06/14/2005 (DC) -Added  mogrify -density 175 -format eps 2*.png to eps:
# modified  01/7/2006 (DC) -Added mini-TOC  to each chapter of html, .latex
# modified 08/02/2006 (DC) - eps: target modified for smaller better looking (pdf) files
# modified 10/03/2006 (DC) -Added bibliography to .html, .latex pending for others; .tex, .txt, etc
# modified 04/39/2007 (DC) -Removed  bibliography to .html, .latex pending for others; .tex, .txt, etc
# modified 10/03/2008 (DC) -Added sml2latx.sed, sml2html.sed to Latex and html sections--
#                           -- to for rebuild for changes to these .sed files.
# modified 02/15/2020 (DC) -Changed  mogrify -density 120 -format png 0*.eps
# modified 02/15/2020 (DC) -to mogrify -density 120 -colorspace RGB -format png 0*.eps
# modified 11/25/2022 (DC) -png: eps: eps2: targets now only produce output forchanged source.
# modified 11/25/2022 (DC) -Added clean_latex target.

SRC = amplif.sml \
      theory.sml \
      diode.sml \
      bjt.sml \
      jfet.sml \
      mosfet.sml \
      thyr.sml \
      opamp.sml \
      analog.sml \
      active.sml \
      dcdrive.sml \
      acdrive.sml \
      tubes.sml \
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
      hi_9.html \
      hi_10.html \
      hi_11.html \
      hi_12.html \
      hi_13.html \
      bye_11.html \
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
      bye_9.html \
      bye_10.html \
      bye_11.html \
      bye_12.html \
      bye_13.html \
      bye_A1.html \
      bye_A2.html \
      bye_A3.html \
      index.html \
      Makefile



# Generates HTML output
html : $(SRC)
	make SEMI_1.html
	make SEMI_2.html
	make SEMI_3.html
	make SEMI_4.html
	make SEMI_5.html
	make SEMI_6.html
	make SEMI_7.html
	make SEMI_8.html
	make SEMI_9.html
	make SEMI_10.html
	make SEMI_11.html
	make SEMI_12.html
	make SEMI_13.html
	make SEMI_A1.html
	make SEMI_A2.html
	make SEMI_A3.html



# Converts SubML source into TeX source
amplif.tex : amplif.sml
	sed -f sml2tex.sed amplif.sml > amplif.tex

theory.tex : theory.sml
	sed -f sml2tex.sed theory.sml > theory.tex

diode.tex : diode.sml
	sed -f sml2tex.sed diode.sml > diode.tex

bjt.tex : bjt.sml
	sed -f sml2tex.sed bjt.sml > bjt.tex

jfet.tex : jfet.sml
	sed -f sml2tex.sed jfet.sml > jfet.tex

mosfet.tex : mosfet.sml
	sed -f sml2tex.sed mosfet.sml > mosfet.tex

thyr.tex : thyr.sml
	sed -f sml2tex.sed thyr.sml > thyr.tex

opamp.tex : opamp.sml
	sed -f sml2tex.sed opamp.sml > opamp.tex

analog.tex : analog.sml
	sed -f sml2tex.sed analog.sml > analog.tex

active.tex : active.sml
	sed -f sml2tex.sed active.sml > active.tex

dcdrive.tex : dcdrive.sml
	sed -f sml2tex.sed dcdrive.sml > dcdrive.tex

acdrive.tex : acdrive.sml
	sed -f sml2tex.sed acdrive.sml > acdrive.tex

tubes.tex : tubes.sml
	sed -f sml2tex.sed tubes.sml > tubes.tex

about.tex : about.sml
	sed -f sml2tex.sed about.sml > about.tex

contrib.tex : contrib.sml
	sed -f sml2tex.sed contrib.sml > contrib.tex

dsl.tex : dsl.sml
	sed -f sml2tex.sed dsl.sml > dsl.tex



# Converts SubML source into LaTeX source
amplif.latex : amplif.sml sml2latx.sed
	sed -f sml2latx.sed amplif.sml > amplif.latex

theory.latex : theory.sml sml2latx.sed
	sed -f sml2latx.sed theory.sml > theory.latex

diode.latex : diode.sml sml2latx.sed
	sed -f sml2latx.sed diode.sml > diode.latex

bjt.latex : bjt.sml sml2latx.sed
	sed -f sml2latx.sed bjt.sml > bjt.latex

jfet.latex : jfet.sml sml2latx.sed
	sed -f sml2latx.sed jfet.sml > jfet.latex

mosfet.latex : mosfet.sml sml2latx.sed
	sed -f sml2latx.sed mosfet.sml > mosfet.latex

thyr.latex : thyr.sml sml2latx.sed
	sed -f sml2latx.sed thyr.sml > thyr.latex

opamp.latex : opamp.sml sml2latx.sed
	sed -f sml2latx.sed opamp.sml > opamp.latex

analog.latex : analog.sml sml2latx.sed
	sed -f sml2latx.sed analog.sml > analog.latex

active.latex : active.sml sml2latx.sed
	sed -f sml2latx.sed active.sml > active.latex

dcdrive.latex : dcdrive.sml sml2latx.sed
	sed -f sml2latx.sed dcdrive.sml > dcdrive.latex

acdrive.latex : acdrive.sml sml2latx.sed
	sed -f sml2latx.sed acdrive.sml > acdrive.latex

tubes.latex : tubes.sml sml2latx.sed
	sed -f sml2latx.sed tubes.sml > tubes.latex

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
amplif.txt : amplif.sml
	sed -f sml2txt.sed amplif.sml > amplif.txt

theory.txt : theory.sml
	sed -f sml2txt.sed theory.sml > theory.txt

diode.txt : diode.sml
	sed -f sml2txt.sed diode.sml > diode.txt

bjt.txt : bjt.sml
	sed -f sml2txt.sed bjt.sml > bjt.txt

jfet.txt : jfet.sml
	sed -f sml2txt.sed jfet.sml > jfet.txt

mosfet.txt : mosfet.sml
	sed -f sml2txt.sed mosfet.sml > mosfet.txt

thyr.txt : thyr.sml
	sed -f sml2txt.sed thyr.sml > thyr.txt

opamp.txt : opamp.sml
	sed -f sml2txt.sed opamp.sml > opamp.txt

analog.txt : analog.sml
	sed -f sml2txt.sed analog.sml > analog.txt

active.txt : active.sml
	sed -f sml2txt.sed active.sml > active.txt

dcdrive.txt : dcdrive.sml
	sed -f sml2txt.sed dcdrive.sml > dcdrive.txt

acdrive.txt : acdrive.sml
	sed -f sml2txt.sed acdrive.sml > acdrive.txt

tubes.txt : tubes.sml
	sed -f sml2txt.sed tubes.sml > tubes.txt

about.txt : about.sml
	sed -f sml2txt.sed about.sml > about.txt

contrib.txt : contrib.sml
	sed -f sml2txt.sed contrib.sml > contrib.txt

dsl.txt : dsl.sml
	sed -f sml2txt.sed dsl.sml > dsl.txt




# Converts SubML source into HTML source
# toc.map is necessary to htmltoc2 perl script
# added htmltoc2 for mini-table of contnets in chapters
SEMI_1.html : amplif.sml hi_1.html bye_1.html sml2html.sed
	cat hi_1.html > SEMI_1.html
	sed -f sml2html.sed amplif.sml >> SEMI_1.html
	cat bye_1.html >> SEMI_1.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" SEMI_1.html

SEMI_2.html : theory.sml hi_2.html bye_2.html sml2html.sed
	cat hi_2.html > SEMI_2.html
	sed -f sml2html.sed theory.sml >> SEMI_2.html
	cat bye_2.html >> SEMI_2.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_2.html

SEMI_3.html : diode.sml hi_3.html bye_3.html sml2html.sed
	cat hi_3.html > SEMI_3.html
	sed -f sml2html.sed diode.sml >> SEMI_3.html
	cat bye_3.html >> SEMI_3.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_3.html

SEMI_4.html : bjt.sml hi_4.html bye_4.html sml2html.sed
	cat hi_4.html > SEMI_4.html
	sed -f sml2html.sed bjt.sml >> SEMI_4.html
	cat bye_4.html >> SEMI_4.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
       -minitoc "<\!\-\-minitoc\-\->" SEMI_4.html


SEMI_5.html : jfet.sml hi_5.html bye_5.html sml2html.sed
	cat hi_5.html > SEMI_5.html
	sed -f sml2html.sed jfet.sml >> SEMI_5.html
	cat bye_5.html >> SEMI_5.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_5.html

SEMI_6.html : mosfet.sml hi_6.html bye_6.html sml2html.sed
	cat hi_6.html > SEMI_6.html
	sed -f sml2html.sed mosfet.sml >> SEMI_6.html
	cat bye_6.html >> SEMI_6.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_6.html

SEMI_7.html : thyr.sml hi_7.html bye_7.html sml2html.sed
	cat hi_7.html > SEMI_7.html
	sed -f sml2html.sed thyr.sml >> SEMI_7.html
	cat bye_7.html >> SEMI_7.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_7.html

SEMI_8.html : opamp.sml hi_8.html bye_8.html sml2html.sed
	cat hi_8.html > SEMI_8.html
	sed -f sml2html.sed opamp.sml >> SEMI_8.html
	cat bye_8.html >> SEMI_8.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_8.html

SEMI_9.html : analog.sml hi_9.html bye_9.html sml2html.sed
	cat hi_9.html > SEMI_9.html
	sed -f sml2html.sed analog.sml >> SEMI_9.html
	cat bye_9.html >> SEMI_9.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_9.html

SEMI_10.html : active.sml hi_10.html bye_10.html sml2html.sed
	cat hi_10.html > SEMI_10.html
	sed -f sml2html.sed active.sml >> SEMI_10.html
	cat bye_10.html >> SEMI_10.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_10.html

SEMI_11.html : dcdrive.sml hi_11.html bye_11.html sml2html.sed
	cat hi_11.html > SEMI_11.html
	sed -f sml2html.sed dcdrive.sml >> SEMI_11.html
	cat bye_11.html >> SEMI_11.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_11.html

SEMI_12.html : acdrive.sml hi_12.html bye_12.html sml2html.sed
	cat hi_12.html > SEMI_12.html
	sed -f sml2html.sed acdrive.sml >> SEMI_12.html
	cat bye_12.html >> SEMI_12.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_12.html

SEMI_13.html : tubes.sml hi_13.html bye_13.html sml2html.sed
	cat hi_13.html > SEMI_13.html
	sed -f sml2html.sed tubes.sml >> SEMI_13.html
	cat bye_13.html >> SEMI_13.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-minitoc\-\->" SEMI_13.html

SEMI_A1.html : about.sml  hi_A1.html bye_A1.html sml2html.sed
	cat hi_A1.html > SEMI_A1.html
	sed -f sml2html.sed about.sml >> SEMI_A1.html
	cat bye_A1.html >> SEMI_A1.html

SEMI_A2.html : contrib.sml  hi_A2.html bye_A2.html sml2html.sed
	cat hi_A2.html > SEMI_A2.html
	sed -f sml2html.sed contrib.sml >> SEMI_A2.html
	cat bye_A2.html >> SEMI_A2.html

SEMI_A3.html : dsl.sml  hi_A3.html bye_A3.html sml2html.sed
	cat hi_A3.html > SEMI_A3.html
	sed -f sml2html.sed dsl.sml >> SEMI_A3.html
	cat bye_A3.html >> SEMI_A3.html



# Generates DVI output using TeX
tex : $(SRC)
	make amplif.tex
	make theory.tex
	make diode.tex
	make bjt.tex
	make jfet.tex
	make mosfet.tex
	make thyr.tex
	make opamp.tex
	make analog.tex
	make active.tex
	make dcdrive.tex
	make acdrive.tex
	make tubes.tex
	make about.tex
	make contrib.tex
	make dsl.tex
	cat hi.tex \
           amplif.tex \
           theory.tex \
           diode.tex \
           bjt.tex \
           jfet.tex \
           mosfet.tex \
           thyr.tex \
           opamp.tex \
           analog.tex \
           active.tex \
           dcdrive.tex \
           acdrive.tex \
           tubes.tex \
           about.tex \
           contrib.tex \
           dsl.tex \
           bye.tex > SEMI.tex
	tex SEMI.tex
	touch tex



# Generates DVI output using LaTeX
latex : $(SRC) sml2latx.sed
	make amplif.latex
	make theory.latex
	make diode.latex
	make bjt.latex
	make jfet.latex
	make mosfet.latex
	make thyr.latex
	make opamp.latex
	make analog.latex
	make active.latex
	make dcdrive.latex
	make acdrive.latex
	make tubes.latex
	make about.latex
	make contrib.latex
	make dsl.latex
	cat hi.latex \
           amplif.latex \
           theory.latex \
           diode.latex \
           bjt.latex \
           jfet.latex \
           mosfet.latex \
           thyr.latex \
           opamp.latex \
           analog.latex \
           active.latex \
           dcdrive.latex \
           acdrive.latex \
           tubes.latex \
           hi_appendix.latex \
           about.latex \
           contrib.latex \
           dsl.latex \
           bye.latex > SEMI.latex
	latex SEMI.latex
	makeindex SEMI.idx
	latex SEMI.latex
	latex SEMI.latex
	touch latex



# Generates plain ASCII output
txt : $(SRC)
	make amplif.txt
	make theory.txt
	make diode.txt
	make bjt.txt
	make jfet.txt
	make mosfet.txt
	make thyr.txt
	make opamp.txt
	make analog.txt
	make active.txt
	make dcdrive.txt
	make acdrive.txt
	make tubes.txt
	make about.txt
	make contrib.txt
	make dsl.txt
	cat amplif.txt \
           theory.txt \
           diode.txt \
           bjt.txt \
           jfet.txt \
           mosfet.txt \
           thyr.txt \
           opamp.txt \
           analog.txt \
           active.txt \
           dcdrive.txt \
           acdrive.txt \
           tubes.txt \
           about.txt \
           contrib.txt \
           dsl.txt > SEMI.txt
	touch txt




# Generates compressed PostScript and PDF output
SEMI.ps : $(SRC)
	make latex
	dvips -z -Ppdf -o SEMI.ps SEMI.dvi
	ps2pdf SEMI.ps SEMI.pdf
	gzip -f SEMI.ps



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
SEMIsrc.tar.gz: $(SRC)
	tar cvf SEMIsrc.tar \
            $(SRC) \
            *.eps \
            *.jpg \
            *.png \
            *.lps \
            *.sed \
            toc.map \
            htmltoc2 \
            Makefile
	gzip -f SEMIsrc.tar




# Generates a .tar.gz archive containing only ESSENTIAL source files
SEMItiny.tar.gz: $(SRC)
	tar cvf SEMItiny.tar \
            $(SRC) \
            0*.eps \
            1*.eps \
            2*.png \
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
	gzip -f SEMItiny.tar



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
	-rm SEMI.latex
	-rm amplif.latex
	-rm theory.latex
	-rm diode.latex
	-rm bjt.latex
	-rm jfet.latex
	-rm mosfet.latex
	-rm thyr.latex
	-rm opamp.latex
	-rm analog.latex
	-rm active.latex
	-rm dcdrive.latex
	-rm acdrive.latex
	-rm tubes.latex
	-rm about.latex
	-rm contrib.latex
	-rm dsl.latex
	-rm latex
	-rm *.latex~
	-rm *.html~
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
	-rm SEMI.latex


