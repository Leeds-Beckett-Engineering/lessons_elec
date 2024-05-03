
<chapter>
<chaptertitle>DIVIDER CIRCUITS AND KIRCHHOFF'S LAWS</chaptertitle>

<section>
<sectiontitle>Voltage divider circuits</sectiontitle>

<index>Voltage divider</index>

<para>
Let's analyze a simple series circuit, determining the voltage drops across individual resistors:
</para>
 
<image>00106.png</image>
 
<para>

</para>

<bigspace>

<image>10096.png</image>

<para>
From the given values of individual resistances, we can determine a total circuit resistance, knowing that resistances add in series:
</para>
 
<image>10097.png</image>

<para>
From here, we can use Ohm's Law (I=E/R) to determine the total current, which we know will be the same as each resistor current, currents being equal in all parts of a series circuit:
</para>
 
<image>10098.png</image>

<para>
Now, knowing that the circuit current is 2 mA, we can use Ohm's Law (E=IR) to calculate voltage across each resistor:
</para>
 
<image>10099.png</image>

<para>
It should be apparent that the voltage drop across each resistor is proportional to its resistance, given that the current is the same through all resistors.  Notice how the voltage across R<subscript>2</subscript> is double that of the voltage across R<subscript>1</subscript>, just as the resistance of R<subscript>2</subscript> is double that of R<subscript>1</subscript>.
</para>
 
<para>
If we were to change the total voltage, we would find this proportionality of voltage drops remains constant:
</para>
 
<image>10100.png</image>

<para>
The voltage across R<subscript>2</subscript> is still exactly twice that of R<subscript>1</subscript>'s drop, despite the fact that the source voltage has changed.  The proportionality of voltage drops (ratio of one to another) is strictly a function of resistance values.
</para>
 
<para>
With a little more observation, it becomes apparent that the voltage drop across each resistor is also a fixed proportion of the supply voltage.  The voltage across R<subscript>1</subscript>, for example, was 10 volts when the battery supply was 45 volts.  When the battery voltage was increased to 180 volts (4 times as much), the voltage drop across R<subscript>1</subscript> also increased by a factor of 4 (from 10 to 40 volts).  The <italic>ratio</italic> between R<subscript>1</subscript>'s voltage drop and total voltage, however, did not change:
</para>
 
<image>10101.png</image>

<para>
Likewise, none of the other voltage drop ratios changed with the increased supply voltage either:
</para>
 
<image>10102.png</image>

<index>Voltage divider formula</index>

<para>
For this reason a series circuit is often called a <italic>voltage divider</italic> for its ability to proportion -- or divide -- the total voltage into fractional portions of constant ratio.  With a little bit of algebra, we can derive a formula for determining series resistor voltage drop given nothing more than total voltage, individual resistance, and total resistance:
</para>
 
<image>10103.png</image>

<para>
The ratio of individual resistance to total resistance is the same as the ratio of individual voltage drop to total supply voltage in a voltage divider circuit.  This is known as the <italic>voltage divider formula</italic>, and it is a short-cut method for determining voltage drop in a series circuit without going through the current calculation(s) of Ohm's Law.
</para>
 
<para>
Using this formula, we can re-analyze the example circuit's voltage drops in fewer steps:
</para>
 
<image>00106.png</image>
 
<para>

</para>

<bigspace>

<image>10104.png</image>

<para>
Voltage dividers find wide application in electric meter circuits, where specific combinations of series resistors are used to "divide" a voltage into precise proportions as part of a voltage measurement device.
</para>
 
<image>00107.png</image>

<index>Potentiometer, as voltage divider</index>
<index>Wiper, potentiometer</index>
<index>Slidewire, potentiometer</index>

<para>
One device frequently used as a voltage-dividing component is the <italic>potentiometer</italic>, which is a resistor with a movable element positioned by a manual knob or lever.  The movable element, typically called a <italic>wiper</italic>, makes contact with a resistive strip of material (commonly called the <italic>slidewire</italic> if made of resistive metal wire) at any point selected by the manual control:
</para>
 
<image>00108.png</image>

<para>
The wiper contact is the left-facing arrow symbol drawn in the middle of the vertical resistor element.  As it is moved up, it contacts the resistive strip closer to terminal 1 and further away from terminal 2, lowering resistance to terminal 1 and raising resistance to terminal 2.  As it is moved down, the opposite effect results.  The resistance as measured between terminals 1 and 2 is constant for any wiper position.
</para>

