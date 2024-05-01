
##########################################################################
# SED script for converting SubML (Substitutionary Markup Language)
# into plain ASCII text.
#
# Version 0.94
#
# Copyright (C) 2001 Tony R. Kuphaldt
# Last updated 01/01/2006 
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
##########################################################################
#
# modified 10/27/2005 (DC) - Added <superscript2> <subscript2> <script2>
# modified 10/28/2005 (DC) - Added <sp> tag 
# See Devel/tutorial.* for documentation of these 
#
##########################################################################
#
##########################################################################
# Modified (DC) Jan 2006  - added 
#        <tex>
#         this
#        </tex>- insert this into
# .tex and .latex files, but not in .html .txt .groff.
#        <htmlo>
#        this
#        </htmlo> - insert this  into .html only .
# Tags must have their own line or file is severely truncated.
##########################################################################
#
#
##########################################################################
# Deletes all blank lines.  This reduces the size of the translated
# file and speeds up conversion, but also serves to eliminate the bad
# effects of extra blank lines in the source file appearing in the plain
# text output.
#
/^$/d
##########################################################################


##########################################################################
# <comment> tags: for marking sections of text NOT to be processed.
#
/<comment>/d
/<\/comment>/d
##########################################################################

##########################################################################
# <htmlo> tags: maker for text to insert into .html file only
# Both tags must have their own line, nothing else
# deleted from .txt, .tex, .latex,  .groff
/<htmlo>/,/<\/htmlo>/d
##########################################################################

##########################################################################
# <tex> tags: maker for text to insert into .tex, .latex files
# Both tags must have their own line, nothing else
# deleted from .txt, .html, .groff
/<tex>/,/<\/tex>/d
##########################################################################


##########################################################################
# <book> tags: mark the beginning and end of a standalone document.
#
/<book>/d
/<\/book>/d
##########################################################################


##########################################################################
# <chapter> and <chaptertitle> tags: mark the beginning and end of a 
# chapter, and mark the title of a chapter, respectively.
#
s/<chapter>/============================================================/g
s/<\/chapter>//g
s/<chaptertitle>//g
s/<\/chaptertitle>//g


##########################################################################
# <section> and <sectiontitle> tags: mark the beginning and end of a 
# section, and mark the title of a section, respectively.
#
s/<section>/------------------------------------------------------------/g
s/<\/section>//g
s/<sectiontitle>//g
s/<\/sectiontitle>//g
##########################################################################


##########################################################################
# <subsection> and <subsectiontitle> tags: mark the beginning and end of a
# subsection, and mark the title of a subsection, respectively.
#
s/<subsection>/. . . . . . . . . . . . . . . . . . . . . . . . . . . . ./g
s/<\/subsection>//g
s/<subsectiontitle>//g
s/<\/subsectiontitle>//g
##########################################################################


##########################################################################
# <subsubsection> and <subsubsectiontitle> tags: mark the beginning and 
# end of a subsubsection, and mark the title of a subsubsection, 
# respectively.
#
s/<subsubsection>//g
s/<\/subsubsection>//g
s/<subsubsectiontitle>/    /g
s/<\/subsubsectiontitle>//g
##########################################################################


##########################################################################
# <para> tags: group a section of lines together to form a paragraph.
#
# A linefeed is inserted in place of either the <para> or </para> tag
# so that they may be placed in the same line with the paragraph they
# mark and still result in a blank line between paragraphs in the .txt
# output file.
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
s/<image>/SEE IMAGE FILE /g
s/<\/image>//g
##########################################################################


##########################################################################
# <quotation> tags: mark a block of text to be indented as a quotation.
#
s/<quotation>/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/g
s/<\/quotation>/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/g
##########################################################################


##########################################################################
# <index> tags: frame a character string marked for inclusion into a
# concept index.
#
# *** PENDING ***
#
/<index>/d
/<\/index>/d
##########################################################################


##########################################################################
# <itemize> tags: group a section of items to be included into a bulleted
# list.
#
/<itemize>/d
/<\/itemize>/d
##########################################################################


##########################################################################
# <item> tags: marks a line of text to become an item in an itemized list.
#
s/<item>/      * /g
s/<\/item>//g
##########################################################################


##########################################################################
# These tags mark a character, word, or phrase to be emphasized in a
# particular fashion.
#
s/<italic>/*/g
s/<\/italic>/*/g
#
#
s/<bold>/**/g
s/<\/bold>/**/g
#
#
s/<underline>/_/g
s/<\/underline>/_/g
#
#
s/<subscript>/_(/g
s/<\/subscript>/)/g
#
#
s/<superscript>/^(/g
s/<\/superscript>/)/g
#
#
s/<subscript2>/_(/g
s/<\/subscript2>/)/g
#
#
s/<superscript2>/^(/g
s/<\/superscript2>/)/g
#
# Only needed in Latex
s/<script2>//g
s/<\/script2>//g
#
#add single space
s/<sp>/ /g
#
s/<typewriter>//g
s/<\/typewriter>//g
##########################################################################


##########################################################################
# <literal> tags: mark a block of text to be presented verbatim, in
# a fixed-width font.
#
/<literal>/d
/<\/literal>/d
##########################################################################


##########################################################################
# <url> tags: mark a phrase as an Internet URL (Uniform Resource Locator).
#
s/<url>/(/g
s/<\/url>/)/g
##########################################################################


##########################################################################
# <TeX> tag: produces a rendition of the TeX logo.
# <LaTeX> tag: produces a rendition of the LaTeX logo.
#
s/<TeX>/TeX/g
s/<LaTeX>/LaTeX/g
##########################################################################


##########################################################################
# <bigspace> tag: places a large vertical space in the document.
#
s/<bigspace>/\
/g
##########################################################################


##########################################################################
# <pagebreak> tag: Starts a new page.
#
#  *** PENDING ***
#
s/<pagebreak>/¶ /g
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
s/<alpha>/a/g
#
s/<beta>/B/g
#
s/<gamma>/y/g
s/<GAMMA>/(GAMMA)/g
#
s/<delta>/(delta)/g
s/<DELTA>/(DELTA)/g
#
s/<epsilon>/(epsilon)/g
s/<varepsilon>/(varepsilon)/g
#
s/<zeta>/(zeta)/g
#
s/<eta>/n/g
#
s/<theta>/(theta)/g
s/<THETA>/(THETA)/g
s/<vartheta>/(vartheta)/g
#
s/<iota>/i/g
#
s/<kappa>/K/g
#
s/<lambda>/(lambda)/g
s/<LAMBDA>/(LAMBDA)/g
#
s/<mu>/u/g
#
s/<nu>/v/g
#
s/<xi>/(xi)/g
s/<XI>/(XI)/g
#
s/<pi>/(pi)/g
s/<PI>/(PI)/g
#
s/<rho>/p/g
s/<varrho>/(varrho)/g
#
s/<sigma>/(sigma)/g
s/<SIGMA>/(SIGMA)/g
s/<varsigma>/s/g
#
s/<tau>/t/g
#
s/<upsilon>/(upsilon)/g
s/<UPSILON>/(UPSILON)/g
#
s/<phi>/(phi)/g
s/<PHI>/(PHI)/g
s/<varphi>/(varphi)/g
#
s/<chi>/X/g
#
s/<psi>/(psi)/g
s/<PSI>/(PSI)/g
#
s/<omega>/w/g
s/<OMEGA>/(OMEGA)/g
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






