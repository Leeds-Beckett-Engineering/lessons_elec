
##########################################################################
# SED script for converting SubML (Substitutionary Markup Language)
# into groff (GNU troff).  *** VERY INCOMPLETE!!! ***
#
# Version 0.50
#
# Copyright (C) 2001 Tony R. Kuphaldt
# Last updated 06/24/2002 
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
# Modified (DC) 01/01/2006 Added <suscript2>, <superscript2>, <math>,
# <sp>.  Pending, not tested in groff.
# See Devel/tutorial.sml for documentation of these
# Modified  01/01/ 2006 (DC)  - Added <htmlo>, <tex> tags.
# See Devel/tutorial.sml for usage
# Modified 02/06/2006 (DC) - Added more Mathmatical tags from angle on.
# Added <caption>, <ref> tags. See Devel/tutorial.sml
#
##########################################################################


##########################################################################
# <comment> tags: for marking sections of text NOT to be processed
#
s/<comment>/\\" /g
s/<\/comment>//g
##########################################################################

##########################################################################
# <htmlo> tags: maker for text to insert into .html file only
# Both tags must have their own line, nothing else
# deleted from .txt, .tex, .latex,  .groff
/<htmlo>.*<\/htmlo>/d
/<htmlo>/,/<\/htmlo>/d
##########################################################################

##########################################################################
# <tex> tags: maker for text to insert into .tex, .latex files
# Both tags must have their own line, nothing else
# deleted from .txt, .html, .groff
/<htmlo>.*<\/htmlo>/d
/<tex>/,/<\/tex>/d
##########################################################################


##########################################################################
# <book> tags: mark the beginning and end of a standalone document.
#
s/<book>/.ls 1 /g
s/<\/book>//g
##########################################################################


##########################################################################
# <chapter> and <chaptertitle> tags: mark the beginning and end of a 
# chapter, and mark the title of a chapter, respectively.
#
s/<chapter>//g
s/<\/chapter>//g
s/<chaptertitle>/\\fB/g
s/<\/chaptertitle>/\\fP/g
##########################################################################


##########################################################################
# <section> and <sectiontitle> tags: mark the beginning and end of a 
# section, and mark the title of a section, respectively.
#
/<section>/d
s/<\/section>//g
s/<sectiontitle>/\\fB/g
s/<\/sectiontitle>/\\fP \
.sp /g
##########################################################################


##########################################################################
# <subsection> and <subsectiontitle> tags: mark the beginning and end of a
# subsection, and mark the title of a subsection, respectively.
#
/<subsection>/d
s/<\/subsection>/.sp /g
s/<subsectiontitle>/\\fI/g
s/<\/subsectiontitle>/\\fP \
.sp /g
##########################################################################


##########################################################################
# <subsubsection> and <subsubsectiontitle> tags: mark the beginning and 
# end of a subsubsection, and mark the title of a subsubsection, 
# respectively.
#
/<subsubsection>/d
s/<\/subsubsection>/.sp /g
s/<subsubsectiontitle>/    /g
s/<\/subsubsectiontitle>/.sp /g
##########################################################################


##########################################################################
# <para> tags: group a section of lines together to form a paragraph.
#
/<para>/d
s/<\/para>/.sp /g
##########################################################################


##########################################################################
# <image> tags: mark a filename to be included as a graphic image in 
# the final document.  HTML-compatible filenames are not modified, but
# if converting to TeX or LaTeX output, any three-character filename 
# extension is replaced with ".eps"
#
#  *** PENDING ***
#
s/<image>/Image: /g
s/<\/image>/ /g
##########################################################################


##########################################################################
# 02/05/2006 Added reference tags for latex.

s/<ref>/ /g
s/<\/ref>/ /g
##########################################################################


##########################################################################
# 02/04/2006 (DC) Added caption for figures in latex. For examples of
#usage see  Devel/tutorial.
#
s/<caption>/  \
Caption: /g
s/<\/caption>/ /g
##########################################################################


##########################################################################
# <quotation> tags: mark a block of text to be indented as a quotation.
#
#  *** PENDING ***
#
s/<quotation>//g
s/<\/quotation>//g
##########################################################################


##########################################################################
# <index> tags: frame a character string marked for inclusion into a
# concept index.
#
# *** PENDING ***
#
s/<index>//g
s/<\/index>//g
##########################################################################


