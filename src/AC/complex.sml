
<chapter>
<chaptertitle>COMPLEX NUMBERS</chaptertitle>

<section>
<sectiontitle>Introduction</sectiontitle>

<para>
If I needed to describe the distance between two cities, I could provide an answer consisting of a single number in miles, kilometers, or some other unit of linear measurement.  However, if I were to describe how to travel from one city to another, I would have to provide more information than just the distance between those two cities; I would also have to provide information about the <italic>direction</italic> to travel, as well.
</para>

<index>Scalar number</index> 
<index>Number, scalar</index>

<para>
The kind of information that expresses a single dimension, such as linear distance, is called a <italic>scalar</italic> quantity in mathematics.  Scalar numbers are the kind of numbers you've used in most all of your mathematical applications so far.  The voltage produced by a battery, for example, is a scalar quantity.  So is the resistance of a piece of wire (ohms), or the current through it (amps).
</para>

<index>Impedance</index>

<para>
However, when we begin to analyze alternating current circuits, we find that quantities of voltage, current, and even resistance (called <italic>impedance</italic> in AC) are not the familiar one-dimensional quantities we're used to measuring in DC circuits.  Rather, these quantities, because they're dynamic (alternating in direction and amplitude), possess other dimensions that must be taken into account.  Frequency and phase shift are two of these dimensions that come into play.  Even with relatively simple AC circuits, where we're only dealing with a single frequency, we still have the dimension of phase shift to contend with in addition to the amplitude.
</para>

<index>Complex number</index>
<index>Number, complex</index>
 
<para>
In order to successfully analyze AC circuits, we need to work with mathematical objects and techniques capable of representing these multi-dimensional quantities.  Here is where we need to abandon scalar numbers for something better suited: <italic>complex numbers</italic>.  Just like the example of giving directions from one city to another, AC quantities in a single-frequency circuit have both amplitude (analogy: distance) and phase shift (analogy: direction).  A complex number is a single mathematical quantity able to express these two dimensions of amplitude and phase shift at once.
</para>

<index>Vector</index>

<para>
Complex numbers are easier to grasp when they're represented graphically.  If I draw a line with a certain length (magnitude) and angle (direction), I have a graphic representation of a complex number which is commonly known in physics as a <italic>vector</italic>: (Figure<ref>02025.png below</ref>) 
</para>

<image>02025.png<caption>A vector has both magnitude and direction.</caption></image> 

<para>
Like distances and directions on a map, there must be some common frame of reference for angle figures to have any meaning.  In this case, directly right is considered to be 0<superscript>o</superscript>, and angles are counted in a positive direction going counter-clockwise: (Figure<ref>02026.png below</ref>) 
</para>

<image>02026.png<caption>The vector compass</caption></image> 

<para>
The idea of representing a number in graphical form is nothing new.  We all learned this in grade school with the ``number line:'' (Figure<ref>02027.png below</ref>)
</para>

<image>02027.png<caption>Number line.</caption></image> 

<para>
We even learned how addition and subtraction works by seeing how lengths (magnitudes) stacked up to give a final answer: (Figure<ref>02028.png below</ref>)
</para>

<image>02028.png<caption>Addition on a ``number line''.</caption></image> 

<para>
Later, we learned that there were ways to designate the values <italic>between</italic> the whole numbers marked on the line.  These were fractional or decimal quantities: (Figure<ref>02029.png below</ref>)
</para>

<image>02029.png<caption>Locating a fraction on the ``number line''</caption></image> 

<para>
Later yet we learned that the number line could extend to the left of zero as well: (Figure<ref>02030.png below</ref>)
</para>

<image>02030.png<caption>``Number line'' shows both positive and negative numbers.</caption></image> 

<para>
These fields of numbers (whole, integer, rational, irrational, real, etc.) learned in grade school share a common trait: they're all <italic>one-dimensional</italic>.  The straightness of the number line illustrates this graphically.  You can move up or down the number line, but all ``motion'' along that line is restricted to a single axis (horizontal).  One-dimensional, scalar numbers are perfectly adequate for counting beads, representing weight, or measuring DC battery voltage, but they fall short of being able to represent something more complex like the distance <italic>and</italic> direction between two cities, or the amplitude <italic>and</italic> phase of an AC waveform.  To represent these kinds of quantities, we need multidimensional representations.  In other words, we need a number line that can point in different directions, and that's exactly what a vector is.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>scalar</italic> number is the type of mathematical object that people are used to using in everyday life: a one-dimensional quantity like temperature, length, weight, etc.</item>
<item>A <italic>complex number</italic> is a mathematical quantity representing two dimensions of magnitude and direction.</item>
<item>A <italic>vector</italic> is a graphical representation of a complex number.  It looks like an arrow, with a starting point, a tip, a definite length, and a definite direction.  Sometimes the word <italic>phasor</italic> is used in electrical applications where the angle of the vector represents phase shift between waveforms.</item>
</itemize>

</section>







<section>
<sectiontitle>Vectors and AC waveforms</sectiontitle>

