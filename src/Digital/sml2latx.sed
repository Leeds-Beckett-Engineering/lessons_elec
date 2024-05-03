##########################################################################
# SED script for converting SubML (Substitutionary Markup Language)
# into LaTeX2e (Leslie Lamport's macro package for TeX).
#
# Version 0.97
#
# Copyright (C) 2001-2003 Tony R. Kuphaldt
# Last updated 10/14/2006 
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
# USA
#
##########################################################################
#
# Modified 10/27/2005 (DC) - Added <superscript2> <subscript2> <math>
# Modified 10/28/2005 (DC) - Added <sp> tag 
# -See Devel/tutorial.* for documentation of these 
# Modified  01/01/ 2006 (DC)  - Added <htmlo>, <tex> tags.
# -See Devel/tutorial.sml for usage
#########################################################################
#
# Modified (DC) 01/01/2006  - added minitoc - minitable of contents
# after the chapter title. Adds \\minitoc command to latex output.
# This is subsittuted on the end of </chpatertitle> sml. Also, see
# </book> tag where \\usepackage{minitoc} was added 
# The minitoc package looks for \\minitoc in the latex
# and puts a mini-table of contents there. 
#  \\dominitoc  was edited into hi.latex  
# Those commands must be there. Google on minitoc latex for documentation.
#
#########################################################################
#
# Modified 02/04/2006 (DC) - Changed image tags to float images
# - <caption> tags added between <image> tags, See Devel/tutorial.sml 
# -Added <ref> tags. See Devel/tutorial.sml
# Modified 03/04/2006 (DC) - Added <scale>tag to image processing
# Modified 02/05/2006 (DC) - Added nonfloating image <imagenf> tags
# Modified 07/25/2007 (DC) - Removed  nonfloating image <imagenf> tags
# Modified 02/06/2006 (DC) - Added more Mathmatical tags after angle.
# Modified 02/22/2006 (DC) - Added  <caption> <ref> <label> tags related--
# --to <image> tag processing. Added <table> tag for non-breaking lintings.
# Modified 02/24/2006 (DC) - Added boolean overbar 
# Modified 03/05/2006 (DC) - Expanded capability of <url> tags
# Modified 03/07/2006 (DC) - Added <hyperlink>, <hypertarget> tags 
# Modified 10/14/2006 (DC) - added space before section, subsection, --
#			--subsubsection titles 
# Modified 01/06/2006 (DC) - moved addcontentsline from <\thebibliography> 
#			--to thebibliography>
# Modified 03/15/2007 (DC) - Added [page.html] to <hyperlink> 
# Modified 03/15/2007 (DC) - <htmlo>,<tex> work have two forms.
# Modified 03/22/2007 (DC) - <tabular>,<tr>,<td>,<th><allowbreak>
# Modified 03/23/2007 (DC) - Added latex floating table with caption
# Modified 03/23/2007 (DC) - Added <latexin>
# Modified 04/25/2007 (DC) - Added <figure>, resurected <label>, <caption>
# Modified 04/29/2007 (DC) - Added <pageref> </pageref>
# Modified 04/30/2007 (DC) - Added <sectiontitle*>
# Modified 07/01/2007 (DC) - Added <proofread>
# Modified 07/01/2007 (DC) - Added bibitem cleanup, See thebibliography
# Modified 07/07/2007 (DC) - Added <ref> now handles 9 per line
# Modified 03/13/2008 (DC) - modified old 0xxx images, no caption centered
# Modified 03/21/2008 (DC) - Added back in nonfloating image <imagenf> tags
# Modified 03/17/2009 (DC) - Changed s+\$|\$+|+g to /{tabular/s+\$|\$+|+g
# Modified 01/16/2009 (DC) - duplicated <image> as <imagen>
# Modified 02/15/2020 (DC) - remove commas \\begin{figure}[hbtp!] in [h,t]
#                             
# ##########################################################################
#
#
#
##########################################################################
#
# Deletes all blank lines.  This merely reduces the size of the translated
# file and hopefully speeds things up, nothing more.
#
/^$/d
##########################################################################


##########################################################################
# this one command needs to be closer to the beginning than the rest
# <tabular> tags: mark a block of text for a table.
#<tabular>{|||} or <tabular> {|l|l|}  or <tabular>
# ...rows of td
#</tabular>
# complex tabular form, do NOT remove the space
####
s+\(<tabular>\)\(\.*[ \{]\)\(.*\)\(\}\)+\\centering \n \\begin{tabular}{\3}+g
#
# See this in 2nd section of file: s+$centering+\\centering+g
#doesnt work here, must be there.

#first section, search this file for 2nd section (tabular)
##########################################################################




#########################################################################t
# Prevents the \ (backslash) symbol from being interpreted as a regular  
# TeX escape character.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING \
# CHARACTERS INTO THE OUTPUT FILE.
#
s/\\/\$\\backslash$/g
##########################################################################


