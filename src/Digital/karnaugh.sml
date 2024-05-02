<comment>Created 04/27/2004 to 06/30/2004 (DC)</comment>
<comment>Modified</comment>
<comment>Modified 11/14/2004 (DC) -- Added Paul Stokes name to the contributor's list see contrib.sml for change details</comment>
<comment>Modified 11/14/2004 (DC) -- changed logic diagrams to include cross-overs & dots according to Tony's style</comment>
<comment>Modified 01/13/2005 (DC) -- converted subsections and subsubsections to sections for better html at www.allaboutcircuits.com</comment>
<comment>Modified 01/30/2005 (DC) -- fixed 14094.eps top of map incorrect double bar, minor corrections 14162.eps, 14163.eps</comment>
<comment>Modified 06/19/2005 (DC) -- minor near "This migh be easier" </comment>

<comment>04366.eps re-used from Boolean algebra chapter good for .html bad for printed book</comment>
<comment>14066.eps re-used from Boolean algebra chapter, as above </comment>

<comment>first table/equation image 14072.eps</comment>
<comment>last table/equation image 14163.eps</comment>

<chapter>
<chaptertitle>KARNAUGH MAPPING</chaptertitle>

<para>
<bold>Original author: Dennis Crunkilton</bold>
</para>

<bigspace>

<para>
<image>14093.png</image> <comment> 3-Kmap- real </comment>
</para>

<section>
<sectiontitle>Introduction</sectiontitle>

<index>Karnaugh map</index>

<index>logic simplification</index>


<para>
Why learn about <italic>Karnaugh</italic> maps? The Karnaugh map, like Boolean algebra, is a simplification tool applicable to digital logic. See the "Toxic waste incinerator" in the Boolean algebra chapter for an example of Boolean simplification of digital logic. The Karnaugh Map will simplify logic faster and more easily in most cases.
</para>

<index>CAD</index>
<index>computer automated design</index>

<para>
Boolean simplification is actually faster than the Karnaugh map for a task involving two or fewer Boolean variables. It is still quite usable at three variables, but a bit slower. At four input variables, Boolean algebra becomes tedious. Karnaugh maps are both faster and easier. Karnaugh maps work well for up to six input variables, are usable for up to eight variables. For more than six to eight variables,  simplification should be by <italic>CAD</italic> (computer automated design).
</para>
<para>
<image>14072.png</image><comment>table simplification methods</comment>
</para>
<para>
In theory any of the three methods will work. However, as a practical matter, the above guidelines work well. We would not normally resort to computer automation to simplify a three input logic block. We could sooner solve the problem with pencil and paper. However, if we had seven of these problems to solve, say for a  <italic>BCD</italic> (Binary Coded Decimal) to  <italic>seven segment decoder</italic>, we might want to automate the process. A BCD to seven segment decoder generates the logic signals to drive a seven segment LED (light emitting diode) display.
</para>

<index>PALASM</index>
<index>ABEL</index>
<index>Verilog</index>
<index>VHDL</index>
<index>CUPL</index>
<para>
Examples of computer automated design languages for simplification of logic are PALASM, ABEL, CUPL, Verilog, and VHDL. These programs accept a <italic>hardware descriptor language</italic> input file which is based on Boolean equations and produce an output file describing a <italic>reduced</italic> (or simplified) Boolean solution. We will not require such tools in this chapter. Let's move on to Venn diagrams as an introduction to Karnaugh maps.
</para>

</section>

<section>
<sectiontitle>Venn diagrams and sets</sectiontitle>

<index>Venn Diagram</index>
<index>Venn diagram</index>
<index>sets</index>
<index>element of set</index>
<index>members of set</index>
<index>union</index>
<index>intersection</index>
<para>
Mathematicians use <italic>Venn diagrams</italic> to show the logical relationships of <italic>sets</italic> (collections of objects) to one another.  Perhaps you have already seen Venn diagrams in your algebra or other mathematics studies.  If you have, you may remember overlapping circles and the <italic>union</italic> and <italic>intersection</italic> of sets. We will review the overlapping circles of the Venn diagram. We will adopt the terms OR and AND instead of union and intersection since that is the terminology used in digital electronics.
</para>
<para>
The Venn diagram bridges the Boolean algebra from a previous  chapter to the Karnaugh Map.  We will relate what you already know about Boolean algebra to Venn diagrams, then transition to Karnaugh maps.
</para>

<index>sets</index>

<para>
A <italic>set</italic> is a collection of objects out of a universe as shown below. The <italic>members</italic> of the set are the objects contained within the set. The members of the set usually have something in common; though, this is not a requirement.  Out of the universe of real numbers, for example, the set of all positive integers {1,2,3...} is a set. The set {3,4,5} is an example of a smaller set, or <italic>subset</italic> of the set of all positive integers.  Another example is the set of all males out of the universe of college students. Can you think of some more examples of sets?
</para>
<bigspace>

<para>
<image>14073.png</image><comment>A in A' B in B' 14073</comment>
</para>
<bigspace>

<para>
Above left, we have a Venn diagram showing the set A in the circle within the universe U, the rectangular area.  If everything inside the circle is A, then anything outside of the circle is not A. Thus, above center, we label the rectangular area outside of the circle A as A-not instead of U. We show B and B-not in a similar manner.
</para>
<para>
What happens if both A and B are contained within the same universe?  We show four possibilities.
</para>
<bigspace>

<para>
<image>14074.png</image> <comment>A,B disjoint, OR, AND 14074</comment>
</para>
<bigspace>

<para>
Let's take a closer look at each of the the four possibilities as shown above.
</para>
<bigspace>

<para>
<image>14075.png</image> <comment>A,B disjoint</comment>
</para>
<bigspace>

<para>
The first example  shows that set A and set B have nothing in common according to the Venn diagram. There is no overlap between the A and B circular hatched regions. For example, suppose that sets A and B contain the following members:
</para>

<quotation>
<para>
set A = {1,2,3,4}  <bigspace> set B = {5,6,7,8}
</para>
</quotation>

<para>
None of the members of set A are contained within set B, nor are any of the members of B contained within A. Thus, there is no overlap of the circles.
</para>
<bigspace>

<para>
<image>14076.png</image> <comment>A,B subset</comment>
</para>
<bigspace>

<para>
In the second example in the above Venn diagram, Set A is totally contained within set B How can we explain this situation? Suppose that sets A and B contain the following members:
</para>

<quotation>
<para>
set A = {1,2}</para>  <para>set B = {1,2,3,4,5,6,7,8}</para>
</para>
</quotation>

<para>
All members of set A are also members of set B. Therefore, set A is a subset of Set B. Since all members of set A are members of set B, set A is drawn fully within the boundary of set B.
</para>

<para>
There is a fifth case, not shown, with the four examples.  Hint: it is similar to the last (fourth) example. Draw a Venn diagram for this fifth case.
</para>
<bigspace>

<para>
<image>14077.png</image> <comment>A,B subset</comment>
</para>
<bigspace>

<para>
The third example above shows perfect overlap between set A and set B. It looks like both sets contain the same identical members. Suppose that sets A and B contain the following:
</para>

<quotation>
<para>
set A = {1,2,3,4}  set B = {1,2,3,4}
</para>
<bigspace>
<para>
Therefore,
</para>
<bigspace>
<para>
Set A = Set B
</para>
</quotation>


<para>
Sets And B are identically equal because they both have the same identical members. The A and B regions within the corresponding Venn diagram above overlap completely. If there is any doubt about what the above patterns represent, refer to any figure above or below to be sure of what the circular regions looked like before they were overlapped.
</para>
<bigspace>

<para>
<image>14078.png</image> <comment> A,B partial overlap </comment>
</para>
<bigspace>

<para>
The fourth example above  shows that there is something in common between set A and set B in the overlapping region. For example, we arbitrarily select the following sets to illustrate our point:
</para>
<quotation>

<para>
set A = {1,2,3,4}  <bigspace> set B = {3,4,5,6}
</para>

</quotation>
<para>
Set A and Set B both have the elements 3 and 4 in common These elements are the reason for the overlap in the center common to A and B. We need to take a closer look at this situation
</para>

</section>

<section>
<sectiontitle>Boolean Relationships on Venn Diagrams</sectiontitle>

<para>
The fourth example  has <bold>A</bold> partially overlapping <bold>B</bold>.  Though, we will first look at the whole of all hatched  area below, then later only the overlapping region. Let's assign some Boolean expressions to the regions above as shown below.
Below left there is a  red horizontal hatched area for <bold>A</bold>. There is a blue vertical hatched area for <bold>B</bold>.
</para>
<bigspace>

<para>
<image>14079.png</image> <comment> A,B partial overlap </comment>
</para>
<bigspace>

<para>
If we look at the whole area of both, regardless of the hatch style, the sum total of all hatched areas, we get the illustration above right which corresponds to the inclusive <bold>OR</bold> function of A, B. The Boolean expression is <bold>A+B</bold>. This is shown by the 45<superscript>o</superscript> hatched area. Anything outside of the hatched area corresponds to <bold>(A+B)-not</bold> as shown above. Let's move on to next part of the fourth example
</para>

<para>
The other way of looking at a Venn diagram with overlapping circles is to look at just the part common to both <bold>A</bold> and <bold>B</bold>, the double hatched area below left. The Boolean expression for this common area corresponding to the <bold>AND</bold> function is <bold>AB</bold> as shown below right. Note that everything outside of double hatched <bold>AB</bold> is <bold>AB-not</bold>.
</para>
<bigspace>

<para>
<image>14080.png</image> <comment> A,B partial overlap </comment>
</para>
<bigspace>

<para>
Note that some of the members of <bold>A</bold>, above, are members of <bold>(AB)'</bold>. Some of the members of <bold>B</bold> are members of <bold>(AB)'</bold>. But, none of the members of <bold>(AB)'</bold> are within the doubly hatched area <bold>AB</bold>.
</para>
<bigspace>

<para>
<image>14084.png</image> <comment> B/bold> within A 5th example </comment>
</para>
<bigspace>

<para>
We have repeated the second example above left. Your fifth example, which you previously sketched, is provided above right for comparison. Later  we will find the occasional element, or group of elements, totally contained within another group in a Karnaugh map.
</para>
<bigspace>

<para>Next, we show the development of a Boolean expression involving a complemented variable below.
</para>
<bigspace>

