

##########################################################################
# SED script for converting SubML (Substitutionary Markup Language)
# into HTML 
#
# Version 0.98
#
# Copyright (C) 2001-2003 Tony R. Kuphaldt
# Last updated 03/23/2003 
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
# Modified (DC) Jan 2006  - added minitoc - minitable of contents
# after the chapter title. Adds <!--minitoc--> tag to html output.
# This is subsittuted on the end of </chpatertitle> sml.
# The htmltoc2 perl script looks for <!--minitoc--> in the html
# and put a mini-table of contents there. 
# htmltoc2 perl script is a modification of htmltoc perlscript
#
##########################################################################

##########################################################################
#
# Modified 10/27/2005 (DC) - Added <superscript2> <subscript2> <math>
# Modified 10/28/2005 (DC) - Added <sp> tag
# See Devel/tutorial.sml for documentation of these
# Modified  01/01/ 2006 (DC)  - Added <htmlo>, <tex> tags.
# See Devel/tutorial.sml for usage
# Modified 02/06/2006 (DC) - Added more Mathmatical tags from angle on.
# Added <caption>, <ref> tags. See Devel/tutorial.sml
# Modified 02/24/2006 (DC) - Added boolean overbar
# Modified 03/05/2006 (DC) - Expanded capability of <url> tags
# Modified 03/07/2006 (DC) - Added <hyperlink>, <hypertarget> tags 
# Modified 03/09/2006 (DC) - Added left and right double quotes
# Modified 03/09/2006 (DC) - Added <thebibliography><bibitem><cite> tags
# Modified 03/09/2006 (DC) - changed <cite> tags to separate bib.html file
# Modified 03/15/2007 (DC) - Added [page.html] to <hyperlink> 
# Modified 03/15/2007 (DC) - <htmlo>,<tex> work have two forms.
# Modified 03/22/2007 (DC) - <tabular>,<tr>,<td>,<th><allowbreak>
# Modified 03/23/2007 (DC) - Added latex floating table with caption
# Modified 03/23/2007 (DC) - Added <latexin>
# Modified 04/29/2007 (DC) - Added <pageref> </pageref>
# Modified 04/30/2007 (DC) - Added <sectiontitle*>
# Modified 07/01/2007 (DC) - Added <proofread>
# Modified 07/07/2007 (DC) - Added <ref> now handles 9 per line
# Modified 07/29/2007 (DC) - Fixed  <ref> for .tbl extension
# Modified 09/10/2007 (DC) - Change \} to } in <tabular> per Devin Bayer
# Modified 03/21/2008 (DC) - Added back in nonfloating image <imagenf> tags
# Modified 04/07/2009 (DC) - Changed <bibitem>, added </li> tag at end
# Modified 01/16/2009 (DC) - duplicated <image> as <imagen>
# Modified 11/03/2010 (DC) - corrected bibtex underscore problem 
#                             
##########################################################################
#
##########################################################################
# Prevents ampersands (&) from being interpreted as HTML entity markers.
#
# IT IS SAFER TO PLACE THIS ESCAPE CHARACTER SUBSTITUTION LINE BEFORE
# ANY SUBSTITUTIONS WHICH PLACE REAL ESCAPE CHARACTERS INTO THE OUTPUT
# FILE.
#
s/&/\&amp;/g

##########################################################################


##########################################################################
#change ``  and  ''  to html codes. These are left and right double quotes
#
s/``/\&ldquo;/g
s/''/\&rdquo;/g
##########################################################################


##########################################################################
# Special dashes, must come before <minitoc>, <comment>  substitutions
# No substitution required in sml2latx.sed. Improper display in mozilla.  
#
#s+---+\&mdash;+g
s+\([a-z,A-Z,0-1, ]\)---\([a-z,A-Z,0-1, ]\)+\1\&mdash;\2+g
s+\([a-z,A-Z,0-1]\)--+\1\&ndash;+g
s/<minus>/-/g
#
s/<doubledash>/--/g
#s/<ndash>/&ndash;/g
#s/<mdash>/&mdash;/g
##########################################################################



##########################################################################
# <comment> tags: for marking sections of text NOT to be processed
#
s/<comment>/<!--/g
s/<\/comment>/-->/g
##########################################################################