##########################################################################
# Prevents the $ (dollar-sign) symbol from being interpreted as a TeX 
# math escape character.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING $
# CHARACTERS INTO THE OUTPUT FILE.
#
s/\$/\\$/g
##########################################################################


##########################################################################
# Prevents either the { or } characters from being interpreted as
# wrappers in TeX.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING { OR }
# CHARACTERS INTO THE OUTPUT FILE.
#
s/{/$\\{$/g
s/}/$\\}$/g
##########################################################################


##########################################################################
# Prevents the ~ (tilde) symbol from being interpreted as a TeX 
# unbreakable space character.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING ~
# CHARACTERS INTO THE OUTPUT FILE.
#
s/~/\\~{}/g
##########################################################################


##########################################################################
# Prevents the ^ (caret) symbol from being interpreted as a TeX 
# math superscript character.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING ^
# CHARACTERS INTO THE OUTPUT FILE.
#
s/\^/\\^{}/g
##########################################################################


##########################################################################
# Prevents the _ (underscore) symbol from being interpreted as a TeX 
# math subscript character.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING _
# CHARACTERS INTO THE OUTPUT FILE.
#
s/_/\\_{}/g
##########################################################################


##########################################################################
# Prevents the % symbol from being interpreted as a TeX comment character.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING %
# CHARACTERS INTO THE OUTPUT FILE.
#
s/%/\\%/g
##########################################################################


##########################################################################
# Prevents the & symbol from being interpreted as a TeX alignment 
# character.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING &
# CHARACTERS INTO THE OUTPUT FILE.
#
s/&/\\&/g
##########################################################################


##########################################################################
# Prevents the # symbol from being interpreted as a TeX replacement
# symbol.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING #
# CHARACTERS INTO THE OUTPUT FILE.
#
s/#/\\#/g
##########################################################################


##########################################################################
# Prevents the | symbol from being interpreted as a TeX "long dash"
# symbol.
#
# THIS SUBSTITUTION MUST PRECEDE ALL OTHER SUBSTITUTIONS INSERTING |
# CHARACTERS INTO THE OUTPUT FILE.
#
s/|/$|$/g
##########################################################################


###########################################################################
# These next search-and-replace commands are hacks.  Their purpose is to 
# "fix" all the special markups that are supposed to have certain 
# "forbidden" TeX characters in them, like the backslash, and certain
# foreign character markup codes.
# First, the backslash fix: ss you can see, we first replaced all \ 
# characters with $\backslash$ , then we replaced all $ characters with 
# \$.  This presents a problem for us, in that any fixed backslashes 
# ($\backslash$) will now look like this: \$\backslash\$ and no longer 
# work right in TeX.  This search-and-replace looks for any
# mangled backslashes (\$\backslash\$) and straightens them up again to
# look like they should: $\backslash$ 
#
s/\\\$\\backslash\\\$/\$\\backslash\$/g
#
# Next, fixing any foreign character markups that got mangled by global
# search-and-replace operations on characters such as the tilde (~) and
# caret (^).
#
# Fixing characters with a caret:
s/<a\\^{}>/<a^>/g
s/<A\\^{}>/<A^>/g
s/<e\\^{}>/<e^>/g
s/<E\\^{}>/<E^>/g
s/<i\\^{}>/<i^>/g
s/<I\\^{}>/<I^>/g
s/<o\\^{}>/<o^>/g
s/<O\\^{}>/<O^>/g
s/<u\\^{}>/<u^>/g
s/<U\\^{}>/<U^>/g
#
# Fixing characters with a tilde:
s/<a\\~{}>/<a~>/g
s/<A\\~{}>/<A~>/g
s/<n\\~{}>/<n~>/g
s/<N\\~{}>/<N~>/g
s/<o\\~{}>/<o~>/g
s/<O\\~{}>/<O~>/g
#
# Now that these have been fixed, later search-and-replace commands 
# in this script will see the character markups as they were originally
# typed by the author, and render them accordingly.
#
##########################################################################


##########################################################################
# <comment> tags: for marking sections of text NOT to be processed
#
s/<comment>/% /g
s/<\/comment>//g
##########################################################################


##########################################################################
# <tex> tags: maker for text to insert into .tex, .latex files
# Two forms: 1) Between tags on a line 2) group of lines
# 2) Both tags must have their own line, nothing else
# deleted from .txt, .html, .groff
s/<tex>//g
s/<\/tex>//g
##########################################################################

 
##########################################################################
# <htmlo> tags: maker for text to insert into .html file only
# Two forms: 1) Between tags on a line 2) group of lines
# 2) Both tags must have their own line, nothing else
# deleted from .txt, .tex, .latex,  .groff
s+\(<htmlo>\)\(.*\)\(</htmlo>\)++g
/<htmlo>/,/<\/htmlo>/d
##########################################################################