<image>00109.png</image>

<para>
Shown here are internal illustrations of two potentiometer types, rotary and linear:
</para>

<image>00483.png</image>

<para>

</para>

<bigspace>

<image>00484.png</image>

<para>
Some linear potentiometers are actuated by straight-line motion of a lever or slide button.  Others, like the one depicted in the previous illustration, are actuated by a turn-screw for fine adjustment ability.  The latter units are sometimes referred to as <italic>trimpots</italic>, because they work well for applications requiring a variable resistance to be "trimmed" to some precise value.  It should be noted that not all linear potentiometers have the same terminal assignments as shown in this illustration.  With some, the wiper terminal is in the middle, between the two end terminals.
</para>

<para>
The following photograph shows a real, rotary potentiometer with exposed wiper and slidewire for easy viewing.  The shaft which moves the wiper has been turned almost fully clockwise so that the wiper is nearly touching the left terminal end of the slidewire:
</para>

<image>50031.jpg</image>

<para>
Here is the same potentiometer with the wiper shaft moved almost to the full-counterclockwise position, so that the wiper is near the other extreme end of travel:
</para>

<image>50032.jpg</image>

<para>
If a constant voltage is applied between the outer terminals (across the length of the slidewire), the wiper position will tap off a fraction of the applied voltage, measurable between the wiper contact and either of the other two terminals.  The fractional value depends entirely on the physical position of the wiper:
</para>
 
<image>00363.png</image>

<para>
Just like the fixed voltage divider, the potentiometer's voltage <italic>division ratio</italic> is strictly a function of resistance and not of the magnitude of applied voltage.  In other words, if the potentiometer knob or lever is moved to the 50 percent (exact center) position, the voltage dropped between wiper and either outside terminal would be exactly 1/2 of the applied voltage, no matter what that voltage happens to be, or what the end-to-end resistance of the potentiometer is.  In other words, a potentiometer functions as a variable voltage divider where the voltage division ratio is set by wiper position.
</para>
 
<para>
This application of the potentiometer is a very useful means of obtaining a variable voltage from a fixed-voltage source such as a battery.  If a circuit you're building requires a certain amount of voltage that is less than the value of an available battery's voltage, you may connect the outer terminals of a potentiometer across that battery and "dial up" whatever voltage you need between the potentiometer wiper and one of the outer terminals for use in your circuit:
</para>

<image>00364.png</image>

<para>
When used in this manner, the name <italic>potentiometer</italic> makes perfect sense: they <italic>meter</italic> (control) the <italic>potential</italic> (voltage) applied across them by creating a variable voltage-divider ratio.  This use of the three-terminal potentiometer as a variable voltage divider is very popular in circuit design.
</para>

<index>Potentiometer</index>
 
<para>
Shown here are several small potentiometers of the kind commonly used in consumer electronic equipment and by hobbyists and students in constructing circuits:
</para>

<image>50037.jpg</image>

<para>
The smaller units on the very left and very right are designed to plug into a solderless breadboard or be soldered into a printed circuit board.  The middle units are designed to be mounted on a flat panel with wires soldered to each of the three terminals.
</para>

<para>
Here are three more potentiometers, more specialized than the set just shown:
</para>

<index>Potentiometer, precision</index>
 
<image>50038.jpg</image>

<para>
The large "Helipot" unit is a laboratory potentiometer designed for quick and easy connection to a circuit.  The unit in the lower-left corner of the photograph is the same type of potentiometer, just without a case or 10-turn counting dial.  Both of these potentiometers are precision units, using multi-turn helical-track resistance strips and wiper mechanisms for making small adjustments.  The unit on the lower-right is a panel-mount potentiometer, designed for rough service in industrial applications.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Series circuits proportion, or <italic>divide</italic>, the total supply voltage among individual voltage drops, the proportions being strictly dependent upon resistances: E<subscript>Rn</subscript> = E<subscript>Total</subscript> (R<subscript>n</subscript> / R<subscript>Total</subscript>)</item>
<item>A potentiometer is a variable-resistance component with three connection points, frequently used as an adjustable voltage divider.</item>
</itemize>

</section>







<section>
<sectiontitle>Kirchhoff's Voltage Law (KVL)</sectiontitle>

<index>Kirchhoff's Voltage Law</index>
<index>KVL</index>

