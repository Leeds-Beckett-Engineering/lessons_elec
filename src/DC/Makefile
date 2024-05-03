# Makefile for managing "Lessons In Electric Circuits -- DC"
# modified  01/7/2006 (DC) -Added mini-TOC  to each chapter of html, .latex
# modified 10/03/2006 (DC) -Added bibliography to .html, .latex pending for others; .tex, .txt, etc
# modified 10/03/2006 (DC) -moved bibliography to chapters
# modified 10/03/2008 (DC) -Added sml2latx.sed, sml2html.sed to Latex and html sections--
#                           -- to for rebuild for changes to these .sed files.
# modified 02/15/2020 (DC) -Changed  mogrify -density 120 -format png 0*.eps
# modified 02/15/2020 (DC) -to mogrify -density 120 -colorspace RGB -format png 0*.eps
# modified 11/25/2022 (DC) -png: eps: eps2: targets now only produce output forchanged source.
# modified 11/25/2022 (DC) -Added clean_latex target.




YRES=108

SRC = basiccon.sml \
      ohm.sml \
      safety.sml \
      scientif.sml \
      s_and_p.sml \
      divider.sml \
      s_p.sml \
      dcmeter.sml \
      dcsignal.sml \
      dcnet.sml \
      batt.sml \
      conduct.sml \
      cap.sml \
      magnet.sml \
      inductor.sml \
      time.sml \
      dcmotor.sml \
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
	make DC_1.html
	make DC_2.html
	make DC_3.html
	make DC_4.html
	make DC_5.html
	make DC_6.html
	make DC_7.html
	make DC_8.html
	make DC_9.html
	make DC_10.html
	make DC_11.html
	make DC_12.html
	make DC_13.html
	make DC_14.html
	make DC_15.html
	make DC_16.html
	make DC_A1.html
	make DC_A2.html
	make DC_A3.html


 

# Converts SubML source into TeX source
basiccon.tex : basiccon.sml
	sed -f sml2tex.sed basiccon.sml > basiccon.tex

ohm.tex : ohm.sml
	sed -f sml2tex.sed ohm.sml > ohm.tex

safety.tex : safety.sml
	sed -f sml2tex.sed safety.sml > safety.tex

scientif.tex : scientif.sml
	sed -f sml2tex.sed scientif.sml > scientif.tex

s_and_p.tex : s_and_p.sml
	sed -f sml2tex.sed s_and_p.sml > s_and_p.tex

divider.tex : divider.sml
	sed -f sml2tex.sed divider.sml > divider.tex

s_p.tex : s_p.sml
	sed -f sml2tex.sed s_p.sml > s_p.tex

dcmeter.tex : dcmeter.sml
	sed -f sml2tex.sed dcmeter.sml > dcmeter.tex

dcsignal.tex : dcsignal.sml
	sed -f sml2tex.sed dcsignal.sml > dcsignal.tex

dcnet.tex : dcnet.sml
	sed -f sml2tex.sed dcnet.sml > dcnet.tex

batt.tex : batt.sml
	sed -f sml2tex.sed batt.sml > batt.tex

conduct.tex : conduct.sml
	sed -f sml2tex.sed conduct.sml > conduct.tex

cap.tex : cap.sml
	sed -f sml2tex.sed cap.sml > cap.tex

magnet.tex : magnet.sml
	sed -f sml2tex.sed magnet.sml > magnet.tex

inductor.tex : inductor.sml
	sed -f sml2tex.sed inductor.sml > inductor.tex

time.tex : time.sml
	sed -f sml2tex.sed time.sml > time.tex

about.tex : about.sml
	sed -f sml2tex.sed about.sml > about.tex

contrib.tex : contrib.sml
	sed -f sml2tex.sed contrib.sml > contrib.tex

dsl.tex : dsl.sml
	sed -f sml2tex.sed dsl.sml > dsl.tex



# Converts SubML source into LaTeX source
basiccon.latex : basiccon.sml sml2latx.sed
	sed -f sml2latx.sed basiccon.sml > basiccon.latex

ohm.latex : ohm.sml sml2latx.sed
	sed -f sml2latx.sed ohm.sml > ohm.latex

safety.latex : safety.sml sml2latx.sed
	sed -f sml2latx.sed safety.sml > safety.latex

scientif.latex : scientif.sml sml2latx.sed
	sed -f sml2latx.sed scientif.sml > scientif.latex