##########################################################################
# <bootags: mark the beginning and end of a standalone document.
#
s/<book>/\\documentclass{book} \
\\usepackage{makeidx} \
\\usepackage[dvips]{graphicx} \
\\usepackage[sectionbib]{chapterbib} \
\\usepackage{minitoc} \
\\makeindex \
\\usepackage[ \
    pdftitle = "{Lessons In Electric Circuits, Volume II -- AC}", \
    pdfauthor = "{Tony R. Kuphaldt}", \
    dvips = true, \
    ps2pdf = true, \
    bookmarks = true, \
    colorlinks = true, \
    hyperindex = true \
]{hyperref} \
\\begin{document} \
/g
#
s/<\/book>/\\printindex \
\\end{document} \
\\end{report} \
/g
##########################################################################


##########################################################################
# <chapter> and <chaptertitle> tags: mark the beginning and end of a 
# chapter, and mark the title of a chapter, respectively.
# \begin{cbunit} \end{cbuint} related to chapterbib.sty
# modified (DC) 01-01 2006 - Added \\minitoc after chaptertitle
#
s/<chapter>/ \
\\begin{cbunit} \
/g
s/<\/chapter>/ \
\\end{cbunit} \
/g
s/<chaptertitle>/\\chapter{/g
s/<\/chaptertitle>/} \
\\minitoc \
\\bigskip \
/g
##########################################################################


##########################################################################
# <proofread> flags chapter as needing proofreading, put at top of chapter
s/<proofread>//g
##########################################################################





##########################################################################
# <section> and <sectiontitle> tags: mark the beginning and end of a 
# section, and mark the title of a section, respectively.
# <sectiontitle*> omitts sectiontitle from TOC in LaTeX
#
s/<section>//g
s/<\/section>//g
s/<sectiontitle>/\\section{ /g
s/<sectiontitle\*>/\\section*{ /g
s/<\/sectiontitle>/}/g
s/<\/sectiontitle\*>/}/g
##########################################################################


##########################################################################
# <subsection> and <subsectiontitle> tags: mark the beginning and end of a
# subsection, and mark the title of a subsection, respectively.
#
s/<subsection>//g
s/<\/subsection>//g
s/<subsectiontitle>/\\subsection{ /g
s/<\/subsectiontitle>/}/g
##########################################################################


##########################################################################
# <subsubsection> and <subsubsectiontitle> tags: mark the beginning and 
# end of a subsubsection, and mark the title of a subsubsection, 
# respectively.
#
s/<subsubsection>//g
s/<\/subsubsection>//g
s/<subsubsectiontitle>/\\subsubsection{ /g
s/<\/subsubsectiontitle>/}/g
##########################################################################


##########################################################################
# extended <url> tags
#experimental
#\href{URL}{TEXT}
#<url>http:www.whatever.com[text]</url>
#\href{http://www.whatever.com}{\tt{text}}
s+\(<url>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</url>\)+\\href{\2}{\\tt{\4}}+g
##########################################################################
# <url> tags: mark a phrase as an Internet URL (Uniform Resource Locator).
# (Original) will still  catch anything without [text] 
#
s/<url>/{\\tt (/g
s/<\/url>/)}/g
##########################################################################

##########################################################################
#begin hyperlink
#these two sectins must be in the order here
#########################################################################
#This section handles the case of a [page.html]. It is only used in
#sml2html.s here. For sml2latx.sed it is not used , it is discarded here.
#<hyperlink> tags jump to local link, to hypertarget 
#<hyperlink>link[text][page.html]</hyperlink>
#\hyperlink{HYPERLINK}{TEXT}
#<hyperlink>http:www.whatever.com[text]</hyperlink>
#\hyperlink{http://www.whatever.com}{\tt{text}}
s+\(<hyperlink>\)\(.*\)\(\[\)\(.*\)\(\]\)\(\[\)\(.*\)\(\]\)\(</hyperlink>\)+ \
\\hyperlink{\2}{\4}+g
##########################################################################
#
#########################################################################
# This handles the case without the [page.html]
# <hyperlink> tags jump to local link, to hypertarget 
#<hyperlink>link[text]</hyperlink>
#\hyperlink{HYPERLINK}{TEXT}
#<hyperlink>http:www.whatever.com[text]</hyperlink>
#\hyperlink{http://www.whatever.com}{\tt{text}}
s+\(<hyperlink>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</hyperlink>\)+ \
\\hyperlink{\2}{\4}+g
##########################################################################
#end hyperlink

#########################################################################
# <hypertarget> tags-- sets a target for <hyperlink>
#experimental
#\hypertarget{TARGET}{TEXT}
#<hypertarget>UniqueTarget[text]</hypertarget>
#\hypertarget{http://www.whatever.com}{\tt{text}}
s+\(<hypertarget>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</hypertarget>\)+ \
\\hypertarget{\2}{\4}+g
##########################################################################