<para>
OK, so how exactly can we represent AC quantities of voltage or current in the form of a vector?  The length of the vector represents the magnitude (or amplitude) of the waveform, like this: (Figure<ref>02031.png below</ref>)
</para>

<image>02031.png<caption>Vector length represents AC voltage magnitude.</caption></image> 

<index>Vector amplitude</index>
<index>Amplitude, vector</index>
<index>Vector phase shift</index>
<index>Phase shift, vector</index>

<para>
The greater the amplitude of the waveform, the greater the length of its corresponding vector.  The angle of the vector, however, represents the phase shift in degrees between the waveform in question and another waveform acting as a ``reference'' in time.  Usually, when the phase of a waveform in a circuit is expressed, it is referenced to the power supply voltage waveform (arbitrarily stated to be ``at'' 0<superscript>o</superscript>).  Remember that phase is always a <italic>relative</italic> measurement between two waveforms rather than an absolute property. (Figure<ref>02032.png below</ref>)
<comment>split for double ref</comment>
 (Figure<ref>02038.png below</ref>)
</para>

<image>02032.png<caption>Vector angle is the phase with respect to another waveform.</caption></image> 

<para>

</para>

<bigspace>

<image>02038.png<caption>Phase shift between waves and vector phase angle</caption></image> 

<para>
The greater the phase shift in degrees between two waveforms, the greater the angle difference between the corresponding vectors.  Being a relative measurement, like voltage, phase shift (vector angle) only has meaning in reference to some standard waveform.  Generally this ``reference'' waveform is the main AC power supply voltage in the circuit.  If there is more than one AC voltage source, then one of those sources is arbitrarily chosen to be the phase reference for all other measurements in the circuit.  
</para>

<index>Ground</index>

<para>
This concept of a reference point is not unlike that of the ``ground'' point in a circuit for the benefit of voltage reference.  With a clearly defined point in the circuit declared to be ``ground,'' it becomes possible to talk about voltage ``on'' or ``at'' single points in a circuit, being understood that those voltages (always relative between <italic>two</italic> points) are referenced to ``ground.''  Correspondingly, with a clearly defined point of reference for phase it becomes possible to speak of voltages and currents in an AC circuit having definite phase angles.  For example, if the current in an AC circuit is described as ``24.3 milliamps at -64 degrees,'' it means that the current waveform has an amplitude of 24.3 mA, and it lags 64<superscript>o</superscript> behind the reference waveform, usually assumed to be the main source voltage waveform.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>When used to describe an AC quantity, the length of a vector represents the amplitude of the wave while the angle of a vector represents the phase angle of the wave relative to some other (reference) waveform.</item>
</itemize>

</section>








<section>
<sectiontitle>Simple vector addition</sectiontitle>

<para>
Remember that vectors are mathematical objects just like numbers on a number line: they can be added, subtracted, multiplied, and divided.  Addition is perhaps the easiest vector operation to visualize, so we'll begin with that.  If vectors with common angles are added, their magnitudes (lengths) add up just like regular scalar quantities:  (Figure<ref>02033.png below</ref>)
</para>

<image>02033.png<caption>Vector magnitudes add like scalars for a common angle. </caption></image> 

<para>
Similarly, if AC voltage sources with the same phase angle are connected together in series, their voltages add just as you might expect with DC batteries: (Figure<ref>02034.png below</ref>)
</para>

<image>02034.png<caption>``In phase'' AC voltages add like DC battery voltages.</caption></image> 

<para>
Please note the (+) and (-) polarity marks next to the leads of the two AC sources.  Even though we know AC doesn't have ``polarity'' in the same sense that DC does, these marks are essential to knowing how to reference the given phase angles of the voltages.  This will become more apparent in the next example.
</para>

<para>
If vectors directly opposing each other (180<superscript>o</superscript> out of phase) are added together, their magnitudes (lengths) subtract just like positive and negative scalar quantities subtract when added: (Figure<ref>02035.png below</ref>)
</para>

<image>02035.png<caption>Directly opposing vector magnitudes subtract.</caption></image> 

<para>
Similarly, if opposing AC voltage sources are connected in series, their voltages subtract as you might expect with DC batteries connected in an opposing fashion: (Figure<ref>02036.png below</ref>)
</para>

<image>02036.png<caption>Opposing AC voltages subtract like opposing battery voltages.</caption></image> 

<para>
Determining whether or not these voltage sources are opposing each other requires an examination of their polarity markings <italic>and</italic> their phase angles.  Notice how the polarity markings in the above diagram seem to indicate additive voltages (from left to right, we see - and + on the 6 volt source, - and + on the 8 volt source).  Even though these polarity markings would normally indicate an <italic>additive</italic> effect in a DC circuit (the two voltages working together to produce a greater total voltage), in this AC circuit they're actually pushing in opposite directions because one of those voltages has a phase angle of 0<superscript>o</superscript> and the other a phase angle of 180<superscript>o</superscript>.  The result, of course, is a total voltage of 2 volts.
</para>

<para>
We could have just as well shown the opposing voltages subtracting in series like this: (Figure<ref>02267.png below</ref>)
</para>