<para>
Let's take another look at our example series circuit, this time numbering the points in the circuit for voltage reference:
</para>

<image>00110.png</image>

<para>
If we were to connect a voltmeter between points 2 and 1, red test lead to point 2 and black test lead to point 1, the meter would register +45 volts.  Typically the "+" sign is not shown, but rather implied, for positive readings in digital meter displays.  However, for this lesson the polarity of the voltage reading is very important and so I will show positive numbers explicitly:
</para>
 
<image>10106.png</image>

<para>
When a voltage is specified with a double subscript (the characters "2-1" in the notation "E<subscript>2-1</subscript>"), it means the voltage at the first point (2) as measured in reference to the second point (1).  A voltage specified as "E<subscript>cd</subscript>" would mean the voltage as indicated by a digital meter with the red test lead on point "c" and the black test lead on point "d": the voltage at "c" in reference to "d".
</para>

<image>00435.png</image>

<para>
If we were to take that same voltmeter and measure the voltage drop across each resistor, stepping around the circuit in a clockwise direction with the red test lead of our meter on the point ahead and the black test lead on the point behind, we would obtain the following readings:
</para>
 
<image>10107.png</image>

<para>

</para>

<bigspace>

<image>00436.png</image>

<para>
We should already be familiar with the general principle for series circuits stating that individual voltage drops add up to the total applied voltage, but measuring voltage drops in this manner and paying attention to the polarity (mathematical sign) of the readings reveals another facet of this principle: that the voltages measured as such all add up to zero:
</para>
 
<image>10108.png</image>

<para>
This principle is known as <italic>Kirchhoff's Voltage Law</italic> (discovered in 1847 by Gustav R. Kirchhoff, a German physicist), and it can be stated as such:
</para>

<quotation> 
<bold>"The algebraic sum of all voltages in a loop must equal zero"</bold>
</quotation>

<index>Sum, algebraic</index>
<index>Algebraic sum</index>

<para>
By <italic>algebraic</italic>, I mean accounting for signs (polarities) as well as magnitudes.  By <italic>loop</italic>, I mean any path traced from one point in a circuit around to other points in that circuit, and finally back to the initial point.  In the above example the loop was formed by following points in this order: 1-2-3-4-1.  It doesn't matter which point we start at or which direction we proceed in tracing the loop; the voltage sum will still equal zero.  To demonstrate, we can tally up the voltages in loop 3-2-1-4-3 of the same circuit:
</para>
 
<image>10109.png</image>

<para>
This may make more sense if we re-draw our example series circuit so that all components are represented in a straight line:
</para>
 
<image>00111.png</image>

<index>Voltage polarity</index>

<para>
It's still the same series circuit, just with the components arranged in a different form.  Notice the polarities of the resistor voltage drops with respect to the battery: the battery's voltage is negative on the left and positive on the right, whereas all the resistor voltage drops are oriented the other way: positive on the left and negative on the right.  This is because the resistors are <italic>resisting</italic> the flow of electrons being pushed by the battery.  In other words, the "push" exerted by the resistors <italic>against</italic> the flow of electrons <italic>must</italic> be in a direction opposite the source of electromotive force.
</para>
 
<para>
Here we see what a digital voltmeter would indicate across each component in this circuit, black lead on the left and red lead on the right, as laid out in horizontal fashion:
</para>
 
<image>00112.png</image>

<para>
If we were to take that same voltmeter and read voltage across combinations of components, starting with only R<subscript>1</subscript> on the left and progressing across the whole string of components, we will see how the voltages add algebraically (to zero):
</para>

<image>00113.png</image>