##########################################################################
# <thebibliography> tags: mark the beginning and end of the LaTex
# bibliography section. <bibitem> tags mark the bibliography entries.
# <cite> tags mark the citation link to the bibliography.
#
s/<thebibliography>/ \
\\bibliography{biblio} \
\\begin{thebibliography}{99} \
/g
s/<\/thebibliography>/\\end{thebibliography} \
/g

s+\(<bibitem>\)\(\[\)\(.*\)\(\]\)\(.*$\)+\\bibitem\{\3\}\5+g
s+</bibitem>++g

s/<cite>/\\cite{/g
s/<\/cite>/}/g

#<allowbreak> used in latex only for long bibliography url's
s+<allowbreak>+\\allowbreak +g
##########################################################################



##########################################################################
# bibitem cleanup
# This cleans up bibitems so they work with LaTeX at ibiblio.org
# (works OK on my local installations). The latex underscore code
# of \_{} is a problem in \bibitem, though,  only for \href{..}, not
# a problem in \tt{..}. The change: \_{} must be applied to \href{}
# However, it must not be applied to \tt{..}, else error.
#This example needs to change from: 
#\bibitem{OAK}Solar, ``T''  at \href{http://www.ok.com/led\_{}color\_{}chart.htm}{\tt{http://www.ok.com/led\_{}color\_{}chart.htm}} 
# --to this: (only \href{..} changes, not \tt{..}
#\bibitem{OAK}Solar, ``T''  at \href{http://www.ok.com/led_color_chart.htm}{\tt{http://www.ok.com/led\_{}color\_{}chart.htm}} 
# comment out commands below to see "before" example
# Belos: :a is label; ta is a conditional jump

:a; /\\bibitem/s/\(^.*\)\(\\_{}\)\(.*{\\tt{.*$\)/\1_\3/g; ta;

##########################################################################



##########################################################################
# <para> tags: group a section of lines together to form a paragraph.
#
# A linefeed is inserted in place of either the <para> or </para> tag
# so that they may be placed in the same line with the paragraph they
# mark and still result in a blank line between paragraphs in the TeX 
# source file.
#
s/<para>/ \
/g
s/<\/para>/ \
/g
##########################################################################



##########################################################################
# <image> tags: mark a filename to be included as a graphic image in 
# the final document.  HTML-compatible filenames are not modified, but
# if converting to TeX or LaTeX output, any three-character filename 
# extension is replaced with ".eps"
#
#s/.[a-z][a-z][a-z]<\/image>/.eps}/g
# 02/04/2006 (DC) changed above to below
####/<image>/s/\.[a-z][a-z][a-z]/.eps}/g 02/10/2006 to below fix caption
/<ref>/s/<ref>\(.*\)[jp][pn][g]/<ref>\1tmp/g
/caption><label>/s/<label>\(.*\)[jp][pn][g]/<label>\1eps/g
/<image>/s/\.png/.eps}/
/<image>/s/\.jpg/.eps}/g
/<imagenf>/s/\.png/.eps/g
/<imagenf>/s/\.jpg/.eps/g
/<label>/s/\.png/.eps/g
/<label>/s/\.jpg/.eps/g


##########################################################################



