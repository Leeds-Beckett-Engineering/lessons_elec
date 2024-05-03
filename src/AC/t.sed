##########################################################################
# extended <url> tags
#experimental
#<url>http:www.whatever.com[text]</url>
#\href{http://www.whatever.com}{\tt{text}}
s+\(<url>\)\(.*\)\(\[\)\(.*\)\(\]\)\(</url>\)+<a href="\2">\4</a>+g
##

s+\(<bibitem>\)\(\[\)\(.*\)\(\]\)\(.*$\)+<li><a name="\3.bibitem">\[\3\]\5+g
s+</bibitem>+</a>+g

