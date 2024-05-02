# Makefile for managing "Lessons In Electric Circuits -- Digital"
# modified  01/7/2006 (DC) -Added mini-TOC  to each chapter of html, .latex

# modified 11/01/2007 (DC) - eps: target modified for smaller better looking (pdf) files
# modified 11/01/2007 (DC) -Added bibliography to .html, .latex pending for others; .tex, .txt, etc
# modified 11/01/2007 (DC) -Removed  bibliography to .html, .latex pending for others; .tex, .txt, etc
# modified 10/03/2008 (DC) -Added sml2latx.sed, sml2html.sed to Latex and html sections--
#                           -- to for rebuild for changes to these .sed files.
# modified 02/15/2020 (DC) -Changed  mogrify -density 120 -format png 0*.eps
# modified 02/15/2020 (DC) -to mogrify -density 120 -colorspace RGB -format png 0*.eps
# modified 11/25/2022 (DC) -png: eps: eps2: targets now only produce output forchanged source.
# modified 11/25/2022 (DC) -Added clean_latex target.

#This shrinks screen capture height eps:
YRES=108




SRC = numbers.sml \
      binary.sml \
      gates.sml \
      switches.sml \
      relays.sml \
      ladder.sml \
      boolean.sml \
      karnaugh.sml \
      combin.sml \
      multivib.sml \
      counters.sml \
      shiftreg.sml \
      a2d.sml \
      commun.sml \
      memory.sml \
      computer.sml \
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
      hi_14.html \
      hi_15.html \
      hi_16.html \
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
      bye_14.html \
      bye_15.html \
      bye_16.html \
      bye_A1.html \
      bye_A2.html \
      bye_A3.html \
      index.html \
      Makefile



# Generates HTML output
html : $(SRC) sml2html.sed
	make DIGI_1.html
	make DIGI_2.html
	make DIGI_3.html
	make DIGI_4.html
	make DIGI_5.html
	make DIGI_6.html
	make DIGI_7.html
	make DIGI_8.html
	make DIGI_9.html
	make DIGI_10.html
	make DIGI_11.html
	make DIGI_12.html
	make DIGI_13.html
	make DIGI_14.html
	make DIGI_15.html
	make DIGI_16.html
	make DIGI_A1.html
	make DIGI_A2.html
	make DIGI_A3.html



# Converts SubML source into TeX source
numbers.tex : numbers.sml
	sed -f sml2tex.sed numbers.sml > numbers.tex

binary.tex : binary.sml
	sed -f sml2tex.sed binary.sml > binary.tex

gates.tex : gates.sml
	sed -f sml2tex.sed gates.sml > gates.tex

switches.tex : switches.sml
	sed -f sml2tex.sed switches.sml > switches.tex

relays.tex : relays.sml
	sed -f sml2tex.sed relays.sml > relays.tex

ladder.tex : ladder.sml
	sed -f sml2tex.sed ladder.sml > ladder.tex

boolean.tex : boolean.sml
	sed -f sml2tex.sed boolean.sml > boolean.tex

karnaugh.tex : karnaugh.sml
	sed -f sml2tex.sed karnaugh.sml > karnaugh.tex

combin.tex : combin.sml
	sed -f sml2tex.sed combin.sml > combin.tex

multivib.tex : multivib.sml
	sed -f sml2tex.sed multivib.sml > multivib.tex

counters.tex : counters.sml
	sed -f sml2tex.sed counters.sml > counters.tex

shiftreg.tex : shiftreg.sml
	sed -f sml2tex.sed shiftreg.sml > shiftreg.tex

a2d.tex : a2d.sml
	sed -f sml2tex.sed a2d.sml > a2d.tex

commun.tex : commun.sml
	sed -f sml2tex.sed commun.sml > commun.tex

memory.tex : memory.sml
	sed -f sml2tex.sed memory.sml > memory.tex

computer.tex : computer.sml
	sed -f sml2tex.sed computer.sml > computer.tex

about.tex : about.sml
	sed -f sml2tex.sed about.sml > about.tex

contrib.tex : contrib.sml
	sed -f sml2tex.sed contrib.sml > contrib.tex

dsl.tex : dsl.sml
	sed -f sml2tex.sed dsl.sml > dsl.tex




# Converts SubML source into LaTeX source
numbers.latex : numbers.sml sml2latx.sed
	sed -f sml2latx.sed numbers.sml > numbers.latex

binary.latex : binary.sml sml2latx.sed
	sed -f sml2latx.sed binary.sml > binary.latex

gates.latex : gates.sml sml2latx.sed
	sed -f sml2latx.sed gates.sml > gates.latex

switches.latex : switches.sml sml2latx.sed
	sed -f sml2latx.sed switches.sml > switches.latex

