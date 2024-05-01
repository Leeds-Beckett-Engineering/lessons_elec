echo "Converting %1.sml to %1.htm"
sed -f sml2html.sed %1.sml > %1.htm

rem echo "   "
rem echo "Converting %1.sml to %1.txt"
rem sed -f sml2txt.sed %1.sml > %1.txt

rem echo "   "
rem echo "Converting %1.sml to %1.latex"
rem sed -f sml2latx.sed %1.sml > %1.latex
rem echo "   "
rem echo "Processing %1.latex"
rem latex %1.latex

echo "   "
echo "Converting %1.sml to %1.tex"
sed -f sml2tex.sed %1.sml > %1.tex
echo "   "
echo "Processing %1.tex"
tex %1.tex

echo "   "
echo "Converting %1.dvi to %1.ps"
dvips -Ppdf -o %1.ps %1.dvi
echo "   "
echo "Converting %1.ps to %1.pdf"
rem ps2pdf %1.ps %1.pdf