<image>02267.png<caption>Opposing voltages in spite of equal phase angles.</caption></image> 

<para>
Note how the polarities appear to be opposed to each other now, due to the reversal of wire connections on the 8 volt source.  Since both sources are described as having equal phase angles (0<superscript>o</superscript>), they truly are opposed to one another, and the overall effect is the same as the former scenario with ``additive'' polarities and differing phase angles: a total voltage of only 2 volts. (Figure<ref>02037.png below</ref>)
</para>

<image>02037.png<caption>Just as there are two ways to express the phase of the sources, there are two ways to express the resultant their sum.</caption></image> 

<para>
The resultant voltage can be expressed in two different ways: 2 volts at 180<superscript>o</superscript> with the (-) symbol on the left and the (+) symbol on the right, or 2 volts at 0<superscript>o</superscript> with the (+) symbol on the left and the (-) symbol on the right.  A reversal of wires from an AC voltage source is the same as phase-shifting that source by 180<superscript>o</superscript>. (Figure<ref>02266.png below</ref>)
</para>

<image>02266.png<caption>Example of equivalent voltage sources.</caption></image> 

</section>






<section>
<sectiontitle>Complex vector addition</sectiontitle>

<para>
If vectors with uncommon angles are added, their magnitudes (lengths) add up quite differently than that of scalar magnitudes: (Figure<ref>02039.png below</ref>)
</para>

<image>02039.png<caption>Vector magnitudes do not directly add for unequal angles.</caption></image> 

<para>
If two AC voltages -- 90<superscript>o</superscript> out of phase -- are added together by being connected in series, their voltage magnitudes do not directly add or subtract as with scalar voltages in DC.  Instead, these voltage quantities are complex quantities, and just like the above vectors, which add up in a trigonometric fashion, a 6 volt source at 0<superscript>o</superscript> added to an 8 volt source at 90<superscript>o</superscript> results in 10 volts at a phase angle of 53.13<superscript>o</superscript>: (Figure<ref>02040.png below</ref>)
</para>

<image>02040.png<caption>The 6V and 8V sources add to 10V with the help of trigonometry. </caption></image> 

<para>
Compared to DC circuit analysis, this is very strange indeed.  Note that it is possible to obtain voltmeter indications of 6 and 8 volts, respectively, across the two AC voltage sources, yet only read 10 volts for a total voltage!
</para>

<para>
There is no suitable DC analogy for what we're seeing here with two AC voltages slightly out of phase.  DC voltages can only directly aid or directly oppose, with nothing in between.  With AC, two voltages can be aiding or opposing one another <italic>to any degree</italic> between fully-aiding and fully-opposing, inclusive.  Without the use of vector (complex number) notation to describe AC quantities, it would be <italic>very</italic> difficult to perform mathematical calculations for AC circuit analysis. 
</para>

<para>
In the next section, we'll learn how to represent vector quantities in symbolic rather than graphical form.  Vector and triangle diagrams suffice to illustrate the general concept, but more precise methods of symbolism must be used if any serious calculations are to be performed on these quantities.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>DC voltages can only either directly aid or directly oppose each other when connected in series.  AC voltages may aid or oppose <italic>to any degree</italic> depending on the phase shift between them.</item>
</itemize>

</section>






<section>
<sectiontitle>Polar and rectangular notation</sectiontitle>

<index>Polar notation</index>
<index>Notation, polar</index>
<index>Rectangular notation</index>
<index>Notation, rectangular</index>

<para>
In order to work with these complex numbers without drawing vectors, we first need some kind of standard mathematical notation.  There are two basic forms of complex number notation: <italic>polar</italic> and <italic>rectangular</italic>.
</para>

<index>Vector length</index>
<index>Vector magnitude</index>
<index>Vector modulus</index>
<index>Modulus. vector</index>
<index>Vector, absolute value</index>
<index>Absolute value, vector</index>
<index>Vector angle</index>
<index>Angle, vector</index>

<para>
Polar form is where a complex number is denoted by the <italic>length</italic> (otherwise known as the <italic>magnitude</italic>, <italic>absolute value</italic>, or <italic>modulus</italic>) and the <italic>angle</italic> of its vector (usually denoted by an angle symbol that looks like this: <angle>).  To use the map analogy, polar notation for the vector from New York City to San Diego would be something like ``2400 miles, southwest.''  Here are two examples of vectors and their polar notations: (Figure<ref>02041.png below</ref>)
</para>

<image>02041.png<caption>Vectors with polar notations.</caption></image> 

<para>
Standard orientation for vector angles in AC circuit calculations defines 0<superscript>o</superscript> as being to the right (horizontal), making 90<superscript>o</superscript> straight up, 180<superscript>o</superscript> to the left, and 270<superscript>o</superscript> straight down.  Please note that vectors angled ``down'' can have angles represented in polar form as positive numbers in excess of 180, or negative numbers less than 180.  For example, a vector angled <angle> 270<superscript>o</superscript> (straight down) can also be said to have an angle of -90<superscript>o</superscript>. (Figure<ref>02026a.png below</ref>) The above vector on the right (7.81 <angle> 230.19<superscript>o</superscript>) can also be denoted as 7.81 <angle> -129.81<superscript>o</superscript>. 
</para>