relays.latex : relays.sml sml2latx.sed
	sed -f sml2latx.sed relays.sml > relays.latex

ladder.latex : ladder.sml sml2latx.sed
	sed -f sml2latx.sed ladder.sml > ladder.latex

boolean.latex : boolean.sml sml2latx.sed
	sed -f sml2latx.sed boolean.sml > boolean.latex

karnaugh.latex : karnaugh.sml sml2latx.sed
	sed -f sml2latx.sed karnaugh.sml > karnaugh.latex

combin.latex : combin.sml sml2latx.sed
	sed -f sml2latx.sed combin.sml > combin.latex

multivib.latex : multivib.sml sml2latx.sed
	sed -f sml2latx.sed multivib.sml > multivib.latex

counters.latex : counters.sml sml2latx.sed
	sed -f sml2latx.sed counters.sml > counters.latex

shiftreg.latex : shiftreg.sml sml2latx.sed
	sed -f sml2latx.sed shiftreg.sml > shiftreg.latex

a2d.latex : a2d.sml sml2latx.sed
	sed -f sml2latx.sed a2d.sml > a2d.latex

commun.latex : commun.sml sml2latx.sed
	sed -f sml2latx.sed commun.sml > commun.latex

memory.latex : memory.sml sml2latx.sed
	sed -f sml2latx.sed memory.sml > memory.latex

computer.latex : computer.sml sml2latx.sed
	sed -f sml2latx.sed computer.sml > computer.latex

about.latex : about.sml sml2latx.sed
	sed -f sml2latx.sed about.sml > about.latex
	#no mini-TOC for this chapter-- remove it
	cp about.latex about.latex~
	sed  s/\\minitoc//g about.latex~ >about.latex

contrib.latex : contrib.sml sml2latx.sed
	sed -f sml2latx.sed contrib.sml > contrib.latex
	#no mini-TOC for this chapter-- remove it
	cp contrib.latex contrib.latex~
	sed  s/\\minitoc//g contrib.latex~ >contrib.latex

dsl.latex : dsl.sml sml2latx.sed
	sed -f sml2latx.sed dsl.sml > dsl.latex
	#no mini-TOC for this chapter-- remove it
	cp dsl.latex dsl.latex~
	sed  s/\\minitoc//g dsl.latex~ >dsl.latex




# Converts SubML source into plain ASCII text
numbers.txt : numbers.sml sml2latx.sed
	sed -f sml2txt.sed numbers.sml > numbers.txt

binary.txt : binary.sml
	sed -f sml2txt.sed binary.sml > binary.txt

gates.txt : gates.sml
	sed -f sml2txt.sed gates.sml > gates.txt

switches.txt : switches.sml
	sed -f sml2txt.sed switches.sml > switches.txt

relays.txt : relays.sml
	sed -f sml2txt.sed relays.sml > relays.txt

ladder.txt : ladder.sml
	sed -f sml2txt.sed ladder.sml > ladder.txt

boolean.txt : boolean.sml
	sed -f sml2txt.sed boolean.sml > boolean.txt

karnaugh.txt : karnaugh.sml
	sed -f sml2txt.sed karnaugh.sml > karnaugh.txt

combin.txt : combin.sml
	sed -f sml2txt.sed combin.sml > combin.txt

multivib.txt : multivib.sml
	sed -f sml2txt.sed multivib.sml > multivib.txt

counters.txt : counters.sml
	sed -f sml2txt.sed counters.sml > counters.txt

shiftreg.txt : shiftreg.sml
	sed -f sml2txt.sed shiftreg.sml > shiftreg.txt

a2d.txt : a2d.sml
	sed -f sml2txt.sed a2d.sml > a2d.txt

commun.txt : commun.sml
	sed -f sml2txt.sed commun.sml > commun.txt

memory.txt : memory.sml
	sed -f sml2txt.sed memory.sml > memory.txt

computer.txt : computer.sml
	sed -f sml2txt.sed computer.sml > computer.txt

about.txt : about.sml
	sed -f sml2txt.sed about.sml > about.txt

contrib.txt : contrib.sml
	sed -f sml2txt.sed contrib.sml > contrib.txt

dsl.txt : dsl.sml
	sed -f sml2txt.sed dsl.sml > dsl.txt



# Converts SubML source into HTML source
# toc.map is necessary to htmltoc2 perl script
# added htmltoc2 for mini-table of contnets in chapters
DIGI_1.html : numbers.sml hi_1.html bye_1.html sml2html.sed
	cat hi_1.html > DIGI_1.html
	sed -f sml2html.sed numbers.sml >> DIGI_1.html
	cat bye_1.html >> DIGI_1.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_1.html