##########################################################################
# <tex> tags: maker for text to insert into .tex, .latex files
# Two forms: 1) Between tags on a line 2) group of lines
# 2) Both tags must have their own line, nothing else
# deleted from .txt, .html, .groff
s+\(<tex>\)\(.*\)\(</tex>\)++g
/<tex>/,/<\/tex>/d
##########################################################################


 
##########################################################################
# <htmlo> tags: maker for text to insert into .html file only
# Two forms: 1) Between tags on a line 2) group of lines
# 2) Both tags must have their own line, nothing else
# Both tags must have their own line, nothing else
# deleted from .txt, .tex, .latex,  .groff
s/<htmlo>//
s/<\/htmlo>//
##########################################################################
 



##########################################################################
# <book> tags: mark the beginning and end of a standalone document.
#
s/<book>/<!DOCTYPE HTML PUBLIC "-\/\/W3C\/\/DTD HTML 4.0 Transitional\/\/EN"> \
<html> \
<body>/g
#
s/<\/book>/<\/body> \
<\/html>/g
##########################################################################


##########################################################################
# <chapter> and <chaptertitle> tags: mark the beginning and end of a 
# chapter, and mark the title of a chapter, respectively.
#
s/<chapter>/<hr>/g
s/<\/chapter>//g
s/<chaptertitle>/<h1>/g
s/<\/chaptertitle>/<\/h1> \
<!--minitoc-->/g
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
s/<section>/<hr>/g
s/<\/section>//g
s/<sectiontitle>/<h2><u>/g
s/<sectiontitle\*>/<h2><u>/g
s/<\/sectiontitle>/<\/u><\/h2>/g
s/<\/sectiontitle\*>/<\/u><\/h2>/g
##########################################################################


##########################################################################
# <subsection> and <subsectiontitle> tags: mark the beginning and end of a
# subsection, and mark the title of a subsection, respectively.
#
s/<subsection>//g
s/<\/subsection>//g
s/<subsectiontitle>/<h3><u>/g
s/<\/subsectiontitle>/<\/u><\/h3>/g
##########################################################################


##########################################################################
# <subsubsection> and <subsubsectiontitle> tags: mark the beginning and 
# end of a subsubsection, and mark the title of a subsubsection, 
# respectively.
#
s/<subsubsection>//g
s/<\/subsubsection>//g
s/<subsubsectiontitle>/<h4>/g
s/<\/subsubsectiontitle>/<\/h4>/g
##########################################################################


##########################################################################
# extended <url> tags
# specify "text" string to click on
#<url>http:www.whatever.com[text]</url>
#\href{http://www.whatever.com}{\tt{text}}
s+\(<url>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</url>\)+<a href="\2">\4</a>+g
##########################################################################


##########################################################################
# <url> tags: mark a phrase as an Internet URL (Uniform Resource Locator).
#
s/<url>/<a href="/g
s/<\/url>/">[*]<\/a>/g
##########################################################################


##########################################################################
##begin hyperlink
# two sections follow for different versions of hyperlink
# The two must be in the order given here
##########################################################################
# with page name [page.html]
# <hyperlink> tags- jump to local link, to hypertarget
# <hyperlink>linkname[text][page.html]</hyperlink>
# <a name="#linkname">text</a>
s+\(<hyperlink>\)\(.*\)\(\[\)\(.*\)\(\]\)\(\[\)\(.*\)\(\]\)\(</hyperlink>\)+<a href="\7#\2">\4</a>+g
##########################################################################
#
##########################################################################
# without page name
# <hyperlink> tags- jump to local link, to hypertarget
# <hyperlink>linkname[text]</hyperlink>
# <a name="#linkname">text</a>
s+\(<hyperlink>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</hyperlink>\)+<a href="#\2">\4</a>+g
##########################################################################
## end hyperlink

##########################################################################
#<hypertarget> tags-- sets a target for <hyperlink>
#<hypertarget>linkname[text]</hypertarget>
#<a name="linkname">text</a>
s+\(<hypertarget>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</hypertarget>\)+ \
<a name="\2">\4</a>+g
##########################################################################



##########################################################################
# <thebibliography> tags: mark the beginning and end of the LaTex
# bibliography section. <bibitem> tags mark the bibliography entries.
# <cite> tags mark the citation link to the bibliography.
#
s+<thebibliography>+<hr> \
<h2>Bibliography</h2><br> \
<ol>+g
s/<\/thebibliography>/<\/ol>/g

s+\(<bibitem>\)\(\[\)\(.*\)\(\]\)\(.*$\)+<li><a name="\3.bibitem">\[\3\]\5</li>+g
s+</bibitem>+</a>+g

