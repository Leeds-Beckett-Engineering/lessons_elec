## Master makefile for managing "Lessons In Electric Circuits" ##
#
# Last modified 04/07/2002, Tony R. Kuphaldt
# Last modified 04/09/2005, Dennis Crunkilton, added log.html to liectiny: targets
# modified 0415/2005 (DC) added sm_hosted.gif, README to liecsrc, liectiny and liechtml 

#####################################################################

html :
	make -C DC html
	make -C AC html
	make -C Semi html
	make -C Digital html
	make -C Ref html
	make -C Exper html

# The 'html' option puts together all the pieces necessary to create
# HTML output for each volume of the book.  It should stay at the 
# top of this Makefile so as to be the default option.

#####################################################################

all :
	make html
	make liechtml
	make liecsrc
	make liectiny
	make -C DC DC.ps
	make -C AC AC.ps
	make -C Semi SEMI.ps
	make -C Digital DIGI.ps
	make -C Ref REF.ps
	make -C Exper EXP.ps

# The 'all' option generates HTML and compressed PostScript output 
# for all volumes, and also updates all archive files.  The intent 
# this option is for web content providers to be able to simply 
# type 'make all' after uploading the latest source code and have 
# it produce ALL the files necessary for users to download.

#####################################################################



#####################################################################

alls:
	make html
	make liechtml
	make liectiny
	make liecsrc
# alls is a short version of all, make all except ps


tinyinstall :
	make png
	make eps
	make html
	make -C DC DC.ps
	make -C AC AC.ps
	make -C Semi SEMI.ps
	make -C Digital DIGI.ps
	make -C Ref REF.ps
	make -C Exper EXP.ps

# The 'tinyinstall' option installs all necessary files from the
# untarred 'liectiny.tar' archive file, after each of the '.tar'
# archive files in the book directories have been ungzipped and
# untarred as well. 

#####################################################################

png : 
	make -C DC png
	make -C AC png
	make -C Semi png
	make -C Digital png
	make -C Ref png
	make -C Exper png

# The 'png' option creates PNG versions of all illustrations, 
# graphs, and equations from their respective EPS source files.

#####################################################################

eps : 
	make -C DC eps
	make -C AC eps
	make -C Semi eps
	make -C Digital eps
	make -C Ref eps
	make -C Exper eps

# The 'eps' option creates Encapsulated PostScript (EPS) versions 
# of all photographic images and artwork images from their
# respective JPG source files.

#####################################################################

liectiny : 
	make -C DC DCtiny.tar.gz
	make -C AC ACtiny.tar.gz
	make -C Semi SEMItiny.tar.gz
	make -C Digital DIGItiny.tar.gz
	make -C Ref REFtiny.tar.gz
	make -C Exper EXPtiny.tar.gz
	tar cvf liectiny.tar Makefile \
			     README\
			     sm_hosted.gif\
			     log.html\
			     index.* \
			     Devel/* \
			     bin/* \
	                     *.jpg \
	                     *.eps \
	                     *.png \
	                     submlreg \
	                     DC/DCtiny.tar.gz \
	                     AC/ACtiny.tar.gz \
			     Semi/SEMItiny.tar.gz \
			     Digital/DIGItiny.tar.gz \
			     Ref/REFtiny.tar.gz \
			     Exper/EXPtiny.tar.gz

# The 'liectiny' option archives the bare minimum set of files 
# necessary to reconstruct the entire book.  Image files, while 
# duplicated in the directories as both .eps and .jpg formats for 
# HTML and TeX/LaTeX/DVI output, respectively, are archived here 
# only in their raw source (native) formats: that is, .eps for all
# schematics, .eps for tables and equations, .jpg for artwork, and
# .jpg for photographs.

#####################################################################

liecsrc : 
	make -C DC DCsrc.tar.gz
	make -C AC ACsrc.tar.gz
	make -C Semi SEMIsrc.tar.gz
	make -C Digital DIGIsrc.tar.gz
	make -C Ref REFsrc.tar.gz
	make -C Exper EXPsrc.tar.gz
	tar cvf liecsrc.tar Makefile \
	                    README\
	                    sm_hosted.gif\
	                    log.html\
	                    index.* \
	                    Devel/* \
			     bin/* \
	                    *.jpg \
	                    *.eps \
	                    *.png \
	                    submlreg \
	                    DC/DCsrc.tar.gz \
	                    AC/ACsrc.tar.gz \
			    Semi/SEMIsrc.tar.gz \
			    Digital/DIGIsrc.tar.gz \
			    Ref/REFsrc.tar.gz \
			    Exper/EXPsrc.tar.gz

# The 'liecsrc' option archives all source files necessary to 
# reconstruct the entire book.  

#####################################################################

liechtml : 
	tar cf liechtml.tar \
             DC/*.htm* DC/*.jpg DC/*.png \
             AC/*.htm* AC/*.jpg AC/*.png \
             Semi/*.htm* Semi/*.jpg Semi/*.png \
             Digital/*.htm* Digital/*.jpg Digital/*.png \
             Ref/*.htm* Ref/*.jpg Ref/*.png \
             Exper/*.htm* Exper/*.jpg Exper/*.png \
             Devel/*.htm* Devel/*.jpg Devel/*.png \
             index.htm *.jpg *.png
	gzip -f liechtml.tar

# The 'liechtml' option pieces together only those files 
# necessary for all volumes of the book to be viewable in HTML 
# format.  No source code is included (only HTML code) and only 
# JPEG and PNG image formats.  Designed for the non-contributing
# reader who just wants a browsable copy on their own machine.

#####################################################################

untarliectiny : 
	@cd DC && tar xvzf DCtiny.tar.gz
	@cd AC && tar xvzf ACtiny.tar.gz
	@cd Semi && tar xvzf SEMItiny.tar.gz
	@cd Digital && tar xvzf DIGItiny.tar.gz
	@cd Ref && tar xvzf REFtiny.tar.gz
	@cd Exper && tar xvzf EXPtiny.tar.gz

# The "untarliectiny" make target will unzip and untar the tar.gz
#residing in each of the individual subdirectories after executing
# tar xvf liectiny.tar, which procuces these subdirectories and files.
#The subdirectories include AC, DC, Semi, Digital, REf, Exper
#####################################################################

untarliecsrc : 
	@cd DC && tar xvzf DCsrc.tar.gz
	@cd AC && tar xvzf ACsrc.tar.gz
	@cd Semi && tar xvzf SEMIsrc.tar.gz
	@cd Digital && tar xvzf DIGIsrc.tar.gz
	@cd Ref && tar xvzf REFsrc.tar.gz
	@cd Exper && tar xvzf EXPsrc.tar.gz

#The "untarliecsrc" make target will unzip and untar the tar.gz
#residing in each of the individual subdirectories after executing
#tar xvf liecsrc.tar, which procuces these subdirectories and files.
#The subdirectories include AC, DC, Semi, Digital, REf, Exper
#####################################################################

clean :
	make -C DC clean
	make -C AC clean
	make -C Semi clean
	make -C Digital clean
	make -C Ref clean
	make -C Exper clean

# The 'clean' target removes uneeded files from volume directories.
# Useful prior to rsync from local to ibiblio
#####################################################################

latex_clean :
	make -C DC latex_clean
	make -C AC latex_clean
	make -C Semi latex_clean
	make -C Digital latex_clean
	make -C Ref latex_clean
	make -C Exper latex_clean

# The 'latex_clean' target removes uneeded latex generted files.
# Useful prior to rsync from local to ibiblio
#####################################################################