<image>02026.png<caption>The vector compass</caption><label>02026a.png</label></image> 

<para>
Rectangular form, on the other hand, is where a complex number is denoted by its respective horizontal and vertical components.  In essence, the angled vector is taken to be the hypotenuse of a right triangle, described by the lengths of the adjacent and opposite sides.  Rather than describing a vector's length and direction by denoting magnitude and angle, it is described in terms of ``how far left/right'' and ``how far up/down.''  
</para>

<index>i, imaginary operator</index>
<index>j, imaginary operator</index>

<para>
These two dimensional figures (horizontal and vertical) are symbolized by two numerical figures.  In order to distinguish the horizontal and vertical dimensions from each other, the vertical is prefixed with a lower-case ``i'' (in pure mathematics) or ``j'' (in electronics).  These lower-case letters do not represent a physical variable (such as instantaneous current, also symbolized by a lower-case letter ``i''), but rather are mathematical <italic>operators</italic> used to distinguish the vector's vertical component from its horizontal component.  As a complete complex number, the horizontal and vertical quantities are written as a sum: (Figure<ref>02042.png below</ref>)
</para>

<image>02042.png<caption>In ``rectangular'' form the vector's length and direction are denoted in terms of its horizontal and vertical span, the first number representing the the horizontal (``real'') and the second number (with the ``j'' prefix) representing the vertical (``imaginary'') dimensions.</caption></image> 

<para>

</para>



<index>Real number</index>
<index>Imaginary number</index>
<index>Number, real</index>
<index>Number, imaginary</index>

<para>
The horizontal component is referred to as the <italic>real</italic> component, since that dimension is compatible with normal, scalar (``real'') numbers.  The vertical component is referred to as the <italic>imaginary</italic> component, since that dimension lies in a different direction, totally alien to the scale of the real numbers.  (Figure<ref>02043.png below</ref>)
</para>

<image>02043.png<caption>Vector compass showing real and imaginary axes</caption></image> 

<para>
The ``real'' axis of the graph corresponds to the familiar number line we saw earlier: the one with both positive and negative values on it.  The ``imaginary'' axis of the graph corresponds to another number line situated at 90<superscript>o</superscript> to the ``real'' one.  Vectors being two-dimensional things, we must have a two-dimensional ``map'' upon which to express them, thus the two number lines perpendicular to each other: (Figure<ref>02044.png below</ref>)
</para>

<image>02044.png<caption>Vector compass with real and imaginary (``j'') number lines.</caption></image> 

<para>
Either method of notation is valid for complex numbers.  The primary reason for having two methods of notation is for ease of longhand calculation, rectangular form lending itself to addition and subtraction, and polar form lending itself to multiplication and division.
</para>

<para>
Conversion between the two notational forms involves simple trigonometry.  To convert from polar to rectangular, find the real component by multiplying the polar magnitude by the cosine of the angle, and the imaginary component by multiplying the polar magnitude by the sine of the angle.  This may be understood more readily by drawing the quantities as sides of a right triangle, the hypotenuse of the triangle representing the vector itself (its length and angle with respect to the horizontal constituting the polar form), the horizontal and vertical sides representing the ``real'' and ``imaginary'' rectangular components, respectively: (Figure<ref>02045.png below</ref>)
</para>

<image>02045.png<caption>Magnitude vector in terms of real (4) and imaginary (j3) components.</caption></image> 

<para>

</para>

<bigspace>

<image>12005.png</image> 

<index>Pythagorean Theorem</index>
<index>Theorem, Pythagorean</index>

<para>
To convert from rectangular to polar, find the polar magnitude through the use of the Pythagorean Theorem (the polar magnitude is the hypotenuse of a right triangle, and the real and imaginary components are the adjacent and opposite sides, respectively), and the angle by taking the arctangent of the imaginary component divided by the real component:
</para>

<image>12006.png</image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Polar</italic> notation denotes a complex number in terms of its vector's length and angular direction from the starting point.  Example: fly 45 miles <angle> 203<superscript>o</superscript> (West by Southwest).</item>
<item><italic>Rectangular</italic> notation denotes a complex number in terms of its horizontal and vertical dimensions.  Example: drive 41 miles West, then turn and drive 18 miles South.</item>
<item>In rectangular notation, the first quantity is the ``real'' component (horizontal dimension of vector) and the second quantity is the ``imaginary'' component (vertical dimension of vector).  The imaginary component is preceded by a lower-case ``j,'' sometimes called the <italic>j operator</italic>.</item>
<item>Both polar and rectangular forms of notation for a complex number can be related graphically in the form of a right triangle, with the hypotenuse representing the vector itself (polar form: hypotenuse length = magnitude; angle with respect to horizontal side = angle), the horizontal side representing the rectangular ``real'' component, and the vertical side representing the rectangular ``imaginary'' component.</item>
</itemize>

</section>