#corrects bibtex underscore problem %5F is substituted for underscore _ in .sml.
# html don't need it.
# this substitutes \% with % , \=\\\ %=%
/<li>/s+\\\%+%+g

#<cite> tags- jump to local link, to hypertarget
#<cite>linkname[text]</cite>
#<cite>linkname</cite>
#<a name="#linkname">text</a>
/<\/cite>/s/<\/cite>/<x1>/
/<\/cite>/s/<\/cite>/<x2>/
/<\/cite>/s/<\/cite>/<x3>/
/<\/cite>/s/<\/cite>/<x4>/
/<\/cite>/s/<\/cite>/<x5>/
/<\/cite>/s/<\/cite>/<x6>/
/<\/cite>/s/<\/cite>/<x7>/
/<\/cite>/s/<\/cite>/<x8>/
/<\/cite>/s/<\/cite>/<x9>/



#s+\(<cite>\)\(.*\)\(</cite>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x1>/s+\(<cite>\)\(.*\)\(<x1>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x2>/s+\(<cite>\)\(.*\)\(<x2>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x3>/s+\(<cite>\)\(.*\)\(<x3>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x4>/s+\(<cite>\)\(.*\)\(<x4>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x5>/s+\(<cite>\)\(.*\)\(<x5>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x6>/s+\(<cite>\)\(.*\)\(<x6>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x7>/s+\(<cite>\)\(.*\)\(<x7>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x8>/s+\(<cite>\)\(.*\)\(<x8>\)+<a href="#\2.bibitem">\[\2]</a>+g
/<x9>/s+\(<cite>\)\(.*\)\(<x9>\)+<a href="#\2.bibitem">\[\2]</a>+g
#
#<allowbreak> used in latex only for ling bibliography url's
s+<allowbreak>++g

##########################################################################



##########################################################################
# <para> tags: group a section of lines together to form a paragraph.
#
s/<para>/<p>/g
s/<\/para>/<\/p>/g
##########################################################################

##########################################################################
#03/04/2006 (DC) 
#Delete latex scale factor from html.
s+\(<image>\)\(\[scale.*\]\)\(.*\.[pj][np][g]\)\(<caption>.*</caption>\)\(<label>\)\(.*\)\(</label>\)\(.*$\)+ \
\1\3\4\5\6\7\8+g
##########################################################################

##########################################################################
# 02/04/2006 Added Caption to sml2latx.sed, this is how we handle html.
# Seperate the caption out from the image tag, put it on a line after
# the image tag. Put html anchor before image tags. This must preceed the
# next section. This- image substitutions special case of image with label tags
s+\(<image>\)\(.*\.[pj][np][g]\)\(<caption>\)\(.*\)\(</caption>\)\(<label>\)\(.*\)\(</label>\)\(.*$\)+ \
<a name="\7"></a> \
\1\2\9 \
\3\4\5 \
+g


##########################################################################
# 04/25/2007 isolated <label> tags not caught above 
s+<label>+<a name="+g
s+</label>+"</a>+g
# <figure> not needed in html, only in latex
s+<figure>++g
s+</figure>++g

# normal case of captioned image, must preceed other image, caption subs
s+\(<image>\)\(.*\.[pj][np][g]\)\(<caption>.*</caption>\)\(.*</image>\)+ \
<a name="\2"></a> \
\1\2\4 \
\3 \
+g

#01/18/2008 duplicate of above for nonfloating captioned image
#more details in sml2latx.sed
# normal case of captioned image, must preceed other image, caption subs
s+\(<imagen>\)\(.*\.[pj][np][g]\)\(<caption>.*</caption>\)\(.*</imagen>\)+ \
<a name="\2"></a> \
\1\2\4 \
\3 \
+g


s/<image>/<p> <img src="/g
s/<\/image>/"> <\/p>/g
/<p> <img/s/<caption>/<p><i>/g
/"> </s/<\/caption>/<\/i><\/p>/g

##########################################################################



##########################################################################
# <image> tags: mark a filename to be included as a graphic image in 
# the final document.  HTML-compatible filenames are not modified, but
# if converting to TeX or LaTeX output, any three-character filename 
# extension is replaced with ".eps"
#
s/<image>/<p> <img src="/g
s/<\/image>/"> <\/p>/g
#
# See sml2latx.sed for <imagenf>  image, no float.
#
s/<imagenf>/<p> <img src="/g
s/<\/imagenf>/"> <\/p>/g
#
#01/18/2008 duplicate of above for nonfloating captioned image
s/<imagen>/<p> <img src="/g
s/<\/imagen>/"> <\/p>/g