##########################################################################
#scale image
#Add image parameters like scale-- anything between optional grackets [ ]
#example: [scale=0.5] scales the image in latex. Must use <label> tags also
# -to have sed look at line, else ignores this substitution, on to next. 
# <image>[scale=0.5]12345.png<caption>My figure</caption><label>12345a.png</label></image>
# 2008/03/20   s/ 8/8}/ 
# 
s+\(<image>\)\(\[.*\]\)\(.*\.eps}\)\(<caption>\)\(.*\)\(</caption>\)\(<label>\)\(.*\)\(</label>\)\(.*$\)+ \
\\begin{figure}[hbtp!] \
\\centering \
\\includegraphics\2{\3 \
\\caption{\\sl \5 } \
\\label{\8} \
\\end{figure} \
+g


##########################################################################
# <label> </label> tags, if auto-labeling is not acceptable.
# <image>12345.png<caption>My figure</caption><label>12345a.png</label></image>
# 2008/03/20   s/ 7/7}/ 
# 
s+\(<image>\)\(.*\.eps}\)\(<caption>\)\(.*\)\(</caption>\)\(<label>\)\(.*\)\(</label>\)\(.*$\)+ \
\\begin{figure}[hbtp!] \
\\centering \
\\includegraphics{\2 \
\\caption{\\sl \4 } \
\\label{\7} \
\\end{figure} \
+g

# most captioned inages will be processed by next section.



##########################################################################

# This will caption and float an image if a caption is found
# <image>12345.png<caption>My figure</caption></image>
#
# Auto lebeling-- uses image name as label
#centering for images
s+\(<image>\)\(.*\.eps}\)\(<caption>\)\(.*\)\(</caption>\)\(.*$\)+ \
\\begin{figure}[hbtp!] \
\\centering \
\\includegraphics{\2 \
\\caption{\\sl \4 } \
\\label{\2 \
\\end{figure}\
+g


##########################################################################
# 01/16/2010
# Need a captoned nonfloating image? This is non floating version of above
# This will caption an image if a caption is found
# <imagen>12345.png<caption>My figure</caption></imagen>
#
# Auto lebeling-- uses image name as label
#centering for images
s+\(<imagen>\)\(.*\.eps}\)\(<caption>\)\(.*\)\(</caption>\)\(.*$\)+ \
\\begin{figure}[h!] \
\\centering \
\\includegraphics{\2 \
\\caption{\\sl \4 } \
\\label{\2 \
\\end{figure}\
+g

s+</imagen>+}+g 



# Take care of equation image  w/o caption, no centering
# was 2nd line below to float\\begin{figure}[h, t, b, p, !] \
# Don't want equation to float
s+\(<image>\)\(1.*\.eps}\)\(.*</image>\)+ \
\\includegraphics{\2+g 
#
# Any image  w/o caption, with  no centering
# mainly used in minipage
s+<imagenf>+\\medskip \\includegraphics{+g 
s+</imagenf>+}+g 
#
# 03/13/2008 
# Take care of old  image  w/o caption, centering desired
# Don't want want to float
s+\(<image>\)\(0.*\.eps}\)\(.*</image>\)+ \
\\medskip \\centerline{\\includegraphics{\2}+g 



##########################################################################
# <image> tags: mark a filename to be included as a graphic image in 
# the final document.
# as 03/11/2008 this may (or may not) still process photos w/o caption --
# --other than 0xxxx 0r 1xxxx images
# As of 08/05/2006, this section replaces next ##ed section.  We want to
# have old un-captioned, un-labeled images NOT float.
s/<image>/\\medskip \\includegraphics{/g
s/<\/image>//g
##########################################################################


##########################################################################
# <figure> </figure> tags
# 04/25/2007
#
s/<figure>/ \
\\begin{figure}[hbtp!] \
\\centering \
/g

# This terminates art images with and w/o  <caption> tags.
s/<\/figure>/ \
\\end{figure}/g
##########################################################################
# 04/25/2007
s/<label>/\\label{/g
s/<\/label>/}/g
##########################################################################


###sample s+\(<image>\)\(.*\.eps}\)\(<caption>.*</caption>\)\(.*$\)
##########################################################################
# 02/05/2006 (D) Added reference tags for latex.
# Only handles one reference per line (paragraph)
# 07/07/2007 It now handles 9 references per line.
# extensions .png .jpg .tb
# <ref>01234.png below </ref>
/<ref>/s/\.[jp][pn][g]/.eps/g
/<ref>/s/\.tmp/.eps/g
###s+\(<ref>\)\(.*\.eps\)\(.*\)\(</ref>\)+~\\ref{\2}+g
/<\/ref>/s/<\/ref>/<x1>/
/<\/ref>/s/<\/ref>/<x2>/
/<\/ref>/s/<\/ref>/<x3>/
/<\/ref>/s/<\/ref>/<x4>/
/<\/ref>/s/<\/ref>/<x5>/
/<\/ref>/s/<\/ref>/<x6>/
/<\/ref>/s/<\/ref>/<x7>/
/<\/ref>/s/<\/ref>/<x8>/
/<\/ref>/s/<\/ref>/<x9>/

/<x1>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x1>\)+~\\ref{\2}+
/<x2>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x2>\)+~\\ref{\2}+
/<x3>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x3>\)+~\\ref{\2}+
/<x4>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x4>\)+~\\ref{\2}+
/<x5>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x5>\)+~\\ref{\2}+
/<x6>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x6>\)+~\\ref{\2}+
/<x7>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x7>\)+~\\ref{\2}+
/<x8>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x8>\)+~\\ref{\2}+
/<x9>/s+\(<ref>\)\(.*\..*\)\( .*\)\(<x9>\)+~\\ref{\2}+
##########################################################################

#########################################################################
#begin pageref
#these two sectins must be in the order here
#########################################################################
#This section handles the case of a [page.html]. It is only used in
#sml2html.s here. For sml2latx.sed it is not used , it is discarded here.
#<pageref> tags jump to local link, to hypertarget 
#<pageref>link[text][page.html]</pageref> text,page.html not used in LaTeX
#\pageref{link}
# ahndles extensions .png .jpg
#<pageref>linkname[text][page.html]</pageref>
/<pageref>/s/\.[jp][pn][g]/.eps/g
s+\(<pageref>\)\(.*\)\(\[\)\(.*\)\(\]\)\(\[\)\(.*\)\(\]\)\(</pageref>\)+ \
(page \\pageref{\2})+g
##########################################################################
#
#########################################################################
# This handles the case without the [page.html]
# <pageref> tags jump to local link, to label 
#<pageref>link[text]</pageref>
#\pageref{LINK}{TEXT} TEXT not used in LaTeX, only in HTML
s+\(<pageref>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</pageref>\)+ \
(page \\pageref{\2})+g
##########################################################################
#end pageref