s_and_p.latex : s_and_p.sml sml2latx.sed
	sed -f sml2latx.sed s_and_p.sml > s_and_p.latex

divider.latex : divider.sml sml2latx.sed
	sed -f sml2latx.sed divider.sml > divider.latex

s_p.latex : s_p.sml sml2latx.sed
	sed -f sml2latx.sed s_p.sml > s_p.latex

dcmeter.latex : dcmeter.sml sml2latx.sed
	sed -f sml2latx.sed dcmeter.sml > dcmeter.latex

dcsignal.latex : dcsignal.sml sml2latx.sed
	sed -f sml2latx.sed dcsignal.sml > dcsignal.latex

dcnet.latex : dcnet.sml sml2latx.sed
	sed -f sml2latx.sed dcnet.sml > dcnet.latex

batt.latex : batt.sml sml2latx.sed
	sed -f sml2latx.sed batt.sml > batt.latex

conduct.latex : conduct.sml sml2latx.sed
	sed -f sml2latx.sed conduct.sml > conduct.latex

cap.latex : cap.sml sml2latx.sed
	sed -f sml2latx.sed cap.sml > cap.latex

magnet.latex : magnet.sml sml2latx.sed
	sed -f sml2latx.sed magnet.sml > magnet.latex

inductor.latex : inductor.sml sml2latx.sed
	sed -f sml2latx.sed inductor.sml > inductor.latex

time.latex : time.sml sml2latx.sed
	sed -f sml2latx.sed time.sml > time.latex

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
basiccon.txt : basiccon.sml
	sed -f sml2txt.sed basiccon.sml > basiccon.txt

ohm.txt : ohm.sml
	sed -f sml2txt.sed ohm.sml > ohm.txt

safety.txt : safety.sml
	sed -f sml2txt.sed safety.sml > safety.txt

scientif.txt : scientif.sml
	sed -f sml2txt.sed scientif.sml > scientif.txt

s_and_p.txt : s_and_p.sml
	sed -f sml2txt.sed s_and_p.sml > s_and_p.txt

divider.txt : divider.sml
	sed -f sml2txt.sed divider.sml > divider.txt

s_p.txt : s_p.sml
	sed -f sml2txt.sed s_p.sml > s_p.txt

dcmeter.txt : dcmeter.sml
	sed -f sml2txt.sed dcmeter.sml > dcmeter.txt

dcsignal.txt : dcsignal.sml
	sed -f sml2txt.sed dcsignal.sml > dcsignal.txt

dcnet.txt : dcnet.sml
	sed -f sml2txt.sed dcnet.sml > dcnet.txt

batt.txt : batt.sml
	sed -f sml2txt.sed batt.sml > batt.txt

conduct.txt : conduct.sml
	sed -f sml2txt.sed conduct.sml > conduct.txt

cap.txt : cap.sml
	sed -f sml2txt.sed cap.sml > cap.txt

magnet.txt : magnet.sml
	sed -f sml2txt.sed magnet.sml > magnet.txt

inductor.txt : inductor.sml
	sed -f sml2txt.sed inductor.sml > inductor.txt

time.txt : time.sml
	sed -f sml2txt.sed time.sml > time.txt

about.txt : about.sml
	sed -f sml2txt.sed about.sml > about.txt

contrib.txt : contrib.sml
	sed -f sml2txt.sed contrib.sml > contrib.txt

dsl.txt : dsl.sml
	sed -f sml2txt.sed dsl.sml > dsl.txt



# Converts SubML source into HTML source
# toc.map is necessary to htmltoc2 perl script
# added htmltoc2 for mini-table of contnets in chapters
DC_1.html : basiccon.sml hi_1.html bye_1.html sml2html.sed
	cat hi_1.html > DC_1.html
	sed -f sml2html.sed basiccon.sml >> DC_1.html
	cat bye_1.html >> DC_1.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_1.html

DC_2.html : ohm.sml hi_2.html bye_2.html sml2html.sed
	cat hi_2.html > DC_2.html
	sed -f sml2html.sed ohm.sml >> DC_2.html
	cat bye_2.html >> DC_2.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_2.html

DC_3.html : safety.sml hi_3.html bye_3.html sml2html.sed
	cat hi_3.html > DC_3.html
	sed -f sml2html.sed safety.sml >> DC_3.html
	cat bye_3.html >> DC_3.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_3.html