##########################################################################
# <itemize> tags: group a section of items to be included into a bulleted
# list.
#
# *** PENDING ***
#
s/<itemize>//g
s/<\/itemize>//g
##########################################################################


##########################################################################
# <item> tags: marks a line of text to become an item in an itemized list.
#
# *** PENDING ***
#
s/<item>//g
s/<\/item>//g
##########################################################################


##########################################################################
# These tags mark a character, word, or phrase to be emphasized in a
# particular fashion.
#
s/<italic>/\\fI/g
s/<\/italic>/\\fP/g
#
#
s/<bold>/\\fB/g
s/<\/bold>/\\fP/g
#
#
s/<underline>//g
s/<\/underline>//g
#
#
s/<subscript>//g
s/<\/subscript>//g
#Pending
#
s/<superscript>//g
s/<\/superscript>//g
#Pending
#
#
s/<subscript2>//g
s/<\/subscript2>//g
#Pending
#
#
s/<superscript2>//g
s/<\/superscript2>//g
#Pending
#
#
# Only needed in Latex
s/<math>//g
s/<\/math>//g
#
#add single space
s/<sp>/ /g
#
#
s/<typewriter>/\\fC/g
s/<\/typewriter>/\\fP/g
##########################################################################


##########################################################################
# <literal> tags: mark a block of text to be presented verbatim, in
# a fixed-width font.
#
s/<literal>/.ft C \
.eo /g
#
s/<\/literal>/.ec \
.ft R /g
##########################################################################


##########################################################################
# <url> tags: mark a phrase as an Internet URL (Uniform Resource Locator).
#
s/<url>/\\fC (/g
s/<\/url>/)\\fP /g
##########################################################################


##########################################################################
# <TeX> tag: produces a rendition of the TeX logo.
#
s/<TeX>/TeX/g
##########################################################################


##########################################################################
# <bigspace> tag: places a large vertical space in the document.
#
s/<bigspace>/.sp 3 /g
##########################################################################


##########################################################################
# <pagebreak> tag: Starts a new page
#
s/<pagebreak>/.bp/g
##########################################################################


##########################################################################
# <copyright> tag: Creates the copyright symbol.
#
s/<copyright>/(C)/g
##########################################################################


##########################################################################
# Mathematical tags
#
s/<angle>/\/_/g
#
s/<integral>/(integral)/g
#
s/<partial>/(partial)/g
#
s/<infinity>/(infinity)/g
#
s/<bigtriangledown>/(del)/g
#
s/<oplus>/(exor)/g
#
s/<almostequal>/(almost=)/g
#
s/<approxequal>/(approx=)/g
#
s/<neq>/(neq)/g
#
s/<plusminus>/+-/g
#
s/<cdot>/x/g
#
s/<leq>/<=/g
#
s/<geq>/>=/g
#
s/<times>/x/g
#
s/<registered>/(R)/g
#
##########################################################################


##########################################################################
# Special dashes
#
s/<minus>/-/g
#
s/<doubledash>/--/g
##########################################################################


##########################################################################
# Greek letter tags
#
s/<alpha>/(alpha)/g
#
s/<beta>/(beta)/g
#
s/<gamma>/(gamma)/g
#
s/<delta>/(delta)/g
s/<DELTA>/(DELTA)/g
#
s/<epsilon>/(epsilon)/g
#
s/<theta>/(theta)/g
#
s/<lambda>/(lambda)/g
#
s/<mu>/u/g
#
s/<pi>/(pi)/g
s/<PI>/(PI)/g
#
s/<rho>/p/g
#
s/<sigma>/(sigma)/g
s/<SIGMA>/E/g
#
s/<tau>/t/g
#
s/<phi>/(phi)/g
#
s/<psi>/(psi)/g
#
s/<omega>/w/g
s/<OMEGA>/(omega)/g
##########################################################################


##########################################################################
# <lt> and <gt> tags: creates < and > symbols, respectively.
#
# THIS SUBSTITUTION SHOULD FOLLOW ALL OTHER SUBSTITUTIONS, JUST TO BE
# PERFECTLY SAFE.
#
s/<lt>/</g
s/<gt>/>/g
##########################################################################



