##########################################################################
#figure<ref>test.png above</ref>
# from: <ref>03121.png above</ref> to: <a href="#03121.png">above</a>
# 07/07/2007 It now handles 9 references per line.
###s+\(<ref>\)\(.*\.[pj][np][g]\)\(.*\)\(</ref>\)+ <a href="#\2"> \3</a>+g
#{
#:jref
#/<ref>/s+\(<ref>......png\)+\1">+
#/<ref>/s+\(<ref>.png.*\)<//ref>+\1">+
#/<ref>/s+</ref>+</a>+
#s+<ref>+<a href="#+
#}
#tjref

/<\/ref>/s/<\/ref>/<x1>/
/<\/ref>/s/<\/ref>/<x2>/
/<\/ref>/s/<\/ref>/<x3>/
/<\/ref>/s/<\/ref>/<x4>/
/<\/ref>/s/<\/ref>/<x5>/
/<\/ref>/s/<\/ref>/<x6>/
/<\/ref>/s/<\/ref>/<x7>/
/<\/ref>/s/<\/ref>/<x8>/
/<\/ref>/s/<\/ref>/<x9>/

/<x1>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x1>\)+ <a href="#\2"> \3</a>+g
/<x2>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x2>\)+ <a href="#\2"> \3</a>+g
/<x3>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x3>\)+ <a href="#\2"> \3</a>+g
/<x4>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x4>\)+ <a href="#\2"> \3</a>+g
/<x5>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x5>\)+ <a href="#\2"> \3</a>+g
/<x6>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x6>\)+ <a href="#\2"> \3</a>+g
/<x7>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x7>\)+ <a href="#\2"> \3</a>+g
/<x8>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x8>\)+ <a href="#\2"> \3</a>+g
/<x9>/s+\(<ref>\)\(.*\.[pjt][npb][gl]\)\(.*\)\(<x9>\)+ <a href="#\2"> \3</a>+g

# By looping, can have multiple ref's per line.
##########################################################################


##########################################################################
##begin pageref
# two sections follow for different versions of hyperlink
# The two must be in the order given here
##########################################################################
# with page name [page.html]
# <pageref> tags- jump to local link, to hypertarget
# <pageref>linkname[text][page.html]</pageref>
# <a name="#linkname">text</a>
s+\(<pageref>\)\(.*\)\(\[\)\(.*\)\(\]\)\(\[\)\(.*\)\(\]\)\(</pageref>\)+<a href="\7#\2">\4</a>+g
##########################################################################
#
##########################################################################
# without page name
# <pageref> tags- jump to local link, to label as target
# <pageref>linkname[text]</pageref>
# <a name="#linkname">text</a>
s+\(<pageref>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</pageref>\)+<a href="#\2">\4</a>+g
##########################################################################
## end pageref



##########################################################################
# 03/23/2007 (DC) Added floating table in latex. See Devel/tutorial.sml 
#
# This will caption and float a table if a caption is found
# <table>labelname<caption>My figure</caption></table>
#
# allows reference to label of table
# normal case of captioned image, must preceed other image, caption subs
s+\(<table>\)\(.*\.tbl\)\(<caption>.*</caption>\)+ \
<a name="\2">\3</a>+g
s/<caption>/<p><i>/g
s/<\/caption>/<\/i><\/p>/g
#dispose of any captionless table tags
s+<table>++g
s+<\/table>++g
#
#allows for referencing the captioned table
s+\(<ref>\)\(.*\.tbl\)\(.*\)\(</ref>\)+ <a href="#\2"> \3</a>+g
#
########################################################################
#new

##########################################################################
# <tabular> tags: mark a block of text to set as table.
#
##s+\(<tabular>\)\(\[\)\(.*\)\(\]\)\(.*$\)+<table>+g

s+\(<tabular>\)\(\.*[ {]\)\(.*\)\(}\)+<table border="1" style="background-color: #E0FFFF; " >+g
s+<tabular>+<table>+g
s/<\/tabular>/<\/table>/g


# <tr> tags: mark a block of text for a row in a  table.
s/<tr>/<tr>/g
s/<\/tr>/<\/tr>/g
# <td>, (th) tags: mark a block of text for column data in a row of a  table.
s/<td>/<td>/g
s/<\/td>/<\/td>/g
s/<th>/<th>/g
s/<\/th>/<\/th>/g