<para>
The fact that series voltages add up should be no mystery, but we notice that the <italic>polarity</italic> of these voltages makes a lot of difference in how the figures add.  While reading voltage across R<subscript>1</subscript>, R<subscript>1</subscript><doubledash>R<subscript>2</subscript>, and R<subscript>1</subscript><doubledash>R<subscript>2</subscript><doubledash>R<subscript>3</subscript> (I'm using a "double-dash" symbol "<doubledash>" to represent the <italic>series</italic> connection between resistors R<subscript>1</subscript>, R<subscript>2</subscript>, and R<subscript>3</subscript>), we see how the voltages measure successively larger (albeit negative) magnitudes, because the polarities of the individual voltage drops are in the same orientation (positive left, negative right).  The sum of the voltage drops across R<subscript>1</subscript>, R<subscript>2</subscript>, and R<subscript>3</subscript> equals 45 volts, which is the same as the battery's output, except that the battery's polarity is opposite that of the resistor voltage drops (negative left, positive right), so we end up with 0 volts measured across the whole string of components.
</para>
 
<para>
That we should end up with exactly 0 volts across the whole string should be no mystery, either.  Looking at the circuit, we can see that the far left of the string (left side of R<subscript>1</subscript>: point number 2) is directly connected to the far right of the string (right side of battery: point number 2), as necessary to complete the circuit.  Since these two points are directly connected, they are <italic>electrically common</italic> to each other.  And, as such, the voltage between those two electrically common points <italic>must</italic> be zero.
</para>
 
<index>KVL</index>

<para>
Kirchhoff's Voltage Law (sometimes denoted as <italic>KVL</italic> for short) will work for <italic>any</italic> circuit configuration at all, not just simple series.  Note how it works for this parallel circuit:
</para>

<image>00114.png</image>

<para>
Being a parallel circuit, the voltage across every resistor is the same as the supply voltage: 6 volts.  Tallying up voltages around loop 2-3-4-5-6-7-2, we get:
</para>
 
<image>10110.png</image>

<para>
Note how I label the final (sum) voltage as E<subscript>2-2</subscript>.  Since we began our loop-stepping sequence at point 2 and ended at point 2, the algebraic sum of those voltages will be the same as the voltage measured between the same point (E<subscript>2-2</subscript>), which of course must be zero.
</para>

<para>
The fact that this circuit is parallel instead of series has nothing to do with the validity of Kirchhoff's Voltage Law.  For that matter, the circuit could be a "black box" -- its component configuration completely hidden from our view, with only a set of exposed terminals for us to measure voltage between -- and KVL would still hold true:
</para>
 
<image>00115.png</image>

<para>
Try any order of steps from any terminal in the above diagram, stepping around back to the original terminal, and you'll find that the algebraic sum of the voltages <italic>always</italic> equals zero.
</para>
 
<para>
Furthermore, the "loop" we trace for KVL doesn't even have to be a real current path in the closed-circuit sense of the word.  All we have to do to comply with KVL is to begin and end at the same point in the circuit, tallying voltage drops and polarities as we go between the next and the last point.  Consider this absurd example, tracing "loop" 2-3-6-3-2 in the same parallel resistor circuit:
</para>
 
<image>00114.png</image>
 
<para>

</para>

<bigspace>

<image>10111.png</image>

<para>
KVL can be used to determine an unknown voltage in a complex circuit, where all other voltages around a particular "loop" are known.  Take the following complex circuit (actually two series circuits joined by a single wire at the bottom) as an example:
</para>

<image>00116.png</image>

<para>
To make the problem simpler, I've omitted resistance values and simply given voltage drops across each resistor.  The two series circuits share a common wire between them (wire 7-8-9-10), making voltage measurements <italic>between</italic> the two circuits possible.  If we wanted to determine the voltage between points 4 and 3, we could set up a KVL equation with the voltage between those points as the unknown:
</para>
 
<image>10112.png</image>
 
<para>

</para>

<bigspace>

<image>00358.png</image> 
  
<para>

</para>

<bigspace>

<image>00359.png</image>
  
<para>

</para>

<bigspace>

<image>00360.png</image>
  
<para>

</para>

<bigspace>

<image>00361.png</image>

<para>
Stepping around the loop 3-4-9-8-3, we write the voltage drop figures as a digital voltmeter would register them, measuring with the red test lead on the point ahead and black test lead on the point behind as we progress around the loop.  Therefore, the voltage from point 9 to point 4 is a positive (+) 12 volts because the "red lead" is on point 9 and the "black lead" is on point 4.  The voltage from point 3 to point 8 is a positive (+) 20 volts because the "red lead" is on point 3 and the "black lead" is on point 8.  The voltage from point 8 to point 9 is zero, of course, because those two points are electrically common.  
</para>
 
<para>
Our final answer for the voltage from point 4 to point 3 is a negative (-) 32 volts, telling us that point 3 is actually positive with respect to point 4, precisely what a digital voltmeter would indicate with the red lead on point 4 and the black lead on point 3: 
</para>
 
<image>00117.png</image>
 
<para>
In other words, the initial placement of our "meter leads" in this KVL problem was "backwards."  Had we generated our KVL equation starting with E<subscript>3-4</subscript> instead of E<subscript>4-3</subscript>, stepping around the same loop with the opposite meter lead orientation, the final answer would have been E<subscript>3-4</subscript> = +32 volts:
</para>

<image>00437.png</image>

<para>
It is important to realize that neither approach is "wrong."  In both cases, we arrive at the correct assessment of voltage between the two points, 3 and 4: point 3 is positive with respect to point 4, and the voltage between them is 32 volts.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Kirchhoff's Voltage Law (KVL): <italic>"The algebraic sum of all voltages in a loop must equal zero"</italic></item>
</itemize>

</section>






<section>
<sectiontitle>Current divider circuits</sectiontitle>

<index>Current divider</index>

<para>
Let's analyze a simple parallel circuit, determining the branch currents through individual resistors:
</para>

<image>00118.png</image>

<para>
Knowing that voltages across all components in a parallel circuit are the same, we can fill in our voltage/current/resistance table with 6 volts across the top row:
</para>
 
<image>10113.png</image>

<para>
Using Ohm's Law (I=E/R) we can calculate each branch current:
</para>
 
<image>10114.png</image>

<para>
Knowing that branch currents add up in parallel circuits to equal the total current, we can arrive at total current by summing 6 mA, 2 mA, and 3 mA:
</para>
 
<image>10115.png</image>

<para>
The final step, of course, is to figure total resistance.  This can be done with Ohm's Law (R=E/I) in the "total" column, or with the parallel resistance formula from individual resistances.  Either way, we'll get the same answer:
</para>
 
<image>10116.png</image>

<para>
Once again, it should be apparent that the current through each resistor is related to its resistance, given that the voltage across all resistors is the same.  Rather than being directly proportional, the relationship here is one of inverse proportion.  For example, the current through R<subscript>1</subscript> is twice as much as the current through R<subscript>3</subscript>, which has twice the resistance of R<subscript>1</subscript>.
</para>
 
<para>
If we were to change the supply voltage of this circuit, we find that (surprise!) these proportional ratios do not change:
</para>
 
<image>10117.png</image>

<para>
The current through R<subscript>1</subscript> is still exactly twice that of R<subscript>3</subscript>, despite the fact that the source voltage has changed.  The proportionality between different branch currents is strictly a function of resistance.
</para>
 
<para>
Also reminiscent of voltage dividers is the fact that branch currents are fixed proportions of the total current.  Despite the fourfold increase in supply voltage, the ratio between any branch current and the total current remains unchanged:
</para>
 
<image>10118.png</image>

<index>Current divider formula</index>

<para>
For this reason a parallel circuit is often called a <italic>current divider</italic> for its ability to proportion -- or divide -- the total current into fractional parts.  With a little bit of algebra, we can derive a formula for determining parallel resistor current given nothing more than total current, individual resistance, and total resistance:
</para>
 
<image>10119.png</image>

<para>
The ratio of total resistance to individual resistance is the same ratio as individual (branch) current to total current.  This is known as the <italic>current divider formula</italic>, and it is a short-cut method for determining branch currents in a parallel circuit when the total current is known.
</para>
 
<para>
Using the original parallel circuit as an example, we can re-calculate the branch currents using this formula, if we start by knowing the total current and total resistance:
</para>
 
<image>10120.png</image>

<para>
If you take the time to compare the two divider formulae, you'll see that they are remarkably similar.  Notice, however, that the ratio in the voltage divider formula is R<subscript>n</subscript> (individual resistance) divided by R<subscript>Total</subscript>, and how the ratio in the current divider formula is R<subscript>Total</subscript> divided by R<subscript>n</subscript>:
</para>
 
<image>10121.png</image>

<para>
It is quite easy to confuse these two equations, getting the resistance ratios backwards.  One way to help remember the proper form is to keep in mind that both ratios in the voltage and current divider equations must equal less than one.  After all these are <italic>divider</italic> equations, not <italic>multiplier</italic> equations!  If the fraction is upside-down, it will provide a ratio greater than one, which is incorrect.  Knowing that total resistance in a series (voltage divider) circuit is always greater than any of the individual resistances, we know that the fraction for that formula must be R<subscript>n</subscript> over R<subscript>Total</subscript>.  Conversely, knowing that total resistance in a parallel (current divider) circuit is always less then any of the individual resistances, we know that the fraction for that formula must be R<subscript>Total</subscript> over R<subscript>n</subscript>.
</para>
 
<para>
Current divider circuits also find application in electric meter circuits, where a fraction of a measured current is desired to be routed through a sensitive detection device.  Using the current divider formula, the proper shunt resistor can be sized to proportion just the right amount of current for the device in any given instance:
</para>
 
<image>00119.png</image>
  
<itemize>
<item><bold>REVIEW:</bold></item>
<item>Parallel circuits proportion, or "divide," the total circuit current among individual branch currents, the proportions being strictly dependent upon resistances: I<subscript>n</subscript> = I<subscript>Total</subscript> (R<subscript>Total</subscript> / R<subscript>n</subscript>)</item>
</itemize>
 
</section>






<section>
<sectiontitle>Kirchhoff's Current Law (KCL)</sectiontitle>
 
<index>Kirchhoff's Current Law</index>
<index>KCL</index>

<para>
Let's take a closer look at that last parallel example circuit:
</para>
 
<image>00120.png</image>

<para>
Solving for all values of voltage and current in this circuit:
</para>
 
<image>10116.png</image>

<para>
At this point, we know the value of each branch current and of the total current in the circuit.  We know that the total current in a parallel circuit must equal the sum of the branch currents, but there's more going on in this circuit than just that.  Taking a look at the currents at each wire junction point (node) in the circuit, we should be able to see something else:
</para>
 
<image>00121.png</image>

<para>
At each node on the negative "rail" (wire 8-7-6-5) we have current splitting off the main flow to each successive branch resistor.  At each node on the positive "rail" (wire 1-2-3-4) we have current merging together to form the main flow from each successive branch resistor.  This fact should be fairly obvious if you think of the water pipe circuit analogy with every branch node acting as a "tee" fitting, the water flow splitting or merging with the main piping as it travels from the output of the water pump toward the return reservoir or sump.
</para>
 
<para>
If we were to take a closer look at one particular "tee" node, such as node 3, we see that the current entering the node is equal in magnitude to the current exiting the node:
</para>

<image>00122.png</image>

<para>
From the right and from the bottom, we have two currents entering the wire connection labeled as node 3.  To the left, we have a single current exiting the node equal in magnitude to the sum of the two currents entering.  To refer to the plumbing analogy: so long as there are no leaks in the piping, what flow enters the fitting must also exit the fitting.  This holds true for any node ("fitting"), no matter how many flows are entering or exiting.  Mathematically, we can express this general relationship as such:
</para>
 
<image>10123.png</image>

<index>KCL</index>

<para>
Mr. Kirchhoff decided to express it in a slightly different form (though mathematically equivalent), calling it <italic>Kirchhoff's Current Law</italic> (KCL):
</para>
 
<image>10124.png</image>

<para>
Summarized in a phrase, Kirchhoff's Current Law reads as such:
</para>

<quotation> 
<bold>"The algebraic sum of all currents entering and exiting a node must equal zero"</bold>
</quotation>
 
<para>
That is, if we assign a mathematical sign (polarity) to each current, denoting whether they enter (+) or exit (-) a node, we can add them together to arrive at a total of zero, guaranteed.
</para>
 
<para>
Taking our example node (number 3), we can determine the magnitude of the current exiting from the left by setting up a KCL equation with that current as the unknown value:
</para>
 
<image>10125.png</image>

<para>
The negative (-) sign on the value of 5 milliamps tells us that the current is <italic>exiting</italic> the node, as opposed to the 2 milliamp and 3 milliamp currents, which must both be positive (and therefore <italic>entering</italic> the node).  Whether negative or positive denotes current entering or exiting is entirely arbitrary, so long as they are opposite signs for opposite directions and we stay consistent in our notation, KCL will work.
</para>
 
<para>
Together, Kirchhoff's Voltage and Current Laws are a formidable pair of tools useful in analyzing electric circuits.  Their usefulness will become all the more apparent in a later chapter ("Network Analysis"), but suffice it to say that these Laws deserve to be memorized by the electronics student every bit as much as Ohm's Law.
</para>
  
<itemize>
<item><bold>REVIEW:</bold></item>
<item>Kirchhoff's Current Law (KCL): <italic>"The algebraic sum of all currents entering and exiting a node must equal zero"</italic></item>
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

<para>
<bold>Ron LaPlante</bold> (October 1998): helped create "table" method of series and parallel circuit analysis.
</para>

</section>


</chapter>

<pagebreak>