DC_4.html : scientif.sml hi_4.html bye_4.html sml2html.sed
	cat hi_4.html > DC_4.html
	sed -f sml2html.sed scientif.sml >> DC_4.html
	cat bye_4.html >> DC_4.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_4.html

DC_5.html : s_and_p.sml hi_5.html bye_5.html sml2html.sed
	cat hi_5.html > DC_5.html
	sed -f sml2html.sed s_and_p.sml >> DC_5.html
	cat bye_5.html >> DC_5.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_5.html

DC_6.html : divider.sml hi_6.html bye_6.html sml2html.sed
	cat hi_6.html > DC_6.html
	sed -f sml2html.sed divider.sml >> DC_6.html
	cat bye_6.html >> DC_6.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_6.html

DC_7.html : s_p.sml hi_7.html bye_7.html sml2html.sed
	cat hi_7.html > DC_7.html
	sed -f sml2html.sed s_p.sml >> DC_7.html
	cat bye_7.html >> DC_7.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_7.html

DC_8.html : dcmeter.sml hi_8.html bye_8.html sml2html.sed
	cat hi_8.html > DC_8.html
	sed -f sml2html.sed dcmeter.sml >> DC_8.html
	cat bye_8.html >> DC_8.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_8.html

DC_9.html : dcsignal.sml hi_9.html bye_9.html sml2html.sed
	cat hi_9.html > DC_9.html
	sed -f sml2html.sed dcsignal.sml >> DC_9.html
	cat bye_9.html >> DC_9.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_9.html

DC_10.html : dcnet.sml hi_10.html bye_10.html sml2html.sed
	cat hi_10.html > DC_10.html
	sed -f sml2html.sed dcnet.sml >> DC_10.html
	cat bye_10.html >> DC_10.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_10.html

DC_11.html : batt.sml hi_11.html bye_11.html sml2html.sed
	cat hi_11.html > DC_11.html
	sed -f sml2html.sed batt.sml >> DC_11.html
	cat bye_11.html >> DC_11.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_11.html

DC_12.html : conduct.sml hi_12.html bye_12.html sml2html.sed
	cat hi_12.html > DC_12.html
	sed -f sml2html.sed conduct.sml >> DC_12.html
	cat bye_12.html >> DC_12.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_12.html

DC_13.html : cap.sml hi_13.html bye_13.html sml2html.sed
	cat hi_13.html > DC_13.html
	sed -f sml2html.sed cap.sml >> DC_13.html
	cat bye_13.html >> DC_13.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_13.html

DC_14.html : magnet.sml hi_14.html bye_14.html sml2html.sed
	cat hi_14.html > DC_14.html
	sed -f sml2html.sed magnet.sml >> DC_14.html
	cat bye_14.html >> DC_14.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_14.html

DC_15.html : inductor.sml hi_15.html bye_15.html sml2html.sed
	cat hi_15.html > DC_15.html
	sed -f sml2html.sed inductor.sml >> DC_15.html
	cat bye_15.html >> DC_15.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_15.html

DC_16.html : time.sml hi_16.html bye_16.html sml2html.sed
	cat hi_16.html > DC_16.html
	sed -f sml2html.sed time.sml >> DC_16.html
	cat bye_16.html >> DC_16.html
	./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
        -minitoc "<\!\-\-\minitoc\-\->" DC_16.html

DC_A1.html : about.sml hi_A1.html bye_A1.html sml2html.sed
	cat hi_A1.html > DC_A1.html
	sed -f sml2html.sed about.sml >> DC_A1.html
	cat bye_A1.html >> DC_A1.html

DC_A2.html : contrib.sml hi_A2.html bye_A2.html sml2html.sed
	cat hi_A2.html > DC_A2.html
	sed -f sml2html.sed contrib.sml >> DC_A2.html
	cat bye_A2.html >> DC_A2.html

DC_A3.html : dsl.sml hi_A3.html bye_A3.html sml2html.sed
	cat hi_A3.html > DC_A3.html
	sed -f sml2html.sed dsl.sml >> DC_A3.html
	cat bye_A3.html >> DC_A3.html