# <tablularcaption> tags: mark a block of text for a caption in  a  table.
##s+<tabularcaption>+<caption style="background-color: #C1FFFF" ><a>+g
##s+</tabularcaption>+</a></caption>+g
#
#get rid of <ht> for table, used in .latex
s+<hr>++g
##########################################################################


##########################################################################
# <quotation> tags: mark a block of text to be indented as a quotation.
#
s/<quotation>/<blockquote>/g
s/<\/quotation>/<\/blockquote>/g
##########################################################################






##########################################################################
# <index> tags: frame a character string marked for inclusion into a
# concept index.  Any text surrounded by an <index> tag set becomes a 
# "name" link in HTML.
#
# *** PENDING ***
#
s/<index>/<a name="/g
s/<\/index>/"><\/a>/g
##########################################################################


##########################################################################
# <itemize> tags: group a section of items to be included into a bulleted
# list.
#
s/<itemize>/<ul>/g
s/<\/itemize>/<\/ul>/g
##########################################################################


##########################################################################
# <item> tags: marks a line of text to become an item in an itemized list.
#
s/<item>/<li>/g
s/<\/item>/<\/li>/g
##########################################################################


##########################################################################
# These tags mark a character, word, or phrase to be emphasized in a
# particular fashion.
#
s/<italic>/<i>/g
s/<\/italic>/<\/i>/g
#
#
s/<bold>/<b>/g
s/<\/bold>/<\/b>/g
#
#
s/<underline>/<u>/g
s/<\/underline>/<\/u>/g
#
#
s/<subscript>/<sub>/g
s/<\/subscript>/<\/sub>/g
#
#
s/<superscript>/<sup>/g
s/<\/superscript>/<\/sup>/g
#
#
s/<subscript2>/<sub>/g
s/<\/subscript2>/<\/sub>/g
#
#
s/<superscript2>/<sup>/g
s/<\/superscript2>/<\/sup>/g
#
#
s/<math>//g
s/<\/math>//g
#
#
#added 02/24/2006 (DC)
s/<ob>//g
s/<\/ob>/'\&nbsp;/g
#
#
#
s/<sp>/\&nbsp;/g

s/<typewriter>/<tt>/g
s/<\/typewriter>/<\/tt>/g
##########################################################################


##########################################################################
# <literal> tags: mark a block of text to be presented verbatim, in
# a fixed-width font.
#
s/<literal>/<pre>/g
s/<\/literal>/<\/pre>/g
##########################################################################




##########################################################################
# <TeX> tag: produces a rendition of the TeX logo.
# <LaTeX> tag: produces a rendition of the LaTeX logo.
#
s/<TeX>/T<sub>E<\/sub>X/g
s/<LaTeX>/L<sup>A<\/sup>T<sub>E<\/sub>X/g
##########################################################################


##########################################################################
# <bigspace> tag: places a large vertical space in the document.
#
s/<bigspace>/<br> <\/br>/g
##########################################################################


##########################################################################
# <pagebreak> tag: Starts a new page
#
s/<pagebreak>/<br> <\/br>/g
##########################################################################


##########################################################################
# <copyright> tag: Creates the copyright symbol.
#
s/<copyright>/\&#169;/g
##########################################################################


##########################################################################
# Mathematical tags
#
s/<angle>/\&#8736;/g
#
s/<integral>/\&#8747;/g
#
s/<partial>/\&#8706;/g
#
s/<infinity>/\&#8734;/g
#
s/<bigtriangledown>/\&#8711;/g
#
s/<oplus>/\&#8853;/g
#
s/<almostequal>/\&#8776;/g
#
s/<approxequal>/\&#8773;/g
#
s/<neq>/\&#8800;/g
#
s/<plusminus>/\&#177;/g
#
s/<cdot>/\&#183;/g
#
s/<leq>/\&#8804;/g
#
s/<geq>/\&#8805;/g
#
s/<times>/\&#215;/g
#
s/<registered>/\&#174;/g
#


##########################################################################


##########################################################################
#
# backslash \
# only needed to accomodate backslash in sml2latx.sed
#
s+<backslash>+\\+g
##########################################################################


