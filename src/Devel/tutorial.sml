<book>

<comment> This document works well as a test file for any sort of sml2... conversion</comment>
<comment> revised (DC) 01/01/2006 Added advanced Superscripting and non-breaking space.</comment> 
<comment> Last revision 01/18/2003 by Tony R. Kuphaldt</comment>
<comment> Copyright (C) 2001-2006 Tony R. Kuphaldt</comment>

<comment> This markup language and all associated comversion scripts are free; you can</comment>
<comment> redistribute them and/or modify them under the terms of the GNU General Public</comment> 
<comment> License as published by the Free Software Foundation; either version 2 of the</comment> 
<comment> License, or (at your option) any later version.</comment>

<comment> This code is distributed in the hope that it will be useful,</comment>
<comment> but WITHOUT ANY WARRANTY; without even the implied warranty of</comment>
<comment> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</comment>
<comment> GNU General Public License for more details.</comment>

<comment> You should have received a copy of the GNU General Public License</comment>
<comment> along with this program; if not, write to the Free Software</comment>
<comment> Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307</comment>
<comment> USA</comment>


<chapter>
<chaptertitle>The SubML markup language</chaptertitle>

<para>
Copyright <copyright> 2001-2006, Tony R. Kuphaldt
</para>

<section>
<sectiontitle>Introduction</sectiontitle>

<index>Introduction</index>

<para>SubML stands for <bold>Sub</bold>stitutionary <bold>M</bold>arkup <bold>L</bold>anguage.  Similar in structure to an SGML-based language, SubML is intended for simple text formatting with very few frills, but providing the capability of standard font emphasis modes, itemized lists, and image inclusion. </para>

<comment>See how the paragraphs above and below are marked with INLINE tags whereas all other paragraphs in this tutorial aren't?  This is to exhibit a feature of SubML conversion into TeX or ASCII text: that these tags are guaranteed to ensure blank lines between paragraphs no matter where they're placed in the SubML source.</comment>

<para>SubML is designed so that it may be translated into practically any markup language with nothing more than some search-and-replace commands (hence the term <italic>substitutionary</italic>), executed in the <typewriter>sed</typewriter> stream editor.  Rather than rely on complex translational algorithms (i.e. a Perl or Python script), the philosophy here is to design ease of conversion into the structure of the original markup so that any fool can write a <typewriter>sed</typewriter> script to convert to any new markup.  So far, the following conversions are provided in a set of <typewriter>sed</typewriter> scripts supplied with this tutorial:</para>

<index>Conversions to other markup languages</index>

<itemize>
<item>SubML to <TeX></item>
<item>SubML to <LaTeX></item>
<item>SubML to HTML</item>
<item>SubML to plain text (ASCII)</item>
</itemize>

<para>
More conversion routines are planned.  As far as I can see, none of them should present any unordinary difficulties in conversion.  I simply haven't got around to writing and testing all the scripts yet.  These include:
</para>

<index>Conversions to other markup languages</index>

<itemize>
<item>SubML to nroff/troff/groff</item>
<item>SubML to Texinfo</item>
<item>SubML to DocBook (SGML and/or XML)</item>
<item>SubML to Lout</item>
<item>SubML to Qwertz</item>
</itemize>

<para>
Also, it should be fairly easy to write an XML DTD for SubML, making it directly readable by XML-compatible browsers and other software.
</para>

<index>Sed</index>

<para>
Platform compatibility is limited only to the availability of a <typewriter>sed</typewriter> binary to perform the conversion.  And since <typewriter>sed</typewriter> is such a widely used and robust utility (free, too, thanks to the Free Software Foundation!), this should not be a problem.  I've successfully ``compiled'' SubML documents on both Linux and Microsoft Windows 95 with equal ease.
</para>

<index>Escape characters</index>