# Generates DVI output using TeX
tex : $(SRC)
	make basiccon.tex
	make ohm.tex
	make safety.tex
	make scientif.tex
	make s_and_p.tex
	make divider.tex
	make s_p.tex
	make dcmeter.tex
	make dcsignal.tex
	make dcnet.tex
	make batt.tex
	make conduct.tex
	make cap.tex
	make magnet.tex
	make inductor.tex
	make time.tex
	make about.tex
	make contrib.tex
	make dsl.tex
	cat hi.tex \
           basiccon.tex \
           ohm.tex \
           safety.tex \
           scientif.tex \
           s_and_p.tex \
           divider.tex \
           s_p.tex \
           dcmeter.tex \
           dcsignal.tex \
           dcnet.tex \
           batt.tex \
           conduct.tex \
           cap.tex \
           magnet.tex \
           inductor.tex \
           time.tex \
           about.tex \
           contrib.tex \
           dsl.tex \
           bye.tex > DC.tex
	tex DC.tex
	touch tex



# Generates DVI output using LaTeX
latex : $(SRC) sml2latx.sed
	make basiccon.latex
	make ohm.latex
	make safety.latex
	make scientif.latex
	make s_and_p.latex
	make divider.latex
	make s_p.latex
	make dcmeter.latex
	make dcsignal.latex
	make dcnet.latex
	make batt.latex
	make conduct.latex
	make cap.latex
	make magnet.latex
	make inductor.latex
	make time.latex
	make about.latex
	make contrib.latex
	make dsl.latex
	cat hi.latex \
           basiccon.latex \
           ohm.latex \
           safety.latex \
           scientif.latex \
           s_and_p.latex \
           divider.latex \
           s_p.latex \
           dcmeter.latex \
           dcsignal.latex \
           dcnet.latex \
           batt.latex \
           conduct.latex \
           cap.latex \
           magnet.latex \
           inductor.latex \
           time.latex \
           hi_appendix.latex \
           about.latex \
           contrib.latex \
           dsl.latex \
           bye.latex > DC.latex
	latex DC.latex
	makeindex DC.idx
	latex DC.latex
	latex DC.latex
	touch latex



# Generates plain ASCII output
txt : $(SRC)
	make basiccon.txt
	make ohm.txt
	make safety.txt
	make scientif.txt
	make s_and_p.txt
	make divider.txt
	make s_p.txt
	make dcmeter.txt
	make dcsignal.txt
	make dcnet.txt
	make batt.txt
	make conduct.txt
	make cap.txt
	make magnet.txt
	make inductor.txt
	make time.txt
	make about.txt
	make contrib.txt
	make dsl.txt
	cat basiccon.txt \
           ohm.txt \
           safety.txt \
           scientif.txt \
           s_and_p.txt \
           divider.txt \
           s_p.txt \
           dcmeter.txt \
           dcsignal.txt \
           dcnet.txt \
           batt.txt \
           conduct.txt \
           cap.txt \
           magnet.txt \
           inductor.txt \
           time.txt \
           about.txt \
           contrib.txt \
           dsl.txt > DC.txt
	touch txt




# Generates PostScript and PDF output
DC.ps : $(SRC)
	make latex
	dvips -z -Ppdf -o DC.ps DC.dvi
	ps2pdf DC.ps DC.pdf
	gzip -f DC.ps



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
DCsrc.tar.gz: $(SRC)
	tar cvf DCsrc.tar \
            $(SRC) \
            *.eps \
            *.jpg \
            *.png \
            *.lps \
            *.sed \
            hi* \
            bye* \
            toc.map \
            htmltoc2 \
            Makefile
	gzip -f DCsrc.tar




# Generates a .tar.gz archive containing only ESSENTIAL source files
DCtiny.tar.gz: $(SRC)
	tar cvf DCtiny.tar \
            $(SRC) \
            0*.eps \
            1*.eps \
            2*.png \
            4*.jpg \
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
	gzip -f DCtiny.tar



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
	-rm DC.latex
	-rm basiccon.latex
	-rm ohm.latex
	-rm safety.latex
	-rm scientif.latex
	-rm s_and_p.latex
	-rm divider.latex
	-rm s_p.latex
	-rm dcmeter.latex
	-rm dcsignal.latex
	-rm dcnet.latex
	-rm batt.latex
	-rm conduct.latex
	-rm cap.latex
	-rm magnet.latex
	-rm inductor.latex
	-rm time.latex
	-rm dcmotor.latex
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
	-rm DC.latex

