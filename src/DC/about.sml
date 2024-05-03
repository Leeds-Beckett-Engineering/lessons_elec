<comment> Modified 11/26/2000 (TK) -- Changed website URL for the Open Book Project from yhslug.tux.org/obp to www.ibiblio.org/obp</comment>

<comment> Modified 01/18/2001 (TK) -- Changed "appendix" to "reference volume" to reflect changes in the structure of the book.  What is now the Reference volume used to be a short appendix at the end of each of the other volumes.  What can I say -- it grew!</comment>

<comment> Modified 01/20/2001 (TK) -- Changed reference to Yorktown High School's web server, which isn't being used anymore for hosting this book (ibiblio's server is now).</comment>

<comment> Modified 05/27/2001 (TK) -- Converted to SubML format, with some editing.</comment>

<comment> Modified 07/21/2001 (TK) -- Updated "acknowledgements" section and made some minor stylistic changes.</comment>

<comment> Modified 11/04/2001 (TK) -- Slightly altered URL inclusion, to match new update in SubML standard (version 0.90).</comment>

<comment> Modified 11/04/2001 (TK) -- Added a "thank-you" to the Fluke Corporation.</comment>

<comment> Modified 11/06/2021 (DC) -- Added/replaced references to DSL license with CC BY license.</comment>


<chapter>
<chaptertitle><sp><sp>ABOUT THIS BOOK</chaptertitle>

<section>
<sectiontitle>Purpose</sectiontitle>
 
<para>
They say that necessity is the mother of invention.  At least in the case of this book, that adage is true.  As an industrial electronics instructor, I was forced to use a sub-standard textbook during my first year of teaching.  My students were daily frustrated with the many typographical errors and obscure explanations in this book, having spent much time at home struggling to comprehend the material within.  Worse yet were the many incorrect answers in the back of the book to selected problems.  Adding insult to injury was the $100+ price.
</para>
 
<para>
Contacting the publisher proved to be an exercise in futility.  Even though the particular text I was using had been in print and in popular use for a couple of years, they claimed my complaint was the first they'd ever heard.  My request to review the draft for the next edition of their book was met with disinterest on their part, and I resolved to find an alternative text.
</para>
 
<para>
Finding a suitable alternative was more difficult than I had imagined.  Sure, there were plenty of texts in print, but the really good books seemed a bit too heavy on the math and the less intimidating books omitted a lot of information I felt was important.  Some of the best books were out of print, and those that were still being printed were quite expensive.
</para>
 
<para>
It was out of frustration that I compiled <italic>Lessons in Electric Circuits</italic> from notes and ideas I had been collecting for years.  My primary goal was to put readable, high-quality information into the hands of my students, but a secondary goal was to make the book as affordable as possible.  Over the years, I had experienced the benefit of receiving free instruction and encouragement in my pursuit of learning electronics from many people, including several teachers of mine in elementary and high school.  Their selfless assistance played a key role in my own studies, paving the way for a rewarding career and fascinating hobby.  If only I could extend the gift of their help by giving to other people what they gave to me . . .
</para>
 
<para>
So, I decided to make the book freely available.  More than that, I decided to make it "open," following the same development model used in the making of free software (most notably the various UNIX utilities released by the Free Software Foundation, and the Linux operating system, whose fame is growing even as I write).  The goal was to copyright the text -- so as to protect my authorship -- but expressly allow anyone to distribute and/or modify the text to suit their own needs with a minimum of legal encumbrance.  This willful and formal revoking of standard distribution limitations under copyright is whimsically termed <italic>copyleft</italic>.  Anyone can "copyleft" their creative work simply by appending a notice to that effect on their work, but several Licenses already exist, covering the fine legal points in great detail.  
</para>
 
<para>
The first such License I applied to my work was the GPL -- General Public License -- of the Free Software Foundation (GNU).  The GPL, however, is intended to copyleft works of computer software, and although its introductory language is broad enough to cover works of text, its wording is not as clear as it could be for that application.  When other, less specific copyleft Licenses began appearing within the free software community, I chose one of them (the Design Science License, or DSL) for my project. Once the author of the DSL said it was obsolete, I moved on to Creative Commons (CC BY License).
</para>
 
<para>
In "copylefting" this text, I guaranteed that no instructor would be limited by a text insufficient for their needs, as I had been with error-ridden textbooks from major publishers.  I'm sure this book in its initial form will not satisfy everyone, but anyone has the freedom to change it, leveraging my efforts to suit variant and individual requirements.  For the beginning student of electronics, learn what you can from this book, editing it as you feel necessary if you come across a useful piece of information.  Then, if you pass it on to someone else, you will be giving them something better than what you received.  For the instructor or electronics professional, feel free to use this as a reference manual, adding or editing to your heart's content.  The only "catch" is this: if you plan to distribute your modified version of this text, you must give credit where credit is due (to me, the original author, and anyone else whose modifications are contained in your version), and you must ensure that whoever you give the text to is aware of their freedom to similarly share and edit the text.  The next chapter covers this process in more detail.
</para>
 
<para>
It must be mentioned that although I strive to maintain technical accuracy in all of this book's content, the subject matter is broad and harbors many potential dangers.  Electricity maims and kills without provocation, and deserves the utmost respect.  I strongly encourage experimentation on the part of the reader, but only with circuits powered by small batteries where there is no risk of electric shock, fire, explosion, etc.  High-power electric circuits should be left to the care of trained professionals!  The CC BY License clearly states that neither I nor any contributors to this book bear any liability for what is done with its contents.
</para>
 
</section>




<section>
<sectiontitle>The use of SPICE</sectiontitle>
 
<para>
One of the best ways to learn how things work is to follow the inductive approach: to observe specific instances of things working and derive general conclusions from those observations.  In science education, labwork is the traditionally accepted venue for this type of learning, although in many cases labs are designed by educators to reinforce principles previously learned through lecture or textbook reading, rather than to allow the student to learn on their own through a truly exploratory process.
</para>
 
<para>
Having taught myself most of the electronics that I know, I appreciate the sense of frustration students may have in teaching themselves from books.  Although electronic components are typically inexpensive, not everyone has the means or opportunity to set up a laboratory in their own homes, and when things go wrong there's no one to ask for help.  Most textbooks seem to approach the task of education from a deductive perspective: tell the student how things are supposed to work, then apply those principles to specific instances that the student may or may not be able to explore by themselves.  The inductive approach, as useful as it is, is hard to find in the pages of a book.
</para>
 
<para>
However, textbooks don't have to be this way.  I discovered this when I started to learn a computer program called SPICE.  It is a text-based piece of software intended to model circuits and provide analyses of voltage, current, frequency, etc.  Although nothing is quite as good as building real circuits to gain knowledge in electronics, computer simulation is an excellent alternative.  In learning how to use this powerful tool, I made a discovery: SPICE could be used within a textbook to present circuit simulations to allow students to "observe" the phenomena for themselves.  This way, the readers could learn the concepts inductively (by interpreting SPICE's output) as well as deductively (by interpreting my explanations).  Furthermore, in seeing SPICE used over and over again, they should be able to understand how to use it themselves, providing a perfectly safe means of experimentation on their own computers with circuit simulations of their own design.
</para>
 