##########################################################################
# Greek letter tags
#
s/<alpha>/\&#945;/g
#
s/<beta>/\&#946;/g
#
s/<gamma>/\&#947;/g
s/<GAMMA>/\&#915;/g
#
s/<delta>/\&#948;/g
s/<DELTA>/\&#916;/g
#
s/<epsilon>/\&#949;/g
s/<varepsilon>/\&#603;/g
#
s/<zeta>/\&#950;/g
#
s/<eta>/\&#951;/g
#
s/<theta>/\&#952;/g
s/<THETA>/\&#920;/g
s/<vartheta>/\&#977;/g
#
s/<iota>/\&#953;/g
#
s/<kappa>/\&#954;/g
#
s/<lambda>/\&#955;/g
s/<LAMBDA>/\&#923;/g
#
s/<mu>/\&#181;/g
#
s/<nu>/\&#957;/g
#
s/<xi>/\&#958;/g
s/<XI>/\&#926;/g
#
s/<pi>/\&#960;/g
s/<PI>/\&#928;/g
#
s/<rho>/\&#961;/g
s/<varrho>/\&#1009;/g
#
s/<sigma>/\&#963;/g
s/<SIGMA>/\&#931;/g
s/<varsigma>/\&#962;/g
#
s/<tau>/\&#964;/g
#
s/<upsilon>/\&#965;/g
s/<UPSILON>/\&#978;/g
#
s/<phi>/\&#966;/g
s/<PHI>/\&#934;/g
s/<varphi>/\&#981;/g
#
s/<chi>/\&#967;/g
#
s/<psi>/\&#968;/g
s/<PSI>/\&#936;/g
#
s/<omega>/\&#969;/g
s/<OMEGA>/\&#937;/g
##########################################################################



##########################################################################
# Other foreign character tags
#
s/<a`>/\&#224;/g
s/<A`>/\&#192;/g
#
s/<a'>/\&#225;/g
s/<A'>/\&#193;/g
#
s/<a^>/\&#226;/g
s/<A^>/\&#194;/g
#
s/<a">/\&#228;/g
s/<A">/\&#196;/g
#
s/<a~>/\&#227;/g
s/<A~>/\&#195;/g
#
s/<ao>/\&#229;/g
s/<Ao>/\&#197;/g
#
#
s/<c,>/\&#231;/g
s/<C,>/\&#199;/g
#
#
s/<e`>/\&#232;/g
s/<E`>/\&#200;/g
#
s/<e'>/\&#233;/g
s/<E'>/\&#201;/g
#
s/<e^>/\&#234;/g
s/<E^>/\&#202;/g
#
s/<e">/\&#235;/g
s/<E">/\&#203;/g
#
#
s/<i`>/\&#236;/g
s/<I`>/\&#204;/g
#
s/<i'>/\&#237;/g
s/<I'>/\&#205;/g
#
s/<i^>/\&#238;/g
s/<I^>/\&#206;/g
#
s/<i">/\&#239;/g
s/<I">/\&#207;/g
#
#
s/<n~>/\&#241;/g
s/<N~>/\&#209;/g
#
#
s/<o`>/\&#242;/g
s/<O`>/\&#210;/g
#
s/<o'>/\&#243;/g
s/<O'>/\&#211;/g
#
s/<o^>/\&#244;/g
s/<O^>/\&#212;/g
#
s/<o">/\&#246;/g
s/<O">/\&#214;/g
#
s/<o~>/\&#245;/g
s/<O~>/\&#213;/g
#
#
s/<u`>/\&#249;/g
s/<U`>/\&#217;/g
#
s/<u'>/\&#250;/g
s/<U'>/\&#218;/g
#
s/<u^>/\&#251;/g
s/<U^>/\&#219;/g
#
s/<u">/\&#252;/g
s/<U">/\&#220;/g
#
s/<?>/\&#191;/g
#
s/<!>/\&#161;/g
#
##########################################################################


##########################################################################
# <lt> and <gt> tags: creates < and > symbols, respectively.
#
# THIS SUBSTITUTION SHOULD FOLLOW ALL OTHER SUBSTITUTIONS, JUST TO BE
# PERFECTLY SAFE.
#
s/<lt>/\&#60;/g
s/<gt>/\&#62;/g
##########################################################################

##########################################################################
#<latexin> </latexin> not used in HTML, strip out everything
#For inlining latex commands into latex only
#
s+\(<latexin>\)\(.*\)\(</latexin>\)++g
/<latexin>/,/<\/latexin>/d
##########################################################################