##########################################################################
# <pageref> </pageref> - sets page number in latex for image labels
s+<pageref>+ ( page \\pageref{+g
s+</pageref>+})+g
##########################################################################



##########################################################################
# 03/23/2007 (DC) Added floating table in latex. See Devel/tutorial.sml 
#
# This will caption and float a table if a caption is found
# <table>labelname<caption>My figure</caption></table>
#
#centering for table
s+\(<table>\)\(.*\)\(<caption>\)\(.*\)\(</caption>\)+ \
\\begin{table}[hbtp!] \
\\caption{\\sl \4 } \
\\label{\2} \
+g
# allows refernce to label of table
s+\(<ref>\)\(.*\.tbl\)\(.*\)\(</ref>\)+~\\ref{\2}+g
#
##########################################################################
# 02/07/2006 (DC) Added nonbreaking table in latex. See Devel/tutorial.sml 
#
s/<table>/\\begin{table} [hbtp!]/g
# This terminates nonbreaking table. Also, floating table above.
s/<\/table>/\\end{table}/g
##########################################################################


##########################################################################
# 04/25/2006 (DC) resurected  <caption> </caption> tags for double figures
#
s/<caption>/\\caption{\\sl /g
s/<\/caption>/}/g
##########################################################################



##########################################################################
# second tabular section-- parts which don't have to be first.
# <tabular> tags: mark a block of text for a table.
#<tabular>{|||} or <tabular> {|l|l|}  or <tabular>
# ...rows of td
#</tabular>
# complex tabular form, do NOT remove the space
#####s+\(<tabular>\)\(\.*[ \{]\)\(.*\)\(\}\)+\\begin{tabular}{\3}+g

#This is needed by the first section, must be here, not there 
s+$centering+\\centering+g
#Above needed by first section

#the bracked version vs the brace version.
##s+\(<tabular>\)\(\.*[ []\)\(.*\)\(\]\)+\\centering \\begin{tabular}{\3}+g

# if all else fails try this one
##s+<tabular>+\\begin{tabular}+g