<para>
Another advantage to including computer analyses in a textbook is the empirical verification it adds to the concepts presented.  Without demonstrations, the reader is left to take the author's statements on faith, trusting that what has been written is indeed accurate.  The problem with faith, of course, is that it is only as good as the authority in which it is placed and the accuracy of interpretation through which it is understood.  Authors, like all human beings, are liable to err and/or communicate poorly.  With demonstrations, however, the reader can immediately see for themselves that what the author describes is indeed true.  Demonstrations also serve to clarify the meaning of the text with concrete examples.
</para>
 
<para>
SPICE is introduced in the book early on, and hopefully in a gentle enough way that it doesn't create confusion.  For those wishing to learn more, a chapter in the Reference volume (volume V) contains an overview of SPICE with many example circuits.  There may be more flashy (graphic) circuit simulation programs in existence, but SPICE is free, a virtue complementing the charitable philosophy of this book very nicely.
</para>

</section>




<section>
<sectiontitle>Acknowledgements</sectiontitle>
 
<para>
First, I wish to thank my wife, whose patience during those many and long evenings (and weekends!) of typing has been extraordinary.
</para>
 
<para>
I also wish to thank those whose open-source software development efforts have made this endeavor all the more affordable and pleasurable.  The following is a list of various free computer software used to make this book, and the respective programmers:
</para>

<itemize>
<item><italic>GNU/Linux</italic> Operating System -- Linus Torvalds, Richard Stallman, and a host of others too numerous to mention.</item>
<item><italic>Vim</italic> text editor -- Bram Moolenaar and others.</item>
<item><italic>Xcircuit</italic> drafting program -- Tim Edwards.</item>
<item><italic>SPICE</italic> circuit simulation program -- too many contributors to mention.</item>
<item><italic>Nutmeg</italic> post-processor program for SPICE -- Wayne Christopher.</item>
<item><TeX> text processing system -- Donald Knuth and others.</item>
<item><italic>Texinfo</italic> document formatting system -- Free Software Foundation.</item>
<item><LaTeX> document formatting system -- Leslie Lamport and others.</item>
<item><italic>Gimp</italic> image manipulation program -- too many contributors to mention.</item>
</itemize>

<para>
Appreciation is also extended to Robert L. Boylestad, whose first edition of <italic>Introductory Circuit Analysis</italic> taught me more about electric circuits than any other book.  Other important texts in my electronics studies include the 1939 edition of <italic>The ``Radio'' Handbook</italic>, Bernard Grob's second edition of <italic>Introduction to Electronics I</italic>, and Forrest Mims' original <italic>Engineer's Notebook</italic>.
</para>
 
<para>
Thanks to the staff of the Bellingham Antique Radio Museum, who were generous enough to let me terrorize their establishment with my camera and flash unit.  Similar thanks to the Fluke Corporation in Everett, Washington, who not only let me photograph several pieces of equipment in their primary standards laboratory, but proved their excellent hosting skills to a large group of students and technical professionals one evening in November of 2001.
</para>
 
<para>
I wish to specifically thank Jeffrey Elkner and all those at Yorktown High School for being willing to host my book as part of their Open Book Project, and to make the first effort in contributing to its form and content.  Thanks also to David Sweet (website: <url>http://www.andamooka.org</url>) and Ben Crowell (website: <url>http://www.lightandmatter.com</url>) for providing encouragement, constructive criticism, and a wider audience for the online version of this book.
</para>
 
<para>
Thanks to Michael Stutz for drafting his Design Science License, to Richard Stallman for pioneering the concept of copyleft, and to Creative Commons for the CC BY License.
</para>
 
<para>
Last but certainly not least, many thanks to my parents and those teachers of mine who saw in me a desire to learn about electricity, and who kindled that flame into a passion for discovery and intellectual adventure.  I honor you by helping others as you have helped me.
</para>

<bigspace>

<para>
Tony Kuphaldt, January 2002
</para>

<bigspace>

<quotation>

<para>
<italic>"A candle loses nothing of its light when lighting another"</italic>
</para>

<para>
<bold>Kahlil Gibran</bold>
</para>

</quotation>


</section>

</chapter>

<pagebreak>