<section>
<sectiontitle>Complex number arithmetic</sectiontitle>

<index>Complex number arithmetic</index>
<index>Arithmetic, with complex numbers</index>

<para>
Since complex numbers are legitimate mathematical entities, just like scalar numbers, they can be added, subtracted, multiplied, divided, squared, inverted, and such, just like any other kind of number.  Some scientific calculators are programmed to directly perform these operations on two or more complex numbers, but these operations can also be done ``by hand.''  This section will show you how the basic operations are performed.  It is <italic>highly</italic> recommended that you equip yourself with a scientific calculator capable of performing arithmetic functions easily on complex numbers.  It will make your study of AC circuit much more pleasant than if you're forced to do all calculations the longer way.
</para>

<para>
Addition and subtraction with complex numbers in rectangular form is easy.  For addition, simply add up the real components of the complex numbers to determine the real component of the sum, and add up the imaginary components of the complex numbers to determine the imaginary component of the sum:
</para>

<image>12007.png</image> 

<para>
When subtracting complex numbers in rectangular form, simply subtract the real component of the second complex number from the real component of the first to arrive at the real component of the difference, and subtract the imaginary component of the second complex number from the imaginary component of the first to arrive the imaginary component of the difference:
</para>

<image>12008.png</image> 

<para>
For longhand multiplication and division, polar is the favored notation to work with.  When multiplying complex numbers in polar form, simply <italic>multiply</italic> the polar magnitudes of the complex numbers to determine the polar magnitude of the product, and <italic>add</italic> the angles of the complex numbers to determine the angle of the product:
</para>

<image>12009.png</image> 

<para>
Division of polar-form complex numbers is also easy: simply divide the polar magnitude of the first complex number by the polar magnitude of the second complex number to arrive at the polar magnitude of the quotient, and subtract the angle of the second complex number from the angle of the first complex number to arrive at the angle of the quotient:
</para>

<image>12010.png</image> 

<para>
To obtain the reciprocal, or ``invert'' (1/x), a complex number, simply divide the number (in polar form) into a scalar value of 1, which is nothing more than a complex number with no imaginary component (angle = 0):
</para>

<image>12011.png</image> 

<index>Hyperbolic function, trigonometry</index>

<para>
These are the basic operations you will need to know in order to manipulate complex numbers in the analysis of AC circuits.  Operations with complex numbers are by no means limited just to addition, subtraction, multiplication, division, and inversion, however.  Virtually any arithmetic operation that can be done with scalar numbers can be done with complex numbers, including powers, roots, solving simultaneous equations with complex coefficients, and even trigonometric functions (although this involves a whole new perspective in trigonometry called <italic>hyperbolic functions</italic> which is well beyond the scope of this discussion).  Be sure that you're familiar with the basic arithmetic operations of addition, subtraction, multiplication, division, and inversion, and you'll have little trouble with AC circuit analysis.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>To add complex numbers in rectangular form, add the real components and add the imaginary components.  Subtraction is similar.</item>
<item>To multiply complex numbers in polar form, multiply the magnitudes and add the angles.  To divide, divide the magnitudes and subtract one angle from the other.</item>
</itemize>

</section>






<section>
<sectiontitle>More on AC "polarity"</sectiontitle>

<index>Voltage ``polarity,'' AC</index> 
<index>Polarity, AC</index>
 
<para>
Complex numbers are useful for AC circuit analysis because they provide a convenient method of symbolically denoting phase shift between AC quantities like voltage and current.  However, for most people the equivalence between abstract vectors and real circuit quantities is not an easy one to grasp.  Earlier in this chapter we saw how AC voltage sources are given voltage figures in complex form (magnitude <italic>and</italic> phase angle), as well as polarity markings.  Being that alternating current has no set ``polarity'' as direct current does, these polarity markings and their relationship to phase angle tends to be confusing.  This section is written in the attempt to clarify some of these issues.
</para>

<para>
Voltage is an inherently <italic>relative</italic> quantity.  When we measure a voltage, we have a choice in how we connect a voltmeter or other voltage-measuring instrument to the source of voltage, as there are two points between which the voltage exists, and two test leads on the instrument with which to make connection.  In DC circuits, we denote the polarity of voltage sources and voltage drops explicitly, using ``+'' and ``-'' symbols, and use color-coded meter test leads (red and black).  If a digital voltmeter indicates a negative DC voltage, we know that its test leads are connected ``backward'' to the voltage (red lead connected to the ``-'' and black lead to the ``+'').
</para>

<para>
Batteries have their polarity designated by way of intrinsic symbology: the short-line side of a battery is always the negative (-) side and the long-line side always the positive (+): (Figure<ref>02348.png below</ref>)
</para>

<image>02348.png<caption>Conventional battery polarity.</caption></image> 

<para>
Although it would be mathematically correct to represent a battery's voltage as a negative figure with reversed polarity markings, it would be decidedly unconventional: (Figure<ref>02349.png below</ref>)
</para>

<image>02349.png<caption>Decidedly unconventional polarity marking.</caption></image> 