#correct backslash
/\$tabular\$/s+\$\\backslash++g
#correction for $begin to \begin
s+\$begin+\\begin+g
#correct for $\{$ to { and $\}$ to }
/\$tabular\$/s+\$\\{\$+{+g
/tabular\$/s+\$\\}\$+}+g
#use following if above two fail
#/$tabular/s+\$\\{\$+{+g
#/tabular\$/s+\$\\}\$+}+g
#
# correct for $| to |
/{tabular/s+\$|\$+|+g

#ends tabular environment
s+</tabular>+ \
\\end{tabular} \
+g

# <tr> tags: mark a block of text for a row in a  table.
s+<tr>++g
s+</tr>+\\\\+g
# <td> tags: mark a block of text for column data in a row of a  table.
###s/<td>/<td>/g
#places & between table data (column)
s+</td><td>+\&+g
#remove the beginning <td> and ending </td>
s+</td>\\\\++g
s+</td>++g
s+<td>++g

##   Xd1Y & Xd2Y & Xd3Y

#places & between table data (column)
s+</th><th>+}\&\\textbf{+g
#remove the beginning <th> and ending </th>
s+<th>+\\textbf{+g
s+</th>+}+g
#
#
#s/<bold>/\\textbf{/g
#s/<\/bold>/}/g
#


#
# <tablularcaption> tags: mark a block of text for a caption in  a  table.
# only used in html
##s+<tabularcaption>+%+g
##s+</tabularcaption>+%+g
#<hrused in latex but not in html
s+<hr>+\\hline+g

##########################################################################
# <quotation> tags: mark a block of text to be indented as a quotation.
#
s/<quotation>/\\begin{quotation}/g
s/<\/quotation>/\\end{quotation}/g
##########################################################################


##########################################################################
# <index> tags: frame a character string marked for inclusion into a
# concept index.
#
# *** PENDING ***
#
s/<index>/\\index{/g
s/<\/index>/}/g
##########################################################################


##########################################################################
# <itemize> tags: group a section of items to be included into a bulleted
# list.
#
s/<itemize>/\\begin{itemize}/g
s/<\/itemize>/\\end{itemize}/g
##########################################################################


##########################################################################
# <item> tags: marks a line of text to become an item in an itemized list.
#
s/<item>/\\item /g
s/<\/item>//g
##########################################################################


##########################################################################
# These tags mark a character, word, or phrase to be emphasized in a
# particular fashion.
#
s/<italic>/\\textit{/g
s/<\/italic>/}/g
#
#
s/<bold>/\\textbf{/g
s/<\/bold>/}/g
#
#
s/<underline>/\\underbar{/g
s/<\/underline>/}/g
#
#
s/<subscript>/$_{/g
s/<\/subscript>/}$/g
#
#
s/<superscript>/$^{/g
s/<\/superscript>/}$/g
#
#
#added 10/27/2005 (DC) to do more elaborate sub/super script
s/<subscript2>/_{/g
s/<\/subscript2>/}/g
#
#
#added 10/27/2005 (DC)
s/<superscript2>/^{/g
s/<\/superscript2>/}/g
#
#
#added 10/27/2005 (DC)
s/<math>/$/g
s/<\/math>/$/g
#
#added 02/24/2006 (DC) overbar 
s/<ob>/\\overline{/g
s/<\/ob>/}/g
#
#


s/<typewriter>/\\texttt{/g
s/<\/typewriter>/}/g
##########################################################################


##########################################################################
# <literal> tags: mark a block of text to be presented verbatim, in
# a fixed-width font.
#
s/<literal>/\\begingroup \\vskip\\parskip \\everypar={\\nobreak} \\obeyspaces \\frenchspacing \\tt \\obeylines \\parskip=0pt \\parindent=0pt /g
s/<\/literal>/\\endgroup /g
##########################################################################



##########################################################################
# <TeX> tag: produces a rendition of the TeX logo.
# <LaTeX> tag: produces a rendition of the LaTeX logo.
#
s/<TeX>/\\TeX{}/g
s/<LaTeX>/\\LaTeX{}/g
##########################################################################


##########################################################################
# <bigspace> tag: places a large vertical space in the document.
#
s/<bigspace>/\\bigskip /g
##########################################################################


##########################################################################
# <pagebreak> tag: Starts a new page
#
s/<pagebreak>/\\vfil \\eject /g
##########################################################################


##########################################################################
# <copyright> tag: Creates the copyright symbol.
#
s/<copyright>/\\copyright{}/g
##########################################################################


##########################################################################
#added 10/28/2005 (DC)
# <sp> tag: inserts space, may be repeated.
#
s/<sp>/\~/g
##########################################################################


##########################################################################
# Mathematical tags
s/<angle>/\\angle{}/g
#
s/<integral>/\$\\int{}\$/g
#
s/<partial>/\$\\partial{}\$/g
#
s/<infinity>/\$\\infty{}\$/g
#
s/<bigtriangledown>/$\\bigtriangledown$/g
#
s/<oplus>/$\\oplus$/g
#
s/<almostequal>/$\\approx$/g
#
s/<approxequal>/$\\cong$/g
#
s/<neq>/$\\neq$/g
#
s/<plusminus>/$\\pm$/g
#
s/<cdot>/$\\cdot$/g
#
s/<leq>/$\\leq$/g
#
s/<geq>/$\\geq$/g
#
s/<times>/$\\times$/g
#
s/<registered>/\\textcircled { \\tiny R }/g
#
##########################################################################


##########################################################################
# Special dashes
#
s/<minus>/\$-\$/g
#
s/<doubledash>/\$-\$\$-\$/g
##########################################################################


##########################################################################
# Greek letter tags
#
s/<alpha>/\$\\alpha\$/g
#
s/<beta>/\$\\beta\$/g
#
s/<gamma>/\$\\gamma\$/g
s/<GAMMA>/\$\\Gamma\$/g
#
s/<delta>/\$\\delta\$/g
s/<DELTA>/\$\\Delta\$/g
#
s/<epsilon>/\$\\epsilon\$/g
s/<varepsilon>/\$\\varepsilon\$/g
#
s/<zeta>/\$\\zeta\$/g
#
s/<eta>/\$\\eta\$/g
#
s/<theta>/\$\\theta\$/g
s/<THETA>/\$\\Theta\$/g
s/<vartheta>/\$\\vartheta\$/g
#
s/<iota>/\$\\iota\$/g
#
s/<kappa>/\$\\kappa\$/g
#
s/<lambda>/\$\\lambda\$/g
s/<LAMBDA>/\$\\Lambda\$/g
#
s/<mu>/\$\\mu\$/g
#
s/<nu>/\$\\nu\$/g
#
s/<xi>/\$\\xi\$/g
s/<XI>/\$\\Xi\$/g
#
s/<pi>/\$\\pi\$/g
s/<PI>/\$\\Pi\$/g
#
s/<rho>/\$\\rho\$/g
s/<varrho>/\$\\varrho\$/g
#
s/<sigma>/\$\\sigma\$/g
s/<SIGMA>/\$\\Sigma\$/g
s/<varsigma>/\$\\varsigma\$/g
#
s/<tau>/\$\\tau\$/g
#
s/<upsilon>/\$\\upsilon\$/g
s/<UPSILON>/\$\\Upsilon\$/g
#
s/<phi>/\$\\phi\$/g
s/<PHI>/\$\\Phi\$/g
s/<varphi>/\$\\varphi\$/g
#
s/<chi>/\$\\chi\$/g
#
s/<psi>/\$\\psi\$/g
s/<PSI>/\$\\Psi\$/g
#
s/<omega>/\$\\omega\$/g
s/<OMEGA>/\$\\Omega\$/g
##########################################################################


##########################################################################
# Other foreign character tags
#
s/<a`>/\\`a/g
s/<A`>/\\`A/g
#
s/<a'>/\\'a/g
s/<A'>/\\'A/g
#
s/<a^>/\\^a/g
s/<A^>/\\^A/g
#
s/<a">/\\"a/g
s/<A">/\\"A/g
#
s/<a~>/\\~a/g
s/<A~>/\\~A/g
#
s/<ao>/\\aa/g
s/<Ao>/\\AA/g
#
#
s/<c,>/\\c c/g
s/<C,>/\\c C/g
#
#
s/<e`>/\\`e/g
s/<E`>/\\`E/g
#
s/<e'>/\\'e/g
s/<E'>/\\'E/g
#
s/<e^>/\\^e/g
s/<E^>/\\^E/g
#
s/<e">/\\"e/g
s/<E">/\\"E/g
#
#
s/<i`>/\\`\\i{}/g
s/<I`>/\\`I/g
#
s/<i'>/\\'\\i{}/g
s/<I'>/\\'I/g
#
s/<i^>/\\^\\i{}/g
s/<I^>/\\^I/g
#
s/<i">/\\"\\i{}/g
s/<I">/\\"I/g
#
#
s/<n~>/\\~n/g
s/<N~>/\\~N/g
#
#
s/<o`>/\\`o/g
s/<O`>/\\`O/g
#
s/<o'>/\\'o/g
s/<O'>/\\'O/g
#
s/<o^>/\\^o/g
s/<O^>/\\^O/g
#
s/<o">/\\"o/g
s/<O">/\\"O/g
#
s/<o~>/\\~o/g
s/<O~>/\\~O/g
#
#
s/<u`>/\\`u/g
s/<U`>/\\`U/g
#
s/<u'>/\\'u/g
s/<U'>/\\'U/g
#
s/<u^>/\\^u/g
s/<U^>/\\^U/g
#
s/<u">/\\"u/g
s/<U">/\\"U/g
#
s/<?>/?`/g
#
s/<!>/!`/g
#
##########################################################################


##########################################################################
# <lt> and <gt> tags: creates < and > symbols, respectively.
#
# THIS SUBSTITUTION SHOULD FOLLOW ALL OTHER SUBSTITUTIONS, JUST TO BE
# PERFECTLY SAFE.
#
s/<lt>/$<$/g
s/<gt>/$>$/g
##########################################################################



##########################################################################
# <latexin> and </latexin> tags: latex inline code. Insert in to latex
# but not into html. Also, have to back correct some symbols used: \${}~%
#

#new
#/<latexin>/,/<\/latexin>/s+\$++g
#/<\/latexin>/s+\\\$+\\+g
#new


/<latexin>/,/<\/latexin>/s+\$\\backslash\$+\\+g
/<\/latexin>/s+\$\\backslash\$+\\+g
/<latexin>/,/<\/latexin>/s+\$\\backslash+\\+g
/<\/latexin>/s+\$\\backslash+\\+g

#new
#/<latexin>/,/<\/latexin>/s+\\backslash+\\+g
#/<\/latexin>/s+\$\\backslash+\\+g
#new


/<latexin>/,/<\/latexin>/s+\\%+%+g
/<\/latexin>/s+\\%+%+g

/<latexin>/,/<\/latexin>/s+\$\\}\$+}+g
/<\/latexin>/s+\$\\}\$+}+g