DIGI_2.html : binary.sml hi_2.html bye_2.html sml2html.sed
	cat hi_2.html > DIGI_2.html
	sed -f sml2html.sed binary.sml >> DIGI_2.html
	cat bye_2.html >> DIGI_2.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_2.html

DIGI_3.html : gates.sml hi_3.html bye_3.html sml2html.sed
	cat hi_3.html > DIGI_3.html
	sed -f sml2html.sed gates.sml >> DIGI_3.html
	cat bye_3.html >> DIGI_3.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_3.html

DIGI_4.html : switches.sml hi_4.html bye_4.html sml2html.sed
	cat hi_4.html > DIGI_4.html
	sed -f sml2html.sed switches.sml >> DIGI_4.html
	cat bye_4.html >> DIGI_4.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_4.html

DIGI_5.html : relays.sml hi_5.html bye_5.html sml2html.sed
	cat hi_5.html > DIGI_5.html
	sed -f sml2html.sed relays.sml >> DIGI_5.html
	cat bye_5.html >> DIGI_5.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_5.html

DIGI_6.html : ladder.sml hi_6.html bye_6.html sml2html.sed
	cat hi_6.html > DIGI_6.html
	sed -f sml2html.sed ladder.sml >> DIGI_6.html
	cat bye_6.html >> DIGI_6.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_6.html

DIGI_7.html : boolean.sml hi_7.html bye_7.html sml2html.sed
	cat hi_7.html > DIGI_7.html
	sed -f sml2html.sed boolean.sml >> DIGI_7.html
	cat bye_7.html >> DIGI_7.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_7.html

DIGI_8.html : karnaugh.sml hi_8.html bye_8.html sml2html.sed
	cat hi_8.html > DIGI_8.html
	sed -f sml2html.sed karnaugh.sml >> DIGI_8.html
	cat bye_8.html >> DIGI_8.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_8.html

DIGI_9.html : combin.sml hi_9.html bye_9.html sml2html.sed
	cat hi_9.html > DIGI_9.html
	sed -f sml2html.sed combin.sml >> DIGI_9.html
	cat bye_9.html >> DIGI_9.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_9.html

DIGI_10.html : multivib.sml hi_10.html bye_10.html sml2html.sed
	cat hi_10.html > DIGI_10.html
	sed -f sml2html.sed multivib.sml >> DIGI_10.html
	cat bye_10.html >> DIGI_10.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_10.html

DIGI_11.html : counters.sml hi_11.html bye_11.html sml2html.sed
	cat hi_11.html > DIGI_11.html
	sed -f sml2html.sed counters.sml >> DIGI_11.html
	cat bye_11.html >> DIGI_11.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_11.html

DIGI_12.html : shiftreg.sml hi_12.html bye_12.html sml2html.sed
	cat hi_12.html > DIGI_12.html
	sed -f sml2html.sed shiftreg.sml >> DIGI_12.html
	cat bye_12.html >> DIGI_12.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_12.html

DIGI_13.html : a2d.sml hi_13.html bye_13.html sml2html.sed
	cat hi_13.html > DIGI_13.html
	sed -f sml2html.sed a2d.sml >> DIGI_13.html
	cat bye_13.html >> DIGI_13.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_13.html

DIGI_14.html : commun.sml hi_14.html bye_14.html sml2html.sed
	cat hi_14.html > DIGI_14.html
	sed -f sml2html.sed commun.sml >> DIGI_14.html
	cat bye_14.html >> DIGI_14.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_14.html

DIGI_15.html : memory.sml hi_15.html bye_15.html sml2html.sed
	cat hi_15.html > DIGI_15.html
	sed -f sml2html.sed memory.sml >> DIGI_15.html
	cat bye_15.html >> DIGI_15.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_15.html

DIGI_16.html : computer.sml hi_16.html bye_16.html sml2html.sed
	cat hi_16.html > DIGI_16.html
	sed -f sml2html.sed computer.sml >> DIGI_16.html
	cat bye_16.html >> DIGI_16.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DIGI_16.html

DIGI_A1.html : about.sml hi_A1.html bye_A1.html sml2html.sed
	cat hi_A1.html > DIGI_A1.html
	sed -f sml2html.sed about.sml >> DIGI_A1.html
	cat bye_A1.html >> DIGI_A1.html

DIGI_A2.html : contrib.sml hi_A2.html bye_A2.html sml2html.sed
	cat hi_A2.html > DIGI_A2.html
	sed -f sml2html.sed contrib.sml >> DIGI_A2.html
	cat bye_A2.html >> DIGI_A2.html