<para>
Interpreting such notation might be easier if the ``+'' and ``-'' polarity markings were viewed as reference points for voltmeter test leads, the ``+'' meaning ``red'' and the ``-'' meaning ``black.''  A voltmeter connected to the above battery with red lead to the bottom terminal and black lead to the top terminal would indeed indicate a negative voltage (-6 volts).  Actually, this form of notation and interpretation is not as unusual as you might think: it is commonly encountered in problems of DC network analysis where ``+'' and ``-'' polarity marks are initially drawn according to educated guess, and later interpreted as correct or ``backward'' according to the mathematical sign of the figure calculated.
</para>

<para>
In AC circuits, though, we don't deal with ``negative'' quantities of voltage.  Instead, we describe to what degree one voltage aids or opposes another by <italic>phase</italic>: the time-shift between two waveforms.  We never describe an AC voltage as being negative in sign, because the facility of polar notation allows for vectors pointing in an opposite direction.  If one AC voltage directly opposes another AC voltage, we simply say that one is 180<superscript>o</superscript> out of phase with the other.
</para>

<para>
Still, voltage is relative between two points, and we have a choice in how we might connect a voltage-measuring instrument between those two points.  The mathematical sign of a DC voltmeter's reading has meaning only in the context of its test lead connections: which terminal the red lead is touching, and which terminal the black lead is touching.  Likewise, the phase angle of an AC voltage has meaning only in the context of knowing which of the two points is considered the ``reference'' point.  Because of this fact, ``+'' and ``-'' polarity marks are often placed by the terminals of an AC voltage in schematic diagrams to give the stated phase angle a frame of reference.
</para>

<para>
Let's review these principles with some graphical aids.  First, the principle of relating test lead connections to the mathematical sign of a DC voltmeter indication: (Figure<ref>02268.png below</ref>)
</para>

<image>02268.png<caption>Test lead colors provide a frame of reference for interpreting the sign (+ or -) of the meter's indication.</caption></image> 

<para>
The mathematical sign of a digital DC voltmeter's display has meaning only in the context of its test lead connections.  Consider the use of a DC voltmeter in determining whether or not two DC voltage sources are aiding or opposing each other, assuming that both sources are unlabeled as to their polarities.  Using the voltmeter to measure across the first source: (Figure<ref>02269.png below</ref>)
</para>

<image>02269.png<caption>(+) Reading indicates black is (-), red is (+).</caption></image> 

<para>
This first measurement of +24 across the left-hand voltage source tells us that the black lead of the meter really is touching the negative side of voltage source #1, and the red lead of the meter really is touching the positive.  Thus, we know source #1 is a battery facing in this orientation: (Figure<ref>02271.png below</ref>)
</para>

<image>02271.png<caption>24V source is polarized (-) to (+).</caption></image> 

<para>
Measuring the other unknown voltage source: (Figure<ref>02270.png below</ref>)
</para>

<image>02270.png<caption>(-) Reading indicates black is (+), red is (-).</caption></image> 

<para>
This second voltmeter reading, however, is a <italic>negative</italic> (-) 17 volts, which tells us that the black test lead is actually touching the positive side of voltage source #2, while the red test lead is actually touching the negative.  Thus, we know that source #2 is a battery facing in the <italic>opposite</italic> direction: (Figure<ref>02272.png below</ref>)
</para>

<image>02272.png<caption>17V source is polarized (+) to (-)</caption></image> 

<para>
It should be obvious to any experienced student of DC electricity that these two batteries are opposing one another.  By definition, opposing voltages <italic>subtract</italic> from one another, so we subtract 17 volts from 24 volts to obtain the total voltage across the two: 7 volts. 
</para>

<para>
We could, however, draw the two sources as nondescript boxes, labeled with the exact voltage figures obtained by the voltmeter, the polarity marks indicating voltmeter test lead placement: (Figure<ref>02350.png below</ref>)
</para>

<image>02350.png<caption>Voltmeter readings as read from meters.</caption></image> 

<para>
According to this diagram, the polarity marks (which indicate meter test lead placement) indicate the sources <italic>aiding</italic> each other.  By definition, aiding voltage sources <italic>add</italic> with one another to form the total voltage, so we add 24 volts to -17 volts to obtain 7 volts: still the correct answer.  If we let the polarity markings guide our decision to either add or subtract voltage figures -- whether those polarity markings represent the <italic>true</italic> polarity or just the meter test lead orientation -- and include the mathematical signs of those voltage figures in our calculations, the result will always be correct.  Again, the polarity markings serve as <italic>frames of reference</italic> to place the voltage figures' mathematical signs in proper context.
</para>

<para>
The same is true for AC voltages, except that <italic>phase angle</italic> substitutes for mathematical <italic>sign</italic>.  In order to relate multiple AC voltages at different phase angles to each other, we need polarity markings to provide frames of reference for those voltages' phase angles. (Figure<ref>02273.png below</ref>)
</para>

<para>
Take for example the following circuit:
</para>

<image>02273.png<caption>Phase angle substitutes for <plusminus> sign.</caption></image> 