/<latexin>/,/<\/latexin>/s+\$\\{\$+{+g
/<\/latexin>/s+\$\\{\$+{+g

/<latexin>/,/<\/latexin>/s+\\~{}+~+g
/<\/latexin>/s+\\~{}+~+g

/<latexin>/,/<\/latexin>/s+$|$+|+g
/<\/latexin>/s+$|$+|+g

/<latexin>/,/<\/latexin>/s+\\^{}+^+g
/<\/latexin>/s+\\^{}+^+g

/<latexin>/,/<\/latexin>/s+\\_{}+_+g
/<\/latexin>/s+\\_{}+_+g

/<latexin>/,/<\/latexin>/s+\\#+#+g
/<\/latexin>/s+\\#+#+g

/<latexin>/,/<\/latexin>/s+\\&+\&+g
/<\/latexin>/s+\\&+\&+g


s+\(<latexin>\)\(.*\)\(</latexin>\)+\2+g
s+<latexin>++g
s+</latexin>++g


#s+\\\\begin+\\begin+g
/begin{tabular}/,/end{tabular}/s+\\\\begin+\\begin+g
#this gets rid of $\backslash
#########s+\$\\backslash\$+\\+g
###########################s+\$\\backslash++g
# htis is it s+..backslash.+\\+g
#/<latexin>/,/<\/latexin>/s+\\&+\&+g
##########################################################################