<para>
Characters usually interpreted as <italic>escape characters</italic> in other markup languages like \, &, $, %, |, ~, ^, and _ are handled without special tagging as well (100% of the time, too -- this makes SubML worth $1,000,000 & that's not all!).  The only characters SubML requires you to specially code (not type verbatim in your source document) are the <lt> and <gt> symbols, simply because SubML itself uses them as escape characters to mark the beginning and end of tags. 
</para>

</section>



<pagebreak>



<section>
<sectiontitle>Levels of sections under each chapter</sectiontitle>

<index>Sections</index>

<para>
This is text contained in the first true <italic>section</italic> of this tutorial.
</para>


<index>Subsections</index>


<subsection>
<subsectiontitle>This is the first subsection (titlebar)</subsectiontitle>

<para>
This is text contained in the first <italic>subsection</italic> of this tutorial.
</para>

</subsection>



<subsection>
<subsectiontitle>This is the second subsection (titlebar)</subsectiontitle>

<para>
This is text contained in the second <italic>subsection</italic> of this tutorial.
</para>


<index>Subsubsections</index>

<subsubsection>
<subsubsectiontitle>This is the first subsubsection (titlebar)</subsubsectiontitle>

<para>
This is text contained in the first <italic>subsubsection</italic> of this tutorial, which is within the second <italic>subsection</italic>.
</para>

</subsubsection>


</subsection>


</section>




<pagebreak>





<section>
<sectiontitle>Gallery of inline text formatting tricks</sectiontitle>

<para>
In this section, we will explore the various inline (embedded within a sentence) formatting commands provided by SubML.  
</para>

<para>
Note that this may not be the fanciest array of formatting commands, but it should suffice for most common formatting requirements.
</para>

<para>
If the standard SubML philosophy is followed, additional formatting capabilities may be included at a later date.  The only real restriction is that whatever formatting capability is added must be translatable to the desired output type (<TeX>, HTML, DocBook, etc.) using nothing more than <italic>simple</italic> search-and-replace algorithms.
</para>



<subsection>
<subsectiontitle>Sub- and super-scripting</subsectiontitle>

<index>Subscript</index>
<index>Superscript</index>

<para>
This is a test of the sub<subscript>scripting</subscript> and super<superscript>scripting</superscript> capabilities of SubML.  This is useful to create simple mathematical (-2<superscript>-3</superscript> = -0.125) and chemical (H<subscript>2</subscript>O, <subscript>92</subscript>U<superscript>235</superscript>) expressions.
</para>

<para>
While the following displays in html, it does not display properly in ps or pdf due to tex/latex errors when using the normal <lt>subscript<gt>,  <lt>superscript<gt>, as above. Instead, we use <lt>subscript2<gt>,  <lt>superscript2<gt>.
</para>
<para>
<math>10<superscript2>log<subscript2>10</subscript2>(V<subscript2>I</subscript2>)</superscript2></math>
</para>
<para>
<math> 10<superscript2>log<subscript2>10</subscript2>(V<subscript2>I</subscript2>/V<subscript2>O</subscript2>)</superscript2></math>
</para>



<para>Un-comment line here to create error.</para>
<comment>Un-comment the following line to cause latex/tex error</comment>
<para>
<comment>10<superscript>log<subscript>10</subscript>(V<subscript>I</subscript>/V<subscript>O</subscript>)</superscript></comment>
</para>

<para>
Note the <lt>math<gt> <lt>/math<gt> around the whole subscript and superscript line in the tutorial.sml source above.(You need to be looking at tutorial.sml) Only use this if you have tex/Latex errors, no ps or pdf. Complex mixtures of both superscripts and subscripts are a reason. 
</para>



</subsection>



<subsection>
<subsectiontitle>Boolean overline negation</subsectiontitle>

<para>
Boolean negation (not) is supported in LaTeX by the \overline{ } command, available in the math environment. HTML provides no such support for overline. However, it is customary in some texts to indicate negation with a single quote (') post-fixed to the negated variable. Thus, we support Boolean negation in SML with the <lt>ob<gt> and <lt>/ob<gt> tags (overbar) enclosing the negated variable.The sed processed Latex output will show (dvi, ps, pdf)  overline negated variables, the html has the post-fixed single quote form of negation. Equations with any negated variables must be surrounded by <lt>math<gt> and <lt>/math<gt> tags to activate the "math" environment for latex. 
</para>

<para>
Any extensive use of Boolean equations should be xcircuit images so that real overlines will be available in html as well as LaTeX. The methods here are meant to support simple in-sentence Boolean expressions, not free-standing equations.
</para>

<para>
<lt>math<gt>Y = (<lt>ob<gt>A<lt>/ob<gt> + <lt>ob<gt>B<lt>/ob<gt>)<lt>/math<gt><sp><sp><sp><sp><sp> This markup gives the result below:
</para>
<para>
<math>Y = (<ob>A</ob> + <ob>B</ob>)</math><sp><sp><sp><sp><sp> This 
result.</para>

<para>
<lt>math<gt>Y = <lt>ob<gt>(<lt>ob<gt>A<lt>/ob<gt> + <lt>ob<gt>B<lt>/ob<gt>)<lt>/ob<gt><lt>/math<gt><sp><sp><sp><sp>This markup gives:
</para>
<para>
<math>Y =<ob>(<ob>A</ob> + <ob>B</ob>)</ob></math><sp><sp><sp><sp><sp> This 
result with long overline is due to outer tags. The span of the overline is analogous to the span of a pair of bold tags. While the parenthesis are not necessary in the LaTeX rendition, they are mandatory in the "single quoted" html version to indicate the extent of the negation.</para>

<para>
Some other examples follow:
</para>

<para>
<math>Y = <ob>(<ob>A</ob> + <ob>B</ob>)</ob> =<ob>(<ob>(A<sp>B)</ob>)</ob> </math>
</para>

<para>
<math>Y = <ob>(<ob>A</ob><sp><ob>B</ob><ob>C</ob>E<ob>D</ob>)</ob></math><sp><sp><sp><sp><sp><sp>Incorrect in LaTeX, we wanted broken bar BC like AB. 
</para>

<para>
<math>Y = <ob>(<ob> A </ob> <ob> B </ob> <ob> C </ob> E <ob> D </ob>)</ob></math> <sp><sp><sp><sp>This is incorrect in LaTeX, OK on html.  We wanted broken bar between ABC.
</para>
<para>
<math>Y = <ob>(<ob>A</ob><sp><ob>B</ob><sp><ob>C</ob>E<ob>D</ob>)</ob></math><sp><sp><sp><sp>Like this by putting spaces between ABC. See tutorial.sml
</para>

<para>
<math>Y = (<ob>(<ob>A<sp>(<ob>B<sp><ob>C</ob>)</ob>)</ob>)</ob></math><sp><sp><sp><sp><sp><sp>This is better as an xcircuit image; html is difficult to follow.
</para>

</subsection>


<subsection>
<subsectiontitle>Emphasis fonts</subsectiontitle>

<para>
<italic>Italicized</italic>, <bold>boldface</bold>, and <underline>underlined</underline> type are also available in SubML.
</para>

</subsection> 



<subsection>
<subsectiontitle>Special dashes</subsectiontitle>

<para>
The regular dash, such as that used for hyphenation, looks-like-this.  A dash specifically used for subtraction is typeset using a special SubML tag, so that 5<minus>3 (math dash) looks distinct from 5-3 (ordinary dash).  Some people don't care too much about this, so use this tag at your discretion.
</para>

<para>
Sometimes it is useful to show a pair of dashes -- not the ``em-dash'' used in setting off a section of text like this -- but a real <italic>pair</italic> of dashes.  In this case, another special SubML tag has been created to do this <doubledash> and you just read over it!  I use it to denote series-connected electronic components in symbolic form.  For example, a pair of resistors (R<subscript>1</subscript> and R<subscript>2</subscript>) are connected in parallel with each other, but together they're in series with R<subscript>3</subscript>.  Symbolically, I represent such a configuration like this: (R<subscript>1</subscript>//R<subscript>2</subscript>)<doubledash>R<subscript>3</subscript>.
</para>

</subsection> 


</section>



<pagebreak>




<section>
<sectiontitle>Block formatting</sectiontitle>

<para>
An important feature I've found in document processing is the ability to typeset a literal segment of text.  That is, a section of print in a monospaced font with all normal paragraph formatting features of the target markup language turned off.  
</para>

<para>
One common usage of this feature is for the typesetting of computer programming code.  An example follows:
</para>

<bigspace>

<para>
<bold>File listing:</bold> <typewriter>hello.c</typewriter>
</para>

<literal>
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
.
.  #include <lt>stdio.h<gt>                                           
.                                                               
.  int main(void)                                               
.  {                                                            
.    printf("\nHello, world!\n");                                   
.    return (0);                                                
.  }                                                            
.
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
</literal>

<bigspace>

<para>
The dots are inserted manually within the SubML document to ``set off'' the literal block of text from the rest of the document.  Also, the leading dots (at very left of each line) help overcome a problem I'm having with <TeX> formatting where leading spaces get discarded and everything ends up smashed against the left margin.
</para>


<para>
Without the dots, it looks like this:
</para>

<bigspace>

<literal>

#include <lt>stdio.h<gt>                                         
                                                               
int main(void)                                               
{                                                            
  printf("\nHello, world!\n");                                   
  return (0);                                                
}                                                            

</literal>

<bigspace>


<para>
The "set off" leading dot may be replaced by the <lt>sp<gt> tag to avoid the  dot in your literal block.
</para>

<bigspace>

<literal>

<sp>     #include <lt>stdio.h<gt>                                         
                                                               
<sp>     int main(void)                                               
<sp>     {                                                            
<sp>       printf("\nHello, world!\n");                                   
<sp>       return (0);                                                
<sp>     }                                                            

</literal>

<bigspace>





<para>
Another kind of block formatting is the inclusion of offset quotations.  Note the following example:
</para>

<quotation>
"Vague and insignificant forms of speech, and abuse of language, have so long passed for mysteries of science; and hard or misapplied words with little or no meaning have, by prescription, such a right to be mistaken for deep learning or height of speculation, that it will not be easy to persuade either those who speak or those who hear them, that they are but the covers of ignorance and hindrance of true knowledge." - John Locke 
</quotation>

<para>
Italics may also be added to ``set off'' a quotation from the rest of the text, especially in HTML.  Combining the <typewriter>italic</typewriter> and <typewriter>bold</typewriter> tag sets inside of the <typewriter>quotation</typewriter> tag set accomplishes this goal nicely:
</para>

<quotation>
<italic>"Vague and insignificant forms of speech, and abuse of language, have so long passed for mysteries of science; and hard or misapplied words with little or no meaning have, by prescription, such a right to be mistaken for deep learning or height of speculation, that it will not be easy to persuade either those who speak or those who hear them, that they are but the covers of ignorance and hindrance of true knowledge."</italic> - <bold>John Locke</bold> 
</quotation>

<para>
While perhaps not a true block-formatting feature, itemized lists can be created using SubML.  Take the following example:
</para>

<itemize>
<item> This is the first item </item>
<item> This is the second item </item>
<item> This is the third item </item>
<item> Isn't this fun? </item>
</itemize>

<para>
In the spirit of simplicity, I haven't created the option of enumerated lists, indented lists, or anything fancy like that within the language of SubML.
</para>

</section>



<pagebreak>



<section>
<sectiontitle>Including graphic images in a document</sectiontitle>


<para>
Graphic image inclusion is perhaps the best feature of SubML.  Note the following example:
</para>

<image>test.png</image>

<para>
You must be sure to specify an HTML-compatible image in the markup code.  This means an image file specified with a filename ending in <typewriter>.png</typewriter>, <typewriter>.jpg</typewriter>, <typewriter>.bmp</typewriter>, or <typewriter>.gif</typewriter> (three-character extensions only: <typewriter>.jpg</typewriter>, not <typewriter>.jpeg</typewriter>!).  For <TeX> or <LaTeX> output, there must be an Encapsulated Postscript image file <typewriter>.eps</typewriter> in the same directory, but not specified in the markup code.
</para>

<para>
For example, the markup code necessary to place the "happy face" image shown above is as follows:
</para>

<bigspace>

<literal>
<lt>image<gt>test.png<lt>/image<gt>
</literal>

<bigspace>

<para>
Two versions of the image exist: <typewriter>test.png</typewriter> for inclusion into the HTML output, and <typewriter>test.eps</typewriter> for inclusion into the <TeX> or <LaTeX> output, but only the HTML-compatible file need be specified in the SubML source code.
</para>

<image>test.png<caption>This is a fine caption.</caption></image>

<bigspace>

<para>
Below is the  markup code necessary to place the "happy face" image with a caption shown in figure<ref>test.png above</ref>. A "Figure x.x" string precedes the caption in <LaTeX>. It also generates  <LaTeX> code  for a //lable<sp>test.eps, which is used to reference the figure. The caption is included in the html without the "Figure x.x" designation.
</para>

<bigspace>
<literal>
<lt>image<gt>test.png<lt>caption<gt>This is a fine caption.<lt>/caption<gt><lt>/image<gt>
</literal>

<bigspace>
<para> 
Note that in the previous paragraph, we reference "figure 1.1" or "figure above" in tutorial.ps and tutorial.html, respectively. The markup below, between the ref tags, is for referencing the above image as a figure. The image name, test.png, is a symbolic reference, replaced by 1.1, 1.2, etc., during "latex tutorial.latex" processing. Put the image name between the tags.
</para>

<bigspace>
<literal>
<sp>       See figure<lt>ref<gt>test.png<lt>/ref<gt> for a "happy face". 
</literal>

<bigspace>
<para>
If you read about Latex figures, labels, and references, you will find that the label is completely arbitrary. The only requirement is that the //ref command must call out the label associated with the figure. In our case the sml2latx.sed file contains substitutions which fill in the image number, eg: test.png, 02041.png, for the label. Thus, we do not have to manually fill that in for each of our images, which we may or may not reference. If we do wish to reference a figure we reference the image number. It may be necessary to run "latex tutorial.latex" twice to resolve the references. 
</para>

<para>
As an option for html, a word may follow the image name as below. Eg., "test.png above" will put "above" into the tutorial.html. We have no way to generate numbered figures in the html. So, figure above, figure below, may be usefull. View tutorial.html vs tutorial.ps for "figure 1.1" vs "figure above", respectively. Here we reference figure<ref>test.png</ref> again, but only in tex/latex, no html as in the above markup. The markup below shows the optional html word.
</para>

<bigspace>
<literal>
<sp>       See figure<lt>ref<gt>test.png above<lt>/ref<gt> for a "happy face".
</literal>


<bigspace>
<para>
In the case of html, we do not have the referencing facilities provided by <LaTeX>. The best we can do is refer to the figure above or below as shown in the above markup.
</para>
<para>
Unrelated, take a look at tutorial.html to see how we have indented the above markup code without a leading dot. Compare to previous unindented markups.</para>
</para>

<para>
See caution in next section: only one reference per line (pair of <lt>ref<gt> tags). Else, split line with (return).
</para>


<subsection>
<subsectiontitle>Labeling a figure</subsectiontitle>

<para>
Do not confuse the "Labeling" with the caption on a figure. In most all cases you can skip this section and let the sed processing automatically generate the label which the "figure" requires so that it may be referenced. The automatic label is the same as the image file name (eg 02221.png).  The previous section covers this. The only reason to read this section is in the rare event that a second instance of a figure is being used. In which case, it needs a new, unique, not automatically generated label, not the (automatic) label for the first instance of the image. You may also skip this, if there is no caption for the figure. We will give the second instance of the image a unique label so that it will not be confused with the first instance when we reference it. See  Figure<ref>newtest.png below</ref>
</para>


<image>test.png<caption>Caption for the second instance of our image.</caption><label>newtest.png</label></image>


<para>

Note that our new figure is captioned as Figure<ref>newtest.png above</ref>. The caption is different than the caption for the previous 
<comment>split for double ref, sed script only handles one per line.</comment>
Figure<ref>test.png 2nd-above</ref>. We are able to assign a label to it:
</para>
<bigspace>
<literal>
<lt>image<gt>test.png<lt>caption<gt>This is a fine caption.<lt>/caption<gt>
<lt>label<gt>newtest.png<lt>/label<gt><lt>/image<gt>
</literal>
<bigspace>

<para>
Note that the above markup must be on one line. It is too wide for our page. So, we wrapped it.  It may wrap in the text editor. But there cannot be a (return) except at the end of the line. The sed script processes a line at a time for each command. We process all the tags in the line with one command for image, caption, label, and ref tags.
</para>

<para>
Once it has a label, we can distinguish it from the other figure by referencing it the same way we reference other figures (just a different label):
</para>
<para>
If we compare the above image caption for newtest.png to the previous caption for for test.png, we find that both specify the same image, test.png. The latter has a different label "newtest.png" This is just a label. There is no image by that name.
</para>


<bigspace>
<literal>
 See figure<lt>ref<gt>newtest.png above<lt>/ref<gt> for a 2nd "happy face".
</literal>
<bigspace>


<para>
Caution, a limitation of the sed script for caption processing is that only one figure  reference ( eg.: <lt>ref<gt>newtest.png<lt>/ref<gt>) may be processed properly per line. Typically, there is only one line, all the words up to the end-of-line between <lt>para<gt> tags. If we need more than one <lt>ref<gt><lt>/ref<gt> in a paragraph, the paragraph may be split into two or more lines between the two paragraph tags. See tutorial.sml for an example of this in the paragraph "Note that our new figure is captioned. . . "
</para>



</subsection>


<subsection>
<subsectiontitle>Scaling an image</subsectiontitle>

<para>
Once in a long while, an image which is of satisfactory size in the html version of a document is too small in the LaTeX produced pdf document. The solution is to make the image the "right size" for the html document, then scale it to a suitable size in the LaTeX file. This is done by a sed (string substitution program) command in sml2latx.sed. When the  sml source is processed, a scale factor is  added to the .latex file, but not the .html file.
</para>

<para>
The scale factor must be  added to the .sml as a modification between the <lt>image<gt> tag and the file name of the image. This markup produces Figure<ref>smalltest.png below</ref>).
</para>

<bigspace>
<literal>
<lt>image<gt>[scale=0.5]test.png<lt>caption<gt>This is scaled down in LaTeX.<lt>/
caption<gt><lt>label<gt>smalltest.png<lt>/label<gt><lt>/image<gt>
</literal>
<bigspace>

<para>
The image command must be on a single line, a CR only at the end, none in the middle. Though, we wrapped it above for appearance. And, don't put two on one line-- split into two lines. This scale parameter, [scale=0.5], only works if the <lt>caption<gt> tags are used, due to sed script limitations. The same is true of the <lt>label<gt> tags. The caption tags generate a figure number, even if there is nothing between the tag. There must be a unique label between the <lt>label<gt> tags, else LaTeX give an error.  There must be no space between [scale=0.5] and test.png. LaTeX doesn't want a space in front of the image file name. It must be like this [scale=0.5]test.png. 
</para>

<image>[scale=0.5]test.png<caption>This is scaled down in LaTeX.</caption><label>smalltest.png</label></image>



</subsection>


</section>



<pagebreak>



<section>
<sectiontitle>Special characters</sectiontitle>

<para>
In addition to special logos like <TeX>, SubML provides for certain often-used characters of the Greek alphabet.
</para>

<para>
The ratio of a circle's circumference to its diameter is symbolized by the Greek letter ``pi,'' which SubML represents like this: <pi>.  The area of a circle is given as A=<pi>r<superscript>2</superscript>.  Not many people realize that the standard symbol <pi> is actually the <italic>lower-case</italic> version of the Greek letter.  The capital version looks like this: <PI>, and it does not represent the same thing in mathematics.
</para>

<para>
But there are other useful Greek characters for us to use in SubML as well.  When SubML is converted to plain ASCII text, some of the Greek characters like <mu> and <rho> will be represented by the closest-resembling Roman (English alphabet) character available.  If there is no Roman character close enough, the Greek character's name will be spelled in parentheses.  <TeX>, on the other hand, is very Greek-literate and requires no ``fudging'' to obtain perfect representation.  HTML output from SubML conversion renders these characters using Unicode.  In order for a web browser to properly display them, it must be set up with Unicode character support.  For your viewing pleasure, we have:
</para>

<itemize>
<item>Alpha (lower-case): <alpha></item>
<item>Beta (lower case): <beta></item>
<item>Gamma (lower case): <gamma> . . . . . . Gamma (capital): <GAMMA></item>
<item>Delta (lower case): <delta> . . . . . . Delta (capital): <DELTA></item>
<item>Epsilon (lower case): <epsilon></item>
<item>Varepsilon (lower case): <varepsilon></item>
<item>Zeta (lower case): <zeta></item>
<item>Eta (lower case): <eta></item>
<item>Theta (lower case): <theta> . . . . . . Theta (capital): <THETA></item>
<item>Vartheta (lower case): <vartheta></item>
<item>Iota (lower case): <iota></item>
<item>Kappa (lower case): <kappa></item>
<item>Lambda (lower case): <lambda> . . . . . . Lambda (capital): <LAMBDA></item>
<item>Mu (lower case): <mu></item>
<item>Nu (lower case): <nu></item>
<item>Xi (lower case): <xi> . . . . . . Xi (capital): <XI></item>
<item>Pi (lower case): <pi> . . . . . . Pi (capital): <PI></item>
<item>Rho (lower case): <rho></item>
<item>Varrho (lower case): <varrho></item>
<item>Sigma (lower case): <sigma> . . . . . . Sigma (capital): <SIGMA></item>
<item>Varsigma (lower case): <varsigma></item>
<item>Tau (lower case): <tau></item>
<item>Upsilon (lower case): <upsilon> . . . . . . Upsilon (capital) <UPSILON></item>
<item>Phi (lower case): <phi> . . . . . . Phi (capital): <PHI></item>
<item>Varphi (lower case): <varphi></item>
<item>Chi (lower case): <chi></item>
<item>Psi (lower case): <psi> . . . . . . Psi (capital): <PSI></item>
<item>Omega (lower case): <omega> . . . . . . Omega (capital): <OMEGA></item>
<item>non-breaking space 1 1  1   1 2<sp><sp>2<sp><sp>2 3<sp><sp><sp>3<sp><sp><sp>3 4<sp><sp><sp><sp>4<sp><sp><sp><sp>4<sp><sp><sp><sp>4</item>
<item>Tau (lower case): <tau></item>
<item>bigtriangledown: <bigtriangledown></item>
<item>oplus, exclusive or sign: <oplus></item>
<item>almostequal: <almostequal></item>
<item>approxequal, approximately equal: <approxequal></item>
<item>neq, not equal: <neq></item>
<item>plusminus, plus or minus: <plusminus></item>
<item>cdot, centered dot, times dot: <cdot></item>
<item>leq, less than or equal: <leq></item>
<item>geq, greater than or equal: <geq></item>
<item>times, times sign: <times></item>
<item>registered, registration sign: <registered></item>

</itemize>

<para>
Another special symbol available in SubML is the <angle> symbol (<lt>angle<gt>), used in mathematical statements to designate an angle.  This is useful for expressing complex numbers in polar form.  Take for example this impedance: 500 <OMEGA> <angle> -34.61<superscript>o</superscript>.  By the way, the way I typeset the "degree" symbol is with a superscript letter "o".
</para>

<para>
Other mathematical symbols included in SubML's vocabulary are the integration symbol (<integral>), partial derivative symbol (<partial>), and the infinity symbol (<infinity>).  Here are some examples of these symbols in use:
</para>

<bigspace>

<para>
V = <integral>Q dt + C
</para>

<bigspace>

<para>
<partial>x/<partial>t
</para>

<bigspace>

<para>
<infinity> is bigger than BIG!
</para>

<bigspace>

<para>
Note that you cannot show upper and lower integration limits for a definite integral using the "<integral>" markup tag.  It is useful for crude in-line formatting of an integral equation only.  If you want to show lower and upper integration limits in a SubML document, you must use a graphic image -- sorry!
</para>

<para>
For special characters used in other languages (Spanish, French, German, etc.), the following are available in the SubML vocabulary:
</para>

<itemize>
<item>"a" with grave (back prime): <a`> . . . . . . <A`></item>
<item>"a" with acute (forward prime): <a'> . . . . . . <A'></item>
<item>"a" with circumflex (caret): <a^> . . . . . . <A^></item>
<item>"a" with umlaut/dieresis/tremat: <a"> . . . . . . <A"></item>
<item>"a" with tilde: <a~> . . . . . . <A~></item>
<item>"a" with "ring" above: <ao> . . . . . . <Ao></item>
<item>"c" with cedilla: <c,> . . . . . . <C,></item>
<item>"e" with grave (back prime): <e`> . . . . . . <E`></item>
<item>"e" with acute (forward prime): <e'> . . . . . . <E'></item>
<item>"e" with circumflex (caret): <e^> . . . . . . <E^></item>
<item>"e" with umlaut/dieresis/tremat: <e"> . . . . . . <E"></item>
<item>"i" with grave (back prime): <i`> . . . . . . <I`></item>
<item>"i" with acute (forward prime): <i'> . . . . . . <I'></item>
<item>"i" with circumflex (caret): <i^> . . . . . . <I^></item>
<item>"i" with umlaut/dieresis/tremat: <i"> . . . . . . <I"></item>
<item>"n" with tilde: <n~> . . . . . . <N~></item>
<item>"o" with grave (back prime): <o`> . . . . . . <O`></item>
<item>"o" with acute (forward prime): <o'> . . . . . . <O'></item>
<item>"o" with circumflex (caret): <o^> . . . . . . <O^></item>
<item>"o" with umlaut/dieresis/tremat: <o"> . . . . . . <O"></item>
<item>"o" with tilde: <o~> . . . . . . <O~></item>
<item>"u" with grave (back prime): <u`> . . . . . . <U`></item>
<item>"u" with acute (forward prime): <u'> . . . . . . <U'></item>
<item>"u" with circumflex (caret): <u^> . . . . . . <U^></item>
<item>"u" with umlaut/dieresis/tremat: <u"> . . . . . . <U"></item>
<item>Inverted question mark <?></item>
<item>Inverted exclamation mark <!></item>
</itemize>

<para>
So, now you may impress all your Espa<n~>ol-speaking amigos with the following phrases in your documents:
</para>

<bigspace>

<quotation>
"<?>D<o'>nde est<a'> el cuarto de ba<n~>o?"
</quotation>

<bigspace>

<quotation>
"<!>M<a'>s cerveza, por favor!"
</quotation>

<bigspace>

<quotation>
"<?>Puede indicarme d<o'>nde est<a'> en el mapa?"
</quotation>

<bigspace>

<quotation>
"Por favor, d<i'>gale tu amigo que voy a llegar cinco minutos tarde."
</quotation>

<bigspace>

<quotation>
"Aqu<i'> tiene mi casa."
</quotation>

<bigspace>

<para>
And when your friend asks you this . . .
</para>

<quotation>
"<?>Qu<e'> procesador de textos usted utiliza?"
</quotation>

<para>
. . . you may respond with pride:
</para>

<quotation>
"No utilizo un procesador de textos.<!>En lugar, utilizo un lenguaje de marcas!"
</quotation>

</section>
<pagebreak>





<section>
<sectiontitle>Tex/Latex only, HTML only</section>
</sectiontitle>

<para>
Tags <lt>tex<gt>, <lt>/tex<gt>, <lt>htmlo<gt>, <lt>/htmlo<gt> are provided to include text from .sml selectively only in .latex, .tex   or only in .html. The <lt>tex<gt> <lt>/tex<gt> tags mark  text that is only included in the .latex and .tex outputs of "sed -f sml2latx.sed" and "sed -f sml2tex.sed". Text that is only to be included in the .html is marked of by the <lt>htmlo<gt>, <lt>/htmlo<gt> tags.
</para>


<para>
This following markup is to only show text in tutorial.latex and tutorial.tex. Following the markup, see text in tutorial.latex, tutorial.tex, but not in tutorial.html
</para>

<bigspace>
<literal>
<lt>tex<gt>This only shows in tutorial.latex and tutorial.tex<lt>/tex<gt>
</literal>
<bigspace>


<para>
<tex>This only shows in tutorial.latex and tutorial.tex</tex>
</para>
<bigspace>


<para>
This following markup is to only show text in tutorial.html. Following the
markup we see the text in tutorial.html but not tutorial.latex,
tutorial.tex.
</para>

<bigspace>
<literal>
<lt>htmlo<gt>This only shows in tutorial.html<lt>/htmlo<gt>
</literal>
<bigspace>


<para>
<htmlo>This only shows in tutorial.html</htmlo>
</para>
<bigspace>


<para>
Given both a portrait and landscape version on a same-size image, a  practical application of the <lt>tex<gt>,  <lt>htmlo<gt> tags is to selectively direct those images to tutorial.latex or tutorial.html. We do not actually do this in tutorial.sml, but show the markup. For example, we wish to send the landscape version of a big image to the html version of our  book so that readers do no have to rotate their monitors. This landscape is too big for our .latex, .tex, .ps, .pdf 6-inch wide book pages. We cannot reduce the size of the landscape, which would be unreadable. So, we rotate our big landscape to a portrait. It started out 4-inches tall and is now 4-inches wide. It fits side ways nicely on a book page. We have not reduced the size, just rotated it. A book reader can easily rotate the book to view the large image.
</para>
<bigspace>

<literal>
<lt>htmlo<gt><lt>image<gt>landscape.png<lt>/image<gt><lt>/htmlo<gt>
</literal>
<bigspace>

<literal>
<lt>tex<gt><lt>image<gt>portrait.png<lt>/image<gt><lt>/tex<gt>
</literal>
<bigspace>


</section>

<pagebreak>



<section>
<sectiontitle>Hyperlinks and targets</sectiontitle>

<para>
<hyperlink>invisibleTarget[link at]</hyperlink> end of this section.
</para>

<para>
<hypertarget>LINK[sample target]</hypertarget> located here, jump here from a link (Click) near the bottom of this section
</para>
<bigspace>
<para>
The <lt>url<gt>, <lt>/url<gt> tags provide clickable links to URLs in both the html and pdf versions of a document. The pdf is derived from LaTeX. Internal links are provided by <lt>hyperlink<gt>, <lt>/hyperlink<gt> tags, which link to targets defined by the  <lt>hypertarget<gt>, <lt>/hypertarget<gt> tags. The syntax for these tags takes the following form:


<literal>
<lt>url<gt>url_link[text]<lt>/url<gt>
<lt>hyperlink<gt>link[text]<lt>/hyperlink<gt>
<lt>hypertarget<gt>link[optional text]<lt>/hypertarget<gt>
</literal>

<para>
The "link" for <lt>hyperlink<gt> must match the "link" at the <lt>hypertarget<gt> to actually jump there on clicking.  The links for <lt>hypertarget<gt> in the case of multiple targets needs to be unique-- no two targets the same. The "link" for<lt>hyperlink<gt> and <lt>hypertarget<gt> may not contain any underscores, eg., invisible_link. Though, it works in html, the pdf links will be dead. And, no errors are generated. The <lt>url<gt> and <lt>hyperlink<gt> text will appear colored in both html and pdf when viewed. The <lt>hypertarget<gt> text is not colored, and is optional.
</para>

<para>
The following markup provides an external  link to a URL in both html and pdf documents:
</para>
<literal>
Go to 
<lt>url<gt>http:www.ibiblio.org/obp/electricCircuits/index.htm[Lessons in Electric Circuits]<lt>/url<gt>
 to learn about electricity.
</literal>
<para>
Go to 
<url>http:www.ibiblio.org/obp/electricCircuits/index.htm[Lessons in Electric Circuits]</url>
 to learn about electricity.
</para>

<para>
Why are there no quotes around the URL above?  While the quotes are needed in html code, they are not used in <LaTeX>. Therefore, we do not include them here. They are added by the sml2html.sed script to the html document. 
</para>


<para>
Click this link to <hyperlink>invisibleTarget[jump to invisible]</hyperlink> target at end of section. At the top of this section click on "link at" to also jump to the end of the section.
</para>



<bigspace>
<para>
The following markup provides the link below it to the top of this section:
</para>
<literal>
<lt>hyperlink<gt>LINK[Click]<lt>/hyperlink<gt> to go to target at top of section.
</literal>
<para>
<hyperlink>LINK[Click]</hyperlink> to go to target at top of section.
</para>


<bigspace>
<para>
Here is the markup for an "invisible" target at the end of this section:
</para>
<literal>
<lt>hyperlink<gt>invisibleTarget[]<lt>/hyperlink<gt> 
</literal>
<hypertarget>invisibleTarget[]</hypertarget>

</section>



<section>
<sectiontitle>Bibliography and citations</sectiontitle>

<para>
The <lt>thebibliography<gt>,<lt>/thebibliography<gt> tags mark a section of text to be treated as a list of bibliographic references. Contained therein are individual bibliographic entries delimited by <lt>bibitem<gt><lt>/bibitem<gt> tags.  Theses entries may be referenced from the body of the main text by <lt>cite<gt><lt>/cite<gt> tags. The syntax of these tags is as follows:
</para>

<literal>
<lt>thebibliography<gt>
<sp> <lt>bibitem[ref]text<lt>/bibitem<gt> 
<sp> <lt>bibitem[ref2]text2<lt>/bibitem<gt> 
<lt>/thebibliography<gt>
</literal>

<para>
The purpose of this paragraph is to reference the bibliography below. This paragraph is broken into several lines terminated by a return.<cite>footnotes</cite>
You should skip to the bibliography and look at the first entry, here.<cite>latex</cite> 
The second entry in the bibliography is here.<cite>1d</cite>
Note that the fourth bibitem contains a url to link to home of this project.<cite>4</cite>  
</para>


<para>
The bracketed reference, [ref], in the bibitem needs to be matched by the corresponding citation reference <lt>cite<gt>ref<lt>/cite<gt> in the body of the text. See above and below. In LaTeX, this is usually an easy to remember mnemonic. This is replaced by bracketed a number, eg. [2], in the processed LaTeX version of the document. However, the html version of the document will not have numbers unless the reference is a number, eg. <lt>cite<gt>4<lt>/cite<gt>. The bibliography in html is a numbered list. However, these numbers do not necessarily correspond to the sml bibitem reference. Use numbers instead of mnemonics in the bibitem reference for numbers in the html.<cite>4</cite>.
</para>


<para>
A sample bibliography with four items follows: 
</para>



<thebibliography>

<bibitem>[latex]Helmut Kopka and Patrick W. Daly, A Guide to LaTeX: Document Preparation for Beginners and Advanced Users (Addison-Wesley, Reading, MA, 1999), 3rd. ed. </bibitem>

<bibitem>[footnotes]The html sed processing only handles one citation per line. Though, LaTeX can handle more.</bibitem> 

<bibitem>[1d]B. C. Freasier, C. E. Woodward, and R. J. Bearman, ``Heat capacity extrema on isotherms in one-dimension: Two particles interacting with the truncated Lennard-Jones potential in the canonical ensemble,'' J. Chem. Phys. 105, 3686--3690 (1996).</bibitem>

<bibitem>[4] Kuphaldt, Tony R., <url>http://www.ibiblio.org/obp/electricCircuits/index.htm[Lessons in Electric Circuits]</url> in the open book project at ibiblio.org</bibitem>

</thebibliography>


<para>

Note that the last entry above contains a url. The whole bibterm must be on one line, only one return,  at the end.
</para>

</section>


<pagebreak>
<section>
<sectiontitle>What SubML won't do</sectiontitle>

<para>
SubML is designed to be a <italic>simple</italic> markup language, and as such it lacks certain advanced features found in other, more capable languages like <TeX> or DocBook.  One of these missing features is tables.  However, I have found that it often works well to create a table using a graphics editor and then insert it into the document as an image.  One advantage to doing tables this way is consistency in appearance between different outputs (<TeX>, HTML, etc.). 
</para>

<para>
Another thing SubML makes no provision for is easy, verbatim display of its own markup code.  In order to show verbatim SubML code, you must mark all <lt> and <gt> symbols with the appropriate <lt>lt<gt> and <lt>gt<gt> tags.  The following paragraph shows the markup required for this paragraph.  For a really wild experience, view the source code of this file to see how I mark up <italic>that</italic> paragraph:
</para>

<bigspace>

<literal>
<lt>para<gt>
Another thing SubML makes no provision for is easy, verbatim display
of its own markup code.  In order to show verbatim SubML code, you 
must mark all <lt>lt<gt> and <lt>gt<gt> symbols with the appropriate
<lt>lt<gt>lt<lt>gt<gt> and <lt>lt<gt>gt<lt>gt<gt> tags.  The 
following paragraph shows the markup required for this paragraph.  
For a really wild experience, view the source code of this file to 
see how I mark up <lt>italic<gt>that<lt>/italic<gt> paragraph:
<lt>/para<gt>
</literal>

<bigspace>

<para>
I could carry the recursion one step further, but that would be cruel and unusual punishment for both of us.
</para>

</section>



<pagebreak>



<section>
<sectiontitle>How to do the conversion</sectiontitle>

<para>
First, you need to have <typewriter>sed</typewriter> installed and operational on your computer.  Next, be sure that all conversion scripts (<typewriter>sml2tex.sed</typewriter>, <typewriter>sml2html.sed</typewriter>, etc.) have been installed in the same directory as the SubML document that you wish to convert.  If you wish to convert your SubML document to <TeX>, groff, or some other markup language requiring further processing, you must of course have the necessary software installed on your computer to process the markup format(s) of choice.  
</para>

<para>
For instance, if you converted your SubML document into a <TeX> document using the <typewriter>sml2tex.sed</typewriter> script provided with this tutorial, but didn't have Donald Knuth's <TeX> processing system installed on your computer, all the <typewriter>sed</typewriter> script will do is produce a <TeX> source file: a new document marked up with <TeX> commands and tags in place of SubML tags.  In other words, these scripts simply convert SubML source code into source code for other markup languages.  With the exceptions of HTML and plain ASCII text, none of the output formats generated by these <typewriter>sed</typewriter> scripts will be ready-to-use.
</para>

<para>
If you wish to convert your source document (entitled <typewriter>foo.sml</typewriter>) to HTML, here is what you would have to type at the command prompt:
</para>

<bigspace>

<literal>
sed -f sml2html.sed foo.sml <gt> foo.htm
</literal>

<bigspace>

<para>
The <typewriter>-f</typewriter> option tells <typewriter>sed</typewriter> to look to file sml2html.sed for instructions rather than take direct search-and-replace commands from the command prompt when processing the input file <typewriter>foo.sml</typewriter>.  The output file is named <typewriter>foo.htm</typewriter>.
</para>

<para>
The redirection command ( <gt> ) is necessary, otherwise <typewriter>sed</typewriter> will simply send the converted text to standard output (the computer's command-line screen) and all of it will flash before your very eyes instead of being saved in a file.  Of course, you can name the target file anything you wish, so long as the extension is appropriate to the type of converted document that it is (i.e. <typewriter>.htm</typewriter> or <typewriter>.html</typewriter> for HTML output, so that a browser will recognize the filename).
</para>

<para>
The use of standard input and standard output in a <typewriter>sed</typewriter> script allows for great flexibility in the use of SubML.  For instance, I have a book I'm writing (<italic>Lessons In Electric Circuits</italic>), in which I'm using Makefiles to direct compilation from SubML to <LaTeX> and HTML.  By using stdin/stdout redirection within the Makefile commands, I'm able to prepend and append files containing special <LaTeX> and HTML code to the basic text (written in SubML format) to achieve markup capabilities beyond the basic scope of SubML.  For instance, I may want to generate a coverpage for my book using a series of special <LaTeX> commands.  SubML doesn't specify detailed layout tags, and so I write the necessary <LaTeX> code in a file that gets prepended to the <typewriter>sed</typewriter>-converted output of the main text body.  Same for the generation of an index: a special file containing the necessary <LaTeX> commands gets appended to the very end, after <typewriter>sed</typewriter> has converted the main body of the text.  Same for navigation buttons at the beginning and end of each HTML file generated from SubML.
</para>

</section>



<pagebreak>



<section>
<sectiontitle>How mini TOC  works</sectiontitle>

<para>
A  mini Table of Contents (TOC) is automatically inserted after the chapter title for (1) html, (2) <LaTeX> which provices dvi, ps, and pdf. There is no mini TOC support for other formats: txt, tex, or groff. This requires different packages for (1) html, (2) <LaTeX>. Thus, the method of generation of the mini TOC is different for the two case.  In both cases the automatic generation is initiated by the sed command file substitution for the <lt>/chaptertitle<gt> tag. Other features in headers or  makefiles  cause the required software to generate and insert the mini TOC after the chapter title.
</para>


<para>
In the case of html, the sml2htm.sed file contains the <lt>/chpatertitle<gt> tag substitution: <lt>!--minitoc--<gt> which flags the html for inclusion of the mini TOC. We use a a perl script, htmltoc, modified for our requirements to htmltoc2 for placing a mini TOC at the <lt>!--minitoc--<gt> tag. The original script placed the mini TOC before the chapter title. So, we modified it to place the mini TOC at our tag, which is after the title. The Makefile has a line calling minitoc with appropriate parameters:

<literal>
<sp>     ./htmltoc2 -inline -noorg  -toclabel " " -tocmap toc.map \
<sp>       -minitoc "<\!\-\-\minitoc\-\->" AC_1.html
</literal>
See the minitoc documentation for details. We added the -minitoc parameter to the htmltoc perl script for our htmltoc2 so that it looks for the quoted tag which follows it. In our case we want the mini TOC at the <lt>!--minitoc--<gt> tag, so that tag with escaping backslashes follows.
</para>


<para>
The makefile for each book has a make target for each of the book chapters. The chapters for which we want a mini TOC require the above htmltoc2 command in the make targets. We include it in chapter targets, _1, _2, etc., but not the appendix targets, _A1, _A2, _A3. Thus, all chapters but the appendices have a mini TOC after the chapter title. Eg., see AC/Makefile targets: AC_14.html, AC_A1.latex for chapter vs appendix. 
</para>


<para>
In the case of the <LaTeX> translation, .latex,  the <lt>/chaptertitle<gt> in .sml is replaced by /minitoc. See sml2latx.sed. This /minitoc tells <LaTeX> where to place the mini TOC.
</para>

<para>
Also, the header, hi.latex, contains \usepackage{minitoc} and \dominitoc to load the minitoc package and "do" the minitable of contents respectively. The table will be placed where the /minitoc command is encountered in the chapter text.
</para>

<para>
Nothing unusual is required of the makefile to generate the mini TOC. However, if we do not want the mini TOC in the appendices, a sed script in each of the latex appendix targets, removes the /minitoc command from the .latex. Normal target processing, puts a chapter mini TOC in for all chapters but appendices. Eg., see AC/Makefile targets: lines.latex, about.latex for chapter vs appendix.
</para>


<subsection>
<subsectiontitle>Table of contents - TOC </subsectiontitle>

<para>
The LaTeX table of contents is due to commands in the hi.latex header file. The command \setcounter{tocdepth}{1} limits the depth of the TOC entries to one level below chapter. Thus, we get chapter and section entries. The file hi_appendix, inserted between the chapters and appendices by Makefile, sets the counter to the chapter level with \settocdepth{chapter}. This leaves a single TOC entry for each appendix. The package tocvsec2 is required to reset the counter. See \usepackage{../bin/tocvsec2} in hi.latex
</para>

<para>
The hyperref package (hi.latex) generates a list of bookmarks along the left side of the acrobat viewer. The depth of this bookmark TOC only extends to the chapter level if there is a "real" TOC.  It is possible to generate expandable bookmarks to more levels, if the TOC is suppressed by removing \tableofcontents, \setcounter{tocdepth}{1},\settocdepth{chapter}. At this time we opt for the printed TOC over the expanded bookmark version.
</para>


</section>

</subsection>



</chapter>

</book>