DIGI_A3.html : dsl.sml hi_A3.html bye_A3.html sml2html.sed
	cat hi_A3.html > DIGI_A3.html
	sed -f sml2html.sed dsl.sml >> DIGI_A3.html
	cat bye_A3.html >> DIGI_A3.html




# Generates DVI output using TeX
tex : $(SRC) sml2html.sed
	make numbers.tex      
	make binary.tex
	make gates.tex
	make switches.tex
	make relays.tex
	make ladder.tex
	make boolean.tex
	make karnaugh.tex
	make combin.tex
	make multivib.tex
	make counters.tex
	make shiftreg.tex
	make a2d.tex
	make commun.tex
	make memory.tex
	make computer.tex
	make about.tex
	make contrib.tex
	make dsl.tex
	cat hi.tex \
           numbers.tex \
           binary.tex \
           gates.tex \
           switches.tex \
           relays.tex \
           ladder.tex \
           boolean.tex \
           karnaugh.tex \
           combin.tex \
           multivib.tex \
           counters.tex \
           shiftreg.tex \
           a2d.tex \
           commun.tex \
           memory.tex \
           computer.tex \
           about.tex \
           contrib.tex \
           dsl.tex \
           bye.tex > DIGI.tex
	tex DIGI.tex
	touch tex



# Generates DVI output using LaTeX
latex : $(SRC) sml2latx.sed
	make numbers.latex      
	make binary.latex
	make gates.latex
	make switches.latex
	make relays.latex
	make ladder.latex
	make boolean.latex
	make karnaugh.latex
	make combin.latex
	make multivib.latex
	make counters.latex
	make shiftreg.latex
	make a2d.latex
	make commun.latex
	make memory.latex
	make computer.latex
	make about.latex
	make contrib.latex
	make dsl.latex
	cat hi.latex \
           numbers.latex \
           binary.latex \
           gates.latex \
           switches.latex \
           relays.latex \
           ladder.latex \
           boolean.latex \
           karnaugh.latex \
           combin.latex \
           multivib.latex \
           counters.latex \
           shiftreg.latex \
           a2d.latex \
           commun.latex \
           memory.latex \
           computer.latex \
           hi_appendix.latex \
           about.latex \
           contrib.latex \
           dsl.latex \
           bye.latex > DIGI.latex
	latex DIGI.latex
	makeindex DIGI.idx
	latex DIGI.latex
	latex DIGI.latex
	touch latex



# Generates plain ASCII output
txt : $(SRC)
	make numbers.txt      
	make binary.txt
	make gates.txt
	make switches.txt
	make relays.txt
	make ladder.txt
	make boolean.txt
	make karnaugh.txt
	make combin.txt
	make multivib.txt
	make counters.txt 
	make shiftreg.txt 
	make a2d.txt 
	make commun.txt 
	make memory.txt 
	make computer.txt 
	make about.txt 
	make contrib.txt
	make dsl.txt
	cat numbers.txt \
           binary.txt \
           gates.txt \
           switches.txt \
           relays.txt \
           ladder.txt \
           boolean.txt \
           karnaugh.txt \
           combin.txt \
           multivib.txt \
           counters.txt \
           shiftreg.txt \
           a2d.txt \
           commun.txt \
           memory.txt \
           computer.txt \
           about.txt \
           contrib.txt \
           dsl.txt > DIGI.txt
	touch txt



# Generates compressed PostScript and PDF output
DIGI.ps : $(SRC)
	make latex
	dvips -z -Ppdf -o DIGI.ps DIGI.dvi
	ps2pdf DIGI.ps DIGI.pdf
	gzip -f DIGI.ps




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
DIGIsrc.tar.gz: $(SRC)
	tar cvf DIGIsrc.tar \
            $(SRC) \
            *.eps \
            *.jpg \
            *.png \
            *.lps \
            *.sed \
            toc.map \
            htmltoc2 \
            Makefile
	gzip -f DIGIsrc.tar




# Generates a .tar.gz archive containing only ESSENTIAL source files
DIGItiny.tar.gz: $(SRC)
	tar cvf DIGItiny.tar \
            $(SRC) \
            0*.eps \
            1*.eps \
            4*.jpg \
            4*.png \
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
	gzip -f DIGItiny.tar


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
	-rm DIGI.latex
	-rm numbers.latex
	-rm binary.latex
	-rm gates.latex
	-rm switches.latex
	-rm relays.latex
	-rm ladder.latex
	-rm boolean.latex
	-rm karnaugh.latex
	-rm combin.latex
	-rm multivib.latex
	-rm counters.latex
	-rm shiftreg.latex
	-rm a2d.latex
	-rm commun.latex
	-rm memory.latex
	-rm computer.latex
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
	-rm DIGI.latex