<para>
The polarity markings show these two voltage sources aiding each other, so to determine the total voltage across the resistor we must <italic>add</italic> the voltage figures of 10 V <angle> 0<superscript>o</superscript> and 6 V <angle> 45<superscript>o</superscript> together to obtain 14.861 V <angle> 16.59<superscript>o</superscript>.  However, it would be perfectly acceptable to represent the 6 volt source as 6 V <angle> 225<superscript>o</superscript>, with a reversed set of polarity markings, and still arrive at the same total voltage: (Figure<ref>02274.png below</ref>)
</para>

<image>02274.png<caption>Reversing the voltmeter leads on the 6V source changes the phase angle by 180<superscript>o</superscript>.</caption></image> 

<para>
6 V <angle> 45<superscript>o</superscript> with negative on the left and positive on the right is exactly the same as 6 V <angle> 225<superscript>o</superscript> with positive on the left and negative on the right: the reversal of polarity markings perfectly complements the addition of 180<superscript>o</superscript> to the phase angle designation: (Figure<ref>02275.png below</ref>)
</para>

<image>02275.png<caption>Reversing polarity adds 180<superscript>o</superscript>to phase angle</caption></image> 

<para>
Unlike DC voltage sources, whose symbols intrinsically define polarity by means of short and long lines, AC voltage symbols have no intrinsic polarity marking.  Therefore, any polarity marks must be included as additional symbols on the diagram, and there is no one ``correct'' way in which to place them.  They must, however, correlate with the given phase angle to represent the true phase relationship of that voltage with other voltages in the circuit.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Polarity markings are sometimes given to AC voltages in circuit schematics in order to provide a frame of reference for their phase angles.</item>
</itemize>

</section>








<section>
<sectiontitle>Some examples with AC circuits</sectiontitle>

<index>Ohm's Law</index>
<index>Joule's Law</index>

<para>
Let's connect three AC voltage sources in series and use complex numbers to determine additive voltages.  All the rules and laws learned in the study of DC circuits apply to AC circuits as well (Ohm's Law, Kirchhoff's Laws, network analysis methods), with the exception of power calculations (Joule's Law).  The only qualification is that all variables <italic>must</italic> be expressed in complex form, taking into account phase as well as magnitude, and all voltages and currents must be of the same frequency (in order that their phase relationships remain constant). (Figure<ref>02046.png below</ref>)
</para>

<image>02046.png<caption>KVL allows addition of complex voltages.</caption></image> 

<index>Kirchhoff's Voltage Law</index>
<index>KVL</index>

<para>
The polarity marks for all three voltage sources are oriented in such a way that their stated voltages should add to make the total voltage across the load resistor.  Notice that although magnitude and phase angle is given for each AC voltage source, no frequency value is specified.  If this is the case, it is assumed that all frequencies are equal, thus meeting our qualifications for applying DC rules to an AC circuit (all figures given in complex form, all of the same frequency).  The setup of our equation to find total voltage appears as such:
</para>

<image>12012.png</image> 

<para>
Graphically, the vectors add up as shown in Figure<ref>02047.png below</ref>.
</para>

<image>02047.png<caption>Graphic addition of vector voltages.</caption></image> 

<para>
The sum of these vectors will be a resultant vector originating at the starting point for the 22 volt vector (dot at upper-left of diagram) and terminating at the ending point for the 15 volt vector (arrow tip at the middle-right of the diagram): (Figure<ref>02048.png below</ref>)
</para>

<image>02048.png<caption>Resultant is equivalent to the vector sum of the three original voltages.</caption></image> 

<para>
In order to determine what the resultant vector's magnitude and angle are without resorting to graphic images, we can convert each one of these polar-form complex numbers into rectangular form and add.  Remember, we're <italic>adding</italic> these figures together because the polarity marks for the three voltage sources are oriented in an additive manner:
</para>

<image>12013.png</image> 

<index>SPICE</index>

<para>
In polar form, this equates to 36.8052 volts <angle> -20.5018<superscript>o</superscript>.  What this means in real terms is that the voltage measured across these three voltage sources will be 36.8052 volts, lagging the 15 volt (0<superscript>o</superscript> phase reference) by 20.5018<superscript>o</superscript>.  A voltmeter connected across these points in a real circuit would only indicate the polar magnitude of the voltage (36.8052 volts), not the angle.  An oscilloscope could be used to display two voltage waveforms and thus provide a phase shift measurement, but not a voltmeter.  The same principle holds true for AC ammeters: they indicate the polar magnitude of the current, not the phase angle.
</para>

<para>
This is extremely important in relating calculated figures of voltage and current to real circuits.  Although rectangular notation is convenient for addition and subtraction, and was indeed the final step in our sample problem here, it is not very applicable to practical measurements.  Rectangular figures must be converted to polar figures (specifically polar <italic>magnitude</italic>) before they can be related to actual circuit measurements.
</para>