<para>
<image>14081.png</image> <comment> A'B  </comment>
</para>
<bigspace>

<para>
<bold>Example:</bold> (above)
</para>

<bigspace>

<para>
Show a Venn diagram for <bold>A'B</bold> (A-not AND B).
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
Starting above top left we have red horizontal shaded <bold>A'</bold> (A-not), then, top right, <bold>B</bold>. Next, lower left, we form the AND function <bold>A'B</bold> by overlapping the two previous regions. Most people would use this as the answer to the example posed.  However, only  the double hatched <bold>A'B</bold> is shown far right for clarity. The expression <bold>A'B</bold> is the region where both <bold>A'</bold> and <bold>B</bold> overlap.  The clear region outside of <bold>A'B</bold> is <bold>(A'B)'</bold>, which was not part of the posed example.
</para>

<para>
Let's try something similar with the Boolean <bold>OR</bold> function.
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>

<para>
Find <bold>B'+A</bold>
</para>
<bigspace>
<bigspace>

<para>
<image>14082.png</image> <comment> A or B' overlap </comment>
</para>

<bigspace>
<para><bold>Solution:</bold></para>
<bigspace>

<para>
Above right we start out with <bold>B</bold> which is complemented to <bold>B'</bold>. Finally we overlay <bold>A</bold> on top of <bold>B'</bold>. Since we are interested in forming the <bold>OR</bold> function, we will be looking for all hatched area regardless of hatch style.  Thus, <bold>A+B'</bold> is all hatched area above right.  It is shown as a single hatch region below left for clarity.
</para>
<bigspace>
<index>DeMorgan's theorem</index>
<para>
<image>14083.png</image> <comment> DeMorgan's </comment>
</para>
<bigspace>

<para><bold>Example:</bold>
</para>
<bigspace>

<para>
Find <bold>(A+B')'</bold>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
The green 45<superscript>o</superscript> <bold>A+B'</bold> hatched area was the result of the previous example.  Moving on to a to,<bold>(A+B')'</bold> ,the present  example, above left, let us find the complement of <bold>A+B'</bold>, which is the white clear area above left corresponding to <bold>(A+B')'</bold>.  Note that we have repeated, at right,  the <bold>AB'</bold> double hatched result from a previous example for comparison to our result. The regions corresponding to <bold>(A+B')'</bold> and <bold>AB'</bold> above left and right respectively are identical. This can be proven with DeMorgan's theorem and double negation.
</para>

<para>
This brings up a point. Venn diagrams don't actually prove anything.  Boolean algebra is needed for formal proofs.  However, Venn diagrams can be used for verification and visualization.  We have verified and visualized DeMorgan's theorem with a Venn diagram.
</para>
<bigspace>

<para><bold>Example:</bold>
</para>
<bigspace>

<para>
What does the Boolean expression <bold>A'+B'</bold> look like on a Venn Diagram?
</para>
<bigspace>

<para>
<image>14085.png</image> <comment> A'+B'  </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold> above figure
</para>
<bigspace>

<para>
 Start out with red horizontal hatched <bold>A'</bold> and blue vertical hatched <bold>B'</bold> above. Superimpose the diagrams as shown. We can still see the <bold>A'</bold> red horizontal hatch superimposed on the other hatch. It also fills in what used to be part of the <bold>B</bold> (B-true) circle, but only that part of the <bold>B</bold> open circle not common to the <bold>A</bold> open circle. If we only look at the <bold>B'</bold> blue vertical hatch, it fills that part of the open  <bold>A</bold> circle not common to <bold>B</bold>.     Any region with any hatch at all, regardless of type, corresponds to <bold>A'+B'</bold>. That is, everything but the open white space in the center.
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
What does the Boolean expression <bold>(A'+B')'</bold> look like on a Venn Diagram?
</para>
<bigspace>

<para>
<bold>Solution:</bold> above figure, lower left
</para>
<bigspace>

<para>
Looking at the white open space in the center, it is everything <bold>NOT</bold> in the previous solution of <bold>A'+B'</bold>, which is <bold>(A'+B')'</bold>.
</para>
<bigspace>


<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Show that <bold>(A'+B')' = AB </bold>
</para>
<bigspace>

<para>
<bold>Solution:</bold> below figure, lower left
</para>
<bigspace>

<para>
<image>14143.png</image> <comment> A'B  </comment>
</para>
<bigspace>

<index>DeMorgan's theorem</index>

<para>
We previously showed on the above right diagram that the white open region is <bold>(A'+B')'</bold>.  On an earlier example we showed a doubly hatched region at the intersection (overlay) of <bold>AB</bold>. This is the left and middle figures repeated here. Comparing the two Venn diagrams, we see that this open region , <bold>(A'+B')'</bold>,  is the same as the doubly hatched region <bold>AB</bold> (A AND B). We can also prove that <bold>(A'+B')'=AB</bold> by DeMorgan's theorem and double negation as shown above.
</para>
<bigspace>

<para>
<image>14086.png</image> <comment> DeMorgan's </comment>
</para>
<bigspace>

<para>
We show a three variable Venn diagram above with regions <bold>A</bold> (red horizontal), <bold>B</bold> (blue vertical), and, <bold>C</bold> (green 45<superscript>o</superscript>). In the very center note that all three regions overlap representing Boolean expression <bold>ABC</bold>.  There is also a larger  petal shaped region where <bold>A</bold> and <bold>B</bold> overlap corresponding to Boolean expression <bold>AB</bold>. In a similar manner <bold>A</bold> and <bold>C</bold> overlap producing Boolean expression <bold>AC</bold>. And  <bold>B</bold> and <bold>C</bold> overlap producing Boolean expression <bold>BC</bold>.
</para>

<para>
Looking at the size of regions described by AND expressions above, we see that region size varies with the number of variables in the associated AND expression.
<itemize>
<item><bold>A</bold>, 1-variable is a large circular region.</item>
<item><bold>AB</bold>, 2-variable is a smaller petal shaped region.</item>
<item><bold>ABC</bold>, 3-variable is the smallest region.</item>
<item>The more variables in the AND term, the smaller the region.</item>
</itemize>
</para>

</section>

<section>

<index>Karnaugh map</index>

<sectiontitle>Making a Venn diagram look like a Karnaugh map</sectiontitle>
<para>
Starting with circle <bold>A</bold> in a rectangular <bold>A' universe</bold> in figure (a) below, we morph a Venn diagram into almost a Karnaugh map.
</para>
<bigspace>

<para>
<image>14087.png</image> <comment> Venn to K-map </comment>
</para>
<bigspace>

<para>
We expand circle <bold>A</bold> at (b) and (c), conform to the rectangular <bold>A' universe</bold>  at (d), and change <bold>A</bold> to a rectangle at (e).  Anything left outside of <bold>A</bold> is <bold>A' </bold>.   We assign a rectangle to <bold>A' </bold> at (f).  Also, we do not use shading in Karnaugh maps. What we have so far resembles a 1-variable Karnaugh map, but is of little utility. We need multiple variables.
</para>
<bigspace>

<para>
<image>14088.png</image> <comment> 2-Kmap </comment>
</para>
<bigspace>

<para>
Figure (a) above is the same as the previous Venn diagram showing <bold>A</bold> and  <bold>A'</bold> above except that the labels <bold>A</bold> and  <bold>A'</bold> are above the diagram instead of inside the respective regions.  Imagine that we have go through a process similar to figures (a-f) to  get a "square Venn diagram" for <bold>B</bold> and  <bold>B'</bold> as we show in middle figure (b).  We will now superimpose the diagrams in Figures (a) and (b) to get the result at (c), just like we have been doing for Venn diagrams. The reason we do this is so that we may observe that which may be common to two overlapping regions<doubledash> say where <bold>A</bold> overlaps <bold>B</bold>. The lower right cell in figure (c) corresponds to <bold>AB</bold> where   <bold>A</bold> overlaps <bold>B</bold>.
</para>
<bigspace>

<para>
<image>14089.png</image> <comment> 2-Kmap </comment>
</para>
<bigspace>

<para>
We don't waste time drawing a Karnaugh map like (c) above, sketching a simplified version as above left instead. The column of two cells under <bold>A'</bold> is understood to be associated with <bold>A'</bold>, and the heading <bold>A</bold> is associated with the column of cells under it. The row headed by <bold>B'</bold> is associated with the cells to the right of it. In a similar manner <bold>B</bold> is associated with the cells to the right of it.  For the sake of simplicity, we do not delineate the various regions as clearly as with Venn diagrams.
</para>

<para>
The Karnaugh map above right is an alternate form used in most texts.  The names of the variables are listed next to the diagonal line. The <bold>A</bold> above the diagonal indicates that the variable <bold>A</bold> (and <bold>A'</bold>) is assigned to the columns. The <bold>0</bold> is a substitute for <bold>A'</bold>, and the <bold>1</bold> substitutes for <bold>A</bold>.  The <bold>B</bold> below the diagonal is associated with the rows: <bold>0</bold> for <bold>B'</bold>, and <bold>1</bold> for <bold>B</bold>
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Mark the cell corresponding to the Boolean expression <bold>AB</bold> in the Karnaugh map above with a <bold>1</bold>
</para>
<bigspace>

<para>
<image>14090.png</image> <comment> 2-Kmap </comment>
</para>
<bigspace>

<para><bold>Solution:</bold></para>
<bigspace>

<para>
Shade or circle the region corresponding to <bold>A</bold>. Then, shade or enclose the region corresponding to <bold>B</bold>. The overlap of the two regions is <bold>AB</bold>. Place a <bold>1</bold> in this cell. We do not necessarily  enclose the <bold>A</bold> and <bold>B</bold> regions as at above left.
</para>
<bigspace>

<para>
<image>14091.png</image> <comment> 3-Kmap </comment>
</para>
<bigspace>

<para>
We develop  a 3-variable Karnaugh map above, starting with Venn diagram like regions. The universe (inside the black rectangle) is split into two narrow narrow rectangular regions for <bold>A'</bold> and <bold>A</bold>. The variables <bold>B'</bold> and <bold>B</bold> divide the universe into two square regions. <bold>C</bold> occupies a square region in the middle of the rectangle, with <bold>C'</bold> split into two vertical rectangles on each side of the <bold>C</bold> square.
</para>

<para>
In the final figure, we superimpose all three variables, attempting to clearly label the various regions. The regions are less obvious without color printing, more obvious when compared to the other three figures. This 3-variable <italic>K-Map</italic> (Karnaugh map) has 2<superscript>3</superscript> = 8 <italic>cells</italic>, the small squares within the map. Each individual cell is uniquely identified by the three
Boolean Variables (<bold>A, B, C</bold>). For example, <bold>ABC'</bold> uniquely selects the lower right most cell(*), <bold>A'B'C'</bold> selects the upper left most cell (x).
</para>
<bigspace>

<para>
<image>14092.png</image> <comment> 3-Kmap </comment>
</para>
<bigspace>

<index>Karnaugh map</index>
<index>product term</index>
<para>
We don't normally label the Karnaugh map as shown above left. Though this figure clearly shows map coverage by single boolean variables of a 4-cell region. Karnaugh maps are labeled like the illustration at right. Each cell is still uniquely identified by a 3-variable <italic>product term</italic>, a Boolean <bold>AND</bold> expression. Take, for example, <bold>ABC'</bold> following the <bold>A</bold> row across to the right and the <bold>BC'</bold> column down, both intersecting at the lower right cell  <bold>ABC'</bold>. See (*) above figure.
</para>
<bigspace>

<para>
<image>14093.png</image> <comment> 3-Kmap- real </comment>
</para>
<bigspace>

<para>
The above two different forms of a 3-variable Karnaugh map are equivalent, and is the final form that it takes. The version at right is a bit easier to use, since we do not have to write down so many boolean alphabetic headers and complement bars, just <bold>1</bold>s and <bold>0</bold>s Use the form of map on the right and look for the the one at left in some texts.  The column headers on the left <bold>B'C', B'C, BC, BC'</bold> are equivalent to  <bold>00, 01, 11, 10</bold> on the right. The row headers <bold>A, A'</bold> are equivalent to <bold>0, 1</bold> on the right map.
</para>

</section>


<section>

<bigspace>
<sectiontitle>Karnaugh maps, truth tables, and Boolean expressions</sectiontitle>

<index>Karnaugh map</index>
<index>Karnaugh, Maurice</index>

<para>
Maurice Karnaugh, a telecommunications engineer,  developed the Karnaugh map at Bell Labs in 1953 while designing digital logic based telephone switching circuits.
</para>

<para>
Now that we have developed the Karnaugh map with the aid of Venn diagrams, let's put it to use. Karnaugh maps <italic>reduce</italic> logic functions more quickly and easily  compared to Boolean algebra. By reduce we mean simplify, reducing the number of gates and inputs.  We like to simplify logic to a <italic>lowest cost </italic> form to save costs by elimination of components.  We define lowest cost as being the lowest number of gates with the lowest number of inputs per gate.
</para>

<para>
Given a choice, most students do logic simplification with Karnaugh maps rather than  Boolean algebra once they learn this tool.
</para>

<index>truth table to Karnaugh map</index>

<para>
<image>14094.png</image> <comment> 2-Kmap, 2-TT, gate, RLL, BE </comment>
</para>
<bigspace>

<para>
We show five individual items above, which are just different ways of representing the same thing: an arbitrary 2-input digital logic function. First is relay ladder logic, then logic gates, a truth table, a Karnaugh map, and a Boolean equation. The point is that any of these are equivalent. Two inputs  <bold>A</bold> and  <bold>B</bold> can take on values of either <bold>0</bold> or  <bold>1</bold>, high or low, open or closed, True or False, as the case may be. There are 2<superscript>2 </superscript>= 4 combinations of inputs producing an output. This is applicable to all five examples.
</para>
<para>
These four outputs may be observed on a lamp in the relay ladder logic, on a logic probe on the gate diagram. These outputs may be recorded in the truth table, or in the Karnaugh map. Look at the Karnaugh map as being a rearranged truth table.  The Output of the Boolean equation may be computed by the laws of Boolean algebra and transfered to the truth table or Karnaugh map. Which of the five equivalent logic descriptions should we use?  The one which is most useful for the task to be accomplished.
</para>
<bigspace>

<para>
<image>14095.png</image> <comment> 2-Kmap. 2-TT </comment>
</para>
<bigspace>

<para>
The  outputs of a truth table correspond  on a one-to-one basis to Karnaugh map entries.  Starting at the top of the truth table, the A=0, B=0 inputs produce an output <alpha>.  Note that this same output <alpha> is found in the Karnaugh map at the A=0, B=0 cell address, upper left corner of K-map where the A=0 row and B=0 column intersect. The other truth table outputs <beta>, <chi>, <delta> from inputs AB=01, 10, 11 are found at corresponding  K-map locations.
</para>
<para>
Below, we show the adjacent 2-cell regions in the 2-variable K-map with the aid of previous rectangular Venn diagram like Boolean regions.
</para>
<bigspace>

<para>
<image>14096.png</image> <comment> 2-Kmap adjacent </comment>
</para>
<bigspace>

<para>
Cells <alpha> and <chi> are adjacent in the K-map as ellipses in the left most K-map below.  Referring to the previous truth table, this is not the case. There is another truth table entry (<beta>) between them. Which brings us to the whole point of the organizing the K-map into a square array, cells with any Boolean variables in common need to be close to one another so as to present a pattern that jumps out at us. For cells <alpha> and <chi> they have the Boolean variable <bold>B'</bold> in common. We know this because <bold>B=0</bold> (same as <bold>B'</bold>) for the column above cells <alpha> and <chi>. Compare this to the square Venn diagram above the K-map.
</para>

<para>
A similar line of reasoning shows that <beta> and <delta> have Boolean <bold>B</bold> (B=1) in common. Then, <alpha> and <beta> have Boolean <bold>A'</bold> (A=0) in common.
Finally, <chi> and <delta> have Boolean <bold>A</bold> (A=1) in common. Compare the last two maps to the middle square Venn diagram.
</para>
<para>
To summarize, we are looking for commonality  of Boolean variables among cells. The Karnaugh map is organized so that we may see that commonality. Let's try some examples.
</para>
<bigspace>

<para>
<image>14097.png</image> <comment> 2-Kmap adjacent </comment>
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>

<bigspace>

<para>
Transfer the contents of the truth table to the Karnaugh map above.
</para>
<bigspace>

<para>
<image>14098.png</image> <comment> 2-Kmap adjacent </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
The truth table contains two <bold>1</bold>s. the K- map must have both of them.  locate the first  <bold>1</bold> in the 2nd row of the truth table above.
<itemize>
<item> note the truth table AB address</item>
<item> locate the cell in the K-map having the same address</item>
<item> place a <bold>1</bold> in that cell </item>
</itemize>
Repeat the process for the <bold>1</bold>  in the last line of the truth table.
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
For the Karnaugh map in the above problem, write the Boolean expression. Solution is below.
</para>
<bigspace>

<para>
<image>14099.png</image> <comment> 2-Kmap adjacent  problem </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
Look for adjacent cells, that is, above or to the side of a cell. Diagonal cells are not adjacent. Adjacent cells will have one or more Boolean variables in common.
<itemize>
<item>  Group (circle) the two <bold>1</bold>s in the column</item>
<item> Find the variable(s) top and/or side which are the same for the group, Write this as the Boolean result. It is <bold>B</bold> in our case.</item>
<item> Ignore variable(s) which are not the same for a cell group. In our case A varies, is both 1 and 0, ignore Boolean A. </item>
<item>Ignore any variable not associated with cells containing 1s. <bold>B'</bold> has no ones under it. Ignore B' </item>
<item>  Result <bold>Out = B</bold></item>
</itemize>
</para>

<para>
This might be easier to see by comparing to the Venn diagrams to the right, specifically the <bold>B</bold> column.
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Write the Boolean expression for the Karnaugh map below.
</para>
<bigspace>

<para>
<image>14100.png</image> <comment> 2-Kmap adjacent problem </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold> (above)
<itemize>
<item>  Group (circle) the two <bold>1's</bold> in the row</item>
<item> Find the variable(s)  which are the same for the group,  <bold>Out = A'</bold></item>
</itemize>
</para>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
For the Truth table below, transfer the outputs to the Karnaugh, then write the Boolean expression for the result.
</para>
<bigspace>

<para>
<image>14101.png</image> <comment> 2-Kmap adjacent TT problem </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
Transfer the <bold>1</bold>s from the locations in the Truth table to the corresponding locations in the K-map.
<itemize>
<item>Group (circle) the two 1's in the column under <bold>B=1</bold></item>
<item>Group (circle) the two 1's in the row right of <bold>A=1</bold></item>
<item>Write product term for first group = <bold>B</bold></item>
<item>Write product term for second  group = <bold>A</bold></item>
<item>Write Sum-Of-Products of above two terms <bold>Output = A+B</bold></item>
</itemize>
The solution of the K-map in the middle is the simplest or lowest cost solution. A less desirable solution is at far right. After grouping the two <bold>1</bold>s, we make the mistake of forming a group of 1-cell. The reason that this is not desirable is that:
<itemize>
<item> The single cell has a product term of <bold>AB'</bold></item>
<item> The corresponding solution is <bold>Output = AB' + B </bold></item>
<item> This is not the simplest solution</item>
</itemize>
The way to pick up this single <bold>1</bold> is to form a group of two with the <bold>1</bold> to the right of it as shown in the lower line of the middle K-map, even though this <bold>1</bold> has already been included in the column group (<bold>B</bold>). We are allowed to re-use cells in order to form larger groups. In fact, it is desirable because it leads to a simpler result.
</para>

<para>
We need to point out that either of the above solutions, Output or Wrong Output, are logically correct. Both circuits yield the same output. It is a matter of the former circuit being the lowest cost solution.
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Fill in the Karnaugh map for the Boolean expression below,  then write the Boolean expression for the result.
</para>
<bigspace>


<para>
<image>14102.png</image> <comment> 2-Kmap Boolean problem </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold> (above)
</para>
<bigspace>

<para>
The Boolean expression has three product terms. There will be a <bold>1</bold> entered for each product term. Though, in general,  the number of <bold>1</bold>s per product term varies with the number of variables in the product term  compared to the size of the K-map.  The product term is the address of the cell where the <bold>1</bold> is entered. The first product term, <bold>A'B</bold>, corresponds to the <bold>01</bold> cell in the map. A  <bold>1</bold> is entered in this cell. The other two P-terms are entered for a total of three <bold>1s</bold>
</para>
<para>
Next, proceed with grouping and extracting the simplified result as in the previous truth table problem.
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Simplify the logic diagram below.
</para>
<bigspace>

<para>
<image>14103.png</image> <comment> 2-Kmap gate problem </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold> (Figure below)
<itemize>
<item> Write the Boolean expression for the original logic diagram as shown below</item>
<item> Transfer the product terms to the Karnaugh map</item>
<item> Form groups of cells as in previous examples</item>
<item> Write Boolean expression for groups as in previous examples</item>
<item> Draw simplified logic diagram</item>
</itemize>
</para>

<para>
<image>14104.png</image> <comment> 2-Kmap gate solution </comment>
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Simplify the logic diagram below.
</para>
<bigspace>

<para>
<image>14105.png</image> <comment> 2-Kmap gate solution </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
<itemize>
<item> Write the Boolean  expression for the original logic diagram shown above</item>
<item> Transfer the product terms to the Karnaugh map.</item>
<item> It is not possible to form groups. </item>
<item> No simplification is possible; leave it as it is.</item>
</itemize>
</para>

<para>
No logic simplification is possible for the above diagram. This sometimes happens.  Neither the methods of Karnaugh maps nor Boolean algebra can simplify this logic further. We show an Exclusive-OR schematic symbol above; however, this is not a logical simplification. It just makes a schematic diagram look nicer. Since it is not possible to simplify the Exclusive-OR logic and it is widely used, it is provided by manufacturers as a basic integrated circuit (7486).
</para>

</section>

<section>
<sectiontitle>Logic simplification with Karnaugh maps</sectiontitle>

<index>Karnaugh map</index>

<para>
The logic simplification examples that we have done so could have been performed with Boolean algebra about as quickly. Real world logic simplification problems call for larger Karnaugh maps so that we may do serious work. We will work some contrived examples in this section, leaving most of the real world applications for the Combinatorial Logic chapter. By contrived, we mean examples which illustrate techniques. This approach will develop the tools we need to transition to the more complex applications in the Combinatorial Logic chapter.
</para>


<para>We show our previously developed Karnaugh map. We will use the form on the right.
</para>
<bigspace>

<para>
<image>14093.png</image> <comment> 2-Kmap gate solution </comment>
</para>
<bigspace>

<index>Gray code</index>

<para>
Note the sequence of numbers across the top of the map. It is not in binary sequence which would be <bold>00, 01, 10, 11</bold>. It is <bold>00, 01, 11 10</bold>, which is Gray code sequence. Gray code sequence only changes one binary bit as we go from one number to the next in the sequence, unlike binary. That means that  adjacent cells will only vary by one bit, or Boolean variable. This is what we need to organize the outputs of a logic function so that we may view commonality. Moreover, the column and row headings must be in Gray code order, or the map will not work as a Karnaugh map. Cells sharing common Boolean variables would no longer be adjacent, nor show visual patterns. Adjacent cells vary by only one bit because a Gray code sequence varies by only one bit.
</para>
<para>
If we sketch our own Karnaugh maps, we need to generate Gray code for any size map that we may use. This is how we generate Gray code of any size.
</para>
<bigspace>

<para>
<image>14106.png</image> <comment>Gray code </comment>
</para>
<bigspace>

<para>
Note that the Gray code sequence, above right, only varies by one bit as we go down the list, or bottom to top up the list. This property of Gray code is often useful in digital electronics in general.  In particular, it is applicable to Karnaugh maps.
</para>

<para>
Let us move on to some examples of simplification with 3-variable Karnaugh maps.  We show how to map the product terms of the unsimplified logic to the K-map. We illustrate how to identify groups of adjacent cells which leads to a Sum-of-Products simplification of the digital logic.
</para>
<bigspace>

<para>
<image>14107.png</image> <comment> 3-Kmap A'B' </comment>
</para>
<bigspace>

<para>
Above we, place the  1's in the K-map for each of the product terms, identify a group of two, then write a <italic>p-term</italic> (product term) for the sole group as our simplified result.
</para>
<bigspace>

<para>
<image>14108.png</image> <comment> 3-Kmap A'</comment>
</para>
<bigspace>

<para>
Mapping the four product terms above yields a group of four covered by Boolean  <bold>A'</bold>
</para>
<bigspace>

<para>
<image>14109.png</image> <comment> 3-Kmap C </comment>
</para>
<bigspace>

<para>
Mapping the four p-terms yields a group of four, which is covered by one variable <bold>C</bold>.
</para>
<bigspace>

<para>
<image>14110.png</image> <comment> 3-Kmap A'+B </comment>
</para>
<bigspace>

<para>
After mapping the six p-terms above, identify the upper group of four, pick up the lower two cells as a group of four by sharing the two with two more from the other group. Covering these two with a group of four gives a simpler result. Since there are two groups, there will be two p-terms in the Sum-of-Products result <bold>A'+B</bold>
</para>
<bigspace>

<para>
<image>14111.png</image> <comment> 3-Kmap BC </comment>
</para>

<bigspace>
<para>
The two product terms above form one group of two and  simplifies to  <bold>BC</bold>
</para>
<bigspace>

<para>
<image>14112.png</image> <comment> 3-Kmap B </comment>
</para>
<bigspace>

<para>
Mapping the four p-terms yields a single group of four, which is <bold> B</bold>
</para>
<bigspace>

<para>
<image>14113.png</image> <comment> 3-Kmap C' </comment>
</para>
<bigspace>

<para>
Mapping the four p-terms above yields a group of four. Visualize the group of four by rolling up the ends of the map to form a cylinder, then the cells are adjacent. We normally mark the group of four as above left. Out of the variables A, B, C, there is a common variable: C'. C' is a 0 over all four cells. Final result is <bold>C'</bold>.
</para>
<bigspace>

<para>
<image>14114.png</image> <comment> 3-Kmap A' or C' </comment>
</para>
<bigspace>

<para>
The six cells above from the unsimplified equation can be organized into two groups of four. These two groups should give us two p-terms in our simplified result of <bold>A' + C'</bold>.
</para>
<bigspace>

<para>
Below, we revisit the Toxic Waste Incinerator from the Boolean algebra chapter. See Boolean algebra chapter for details on this example. We will simplify the logic using a Karnaugh map.
</para>
<para>
<image>14115.png</image> <comment> Toxic waste modified derived from 04364</comment>
</para>
<bigspace>

<para>
The Boolean equation for the output has four product terms. Map four 1's corresponding to the p-terms. Forming groups of cells, we have three groups of two. There will be three p-terms in the simplified result, one for each group.  See "Toxic Waste Incinerator", Boolean algebra chapter for a gate diagram of the result, which is reproduced below.
</para>
<bigspace>

<para>
<image>04366.png</image> <comment> Toxic waste re-used from Boolean algebra chapter</comment>
</para>
<bigspace>

<para>
Below we repeat the Boolean algebra simplification of Toxic waste incinerator for comparison.
</para>
<bigspace>


<para>
<image>14066.png</image> <comment> Toxic waste re-used from Boolean algebra chapter </comment>
</para>

<para>
Below we repeat the  Toxic waste incinerator Karnaugh map solution for comparison to the above Boolean algebra simplification. This case illustrates why the Karnaugh map is widely used for logic simplification.
</para>
<bigspace>

<para>
<image>14144.png</image> <comment> Toxic waste K-map</comment>
</para>
<bigspace>
<para>
The Karnaugh map method looks easier than the previous page of
boolean algebra.
</para>
<bigspace>
<bigspace>

</section>

<section>

<index>Karnaugh map</index>

<sectiontitle>Larger 4-variable Karnaugh maps</sectiontitle>
<para>Knowing how to generate Gray code should allow us to build larger maps. Actually, all we need to do is look at the left to right sequence across the top of the 3-variable map, and copy it down the left side of the 4-variable map. See below.
<para>
<bigspace>

<para>
<image>14116.png</image> <comment> 4-Kmap empty </comment>
</para>
<bigspace>

<para>
The following four variable Karnaugh maps  illustrate reduction of  Boolean expressions too tedious for Boolean algebra. Reductions could be done with Boolean algebra. However, the Karnaugh map is faster and easier, especially if there are many logic reductions to do.
</para>
<bigspace>

<para>
<image>14117.png</image> <comment> 4-Kmap AB+CD </comment>
</para>
<para>
The above Boolean expression has seven product terms. They are mapped top to bottom and left to right on the K-map above. For example, the first P-term <bold>A'B'CD</bold> is first row 3rd cell, corresponding to map location <bold>A=0, B=0, C=1, D=1</bold>. The other product terms are placed in a similar manner. Encircling the largest groups possible,  two groups of four are shown above. The dashed horizontal group corresponds the the simplified product term <bold>AB</bold>. The vertical group corresponds to Boolean CD. Since there are two groups, there will be two product terms in the Sum-Of-Products result of <bold>Out=AB+CD</bold>.
</para>
<bigspace>

<para>
Fold up the corners of the map below like it is a napkin to make the four cells physically adjacent.
</para>

<para>
<image>14118.png</image><comment>4-Kmap B'D'</comment>
</para>

<para>
The four cells above are a group of four because they all have the Boolean variables <bold>B'</bold> and <bold>D'</bold> in common. In other words, <bold>B=0</bold> for the four cells, and <bold>D=0</bold> for the four cells. The other variables <bold>(A, B)</bold> are <bold>0</bold> in some cases, <bold>1</bold> in other cases with respect to the four corner cells. Thus, these variables <bold>(A, B)</bold> are not involved with this group of four. This single group comes out of the map as one product term for the simplified result: <bold>Out=B'C'</bold>
</para>
<bigspace>

<para>
For the K-map below, roll the top and bottom edges into a cylinder forming  eight adjacent cells.
</para>
<bigspace>
<para>
<image>14119.png</image> <comment> 4-Kmap B' </comment>
</para>
<bigspace>

<para>
The above group of eight has one Boolean variable in common: <bold>B=0</bold>. Therefore, the one group of eight is covered by one p-term: <bold>B'</bold>. The original eight term Boolean expression simplifies to <bold>Out=B'</bold>
</para>
<bigspace>

<para>
The Boolean expression below has nine p-terms, three of which have three Booleans instead of four. The difference is that while  four Boolean variable product terms cover one cell, the three Boolean p-terms cover a pair of cells each.
</para>
<bigspace>

<para>
<image>14120.png</image> <comment>4-Kmap  B'+D' </comment>
</para>
<bigspace>

<para>
The six product terms of four Boolean variables map in the usual manner above as single cells.  The three Boolean variable terms (three each) map as cell pairs, which is shown above. Note that we are mapping p-terms into the K-map, not pulling them out at this point.
</para>

<para>
For the simplification, we form two groups of eight. Cells in the corners are shared  with both groups. This is fine. In fact, this leads to a better solution than forming a group of eight and a group of four without sharing any cells. Final Solution is <bold>Out=B'+D'</bold>
</para>
<bigspace>


<para>
Below we map the unsimplified Boolean expression to the Karnaugh map.
</para>
<bigspace>

<para>
<image>14121.png</image> <comment>4-Kmap corners</comment>
</para>
<bigspace>

<para>
Above, three of the cells form into a  groups of two cells. A fourth cell cannot be combined with anything, which often happens in "real world" problems. In this case, the Boolean p-term <bold>ABCD</bold> is unchanged in the simplification process. Result: <bold>Out= B'C'D'+A'B'D'+ABCD</bold>
</para>

<para>
Often times there is more than one minimum cost solution to a simplification problem. Such is the case illustrated below.
</para>

<bigspace>
<para>
<image>14122.png</image> <comment>4-Kmap  dual solution</comment>
</para>
<bigspace>

<index>minimal cost</index>

<para>
Both results above have four product terms of three Boolean variable each. Both are equally valid <italic>minimal cost</italic> solutions. The difference in the final solution is due to how the cells are grouped as shown above. A minimal cost solution is a valid logic design with the minimum number of gates with the minimum number of inputs.
</para>
<bigspace>


<para>
Below we map the unsimplified Boolean equation as usual and form a group of four as a first simplification step. It may not be obvious how to pick up the remaining cells.
</para>
<bigspace>

<para>
<image>14123.png</image> <comment>4-Kmap  4-squares </comment>
</para>
<bigspace>

<para>
Pick up three more cells in a group of four, center above. There are still two cells remaining. the minimal cost method to pick up those is to group them with neighboring cells as groups of four as at above right.
</para>
<para>
On a cautionary note, do not attempt to form groups of three.  Groupings must be powers of 2, that is, 1, 2, 4, 8 ...
</para>
<bigspace>

<para>
Below we have another example of two possible minimal cost solutions. Start by forming a couple of groups of four after mapping the cells.
</para>
<bigspace>

<para>
<image>14124.png</image> <comment>4-Kmap Dual Solution</comment>
</para>
<bigspace>

<para>
The two solutions depend on whether the single remaining cell is grouped with the first or the second group of four as a group of two cells. That cell either comes out as either <bold>ABC'</bold> or <bold>ABD</bold>, your choice. Either way, this cell is covered by either Boolean product term. Final results are shown above.
</para>
<bigspace>

<para>
Below we have an example of a simplification using the Karnaugh map at left or Boolean algebra at right. Plot <bold>C'</bold> on the map as the area of all cells covered by address <bold>C=0</bold>, the 8-cells on the left of the map. Then, plot the single <bold>ABCD</bold> cell. That single cell forms  a group of 2-cell as shown, which simplifies to P-term <bold>ABD</bold>, for an end result of <bold>Out = C' + ABD</bold>.
</para>
<bigspace>

<para>
<image>14125.png</image> <comment>4-Kmap simplification  </comment>
</para>
<bigspace>

<para>
This (above) is a rare example of a four variable problem that can be reduced with Boolean algebra without a lot of work, assuming that you remember the theorems.
</para>
<bigspace>
<bigspace>


</section>



<index>minterm</index>
<index>maxterm</index>
<index>Sum-Of-Products</index>
<index>Product-Of-Sums</index>
<index>SOP</index>
<index>POS</index>

<section>
<sectiontitle>Minterm vs maxterm  solution</sectiontitle>
<para>
So far we have been finding Sum-Of-Product (SOP) solutions to logic reduction problems. For each of these SOP solutions, there is also a Product-Of-Sums solution (POS), which could be more useful, depending on the application.  Before working a Product-Of-Sums solution, we need to introduce some new terminology. The procedure below for mapping  product terms is not new to this chapter. We just want to establish a formal procedure for minterms for comparison to the new procedure for maxterms.
</para>

<para>
<image>14126.png</image> <comment>3-Kmap POS</comment>
</para>

<para>
A <italic>minterm</italic> is a Boolean expression resulting in <bold>1</bold> for the output of a single cell, and <bold>0</bold>s for all other cells in a Karnaugh map, or truth table. If a minterm has a single <bold>1</bold> and the remaining cells as <bold>0</bold>s, it would appear to cover a minimum area of <bold>1</bold>s. The illustration above left  shows the minterm <bold>ABC</bold>, a single product term, as a single <bold>1</bold> in a map that is otherwise <bold>0</bold>s. We have not shown the <bold>0</bold>s in our Karnaugh maps up to this point, as it is customary to omit them unless specifically needed.  Another minterm <bold>A'BC'</bold> is shown above right. The point to review is that the address of the cell corresponds directly to the minterm being mapped. That is, the cell <bold>111</bold> corresponds to the minterm <bold>ABC</bold> above left. Above right we see that the minterm <bold>A'BC'</bold>  corresponds directly to the cell <bold>010</bold>.   A Boolean expression or map may have multiple minterms.
</para>

<para>
Referring to the above figure, Let's summarize the procedure for placing a minterm in a K-map:
<itemize>
<item>Identify the minterm (product term) term to be mapped. </item>
<item>Write the corresponding binary numeric value.</item>
<item> Use binary value as an address to place a <bold>1</bold> in the K-map</item>
<item>Repeat steps for other minterms (P-terms within a Sum-Of-Products). </item>
</itemize>
</para>
<bigspace>
<para>
<image>14127.png</image> <comment>3-Kmap  POS</comment>
</para>
<para>
A Boolean expression will more often than not consist of multiple minterms corresponding to multiple cells in a Karnaugh map as shown above. The multiple minterms in this map are the individual minterms which we examined in the previous figure above. The point we review for reference is that the <bold>1</bold>s come out of the K-map as a binary cell address which converts directly to one or more product terms. By directly we mean that a <bold>0</bold> corresponds to a complemented variable, and a <bold>1</bold>  corresponds to a true variable. Example: <bold>010</bold> converts directly to <bold>A'BC'</bold>. There was no reduction in this example.  Though, we do have a Sum-Of-Products result from the minterms.
</para>

<para>
Referring to the above figure, Let's summarize the procedure for writing the Sum-Of-Products reduced Boolean equation from a K-map:
<itemize>
<item>Form largest groups of <bold>1</bold>s  possible covering all minterms. Groups must be a power of 2. </item>
<item>Write  binary numeric value for groups.</item>
<item>Convert binary value to a product term. </item>
<item>Repeat steps for other groups. Each group yields a p-terms within a Sum-Of-Products.</item>
</itemize>
</para>

<para>
Nothing new so far, a formal procedure  has been written down for dealing with minterms. This serves as a pattern for dealing with maxterms.
</para>

<para>
Next  we attack the Boolean function which is <bold>0</bold> for a single cell and <bold>1</bold>s for all others.
</para>
<bigspace>

<para>
<image>14128.png</image> <comment>3-Kmap POS A'+B'+C'</comment>
</para>
<bigspace>

<para>
A <italic>maxterm</italic> is a Boolean expression resulting in a <bold>0</bold> for the output of a single cell expression,  and <bold>1</bold>s for all other cells in the Karnaugh map, or truth table. The illustration above left  shows the maxterm <bold>(A+B+C)</bold>, a single sum term, as a single <bold>0</bold> in a map that is otherwise <bold>1</bold>s. If a maxterm has a single <bold>0</bold> and the remaining cells as <bold>1</bold>s, it would appear to cover a maximum area of <bold>1</bold>s.
</para>

<para>
There are some differences now that we are dealing with something  new, maxterms. The maxterm is a <bold>0</bold>, not a <bold>1</bold> in the Karnaugh map. A maxterm is a sum term, <bold>(A+B+C)</bold> in our example, not a product term.
</para>

<para>
It also looks strange that <bold>(A+B+C)</bold> is mapped into the cell <bold>000</bold>. For the equation <bold>Out=(A+B+C)=0</bold>, all three variables <bold>(A, B, C)</bold> must individually be equal to <bold>0</bold>. Only <bold>(0+0+0)=0</bold> will equal <bold>0</bold>. Thus we place our sole <bold>0</bold> for minterm <bold>(A+B+C)</bold> in cell  <bold>A,B,C=000</bold> in the K-map, where the inputs are all<bold>0</bold> . This is the only case which will give us a <bold>0</bold> for our maxterm. All other cells contain <bold>1</bold>s because any input values other than (<bold>(0,0,0)</bold> for <bold>(A+B+C)</bold> yields <bold>1</bold>s upon evaluation.
</para>

<para>
Referring to the above figure, the procedure for placing a maxterm in the K-map is:
<itemize>
<item>Identify the Sum term to be mapped. </item>
<item>Write corresponding binary numeric value.</item>
<item>Form the complement </item>
<item> Use the complement as an address to place a <bold>0</bold> in the K-map</item>
<item>Repeat for other maxterms (Sum terms within Product-of-Sums expression).</item>
</itemize>
</para>
<bigspace>

<para>
<image>14129.png</image> <comment>3-Kmap POS A'+B'+C'</comment>
</para>
<bigspace>

<para>
Another maxterm <bold>A'+B'+C'</bold> is shown above. Numeric <bold>000</bold> corresponds to <bold>A'+B'+C'</bold>. The complement is <bold>111</bold>. Place a <bold>0</bold> for maxterm <bold>(A'+B'+C')</bold> in this cell <bold>(1,1,1)</bold> of the K-map as shown above.
</para>

<para>
Why should <bold>(A'+B'+C')</bold> cause a <bold>0</bold> to  be in cell <bold>111</bold>?  When <bold>A'+B'+C'</bold> is <bold>(1'+1'+1')</bold>, all <bold>1</bold>s in, which is <bold>(0+0+0)</bold> after taking complements, we have the only condition that will give us a <bold>0</bold>. All the <bold>1</bold>s are complemented to all <bold>0</bold>s, which is <bold>0</bold> when <bold>OR</bold>ed.
</para>
<bigspace>

<para>
<image>14130.png</image> <comment>3-Kmap  POS </comment>
</para>
<bigspace>

<para>
 A Boolean Product-Of-Sums  expression or map may have multiple maxterms as shown above.  Maxterm <bold>(A+B+C)</bold> yields numeric <bold>111</bold> which complements to  <bold>000</bold>, placing a <bold>0</bold> in cell <bold>(0,0,0)</bold>. Maxterm <bold>(A+B+C')</bold> yields numeric <bold>110</bold> which complements to  <bold>001</bold>, placing a <bold>0</bold> in cell <bold>(0,0,1)</bold>.
</para>

<para>
Now that we have the k-map setup, what we are really interested in is showing how to write a Product-Of-Sums reduction.  Form the <bold>0</bold>s into groups. That would be a group of two below. Write the binary value corresponding to the sum-term which is <bold>(0,0,X)</bold>. Both A and B are <bold>0</bold> for the group. But, <bold>C</bold> is both <bold>0</bold> and <bold>1</bold> so we write an <bold>X</bold> as a place holder for <bold>C</bold>. Form the complement <bold>(1,1,X)</bold>. Write the Sum-term <bold>(A+B)</bold> discarding the <bold>C</bold> and the <bold>X</bold> which held its' place. In general, expect to have more sum-terms multiplied together in the Product-Of-Sums result. Though, we have a simple example here.
</para>

<para>
<image>14131.png</image> <comment>3-Kmap  A+B </comment>
</para>

<para>
Let's summarize the procedure for writing the Product-Of-Sums Boolean reduction for a K-map:
<itemize>
<item>Form largest groups of <bold>0</bold>s  possible, covering all maxterms. Groups must be a power of 2. </item>
<item>Write binary numeric value for group.</item>
<item>Complement  binary numeric value for group.</item>
<item>Convert complement value to a sum-term. </item>
<item>Repeat steps for other groups. Each group yields a sum-term within a Product-Of-Sums result.</item>
</itemize>
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Simplify the Product-Of-Sums Boolean expression below, providing a result in POS form.
</para>
<bigspace>

<para>
<image>14132.png</image> <comment>POS example</comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
Transfer the seven maxterms to the map below as <bold>0</bold>s. Be sure to complement the input variables in finding the proper cell location.
</para>
<bigspace>

<para>
<image>14133.png</image> <comment>4-Kmap  maxterm</comment>
</para>
<bigspace>

<para>
We map the <bold>0</bold>s as they appear left to right top to bottom on the map above. We locate the last three maxterms with leader lines..
</para>

<para>
Once the cells are in place above, form groups of cells as shown below. Larger groups will give a sum-term with fewer inputs. Fewer groups will yield fewer sum-terms in the result.
</para>
<bigspace>

<para>
<image>14134.png</image> <comment>4-Kmap   </comment>
</para>
<bigspace>

<para>
We have three groups, so we expect to have three sum-terms in our POS result above. The group of 4-cells yields a  2-variable sum-term. The two groups of 2-cells give us two 3-variable sum-terms. Details are shown for how we arrived at the Sum-terms above.  For a group, write the binary group input address, then complement it, converting that to the Boolean sum-term.  The final result is product of the three sums.
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Simplify the Product-Of-Sums Boolean expression below, providing a result in SOP form.
</para>
<bigspace>

<para>
<image>14132.png</image> <comment>4-Kmap   </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
This looks like a repeat of the last problem.  It is except that we ask for a Sum-Of-Products Solution instead of the Product-Of-Sums which we just finished.  Map the maxterm <bold>0</bold>s from the Product-Of-Sums given as in the previous problem, below left.
</para>
<bigspace>

<para>
<image>14135.png</image> <comment>4-Kmap   </comment>
</para>
<bigspace>

<para>
Then fill in the implied <bold>1</bold>s in the remaining cells of the map above right.
</para>
<bigspace>

<para>
<image>14136.png</image> <comment>4-Kmap   </comment>
</para>
<bigspace>

<para>
Form groups of <bold>1</bold>s to cover all <bold>1</bold>s. Then write the Sum-Of-Products simplified result as in the previous section of this chapter.  This is identical to a previous problem.
</para>
<bigspace>

<para>
<image>14137.png</image> <comment>4-Kmap   </comment>
</para>
<bigspace>

<para>
Above we show both the Product-Of-Sums solution, from the previous example, and the Sum-Of-Products solution from the current problem for comparison. Which is the simpler solution? The POS uses 3-OR gates and 1-AND gate, while the SOP uses 3-AND gates and 1-OR gate. Both use four gates each. Taking a closer look, we count the number of gate inputs. The POS uses 8-inputs; the SOP uses 7-inputs.  By the definition of minimal cost solution, the SOP solution is simpler.  This is an example of a technically correct answer that is of little use in the real world.
</para>
<para>
The better solution depends on complexity and the logic family being used.  The SOP solution is usually better if using the TTL logic family, as NAND gates are the basic building block, which works well with SOP implementations. On the other hand, A POS solution would be acceptable when using the CMOS logic family since all sizes of NOR gates are available.
</para>
<bigspace>

<para>
<image>14138.png</image> <comment>POS SOP diagram   </comment>
</para>
<bigspace>

<para>
The gate diagrams for both cases are shown above, Product-Of-Sums left, and Sum-Of-Products right.
</para>

<para>
Below, we take a closer look at the Sum-Of-Products version of our example logic, which is repeated at left.
</para>

<bigspace>
<para>
<image>14139.png</image> <comment>and/or vs NAND-NAND </comment>
</para>
<bigspace>
<index>nand-nand logic</index>
<para>
Above  all AND gates at left have been replaced by NAND gates at right.. The OR gate at the output is replaced by a NAND gate.  To prove that AND-OR logic is equivalent to NAND-NAND logic, move the inverter invert bubbles at the output of the 3-NAND gates to the input of the final NAND as shown in going from above right to below left.
</para>
<bigspace>

<para>
<image>14140.png</image> <comment>gate diagram </comment>
</para>
<bigspace>

<index>DeMorgan's theorem</index>

<para>
Above right we see that the output NAND gate with inverted inputs is logically equivalent to an OR gate by DeMorgan's theorem and double negation. This information is useful in building digital logic in a laboratory setting where TTL logic family NAND gates are more readily available in a wide variety of configurations than other types.
</para>

<index>nand-nand logic</index>

<para>
The Procedure for constructing NAND-NAND logic, in place of AND-OR logic is as follows:
<itemize>
<item>Produce a reduced Sum-Of-Products logic design.</item>
<item>When drawing the wiring  diagram of the SOP, replace all gates (both AND and OR) with NAND gates.</item>
<item>Unused inputs should be tied to logic High.</item>
<item>In case of troubleshooting, internal nodes at the first level of NAND gate outputs do NOT match AND-OR diagram logic levels, but are inverted. Use the NAND-NAND logic diagram. Inputs and final output are identical, though.</item>
<item>Label any multiple packages U1, U2,.. etc.</item>
<item>Use data sheet to assign pin numbers to inputs and outputs of all gates. </item>
</itemize>
</para>
<bigspace>

<para>
<bold>Example:</bold>
</para>
<bigspace>

<para>
Let us revisit a previous problem involving an SOP minimization. Produce a  Product-Of-Sums solution. Compare the POS solution to the previous SOP.
</para>
<bigspace>

<para>
<image>14141.png</image> <comment>SOP POS   </comment>
</para>
<bigspace>

<para>
<bold>Solution:</bold>
</para>
<bigspace>

<para>
Above left we have the original problem starting  with  a 9-minterm Boolean unsimplified expression. Reviewing, we formed four groups of 4-cells to yield a 4-product-term SOP result, lower left.
</para>

<para>
In the middle figure, above, we fill in the empty spaces with the implied <bold>0</bold>s. The <bold>0</bold>s form two groups of 4-cells. The solid blue group is <bold>(A'+B)</bold>, the dashed red group is <bold>(C'+D)</bold>. This yields two sum-terms in the Product-Of-Sums result, above right <bold>Out = (A'+B)(C'+D)</bold>
</para>

<para>
Comparing the previous SOP simplification, left, to the POS simplification, right, shows that the POS is the least cost solution. The SOP uses 5-gates total, the POS uses only 3-gates. This POS solution even looks attractive when using TTL logic due to simplicity of the result. We can find AND gates and an OR gate with 2-inputs.
</para>
<bigspace>

<para>
<image>14142.png</image> <comment>SOP POS diagram </comment>
</para>
<bigspace>

<para>
The SOP and POS gate diagrams are shown above for our comparison problem.
</para>

<para>
Given the pin-outs for the TTL logic family integrated circuit gates below, label the maxterm diagram above right with Circuit designators (U1-a, U1-b, U2-a, etc), and pin numbers.

</para>

<para>
<image>14145.png</image> <comment>SOP POS diagram </comment>
</para>
<bigspace>

<para>
Each integrated circuit package that we use will receive a circuit designator: U1, U2, U3.  To distinguish between the individual gates within the  package, they are identified as a, b, c, d, etc. The 7404 hex-inverter package is U1. The individual inverters in it are are U1-a, U1-b, U1-c, etc. U2 is assigned to the 7432 quad OR gate. U3 is assigned to the 7408 quad AND gate. With reference to the pin numbers on the package diagram above, we assign pin numbers to all gate inputs and outputs on the schematic diagram below.
</para>
<para>
We can now build this circuit in a laboratory setting. Or, we could design a <italic>printed circuit board</italic> for it. A printed circuit board contains copper foil "wiring" backed by a non conductive substrate of phenolic, or epoxy-fiberglass. Printed circuit boards are used to mass produce electronic circuits. Ground the inputs of unused gates.
</para>
<bigspace>

<para>
<image>14146.png</image> <comment>SOP POS diagram </comment>
</para>
<bigspace>

<para>
Label the previous POS solution diagram above left (third figure back) with Circuit designators  and pin numbers. This will be similar to what we just did.
</para>



<para>
<image>14147.png</image> <comment>TTL 7400, 7420  </comment>
</para>
<bigspace>

<para>
We can find 2-input AND gates, 7408 in the previous example. However, we have trouble finding a 4-input OR gate in our TTL catalog. The only kind of gate with 4-inputs is the 7420 NAND gate shown above right.
</para>

<para>
We can make the 4-input NAND gate into a 4-input OR gate by inverting the inputs to the NAND gate as shown below. So we will use the 7420 4-input NAND gate as an OR gate by inverting the inputs.
</para>
<bigspace>

<para>
<image>14148.png</image> <comment>SOP DeMorgan's </comment>
</para>
<bigspace>

<para>
We will not use discrete inverters to invert the inputs to the 7420 4-input NAND gate, but will drive it with 2-input NAND gates in place of the AND gates called for in the SOP, minterm, solution. The inversion at the output of the 2-input NAND gates supply the inversion for the 4-input OR gate.
</para>
<bigspace>

<para>
<image>14149.png</image> <comment>SOP  diagram </comment>
</para>
<bigspace>

<index>nand-nand logic</index>
<para>

The result is shown above. It is the only practical way to actually build it with TTL gates by using NAND-NAND logic replacing AND-OR logic.
</para>
<bigspace>

</section>


<section>

<sectiontitle><SIGMA> (sum) and <PI> (product) notation</sectiontitle>
<para>
For reference, this section introduces the terminology used in some texts to describe the minterms and maxterms assigned to a Karnaugh map. Otherwise, there is no new material here.
</para>

<index>minterm sum <SIGMA> </index>

<para>
<SIGMA> (sigma) indicates sum and lower case "m" indicates minterms. <SIGMA>m indicates sum of minterms. The following example is revisited to illustrate our point. Instead of a Boolean equation description of unsimplified logic, we list the minterms.
</para>

<quotation>
<para>
f(A,B,C,D) = <SIGMA> m(1, 2, 3, 4, 5, 7, 8, 9, 11, 12, 13, 15)
</para>
<bigspace>
<para>or</para>
<bigspace>
<para>
f(A,B,C,D) = <SIGMA>(m<subscript>1</subscript>,m<subscript>2</subscript>,m<subscript>3</subscript>,m<subscript>4</subscript>,m<subscript>5</subscript>,m<subscript>7</subscript>,m<subscript>8</subscript>,m<subscript>9</subscript>,m<subscript>11</subscript>,m<subscript>12</subscript>,m<subscript>13</subscript>,m<subscript>15</subscript>)
</para>

</quotation>
<bigspace>

<para>
The numbers indicate cell location, or address, within a Karnaugh map as shown below right. This is certainly a compact means of describing a list of minterms or cells in a K-map.
</para>

<bigspace>

<para>
<image>14162.png</image> <comment>SOP (sigma) </comment>
</para>
<bigspace>

<para>
The Sum-Of-Products solution is not affected by the new terminology. The minterms, <bold>1</bold>s, in the map have been grouped as usual and a Sum-OF-Products solution written.
</para>

<index>maxterm product <PI> </index>

<para>
Below, we show the terminology for describing a list of maxterms. Product is indicated by the Greek <PI> (pi), and upper case "M" indicates maxterms. <PI>M indicates product of maxterms. The same example illustrates our point. The Boolean equation description of unsimplified logic, is replaced by a list of maxterms.
</para>

<quotation>
<para>
f(A,B,C,D) = <PI> M(2, 6, 8, 9, 10, 11, 14)
</para>
<bigspace>
<para>or</para>
<bigspace>
<para>
f(A,B,C,D) = <PI>(M<subscript>2</subscript>, M<subscript>6</subscript>, M<subscript>8</subscript>,  M<subscript>9</subscript>, M<subscript>10</subscript>, M<subscript>11</subscript>, M<subscript>14</subscript>)
</para>

</quotation>
<bigspace>

<para>
Once again, the numbers indicate K-map cell address locations. For maxterms this is the location of <bold>0</bold>s, as shown below. A Product-OF-Sums solution is completed in the usual manner.
</para>

<bigspace>
<para>
<image>14163.png</image> <comment>POS PI  </comment>
</para>
<bigspace>

</section>

<section>

<index>don't cares in Karnaugh map</index>

<sectiontitle>Don't care cells in the Karnaugh map</sectiontitle>

<para>
Up to this point we have considered logic reduction problems where the input conditions were completely specified. That is, a 3-variable truth table or Karnaugh map had 2<superscript>n</superscript> =  2<superscript>3</superscript> or  8-entries, a full table or map. It is not always necessary to fill in the complete truth table for some real-world problems. We may have a choice to not fill in the complete table.
</para>
<para>
For example, when dealing with BCD (Binary Coded Decimal) numbers encoded as four bits, we may not care about any codes above the BCD range of (0, 1, 2...9). The 4-bit binary codes for  the hexadecimal numbers  (Ah, Bh, Ch, Eh, Fh) are not valid BCD codes. Thus, we do not have to fill in those codes at the end of a truth table, or K-map, if we do not care to. We would not normally care to fill in those codes because those codes (1010, 1011, 1100, 1101, 1110, 1111) will never exist as long as we are dealing only with BCD encoded numbers.  These six invalid codes are <italic>don't cares</italic> as far as we are concerned. That is, we do not care what output our logic circuit produces for these don't cares.
</para>

<para>
Don't cares in a Karnaugh map, or truth table, may be either <bold>1</bold>s or <bold>0</bold>s, as long as we don't care what the output is for an input condition we never expect to see. We plot these cells with an asterisk, *, among the normal <bold>1</bold>s and <bold>0</bold>s. When forming groups of cells,  treat the don't care cell as either a <bold>1</bold> or a <bold>0</bold>, or ignore the don't cares. This is helpful if it allows us to form a larger group than would otherwise be possible without the don't cares. There is no requirement to group all or any of the don't cares. Only use them in a group if it simplifies the logic.
</para>
<bigspace>

<para>
<image>14155.png</image> <comment>3 ea 3-Kmap don't care </comment>
</para>
<bigspace>

<para>
Above is an example of a logic function where the desired  output is <bold>1</bold> for input <bold>ABC = 101</bold> over the range from <bold>000 to 101</bold>. We do not care what the output is for the other possible inputs (<bold>110, 111)</bold>. Map those two as don't cares. We show two solutions. The solution on the right Out = AB'C is the more complex solution since we did not use the don't care cells. The solution  in the middle, Out=AC, is less complex because we grouped a don't care cell with the single <bold>1</bold> to form a group of two. The third solution, a  Product-Of-Sums on the right, results from grouping a don't care with  three zeros forming a group of four <bold>0</bold>s. This is  the same, less complex, <bold>Out=AC</bold>. We have illustrated that the don't care cells may be used as either <bold>1</bold>s or <bold>0</bold>s, whichever is useful.


</para>
<bigspace>

<para>
<image>14156.png</image> <comment>bicycle </comment>
</para>
<bigspace>

<para>
The electronics class of Lightning State College has been asked to build the lamp logic for a stationary bicycle exhibit at the local science museum. As a rider increases his pedaling speed, lamps will light on a bar graph display. No lamps will light for no motion. As speed increases, the lower lamp, L1 lights, then L1 and L2, then, L1, L2, and L3, until all lamps light at the highest speed. Once all the lamps illuminate, no further increase in speed will have any effect on the display.
</para>

<para>
A small DC generator coupled to the bicycle tire outputs a voltage proportional to speed. It drives a tachometer board which limits the voltage at the high end of speed where all lamps light. No further increase in speed can increase the voltage beyond this level. This is crucial because the downstream A to D (Analog to Digital) converter puts out a 3-bit code, <bold>ABC</bold>,   2<superscript>3</superscript> or  8-codes, but we only have five lamps. <bold>A</bold> is the most significant bit, <bold>C</bold> the least significant bit.
</para>

<para>
The lamp logic needs to respond to the six  codes out of the A to D. For <bold>ABC=000</bold>, no motion, no lamps light.  For the five codes <bold>(001 to 101)</bold> lamps L1, L1&L2, L1&L2&L3, up to  all lamps will light, as speed, voltage, and the  A to D code (ABC)  increases. We do not care about the response to input codes <bold>(110, 111)</bold> because these codes will never come out of the A to D due to the limiting in the tachometer block. We need to design five logic circuits to drive the five lamps.
</para>
<bigspace>

<para>
<image>14157.png</image> <comment>tachometer maps </comment>
</para>
<bigspace>

<para>
Since, none of the lamps light for <bold>ABC=000</bold> out of the A to D, enter a <bold>0</bold> in all K-maps for cell <bold>ABC=000</bold>.  Since we don't care about the never to be encountered codes <bold>(110, 111)</bold>, enter asterisks into those two cells in all five K-maps.
</para>

<para>
Lamp L5 will only light for code <bold>ABC=101</bold>. Enter a <bold>1</bold> in that cell and five <bold>0</bold>s into the remaining empty cells of L5 K-map.
</para>
<para>
L4 will light initially for code <bold>ABC=100</bold>, and will remain illuminated for any code greater, <bold>ABC=101</bold>, because all lamps below L5 will light when L5 lights. Enter <bold>1</bold>s into cells <bold>100</bold> and <bold>101</bold> of the L4 map so that it will light for those codes. Four <bold>0</bold>'s fill the remaining L4 cells
</para>
<para>
L3 will initially light for code <bold>ABC=011</bold>. It will also light whenever L5 and L4 illuminate. Enter three <bold>1</bold>s into cells <bold>011, 100, 101</bold> for L3 map. Fill three <bold>0</bold>s into the remaining L3 cells.
</para>
<para>
L2 lights for <bold>ABC=010</bold> and codes greater. Fill <bold>1</bold>s into cells <bold>010, 011, 100, 101</bold>, and two <bold>0</bold>s in the remaining cells.
</para>
<para>
The only time L1 is not lighted is for no motion. There is already a <bold>0</bold> in cell <bold>ABC=000</bold>. All the other five cells receive  <bold>1</bold>s.
</para>

<para>
Group the <bold>1</bold>'s as shown above, using don't cares whenever a larger group results. The L1 map shows three product terms, corresponding to three groups of 4-cells. We used both don't cares in two of the groups and one don't care on the third group. The don't cares allowed us to form groups of four.
</para>

<para>
In a similar manner, the L2 and L4 maps both produce groups of 4-cells with the aid of the don't care cells. The L4 reduction is striking in that the L4 lamp is controlled by the most significant bit from the A to D converter, <bold>L5=A</bold>. No logic gates are required for lamp L4. In the L3 and L5 maps, single cells form groups of two with don't care cells.  In all five maps, the reduced Boolean equation is less complex than without the don't cares.
</para>

<bigspace>

<para>
<image>14158.png</image> <comment>tachometer gates </comment>
</para>
<bigspace>

<para>
The gate diagram for the circuit is above. The outputs of the five K-map equations drive inverters. Note that the L1 <bold>OR</bold> gate is not a 3-input gate but a 2-input gate having inputs <bold>(A+B), C</bold>, outputting <bold>A+B+C</bold> The <italic>open collector</italic> inverters, <bold>7406</bold>, are desirable for driving LEDs, though, not part of the K-map logic design. The output of an open collecter gate or inverter is open circuited at the collector internal to the integrated circuit package so that all collector current may flow through an external load. An active high into any of the inverters pulls the output low, drawing current through the LED and the current limiting resistor. The LEDs would likely be part of a solid state relay driving 120VAC lamps for a museum exhibit, not shown here.
</para>

</section>

<section>
<index>Karnaugh map</index>
<index>fan-in</index>
<sectiontitle>Larger 5 & 6-variable Karnaugh maps</sectiontitle>
<para>Larger Karnaugh maps  reduce larger logic designs. How large is large enough? That depends on the number of inputs, <italic>fan-ins</italic>, to the logic circuit under consideration. One of the large programmable logic companies has an answer.
</para>

<quotation>
Altera's own data, extracted from its library of customer designs, supports the value of heterogeneity. By examining logic cones, mapping them onto LUT-based nodes and sorting them by the number of inputs that would be best at each node, Altera found that the distribution of fan-ins was nearly flat between two and six inputs, with a nice peak at five.
</quotation>
<para>
The answer is no more than six inputs for most all designs, and  five inputs for the average logic design. The five variable Karnaugh map follows.
</para>

<bigspace>

<para>
<image>14150.png</image> <comment>5-Kmap Gray code </comment>
</para>
<bigspace>

<para>
The older version of the five variable K-map, a Gray Code map or reflection map, is shown above. The top (and side for a 6-variable map) of the map is numbered in full Gray code. The Gray code reflects about the middle of the code. This style map is found in older texts. The newer preferred style is below.
</para>
<bigspace>


<para>
<image>14151.png</image> <comment>5-Kmap, overlay  </comment>
</para>
<bigspace>

<para>
The overlay version of the Karnaugh map, shown above,  is simply two (four for a 6-variable map) identical maps except for the most significant bit of the 3-bit address across the top. If we look at the top of the map, we will see that the numbering is different from the previous Gray code map. If we ignore the most significant digit of the 3-digit numbers, the sequence <bold>00, 01, 11, 10</bold> is at the heading of both sub maps of the overlay map. The sequence of eight 3-digit numbers is not Gray code. Though the sequence of four of the least significant two bits is.
</para>
<bigspace>

<para>
Let's put our 5-variable Karnaugh Map to use. Design a circuit which has a 5-bit binary input (A, B, C, D, E), with A being the MSB (Most Significant Bit).  It must produce an output logic High for any prime number detected in the input data.
</para>
<bigspace>

<para>
<image>14152.png</image> <comment>5-Kmap, Gery code  </comment>
</para>
<bigspace>
<para>
We show the solution above on the older Gray code (reflection) map for reference. The prime numbers are (1,2,3,5,7,11,13,17,19,23,29,31). Plot a <bold>1</bold> in each corresponding cell. Then, proceed with grouping of the cells. Finish by writing the simplified result. Note that 4-cell group A'B'E  consists of two pairs of cell on both sides of the mirror line. The same is true of the 2-cell group AB'DE. It is a group of 2-cells by being reflected about the mirror line. When using this version of the K-map look for mirror images in the other half of the map.
</para>
<bigspace>

<para>
Out = A'B'E + B'C'E + A'C'DE + A'CD'E + ABCE + AB'DE + A'B'C'D
</para>
<bigspace>

<para>
Below we show the more common version of the 5-variable map, the overlay map.
</para>
<bigspace>

<para>
<image>14153.png</image> <comment>5-Kmap, overlay  </comment>
</para>
<bigspace>

<para>
If we compare the patterns in the two maps, some of the cells in the right half of the map are moved around since the addressing across the top of the map is different. We also need to take a different approach at spotting commonality between the two halves of the map. Overlay one half of the map atop the other half. Any overlap from the top map to the lower map is a potential group. The figure below shows that group AB'DE is composed of two stacked cells. Group A'B'E consists of two stacked pairs of cells.
</para>

<para>
For the <bold>A'B'E</bold> group of 4-cells <bold>ABCDE = 00xx1</bold> for the group. That is A,B,E are the same <bold>001</bold> respectively for the group. And,  <bold>CD=xx</bold> that is it varies, no commonality in <bold>CD=xx</bold> for the group of 4-cells. Since <bold>ABCDE = 00xx1</bold>, the group of 4-cells is covered by <bold>A'B'XXE = A'B'E</bold>.
</para>
<bigspace>

<para>
<image>14154.png</image> <comment>5-Kmap, overlay 3-D  </comment>
</para>
<bigspace>

<para>
The above 5-variable overlay map is shown stacked.
</para>
<bigspace>

<para>
An example of a six variable Karnaugh map follows. We have mentally stacked the four sub maps to see the group of 4-cells corresponding to <bold>Out = C'F'</bold>
<bigspace>

<para>
<image>14159.png</image> <comment>6-Kmap, overlay 3-D  </comment>
</para>
<bigspace>

<index>magnitude comparator</index>

<para>
A magnitude comparator (used to illustrate a 6-variable K-map) compares two binary numbers, indicating if they are equal, greater than, or less than each other on three respective outputs. A three bit magnitude comparator has two inputs A<subscript>2</subscript>A<subscript>1</subscript>A<subscript>0</subscript> and B<subscript>2</subscript>B<subscript>1</subscript>B<subscript>0</subscript>
An integrated circuit magnitude comparator (7485) would actually have four inputs, But, the Karnaugh map below needs to be kept to a reasonable size. We will only solve for the <bold>A<gt>B</bold> output.
</para>

<para>
Below, a 6-variable Karnaugh map aids simplification of the logic for a  3-bit magnitude comparator. This is an overlay type of map. The binary address code across the top and down the left side of the map is not a full 3-bit Gray code. Though the 2-bit address codes of the four sub maps is Gray code. Find redundant expressions by stacking the four sub maps atop one another (shown above). There could be cells common to all four maps, though not in the example below. It does have cells common to pairs of sub maps.
</para>
<bigspace>

<para>
<image>14160.png</image> <comment>magnitude comparator</comment>
</para>
<bigspace>

<para>
The A<gt>B output above is ABC<gt>XYZ on the map below.
</para>

<para>
<image>14161.png</image> <comment>6-Kmap, ABC GT XYZ  </comment>
</para>
<bigspace>

<para>
Where ever <bold>ABC</bold> is greater than <bold>XYZ</bold>, a <bold>1</bold> is plotted. In the first line <bold>ABC=000</bold> cannot be greater than any of the values of <bold>XYZ</bold>. No <bold>1</bold>s in this line. In the second line, <bold>ABC=001</bold>, only the first cell <bold>ABCXYZ= 001000</bold> is <bold>ABC</bold> greater than<bold> XYZ</bold>. A single <bold>1</bold> is entered in the first cell of the second line. The fourth line, <bold>ABC=010</bold>, has a pair of <bold>1</bold>s. The third line, <bold>ABC=011</bold> has three <bold>1</bold>s.  Thus, the map is filled with <bold>1</bold>s in any cells where <bold>ABC</bold> is greater than <bold>XXZ</bold>.
</para>

<para>
In grouping cells, form groups with adjacent sub maps if possible. All but one group of 16-cells involves cells from  pairs of the sub maps. Look for the following groups:
<itemize>
<item>1 group of 16-cells</item>
<item>2 groups of 8-cells</item>
<item>4 groups of 4-cells</item>
</itemize>
The group of 16-cells, <bold>AX'</bold> occupies all of the lower right sub map; though, we don't circle it on the figure above.
</para>

<para>
One group of 8-cells is composed of a group of 4-cells in the upper sub map  overlaying a similar group in the lower left map.
The second group of 8-cells is composed of a similar group of 4-cells in the right sub map overlaying the same group of 4-cells in the lower left map.
</para>

<para>
The four groups of 4-cells are shown on the Karnaugh map above with the associated product terms. Along with the product terms for the two groups of 8-cells and the group of 16-cells, the final Sum-Of-Products reduction is shown, all seven terms.  Counting the <bold>1</bold>s in the map, there is a total of 16+6+6=28 ones. Before the K-map logic reduction there would have been 28 product terms in our SOP output, each with 6-inputs. The Karnaugh map yielded seven product terms of four or less inputs.  This is really what Karnaugh maps are all about!
</para>


<para>
The wiring diagram is not shown. However, here is the parts list for the 3-bit magnitude comparator for ABC<gt>XYZ using 4 TTL logic family parts:
<itemize>
<item>1 ea 7410 triple 3-input NAND gate AX', ABY', BX'Y' </item>
<item>2 ea 7420 dual 4-input NAND gate ABCZ', ACY'Z', BCX'Z', CX'Y'Z'</item>
<item>1 ea 7430 8-input NAND gate for output of 7-P-terms</item>
</itemize>

</para>


<bigspace>


<itemize>

<item>
<bold>REVIEW:</bold>
</item>

<item>
Boolean algebra, Karnaugh maps, and CAD (Computer Aided Design) are methods of logic simplification. The goal of logic simplification is a minimal cost solution.
</item>

<item>
A minimal cost solution is a valid logic reduction with the minimum number of gates with the minimum number of inputs.
</item>

<item>
Venn diagrams allow us to visualize Boolean expressions, easing the transition to Karnaugh maps.
</item>

<item>
Karnaugh map cells are organized in Gray code order so that we may visualize redundancy in Boolean expressions which results in simplification.
</item>

<item>
The more common Sum-Of-Products (Sum of Minters) expressions are implemented as AND gates (products) feeding  a single OR gate (sum).
</item>

<item>
Sum-Of-Products expressions (AND-OR logic) are equivalent to a NAND-NAND  implementation. All AND gates and OR gates are replaced by NAND gates.
</item>

<item>
Less often used, Product-Of-Sums expressions are implemented as  OR gates (sums) feeding into a single AND gate (product). Product-Of-Sums expressions are based on the <bold>0</bold>s, maxterms, in a Karnaugh map.
</item>


</itemize>

</section>
</chapter>

<pagebreak>


