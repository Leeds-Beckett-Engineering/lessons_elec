
##########################################################################
# SED script for converting SubML (Substitutionary Markup Language)
# into TeX (Donald Knuth's text processing language).
#
# Version 0.97
#
# Copyright (C) 2001-2003 Tony R. Kuphaldt
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
#
##########################################################################
#
# modified 10/27/2005 (DC) - Added <superscript2> <subscript2> <script2>
# modified 10/28/2005 (DC) - Added <sp> tag 
# See Devel/tutorial.* for documentation of these 
#
##########################################################################
#
##########################################################################
#
# Modified (DC) 01/01/2006  - added minitoc - minitable of contents
# after the chapter title. Adds \\minitoc command to latex output.
# This is subsittuted on the end of </chpatertitle> sml.
# The minitoc package looks for \\minitoc in the latex
# and puts a mini-table of contents there. 
# \usepackage{minitoc} and \\dominitoc  were edited into hi.latex  
# Those commands must be there. Google on minitoc latex for documentation.
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

##########################################################################
# Deletes all blank lines.  This merely reduces the size of the translated
# file and hopefully speeds things up, nothing more.
#
/^$/d
##########################################################################


##########################################################################
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
# First, the backslash fix: as you can see, we first replaced all \ 
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
# Both tags must have their own line, nothing else
# deleted from .txt, .html, .groff
s/<tex>//
s/<\/tex>//
##########################################################################

 
##########################################################################
# <htmlo> tags: maker for text to insert into .html file only
# Both tags must have their own line, nothing else
# deleted from .txt, .tex, .latex,  .groff
/<htmlo>/,/<\/htmlo>/d
##########################################################################


##########################################################################
# <book> tags: mark the beginning and end of a standalone document.
#
s/<book>/\\input hi.tex /g
s/<\/book>/\\bye /g
##########################################################################


##########################################################################
# <chapter> and <chaptertitle> tags: mark the beginning and end of a 
# chapter, and mark the title of a chapter, respectively.
#
s/<chapter>/\\hrule \\bigskip /g
s/<\/chapter>//g
s/<chaptertitle>/\\centerline{\\bf /g
s/<\/chaptertitle>/} \\bigskip /g
##########################################################################



##########################################################################
# <section> and <sectiontitle> tags: mark the beginning and end of a 
# section, and mark the title of a section, respectively.
#
s/<section>/\\bigskip \\hrule \\bigskip /g
s/<\/section>//g
s/<sectiontitle>/\\noindent \\underbar{\\bf /g
s/<\/sectiontitle>/} \\bigskip /g
##########################################################################


##########################################################################
# <subsection> and <subsectiontitle> tags: mark the beginning and end of a
# subsection, and mark the title of a subsection, respectively.
#
s/<subsection>//g
s/<\/subsection>//g
s/<subsectiontitle>/\\bigskip \\noindent \\underbar{\\sl /g
s/<\/subsectiontitle>/} \\medskip /g
##########################################################################


##########################################################################
# <subsubsection> and <subsubsectiontitle> tags: mark the beginning and 
# end of a subsubsection, and mark the title of a subsubsection, 
# respectively.
#
s/<subsubsection>//g
s/<\/subsubsection>//g
s/<subsubsectiontitle>/\\medskip \\underbar{\\sl /g
s/<\/subsubsectiontitle>/} \\medskip /g
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
# Insert proper image reference in output
s/.[a-z][a-z][a-z]<\/image>/.eps}/g
##########################################################################


##########################################################################
# <image> tags: mark a filename to be included as a graphic image in 
# the final document.
#
s/<image>/\\smallskip \\epsfbox{/g
s/<\/image>/.eps}/g
##########################################################################


##########################################################################
# <quotation> tags: mark a block of text to be indented as a quotation.
#
s/<quotation>/\\vskip 10pt {\\narrower \\noindent \\baselineskip5pt/g
s/<\/quotation>/\\par} \\vskip 10pt/g
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
s/<itemize>/\\medskip /g
s/<\/itemize>/\\medskip /g
##########################################################################


##########################################################################
# <item> tags: marks a line of text to become an item in an itemized list.
#
s/<item>/\\item{$\\bullet$}/g
s/<\/item>//g
##########################################################################


##########################################################################
# These tags mark a character, word, or phrase to be emphasized in a
# particular fashion.
#
s/<italic>/{\\it /g
s/<\/italic>/}/g
#
#
s/<bold>/{\\bf /g
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
s/<script2>/$/g
s/<\/script2>/$/g
#
s/<typewriter>/{\\tt /g
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
# <url> tags: mark a phrase as an Internet URL (Uniform Resource Locator).
#
s/<url>/{\\tt (/g
s/<\/url>/)}/g
##########################################################################


##########################################################################
# <TeX> tag: produces a rendition of the TeX logo.
# <LaTeX> tag: produces a rendition of the LaTeX logo.
#
s/<TeX>/\\TeX{}/g
s/<LaTeX>/LA\\TeX{}/g
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
#
s/<angle>/\\angle{}/g
#
s/<integral>/\$\\int{}\$/g
#
s/<partial>/\$\\partial{}\$/g
#
s/<infinity>/\$\\infty{}\$/g
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