<para>
We can use SPICE to verify the accuracy of our results.  In this test circuit, the 10 k<OMEGA> resistor value is quite arbitrary.  It's there so that SPICE does not declare an open-circuit error and abort analysis.  Also, the choice of frequencies for the simulation (60 Hz) is quite arbitrary, because resistors respond uniformly for all frequencies of AC voltage and current.  There are other components (notably capacitors and inductors) which do not respond uniformly to different frequencies, but that is another subject! (Figure<ref>02049.png below</ref>)
</para>

<image>02049.png<caption>Spice circuit schematic.</caption></image> 


<table>
<literal>
ac voltage addition   
v1 1 0 ac 15 0 sin      
v2 2 1 ac 12 35 sin     
v3 3 2 ac 22 -64 sin    
r1 3 0 10k      
.ac lin 1 60 60            I'm using a frequency of 60 Hz
.print ac v(3,0) vp(3,0)   as a default value
.end    
</literal>
</table>


<table>
<literal>
freq          v(3)        vp(3)       
6.000E+01     3.681E+01  -2.050E+01
</literal>
</table>

<para>
Sure enough, we get a total voltage of 36.81 volts <angle> -20.5<superscript>o</superscript> (with reference to the 15 volt source, whose phase angle was arbitrarily stated at zero degrees so as to be the ``reference'' waveform).  
</para>

<para>
At first glance, this is counter-intuitive.  How is it possible to obtain a total voltage of just over 36 volts with 15 volt, 12 volt, and 22 volt supplies connected in series?  With DC, this would be impossible, as voltage figures will either directly add or subtract, depending on polarity.  But with AC, our ``polarity'' (phase shift) can vary anywhere in between full-aiding and full-opposing, and this allows for such paradoxical summing.
</para>

<para>
What if we took the same circuit and reversed one of the supply's connections?  Its contribution to the total voltage would then be the opposite of what it was before: (Figure<ref>02050.png below</ref>)
</para>

<image>02050.png<caption>Polarity of E<subscript>2</subscript> (12V) is reversed.</caption></image> 

<para>
Note how the 12 volt supply's phase angle is still referred to as 35<superscript>o</superscript>, even though the leads have been reversed.  Remember that the phase angle of any voltage drop is stated in reference to its noted polarity.  Even though the angle is still written as 35<superscript>o</superscript>, the vector will be drawn 180<superscript>o</superscript> opposite of what it was before: (Figure<ref>02051.png below</ref>)
</para>

<image>02051.png<caption>Direction of E<subscript>2</subscript> is reversed.</caption></image> 

<index>Resultant vector</index>
<index>Vector sum</index>

<para>
The resultant (sum) vector should begin at the upper-left point (origin of the 22 volt vector) and terminate at the right arrow tip of the 15 volt vector: (Figure<ref>02052.png below</ref>)
</para>

<image>02052.png<caption>Resultant is vector sum of voltage sources. </caption></image> 

<index>Voltage ``polarity,'' AC</index>
<index>Polarity, AC</index>

<para>
The connection reversal on the 12 volt supply can be represented in two different ways in polar form: by an addition of 180<superscript>o</superscript> to its vector angle (making it 12 volts <angle> 215<superscript>o</superscript>), or a reversal of sign on the magnitude (making it -12 volts <angle> 35<superscript>o</superscript>).  Either way, conversion to rectangular form yields the same result:
</para>

<image>12014.png</image> 

<para>
The resulting addition of voltages in rectangular form, then:
</para>

<image>12015.png</image> 

<para>
In polar form, this equates to 30.4964 V <angle> -60.9368<superscript>o</superscript>.  Once again, we will use SPICE to verify the results of our calculations:
</para>


<table>
<literal>
ac voltage addition 
v1 1 0 ac 15 0 sin      
v2 1 2 ac 12 35 sin    Note the reversal of node numbers 2 and 1     
v3 3 2 ac 22 -64 sin   to simulate the swapping of connections
r1 3 0 10k      
.ac lin 1 60 60 
.print ac v(3,0) vp(3,0)
.end    
</literal>
</table>


<table>
<literal>
freq          v(3)        vp(3)       
6.000E+01     3.050E+01  -6.094E+01
</literal>
</table>


<itemize>
<item><bold>REVIEW:</bold></item>
<item>All the laws and rules of DC circuits apply to AC circuits, with the exception of power calculations (Joule's Law), so long as all values are expressed and manipulated in complex form, and all voltages and currents are at the same frequency.</item>
<item>When reversing the direction of a vector (equivalent to reversing the polarity of an AC voltage source in relation to other voltage sources), it can be expressed in either of two different ways: adding 180<superscript>o</superscript> to the angle, or reversing the sign of the magnitude.</item>
<item>Meter measurements in an AC circuit correspond to the <italic>polar magnitudes</italic> of calculated values.  Rectangular expressions of complex quantities in an AC circuit have no direct, empirical equivalent, although they are convenient for performing addition and subtraction, as Kirchhoff's Voltage and Current Laws require.</item>
</itemize>

</section>




<section>
<sectiontitle>Contributors</sectiontitle>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Jason Starck</bold> (June 2000): HTML document formatting, which led to a much better-looking second edition.
</para>

</section>


</chapter>

<pagebreak>

