
<chapter>
<chaptertitle>DC NETWORK ANALYSIS</chaptertitle>

<section>
<sectiontitle>What is network analysis?</sectiontitle>

<index>Analysis, network</index>
<index>Network analysis</index>

<para>
Generally speaking, <italic>network analysis</italic> is any structured technique used to mathematically analyze a circuit (a ``network'' of interconnected components).  Quite often the technician or engineer will encounter circuits containing multiple sources of power or component configurations which defy simplification by series/parallel analysis techniques.  In those cases, he or she will be forced to use other means.  This chapter presents a few techniques useful in analyzing such complex circuits.
</para>

<para>
To illustrate how even a simple circuit can defy analysis by breakdown into series and parallel portions, take start with this series-parallel circuit:
</para>

<image>00206.png</image>

<para>
To analyze the above circuit, one would first find the equivalent of R<subscript>2</subscript> and R<subscript>3</subscript> in parallel, then add R<subscript>1</subscript> in series to arrive at a total resistance.  Then, taking the voltage of battery B<subscript>1</subscript> with that total circuit resistance, the total current could be calculated through the use of Ohm's Law (I=E/R), then that current figure used to calculate voltage drops in the circuit.  All in all, a fairly simple procedure.
</para>

<para>
However, the addition of just one more battery could change all of that:
</para>

<image>00207.png</image>

<para>
Resistors R<subscript>2</subscript> and R<subscript>3</subscript> are no longer in parallel with each other, because B<subscript>2</subscript> has been inserted into R<subscript>3</subscript>'s branch of the circuit.  Upon closer inspection, it appears there are <italic>no</italic> two resistors in this circuit directly in series or parallel with each other.  This is the crux of our problem: in series-parallel analysis, we started off by identifying sets of resistors that <italic>were</italic> directly in series or parallel with each other, reducing them to single equivalent resistances.  If there are no resistors in a simple series or parallel configuration with each other, then what can we do?
</para>

<para>
It should be clear that this seemingly simple circuit, with only three resistors, is impossible to reduce as a combination of simple series and simple parallel sections: it is something different altogether.  However, this is not the only type of circuit defying series/parallel analysis:
</para>

<image>00208.png</image>

<para>
Here we have a bridge circuit, and for the sake of example we will suppose that it is <italic>not</italic> balanced (ratio R<subscript>1</subscript>/R<subscript>4</subscript> not equal to ratio R<subscript>2</subscript>/R<subscript>5</subscript>).  If it were balanced, there would be zero current through R<subscript>3</subscript>, and it could be approached as a series/parallel combination circuit (R<subscript>1</subscript><doubledash>R<subscript>4</subscript> // R<subscript>2</subscript><doubledash>R<subscript>5</subscript>).  However, any current through R<subscript>3</subscript> makes a series/parallel analysis impossible.  R<subscript>1</subscript> is not in series with R<subscript>4</subscript> because there's another path for electrons to flow through R<subscript>3</subscript>.  Neither is R<subscript>2</subscript> in series with R<subscript>5</subscript> for the same reason.  Likewise, R<subscript>1</subscript> is not in parallel with R<subscript>2</subscript> because R<subscript>3</subscript> is separating their bottom leads.  Neither is R<subscript>4</subscript> in parallel with R<subscript>5</subscript>.  Aaarrggghhhh!
</para>

<para>
Although it might not be apparent at this point, the heart of the problem is the existence of multiple unknown quantities.  At least in a series/parallel combination circuit, there was a way to find total resistance and total voltage, leaving total current as a single unknown value to calculate (and then that current was used to satisfy previously unknown variables in the reduction process until the entire circuit could be analyzed).  With these problems, more than one parameter (variable) is unknown at the most basic level of circuit simplification.
</para>

<para>
With the two-battery circuit, there is no way to arrive at a value for ``total resistance,'' because there are <italic>two</italic> sources of power to provide voltage and current (we would need <italic>two</italic> ``total'' resistances in order to proceed with any Ohm's Law calculations).  With the unbalanced bridge circuit, there is such a thing as total resistance across the one battery (paving the way for a calculation of total current), but that total current immediately splits up into unknown proportions at each end of the bridge, so no further Ohm's Law calculations for voltage (E=IR) can be carried out.
</para>

<index>Equations, simultaneous</index>
<index>Equations, systems of</index>
<index>Simultaneous equations</index>
<index>Systems of equations</index>

<para>
So what can we do when we're faced with multiple unknowns in a circuit?  The answer is initially found in a mathematical process known as <italic>simultaneous equations</italic> or <italic>systems of equations</italic>, whereby multiple unknown variables are solved by relating them to each other in multiple equations.  In a scenario with only one unknown (such as every Ohm's Law equation we've dealt with thus far), there only needs to be a single equation to solve for the single unknown:
</para>

<image>10170.png</image>

<para>
However, when we're solving for multiple unknown values, we need to have the same number of equations as we have unknowns in order to reach a solution.  There are several methods of solving simultaneous equations, all rather intimidating and all too complex for explanation in this chapter.  However, many scientific and programmable calculators are able to solve for simultaneous unknowns, so it is recommended to use such a calculator when first learning how to analyze these circuits.
</para>

<para>
<italic>This is not as scary as it may seem at first</italic>.  Trust me!
</para>

<para>
Later on we'll see that some clever people have found tricks to avoid having to use simultaneous equations on these types of circuits.  We call these tricks <italic>network theorems</italic>, and we will explore a few later in this chapter.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Some circuit configurations (``networks'') cannot be solved by reduction according to series/parallel circuit rules, due to multiple unknown values.</item>
<item>Mathematical techniques to solve for multiple unknowns (called ``simultaneous equations'' or ``systems'') can be applied to basic Laws of circuits to solve networks.</item>
</itemize>

</section>








<section>
<sectiontitle>Branch current method</sectiontitle>

<index>Analysis, Branch Current method</index>
<index>Branch Current analysis</index>

<para>
The first and most straightforward network analysis technique is called the <italic>Branch Current Method</italic>.  In this method, we assume directions of currents in a network, then write equations describing their relationships to each other through Kirchhoff's and Ohm's Laws.  Once we have one equation for every unknown current, we can solve the simultaneous equations and determine all currents, and therefore all voltage drops in the network.
</para>

<para>
Let's use this circuit to illustrate the method:
</para>

<image>00209.png</image>

<para>
The first step is to choose a node (junction of wires) in the circuit to use as a point of reference for our unknown currents.  I'll choose the node joining the right of R<subscript>1</subscript>, the top of R<subscript>2</subscript>, and the left of R<subscript>3</subscript>.
</para>

<image>00210.png</image>

<para>
At this node, guess which directions the three wires' currents take, labeling the three currents as I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript>, respectively.  Bear in mind that these directions of current are speculative at this point.  Fortunately, if it turns out that any of our guesses were wrong, we will know when we mathematically solve for the currents (any ``wrong'' current directions will show up as negative numbers in our solution).
</para>

<image>00211.png</image>

<para>
Kirchhoff's Current Law (KCL) tells us that the algebraic sum of currents entering and exiting a node must equal zero, so we can relate these three currents (I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript>) to each other in a single equation.  For the sake of convention, I'll denote any current <italic>entering</italic> the node as positive in sign, and any current <italic>exiting</italic> the node as negative in sign:
</para>

<image>10171.png</image>

<para>
The next step is to label all voltage drop polarities across resistors according to the assumed directions of the currents.  Remember that the ``upstream'' end of a resistor will always be negative, and the ``downstream'' end of a resistor positive with respect to each other, since electrons are negatively charged:
</para>

<image>00212.png</image> 

<para>
The battery polarities, of course, remain as they were according to their symbology (short end negative, long end positive).  It is OK if the polarity of a resistor's voltage drop doesn't match with the polarity of the nearest battery, so long as the resistor voltage polarity is correctly based on the assumed direction of current through it.  In some cases we may discover that current will be forced <italic>backwards</italic> through a battery, causing this very effect.  The important thing to remember here is to base all your resistor polarities and subsequent calculations on the directions of current(s) initially assumed.  As stated earlier, if your assumption happens to be incorrect, it will be apparent once the equations have been solved (by means of a negative solution).  The magnitude of the solution, however, will still be correct.
</para>

<para>
Kirchhoff's Voltage Law (KVL) tells us that the algebraic sum of all voltages in a loop must equal zero, so we can create more equations with current terms (I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript>) for our simultaneous equations.  To obtain a KVL equation, we must tally voltage drops in a loop of the circuit, as though we were measuring with a real voltmeter.  I'll choose to trace the left loop of this circuit first, starting from the upper-left corner and moving counter-clockwise (the choice of starting points and directions is arbitrary).  The result will look like this:
</para>

<image>00384.png</image>

<para>

</para>

<bigspace>

<image>00385.png</image>

<para>

</para>

<bigspace>

<image>00386.png</image>

<para>

</para>

<bigspace>

<image>00387.png</image>

<para>
Having completed our trace of the left loop, we add these voltage indications together for a sum of zero:
</para>

<image>10172.png</image>

<para>
Of course, we don't yet know what the voltage is across R<subscript>1</subscript> or R<subscript>2</subscript>, so we can't insert those values into the equation as numerical figures at this point.  However, we <italic>do</italic> know that all three voltages must algebraically add to zero, so the equation is true.  We can go a step further and express the unknown voltages as the product of the corresponding unknown currents (I<subscript>1</subscript> and I<subscript>2</subscript>) and their respective resistors, following Ohm's Law (E=IR), as well as eliminate the 0 term:
</para>

<image>10173.png</image>

<para>
Since we know what the values of all the resistors are in ohms, we can just substitute those figures into the equation to simplify things a bit:
</para>

<image>10174.png</image>

<para>
You might be wondering why we went through all the trouble of manipulating this equation from its initial form (-28 + E<subscript>R2</subscript> + E<subscript>R1</subscript>).  After all, the last two terms are still unknown, so what advantage is there to expressing them in terms of unknown voltages or as unknown currents (multiplied by resistances)?  The purpose in doing this is to get the KVL equation expressed using the <italic>same unknown variables</italic> as the KCL equation, for this is a necessary requirement for any simultaneous equation solution method.  To solve for three unknown currents (I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript>), we must have three equations relating these three <italic>currents</italic> (not <italic>voltages</italic>!) together.
</para>

<para>
Applying the same steps to the right loop of the circuit (starting at the chosen node and moving counter-clockwise), we get another KVL equation:
</para>

<image>00388.png</image>

<para>

</para>

<bigspace>

<image>00389.png</image>

<para>

</para>

<bigspace>

<image>00390.png</image>

<para>

</para>

<bigspace>

<image>00391.png</image>

<para>

</para>

<bigspace>

<image>10175.png</image>

<para>
Knowing now that the voltage across each resistor can be and <italic>should be</italic> expressed as the product of the corresponding current and the (known) resistance of each resistor, we can re-write the equation as such:
</para>

<image>10176.png</image>

<para>
Now we have a mathematical system of three equations (one KCL equation and two KVL equations) and three unknowns:
</para>

<image>10177.png</image>

<para>
For some methods of solution (especially any method involving a calculator), it is helpful to express each unknown term in each equation, with any constant value to the right of the equal sign, and with any ``unity'' terms expressed with an explicit coefficient of 1.  Re-writing the equations again, we have:
</para>

<image>10178.png</image>

<para>
Using whatever solution techniques are available to us, we should arrive at a solution for the three unknown current values:
</para>

<image>10179.png</image>

<para>
So, I<subscript>1</subscript> is 5 amps, I<subscript>2</subscript> is 4 amps, and I<subscript>3</subscript> is a negative 1 amp.  But what does ``negative'' current mean?  In this case, it means that our <italic>assumed</italic> direction for I<subscript>3</subscript> was opposite of its <italic>real</italic> direction.  Going back to our original circuit, we can re-draw the current arrow for I<subscript>3</subscript> (and re-draw the polarity of R<subscript>3</subscript>'s voltage drop to match):
</para>

<image>00213.png</image>

<para>
Notice how current is being pushed backwards through battery 2 (electrons flowing ``up'') due to the higher voltage of battery 1 (whose current is pointed ``down'' as it normally would)!  Despite the fact that battery B<subscript>2</subscript>'s polarity is trying to push electrons down in that branch of the circuit, electrons are being forced backwards through it due to the superior voltage of battery B<subscript>1</subscript>.  Does this mean that the stronger battery will always ``win'' and the weaker battery always get current forced through it backwards?  No!  It actually depends on both the batteries' relative voltages <italic>and</italic> the resistor values in the circuit.  The only sure way to determine what's going on is to take the time to mathematically analyze the network.
</para>

<para>
Now that we know the magnitude of all currents in this circuit, we can calculate voltage drops across all resistors with Ohm's Law (E=IR):
</para>

<image>10180.png</image>

<para>
Let us now analyze this network using SPICE to verify our voltage figures.<cite>spi</cite>  We could analyze current as well with SPICE, but since that requires the insertion of extra components into the circuit, and because we know that if the voltages are all the same and all the resistances are the same, the currents <italic>must</italic> all be the same, I'll opt for the less complex analysis.  Here's a re-drawing of our circuit, complete with node numbers for SPICE to reference:
</para>

<image>00214.png</image>

<bigspace>

<literal>
network analysis example   
v1 1 0  
v2 3 0 dc 7    
r1 1 2 4      
r2 2 0 2
r3 2 3 1
.dc v1 28 28 1  
.print dc v(1,2) v(2,0) v(2,3)  
.end    
</literal>

<bigspace>

<literal>
v1            v(1,2)      v(2)        v(2,3)          
2.800E+01     2.000E+01   8.000E+00   1.000E+00
</literal>

<bigspace>

<para>
Sure enough, the voltage figures all turn out to be the same: 20 volts across R<subscript>1</subscript> (nodes 1 and 2), 8 volts across R<subscript>2</subscript> (nodes 2 and 0), and 1 volt across R<subscript>3</subscript> (nodes 2 and 3).  Take note of the signs of all these voltage figures: they're all positive values!  SPICE bases its polarities on the order in which nodes are listed, the first node being positive and the second node negative.  For example, a figure of positive (+) 20 volts between nodes 1 and 2 means that node 1 is positive with respect to node 2.  If the figure had come out negative in the SPICE analysis, we would have known that our actual polarity was ``backwards'' (node 1 negative with respect to node 2).  Checking the node orders in the SPICE listing, we can see that the polarities all match what we determined through the Branch Current method of analysis.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Steps to follow for the ``Branch Current'' method of analysis:</item>
<item>(1) Choose a node and assume directions of currents.</item>
<item>(2) Write a KCL equation relating currents at the node.</item>
<item>(3) Label resistor voltage drop polarities based on assumed currents.</item>
<item>(4) Write KVL equations for each loop of the circuit, substituting the product IR for E in each resistor term of the equations.</item>
<item>(5) Solve for unknown branch currents (simultaneous equations).</item>
<item>(6) If any solution is negative, then the assumed direction of current for that solution is wrong!</item>
<item>(7) Solve for voltage drops across all resistors (E=IR).</item>
</itemize>

</section>








<section>
<sectiontitle>Mesh current method</sectiontitle>

<index>Analysis, Mesh Current method</index>
<index>Mesh Current analysis</index>
<index>Analysis, Loop Current method</index>
<index>Loop Current analysis</index>


<para>
The <italic>Mesh Current Method</italic>, also known as the   <italic>Loop Current Method</italic>, is quite similar to the Branch Current method in that it uses simultaneous equations, Kirchhoff's Voltage Law, and Ohm's Law to determine unknown currents in a network.  It differs from the Branch Current method in that it does <italic>not</italic> use Kirchhoff's Current Law, and it is usually able to solve a circuit with less unknown variables and less simultaneous equations, which is especially nice if you're forced to solve without a calculator.
</para>

<subsection>
<subsectiontitle>Mesh Current, conventional method</subsectiontitle>

<para>
Let's see how this method works on the same example problem:
</para>

<image>00209.png</image>

<para>
The first step in the Mesh Current method is to identify ``loops'' within the circuit encompassing all components.  In our example circuit, the loop formed by B<subscript>1</subscript>, R<subscript>1</subscript>, and R<subscript>2</subscript> will be the first while the loop formed by B<subscript>2</subscript>, R<subscript>2</subscript>, and R<subscript>3</subscript> will be the second.  The strangest part of the Mesh Current method is envisioning circulating currents in each of the loops.  In fact, this method gets its name from the idea of these currents meshing together between loops like sets of spinning gears:
</para>

<image>00215.png</image>

<para>
The choice of each current's direction is entirely arbitrary, just as in the Branch Current method, but the resulting equations are easier to solve if the currents are going the same direction through intersecting components (note how currents I<subscript>1</subscript> and I<subscript>2</subscript> are both going ``up'' through resistor R<subscript>2</subscript>, where they ``mesh,'' or intersect).  If the assumed direction of a mesh current is wrong, the answer for that current will have a negative value.
</para>

<index>Voltage polarity</index>

<para>
The next step is to label all voltage drop polarities across resistors according to the assumed directions of the mesh currents.  Remember that the ``upstream'' end of a resistor will always be negative, and the ``downstream'' end of a resistor positive with respect to each other, since electrons are negatively charged.  The battery polarities, of course, are dictated by their symbol orientations in the diagram, and may or may not ``agree'' with the resistor polarities (assumed current directions):
</para>

<image>00216.png</image>

<para>
Using Kirchhoff's Voltage Law, we can now step around each of these loops, generating equations representative of the component voltage drops and polarities.  As with the Branch Current method, we will denote a resistor's voltage drop as the product of the resistance (in ohms) and its respective mesh current (that quantity being unknown at this point).  Where two currents mesh together, we will write that term in the equation with resistor current being the <italic>sum</italic> of the two meshing currents.
</para>

<para>
Tracing the left loop of the circuit, starting from the upper-left corner and moving counter-clockwise (the choice of starting points and directions is ultimately irrelevant), counting polarity as if we had a voltmeter in hand, red lead on the point ahead and black lead on the point behind, we get this equation:
</para>

<image>10181.png</image>

<para>
Notice that the middle term of the equation uses the sum of mesh currents I<subscript>1</subscript> and I<subscript>2</subscript> as the current through resistor R<subscript>2</subscript>.  This is because mesh currents I<subscript>1</subscript> and I<subscript>2</subscript> are going the same direction through R<subscript>2</subscript>, and thus complement each other.  Distributing the coefficient of 2 to the I<subscript>1</subscript> and I<subscript>2</subscript> terms, and then combining I<subscript>1</subscript> terms in the equation, we can simplify as such:
</para>

<image>10182.png</image>

<para>
At this time we have one equation with two unknowns.  To be able to solve for two unknown mesh currents, we must have two equations.  If we trace the other loop of the circuit, we can obtain another KVL equation and have enough data to solve for the two currents.  Creature of habit that I am, I'll start at the upper-left hand corner of the right loop and trace counter-clockwise:
</para>

<image>10183.png</image>

<para>
Simplifying the equation as before, we end up with:
</para>

<image>10184.png</image>

<para>
Now, with two equations, we can use one of several methods to mathematically solve for the unknown currents I<subscript>1</subscript> and I<subscript>2</subscript>:
</para>

<image>10185.png</image>

<para>
Knowing that these solutions are values for <italic>mesh</italic> currents, not <italic>branch</italic> currents, we must go back to our diagram to see how they fit together to give currents through all components:
</para>

<image>00217.png</image>

<para>
The solution of -1 amp for I<subscript>2</subscript> means that our initially assumed direction of current was incorrect.  In actuality, I<subscript>2</subscript> is flowing in a counter-clockwise direction at a value of (positive) 1 amp:
</para>

<image>00218.png</image>

<para>
This change of current direction from what was first assumed will alter the polarity of the voltage drops across R<subscript>2</subscript> and R<subscript>3</subscript> due to current I<subscript>2</subscript>.  From here, we can say that the current through R<subscript>1</subscript> is 5 amps, with the voltage drop across R<subscript>1</subscript> being the product of current and resistance (E=IR), 20 volts (positive on the left and negative on the right).  Also, we can safely say that the current through R<subscript>3</subscript> is 1 amp, with a voltage drop of 1 volt (E=IR), positive on the left and negative on the right.  But what is happening at R<subscript>2</subscript>?
</para>

<para>
Mesh current I<subscript>1</subscript> is going ``up'' through R<subscript>2</subscript>, while mesh current I<subscript>2</subscript> is going ``down'' through R<subscript>2</subscript>.  To determine the actual current through R<subscript>2</subscript>, we must see how mesh currents I<subscript>1</subscript> and I<subscript>2</subscript> interact (in this case they're in opposition), and algebraically add them to arrive at a final value.  Since I<subscript>1</subscript> is going ``up'' at 5 amps, and I<subscript>2</subscript> is going ``down'' at 1 amp, the <italic>real</italic> current through R<subscript>2</subscript> must be a value of 4 amps, going ``up:''
</para>

<image>00219.png</image>

<para>
A current of 4 amps through R<subscript>2</subscript>'s resistance of 2 <OMEGA> gives us a voltage drop of 8 volts (E=IR), positive on the top and negative on the bottom.
</para>

<para>
The primary advantage of Mesh Current analysis is that it generally allows for the solution of a large network with fewer unknown values and fewer simultaneous equations.  Our example problem took three equations to solve the Branch Current method and only two equations using the Mesh Current method.  This advantage is much greater as networks increase in complexity:
</para>

<image>00220.png</image>

<para>
To solve this network using Branch Currents, we'd have to establish five variables to account for each and every unique current in the circuit (I<subscript>1</subscript> through I<subscript>5</subscript>).  This would require five equations for solution, in the form of two KCL equations and three KVL equations (two equations for KCL at the nodes, and three equations for KVL in each loop):
</para>

<image>00221.png</image>

<para>

</para>

<bigspace>

<image>10186.png</image>

<para>
I suppose if you have nothing better to do with your time than to solve for five unknown variables with five equations, you might not mind using the Branch Current method of analysis for this circuit.  For those of us who <italic>have</italic> better things to do with our time, the Mesh Current method is a whole lot easier, requiring only three unknowns and three equations to solve:
</para>

<image>00222.png</image>

<para>

</para>

<bigspace>

<image>10187.png</image>

<para>
Less equations to work with is a decided advantage, especially when performing simultaneous equation solution by hand (without a calculator).
</para>

<index>Wheatstone bridge, unbalanced</index>

<para>
Another type of circuit that lends itself well to Mesh Current is the unbalanced Wheatstone Bridge.  Take this circuit, for example:
</para>

<image>00485.png</image> 

<para>
Since the ratios of R<subscript>1</subscript>/R<subscript>4</subscript> and R<subscript>2</subscript>/R<subscript>5</subscript> are unequal, we know that there will be voltage across resistor R<subscript>3</subscript>, and some amount of current through it.  As discussed at the beginning of this chapter, this type of circuit is irreducible by normal series-parallel analysis, and may only be analyzed by some other method.
</para>

<para>
We could apply the Branch Current method to this circuit, but it would require <italic>six</italic> currents (I<subscript>1</subscript> through I<subscript>6</subscript>), leading to a very large set of simultaneous equations to solve.  Using the Mesh Current method, though, we may solve for all currents and voltages with much fewer variables.
</para>

<para>
The first step in the Mesh Current method is to draw just enough mesh currents to account for all components in the circuit.  Looking at our bridge circuit, it should be obvious where to place two of these currents:
</para>

<image>00486.png</image> 

<para>
The directions of these mesh currents, of course, is arbitrary.  However, two mesh currents is not enough in this circuit, because neither I<subscript>1</subscript> nor I<subscript>2</subscript> goes through the battery.  So, we must add a third mesh current, I<subscript>3</subscript>:
</para>

<image>00487.png</image> 

<para>
Here, I have chosen I<subscript>3</subscript> to loop from the bottom side of the battery, through R<subscript>4</subscript>, through R<subscript>1</subscript>, and back to the top side of the battery.  This is not the only path I could have chosen for I<subscript>3</subscript>, but it seems the simplest.
</para>

<para>
Now, we must label the resistor voltage drop polarities, following each of the assumed currents' directions:
</para>

<image>00488.png</image> 

<para>
Notice something very important here: at resistor R<subscript>4</subscript>, the polarities for the respective mesh currents do not agree.  This is because those mesh currents (I<subscript>2</subscript> and I<subscript>3</subscript>) are going through R<subscript>4</subscript> in different directions.  This does not preclude the use of the Mesh Current method of analysis, but it does complicate it a bit. Though later, we will show how to avoid the R<subscript>4</subscript> current clash. (See Example below)

</para>

<para>
Generating a KVL equation for the top loop of the bridge, starting from the top node and tracing in a clockwise direction:
</para>

<image>10272.png</image> 

<para>
In this equation, we represent the common directions of currents by their <italic>sums</italic> through common resistors.  For example, resistor R<subscript>3</subscript>, with a value of 100 <OMEGA>, has its voltage drop represented in the above KVL equation by the expression 100(I<subscript>1</subscript> + I<subscript>2</subscript>), since both currents I<subscript>1</subscript> and I<subscript>2</subscript> go through R<subscript>3</subscript> from right to left.  The same may be said for resistor R<subscript>1</subscript>, with its voltage drop expression shown as 150(I<subscript>1</subscript> + I<subscript>3</subscript>), since both I<subscript>1</subscript> and I<subscript>3</subscript> go from bottom to top through that resistor, and thus work <italic>together</italic> to generate its voltage drop.
</para>

<para>
Generating a KVL equation for the bottom loop of the bridge will not be so easy, since we have two currents going against each other through resistor R<subscript>4</subscript>.  Here is how I do it (starting at the right-hand node, and tracing counter-clockwise):
</para>

<image>10273.png</image> 

<para>
Note how the second term in the equation's original form has resistor R<subscript>4</subscript>'s value of 300 <OMEGA> multiplied by the <italic>difference</italic> between I<subscript>2</subscript> and I<subscript>3</subscript> (I<subscript>2</subscript> - I<subscript>3</subscript>).  This is how we represent the combined effect of two mesh currents going in opposite directions through the same component.  Choosing the appropriate mathematical signs is very important here: 300(I<subscript>2</subscript> - I<subscript>3</subscript>) does not mean the same thing as 300(I<subscript>3</subscript> - I<subscript>2</subscript>).  I chose to write 300(I<subscript>2</subscript> - I<subscript>3</subscript>) because I was thinking first of I<subscript>2</subscript>'s effect (creating a positive voltage drop, measuring with an imaginary voltmeter across R<subscript>4</subscript>, red lead on the bottom and black lead on the top), and secondarily of I<subscript>3</subscript>'s effect (creating a negative voltage drop, red lead on the bottom and black lead on the top).  If I had thought in terms of I<subscript>3</subscript>'s effect first and I<subscript>2</subscript>'s effect secondarily, holding my imaginary voltmeter leads in the same positions (red on bottom and black on top), the expression would have been -300(I<subscript>3</subscript> - I<subscript>2</subscript>).  Note that this expression <italic>is</italic> mathematically equivalent to the first one: +300(I<subscript>2</subscript> - I<subscript>3</subscript>).
</para>

<para>
Well, that takes care of two equations, but I still need a third equation to complete my simultaneous equation set of three variables, three equations.  This third equation must also include the battery's voltage, which up to this point does not appear in either two of the previous KVL equations.  To generate this equation, I will trace a loop again with my imaginary voltmeter starting from the battery's bottom (negative) terminal, stepping clockwise (again, the direction in which I step is arbitrary, and does not need to be the same as the direction of the mesh current in that loop):
</para>

<image>10274.png</image> 

<para>
Solving for I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript> using whatever simultaneous equation method we prefer:
</para>

<image>10275.png</image> 

<para>
<bold>Example:</bold>
</para>

<para>
Use Octave to find the solution  for I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript> from the above simplified form of equations. <cite>octav</cite> 
</para>


<para><bold>Solution:</bold></para>
<para>
In Octave, an open source Matlab<registered> clone, enter the coefficients into the A matrix between square brackets  with column elements comma separated, and rows semicolon separated.<cite>octav</cite>  Enter the voltages into the column vector: b. The unknown currents: I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript> are calculated by the command: x=A\b. These are contained within the x column vector.
</para>

<literal>
<sp>
<sp>       octave:1>A = [300,100,150;100,650,-300;-150,300,-450]
<sp>       A =
<sp>         300  100  150
<sp>         100  650  -300
<sp>         -150 300  -450
<sp>
<sp>       octave:2> b = [0;0;-24]
<sp>       b =
<sp>         0
<sp>         0
<sp>         -24
<sp>              
<sp>       octave:3> x = A\b
<sp>       x =
<sp>         -0.093793
<sp>          0.077241
<sp>          0.136092
</literal>




<para>
The negative value arrived at for I<subscript>1</subscript> tells us that the assumed direction for that mesh current was incorrect.  Thus, the actual current values through each resistor is as such:
</para>

<image>00489.png</image> 

<para>
Calculating voltage drops across each resistor:
</para>

<image>00490.png</image> 

<para>
A SPICE simulation confirms the accuracy of our voltage calculations:<cite>spi</cite>
</para>

<image>00491.png</image> 

<bigspace>

<literal>
unbalanced wheatstone bridge   
v1 1 0  
r1 1 2 150      
r2 1 3 50       
r3 2 3 100      
r4 2 0 300      
r5 3 0 250      
.dc v1 24 24 1  
.print dc v(1,2) v(1,3) v(3,2) v(2,0) v(3,0)    
.end    
</literal>

<bigspace>

<literal>
v1            v(1,2)      v(1,3)      v(3,2)      v(2)        v(3)            
2.400E+01     6.345E+00   4.690E+00   1.655E+00   1.766E+01   1.931E+01
</literal>


<para>
<bold>Example:</bold>
</para>

<para>
(a) Find a new path for current I<subscript>3</subscript> that does not produce a conflicting polarity on any resistor compared to I<subscript>1</subscript> or  I<subscript>2</subscript>. R<subscript>4</subscript> was the offending component. (b) Find values for  I<subscript>1</subscript>, I<subscript>2</subscript>,  and I<subscript>3</subscript>. (c) Find the five resistor currents and compare to the previous values.
</para>


<para>
<bold>Solution: </bold><cite>dvn</cite>
</para>

<para>
(a) Route I<subscript>3</subscript> through R<subscript>5</subscript>, R<subscript>3</subscript> and R<subscript>1</subscript> as shown:
</para>

<image>00494.png</image>
<para>
Note that the conflicting polarity on R<subscript>4</subscript> has been removed. Moreover, none of the other resistors have conflicting polarities. 

</para>


<para>
(b) Octave, an open source (free) matlab clone, yields a mesh current vector at ``x'':<cite>octav</cite>
</para>

<literal>
<sp>       octave:1> A = [300,100,250;100,650,350;-250,-350,-500]
<sp>       A =
<sp>         300  100  250
<sp>         100  650  350
<sp>         -250  -350  -500
      
<sp>       octave:2> b = [0;0;-24]
<sp>       b =
<sp>         0
<sp>         0
<sp>       -24
              
<sp>       octave:3> x = A\b
<sp>       x =
<sp>         -0.093793
<sp>         -0.058851
<sp>          0.136092
</literal>

<para>
Not all currents I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript> are the same (I<subscript>2</subscript>) as the previous bridge because of different loop paths
However, the resistor currents  compare to the previous values:
</para>

<literal>
<sp>       I<subscript>R1</subscript> = I<subscript>1</subscript> + I<subscript>3</subscript> = -93.793 ma + 136.092 ma = 42.299 ma
<sp>       I<subscript>R2</subscript> = I<subscript>1</subscript> = -93.793 ma
<sp>       I<subscript>R3</subscript> = I<subscript>1</subscript> + I<subscript>2</subscript> + I<subscript>3</subscript> = -93.793 ma -58.851 ma  + 136.092 ma =  -16.552 ma
<sp>       I<subscript>R4</subscript> = I<subscript>2</subscript> = -58.851 ma
<sp>       I<subscript>R5</subscript> = I<subscript>2</subscript> + I<subscript>3</subscript> = -58.851 ma  + 136.092 ma = 77.241 ma
</literal>

<para>
Since the resistor currents are the same as the previous values, the resistor voltages will be identical and need not be calculated again.
</para>


<bigspace>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Steps to follow for the ``Mesh Current'' method of analysis:</item>
<item>(1) Draw mesh currents in loops of circuit, enough to account for all components.</item>
<item>(2) Label resistor voltage drop polarities based on assumed directions of mesh currents.</item>
<item>(3) Write KVL equations for each loop of the circuit, substituting the product IR for E in each resistor term of the equation.  Where two mesh currents intersect through a component, express the current as the algebraic sum of those two mesh currents (i.e. I<subscript>1</subscript> + I<subscript>2</subscript>) if the currents go in the same direction through that component.  If not, express the current as the difference (i.e. I<subscript>1</subscript> - I<subscript>2</subscript>).</item>
<item>(4) Solve for unknown mesh currents (simultaneous equations).</item>
<item>(5) If any solution is negative, then the assumed current direction is wrong!</item>
<item>(6) Algebraically add mesh currents to find current in components sharing multiple mesh currents.</item>
<item>(7) Solve for voltage drops across all resistors (E=IR).</item>
</itemize>

</subsection>


<subsection>
<subsectiontitle>Mesh current by inspection</subsectiontitle>

<para>
We take a second look at the ``mesh current method'' with all the currents running counterclockwise (ccw). The motivation is to simplify the writing of mesh equations by ignoring the resistor voltage drop polarity. Though, we must pay attention to the polarity of voltage sources with respect to assumed current direction. The sign of the resistor voltage drops will follow a fixed pattern.
</para>

<para>
If we write a set of conventional  mesh current equations for the circuit below, where we do pay attention to the signs of the voltage drop across the resistors, we may rearrange the coefficients into a fixed pattern:
</para>

<image>00501.png</image>

<para>
Once rearranged, we may write equations by inspection. The signs of the coefficients follow a fixed pattern in the pair above, or the set of three in the rules below.
</para>

<itemize>
<item><bold>Mesh current rules:</bold></item>
<item>This method assumes electron flow (not conventional current flow) voltage sources.  Replace any current source in parallel with a resistor with an equivalent voltage source in series with an equivalent resistance.</item>
<item>Ignoring current direction or voltage polarity on resistors, draw counterclockwise current loops traversing all components. Avoid nested loops.</item>
<item>Write voltage-law equations in terms of unknown currents currents: I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript>. Equation 1 coefficient 1, equation 2, coefficient 2, and equation 3 coefficient 3 are the positive sums of resistors around the respective loops.
<item>All other coefficients are negative, representative of the resistance common to a pair of loops. Equation 1 coefficient 2 is the resistor common to loops 1 and 2, coefficient 3 the resistor common to loops 1 an 3. Repeat for other equations and coefficients.</item>
<literal>
<sp> +(sum of R's loop 1)I<subscript>1</subscript> - (common R loop 1-2)I<subscript>2</subscript> - (common R loop 1-3)I<subscript>3</subscript>   = E<subscript>1</subscript>
<sp> -(common R loop 1-2)I<subscript>1</subscript> + (sum of R's loop 2)I<subscript>2</subscript> - (common R loop 2-3)I<subscript>3</subscript>   = E<subscript>2</subscript>
<sp> -(common R loop 1-3)I<subscript>1</subscript> - (common R loop 2-3)I<subscript>2</subscript> + (sum of R's loop 3)I<subscript>3</subscript>   = E<subscript>3</subscript>
</literal>
</item>
<item>The right hand side of the equations is equal to any electron current flow voltage source. A voltage rise with respect to the counterclockwise assumed current is positive, and 0 for no voltage source.</item>
<item>Solve equations for mesh currents:I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript>   . Solve for  currents through individual resistors with KCL. Solve for voltages with Ohms Law and KVL.</item>
</itemize>


<para>
While the above rules are specific for a three mesh circuit, the rules may be extended to smaller or larger meshes. The figure below illustrates the application of the rules. The three currents are all drawn in the same direction, counterclockwise.  One  KVL equation is written for each of the three loops. Note that there is no polarity drawn on the resistors. We do not need it to determine the signs of the coefficients. Though we do need to pay attention to the polarity of the voltage source with respect to current direction. The I<subscript>3</subscript>counterclockwise current traverses the 24V source from (+) to (-). This is a voltage rise for electron current flow. Therefore, the third equation right hand side is +24V.
</para>

<image>00495.png</image>



<para>
In Octave, enter the coefficients into the A matrix with column elements comma separated, and rows semicolon separated. Enter the voltages into the column vector b. Solve for the  unknown currents: I<subscript>1</subscript>, I<subscript>2</subscript>, and I<subscript>3</subscript> with the command: x=A\b. These currents are contained within the x column vector. The positive values indicate that the three mesh currents all flow in the assumed counterclockwise direction.
</para>

<literal>
<sp>          octave:2> A=[300,-100,-150;-100,650,-300;-150,-300,450]
<sp>          A =
<sp>            300  -100  -150
<sp>            -100  650  -300
<sp>            -150  -300  450

<sp>          octave:3> b=[0;0;24]
<sp>          b =
<sp>             0
<sp>             0
<sp>            24

<sp>          octave:4> x=A\b
<sp>          x =
<sp>            0.093793
<sp>            0.077241
<sp>            0.136092
</literal>


<para>
The mesh currents  match the previous solution by a different mesh current method.. The calculation of resistor voltages and currents will be identical to the previous solution. No need to repeat here.
</para>

<para>
Note that electrical engineering texts are based on conventional current flow. The loop-current, mesh-current method in those text will run the assumed mesh currents <bold>clockwise</bold>.<cite>aef</cite> The conventional current flows out the (+) terminal of the battery through the circuit, returning to the (-) terminal. A conventional current voltage rise corresponds to tracing the assumed current from (-) to (+) through any voltage sources.
</para>


<para>
One more example of a previous circuit follows. The resistance around loop 1 is 6 <OMEGA>, around loop 2: 3 <OMEGA>. The resistance common to both loops is 2 <OMEGA>. Note the coefficients of I<subscript>1</subscript> and I<subscript>2</subscript> in the pair of equations. Tracing the assumed counterclockwise loop 1 current through B<subscript>1</subscript> from (+) to (-) corresponds to an electron current flow voltage rise. Thus, the sign of the 28 V is positive. The loop 2 counter clockwise assumed current traces (-) to (+) through B<subscript>2</subscript>, a voltage drop. Thus, the sign of B<subscript>2</subscript> is negative, -7 in the 2nd mesh equation. Once again, there are no polarity markings on the resistors. Nor do they figure into the equations.
</para>

<image>00496.png</image>

<para>
The currents I<subscript>1</subscript> = 5 A, and I<subscript>2</subscript> = 1 A are both positive. They both flow in the direction of the counterclockwise loops. This compares with previous results.
</para>


<itemize>
<item><bold>Summary:</bold></item>
<item>The modified mesh-current method avoids having to determine the signs of the equation coefficients by drawing all mesh currents counterclockwise for electron current flow.</item>
<item>However, we do need to determine the sign of any voltage sources in the loop. The voltage source is positive if the assumed ccw  current flows with the battery (source). The sign is negative if the assumed ccw current flows against the battery.</item>
<item>See rules above for details.</item>
</itemize>


</subsection>


</section>



<section>
<sectiontitle>Node voltage method </sectiontitle>

<index>Node voltage analysis</index>
<index>Analysis, node voltage</index>


<para>
The node voltage method of analysis solves for unknown voltages at circuit nodes in terms of a system of KCL equations. This analysis looks strange because it involves replacing voltage sources with equivalent current sources. Also, resistor values in ohms  are replaced by equivalent conductances in siemens, G = 1/R. The siemens (S) is the unit of conductance, having replaced the mho unit. In any event S = <OMEGA><superscript>-1</superscript>. And S = mho (obsolete). 
</para>


<para>
We start with a circuit having conventional voltage sources. A common node E<subscript>0</subscript> is chosen as a reference point. The node voltages  E<subscript>1</subscript> and E<subscript>2</subscript>  are  calculated with respect to this point.
</para>

<image>00497.png</image>

<para>
A voltage source in series with a  resistance must be replaced by an equivalent current source in parallel with the resistance. We will write KCL equations for each node. The right hand side of the equation is the value of the current source feeding the node.
</para>

<image>00498.png</image>




<para>
Replacing  voltage sources and associated  series resistors with equivalent current sources and parallel resistors yields the modified circuit.  Substitute  resistor conductances in siemens for resistance in ohms.

</para>

<literal>
<sp>          I<subscript>1</subscript> = E<subscript>1</subscript>/R<subscript>1</subscript> = 10/2 = 5 A
<sp>          I<subscript>2</subscript> = E<subscript>2</subscript>/R<subscript>5</subscript> = 4/1  = 4 A
<sp>          G<subscript>1</subscript> = 1/R<subscript>1</subscript> = 1/2 <OMEGA>   = 0.5 S
<sp>          G<subscript>2</subscript> = 1/R<subscript>2</subscript> = 1/4 <OMEGA>   = 0.25 S
<sp>          G<subscript>3</subscript> = 1/R<subscript>3</subscript> = 1/2.5 <OMEGA> = 0.4 S
<sp>          G<subscript>4</subscript> = 1/R<subscript>4</subscript> = 1/5 <OMEGA>   = 0.2 S
<sp>          G<subscript>5</subscript> = 1/R<subscript>5</subscript> = 1/1 <OMEGA>   = 1.0 S
</literal>

<image>00499.png</image>

<para>
The Parallel conductances (resistors) may be combined by addition of the conductances. Though, we will not redraw the circuit. The circuit is ready for application of the node voltage method.
</para>

<literal>
<sp>          G<subscript>A</subscript> = G<subscript>1</subscript> + G<subscript>2</subscript> = 0.5 S + 0.25 S = 0.75 S
<sp>          G<subscript>B</subscript> = G<subscript>4</subscript> + G<subscript>5</subscript> = 0.2 S + 1 S = 1.2 S 
</literal>


<para>
Deriving a general node voltage method, we write a pair of KCL equations in terms of unknown node voltages V<subscript>1</subscript> and V<subscript>2</subscript> this one time. We do this to illustrate a pattern for writing equations by inspection.
</para>


<literal>
<sp>          G<subscript>A</subscript>E<subscript>1</subscript> + G<subscript>3</subscript>(E<subscript>1</subscript> - E<subscript>2</subscript>) = I<subscript>1</subscript>             (1)
<sp>          G<subscript>B</subscript>E<subscript>2</subscript> - G<subscript>3</subscript>(E<subscript>1</subscript> - E<subscript>2</subscript>) = I<subscript>2</subscript>             (2)


<sp>          (G<subscript>A</subscript> + G<subscript>3</subscript> )E<subscript>1</subscript>         -G<subscript>3</subscript>E<subscript>2</subscript> = I<subscript>1</subscript>     (1)
<sp>                 -G<subscript>3</subscript>E<subscript>1</subscript> + (G<subscript>B</subscript> + G<subscript>3</subscript>)E<subscript>2</subscript> = I<subscript>2</subscript>     (2)
</literal>

<para>
The coefficients of the last pair of equations above have been rearranged to show  a pattern. The sum of conductances connected to the first node is the positive coefficient of the first voltage in equation (1). The sum of conductances connected to the second node is the positive coefficient of the second voltage in equation (2). The other coefficients are negative, representing  conductances between nodes. For both equations, the right hand side is equal to the respective  current source connected to the node. This pattern allows us to quickly write the equations by inspection.  This leads to a set of rules for the node voltage method of analysis.
</para>


<itemize>
<item><bold>Node voltage rules:</bold></item>
<item>Convert voltage sources in series with a resistor to an equivalent current source with the resistor in parallel.</item>
<item>Change resistor values to conductances.</item>
<item>Select a reference node(E<subscript>0</subscript>)</item>
<item>Assign unknown voltages (E<subscript>1</subscript>)(E<subscript>2</subscript>) ... (E<subscript>N</subscript>)to remaining nodes.</item>
<item>Write a KCL equation for each node 1,2, ... N. The positive coefficient of the first voltage in the first equation is the sum of conductances connected to the node. The coefficient for the second voltage in the second equation is the sum of conductances connected to that node. Repeat for coefficient of third voltage, third equation, and other equations. These coefficients fall on a diagonal.</item>
<item>All other coefficients for all equations are negative, representing conductances between nodes. The first equation, second coefficient is the conductance from node 1 to node 2, the third coefficient is the conductance from node 1 to node 3. Fill in negative coefficients for other equations.</item>
<item>The right hand side of the equations is the current source connected to the respective nodes.</item>
<item>Solve system of equations for unknown node voltages.</item>
</itemize>

<para>
<bold>Example:</bold> Set up the equations and solve for the node voltages using the numerical values in the above figure.
</para>


<para>
<bold>Solution:</bold>
</para>


<literal>
<sp>          (0.5+0.25+0.4)E<subscript>1</subscript> -(0.4)E<subscript>2</subscript>=  5 
<sp>         -(0.4)E<subscript>1</subscript> +(0.4+0.2+1.0)E<subscript>2</subscript> = -4
<sp>          (1.15)E<subscript>1</subscript> -(0.4)E<subscript>2</subscript>=  5 
<sp>         -(0.4)E<subscript>1</subscript> +(1.6)E<subscript>2  </subscript> = -4
<sp>          E<subscript>1</subscript> =  3.8095
<sp>          E<subscript>2</subscript> = -1.5476
</literal>


<para>
The solution of two equations can be performed with a calculator, or with octave (not shown).<cite>octav</cite> 
<comment>Split, cannot handle two cites in one line, split line with.</comment>
The solution is verified with SPICE based on the original schematic diagram with voltage sources. <cite>spi</cite> Though, the circuit with the current sources could have been simulated.
</para>



<literal>
<sp>          V1 11 0 DC 10
<sp>          V2 22 0 DC -4
<sp>          r1 11 1 2
<sp>          r2 1 0 4
<sp>          r3 1 2 2.5
<sp>          r4 2 0 5
<sp>          r5 2 22 1
<sp>          .DC V1 10 10 1 V2 -4 -4 1 
<sp>          .print DC V(1) V(2)
<sp>          .end

<sp>               v(1)            v(2)
<sp>           3.809524e+00    -1.547619e+00
</literal>


<para>
One more example. This one has three nodes.  We do not list the conductances on the schematic diagram. However, G<subscript>1</subscript> = 1/R<subscript>1</subscript>, etc.

</para>

<image>00500.png</image>

<para>
There are three nodes to write equations for by inspection. Note that the coefficients are positive for equation (1) E<subscript>1</subscript>, equation (2) E<subscript>2</subscript>, and equation (3) E<subscript>3</subscript>. These are the sums of all conductances connected to the nodes. All other coefficients are negative, representing a conductance between nodes. The right hand side of the equations is the associated current source, 0.136092 A for the only current source at node 1. The other equations are zero on the right hand side for lack of current sources.  We are too lazy to calculate the conductances for the resistors on the diagram. Thus, the subscripted G's are the coefficients.
</para>


<literal>
<sp>          (G<subscript>1</subscript> + G<subscript>2</subscript>)E<subscript>1</subscript>              -G<subscript>1</subscript>E<subscript>2</subscript>             -G<subscript>2</subscript>E<subscript>3</subscript>      = 0.136092
<sp>                -G<subscript>1</subscript>E<subscript>1</subscript>  +(G<subscript>1</subscript> + G<subscript>3</subscript> + G<subscript>4</subscript>)E<subscript>2</subscript>             -G<subscript>3</subscript>E<subscript>3</subscript>      = 0
<sp>                -G<subscript>2</subscript>E<subscript>1</subscript>              -G<subscript>3</subscript>E<subscript>2</subscript> +(G<subscript>2</subscript> + G<subscript>3</subscript> + G<subscript>5</subscript>)E<subscript>3</subscript>      = 0
</literal>

<para>
We are so lazy that we enter reciprocal resistances and sums of reciprocal resistances into the octave ``A'' matrix, letting octave compute the matrix of conductances after ``A=''.<cite>octav</cite> The initial entry line was so long that it was split into three rows. This is different than previous examples. The entered ``A'' matrix is delineated by starting and ending square brackets. Column elements are space separated. Rows are ``new line'' separated. Commas and semicolons are not need as separators. Though, the current vector at ``b'' is semicolon separated to yield a column vector of currents.
</para>


<literal>
<sp>          octave:12> A = [1/150+1/50 -1/150 -1/50
<sp>          > -1/150 1/150+1/100+1/300 -1/100
<sp>          > -1/50 -1/100 1/50+1/100+1/250]
<sp>          A =
<sp>             0.0266667  -0.0066667  -0.0200000
<sp>            -0.0066667   0.0200000  -0.0100000
<sp>            -0.0200000  -0.0100000   0.0340000

<sp>          octave:13> b = [0.136092;0;0]
<sp>          b =
<sp>             0.13609
<sp>             0.00000
<sp>             0.00000

<sp>          octave:14> x=A\b
<sp>          x =
<sp>             24.000
<sp>             17.655
<sp>             19.310
</literal>


<para>
Note that the ``A'' matrix diagonal coefficients are positive, That all other coefficients are negative.
</para>

<para>
The solution as a voltage vector is at ``x''. E<subscript>1</subscript> = 24.000 V,  E<subscript>2</subscript> = 17.655 V, E<subscript>3</subscript> = 19.310 V.  These three voltages compare to the previous mesh current and SPICE solutions to the unbalanced bridge problem. This is no coincidence, for the 0.13609 A current source was purposely chosen to yield the 24 V used as a voltage source in that problem.
</para>


<itemize>
<item>Summary</item>
<item>Given a network of conductances and current sources, the  node voltage method of circuit analysis solves for unknown node voltages from KCL equations.</item>
<item>See rules above for details in writing the equations by inspection.</item>
<item>The unit of conductance G is the siemens S. Conductance is the reciprocal of resistance: G = 1/R</item>
</itemize>


</section>







<section>
<sectiontitle>Introduction to network theorems</sectiontitle>

<index>Network theorem</index>
<index>Theorem, network</index>

<para>
Anyone who's studied geometry should be familiar with the concept of a <italic>theorem</italic>: a relatively simple rule used to solve a problem, derived from a more intensive analysis using fundamental rules of mathematics.  At least hypothetically, any problem in math can be solved just by using the simple rules of arithmetic (in fact, this is how modern digital computers carry out the most complex mathematical calculations: by repeating many cycles of additions and subtractions!), but human beings aren't as consistent or as fast as a digital computer.  We need ``shortcut'' methods in order to avoid procedural errors.
</para>

<para>
In electric network analysis, the fundamental rules are Ohm's Law and Kirchhoff's Laws.  While these humble laws may be applied to analyze just about any circuit configuration (even if we have to resort to complex algebra to handle multiple unknowns), there are some ``shortcut'' methods of analysis to make the math easier for the average human.
</para>

<para>
As with any theorem of geometry or algebra, these network theorems are derived from fundamental rules.  In this chapter, I'm not going to delve into the formal proofs of any of these theorems.  If you doubt their validity, you can always empirically test them by setting up example circuits and calculating values using the ``old'' (simultaneous equation) methods versus the ``new'' theorems, to see if the answers coincide.  They always should!
</para>

</section>







<section>
<sectiontitle>Millman's Theorem</sectiontitle>

<index>Millman's Theorem</index>
<index>Theorem, Millman's</index>

<para>
In Millman's Theorem, the circuit is re-drawn as a parallel network of branches, each branch containing a resistor or series battery/resistor combination.  Millman's Theorem is applicable only to those circuits which can be re-drawn accordingly.  Here again is our example circuit used for the last two analysis methods:
</para>

<image>00209.png</image>

<para>
And here is that same circuit, re-drawn for the sake of applying Millman's Theorem:
</para>

<image>00223.png</image>

<para>
By considering the supply voltage within each branch and the resistance within each branch, Millman's Theorem will tell us the voltage across all branches.  Please note that I've labeled the battery in the rightmost branch as ``B<subscript>3</subscript>'' to clearly denote it as being in the third branch, even though there is no ``B<subscript>2</subscript>'' in the circuit!
</para>

<para>
Millman's Theorem is nothing more than a long equation, applied to any circuit drawn as a set of parallel-connected branches, each branch with its own voltage source and series resistance:
</para>

<image>10188.png</image>
 
<para>
Substituting actual voltage and resistance figures from our example circuit for the variable terms of this equation, we get the following expression:
</para>

<image>10189.png</image>

<para>
The final answer of 8 volts is the voltage seen across all parallel branches, like this:
</para>

<image>00224.png</image>

<para>
The polarity of all voltages in Millman's Theorem are referenced to the same point.  In the example circuit above, I used the bottom wire of the parallel circuit as my reference point, and so the voltages within each branch (28 for the R<subscript>1</subscript> branch, 0 for the R<subscript>2</subscript> branch, and 7 for the R<subscript>3</subscript> branch) were inserted into the equation as positive numbers.  Likewise, when the answer came out to 8 volts (positive), this meant that the top wire of the circuit was positive with respect to the bottom wire (the original point of reference).  If both batteries had been connected backwards (negative ends up and positive ends down), the voltage for branch 1 would have been entered into the equation as a -28 volts, the voltage for branch 3 as -7 volts, and the resulting answer of -8 volts would have told us that the top wire was negative with respect to the bottom wire (our initial point of reference).
</para>

<para>
To solve for resistor voltage drops, the Millman voltage (across the parallel network) must be compared against the voltage source within each branch, using the principle of voltages adding in series to determine the magnitude and polarity of voltage across each resistor:
</para>

<image>10190.png</image>

<para>
To solve for branch currents, each resistor voltage drop can be divided by its respective resistance (I=E/R):
</para>

<image>10191.png</image>

<para>
The direction of current through each resistor is determined by the polarity across each resistor, <italic>not</italic> by the polarity across each battery, as current can be forced backwards through a battery, as is the case with B<subscript>3</subscript> in the example circuit.  This is important to keep in mind, since Millman's Theorem doesn't provide as direct an indication of ``wrong'' current direction as does the Branch Current or Mesh Current methods.  You must pay close attention to the polarities of resistor voltage drops as given by Kirchhoff's Voltage Law, determining direction of currents from that.
</para>

<image>00226.png</image>

<para>
Millman's Theorem is very convenient for determining the voltage across a set of parallel branches, where there are enough voltage sources present to preclude solution via regular series-parallel reduction method.  It also is easy in the sense that it doesn't require the use of simultaneous equations.  However, it is limited in that it only applied to circuits which can be re-drawn to fit this form.  It cannot be used, for example, to solve an unbalanced bridge circuit.  And, even in cases where Millman's Theorem can be applied, the solution of individual resistor voltage drops can be a bit daunting to some, the Millman's Theorem equation only providing a single figure for branch voltage.
</para>

<para>
As you will see, each network analysis method has its own advantages and disadvantages.  Each method is a tool, and there is no tool that is perfect for all jobs.  The skilled technician, however, carries these methods in his or her mind like a mechanic carries a set of tools in his or her tool box.  The more tools you have equipped yourself with, the better prepared you will be for any eventuality.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Millman's Theorem treats circuits as a parallel set of series-component branches.</item>
<item>All voltages entered and solved for in Millman's Theorem are polarity-referenced at the same point in the circuit (typically the bottom wire of the parallel network).</item>
</itemize>

</section>






<section>
<sectiontitle>Superposition Theorem</sectiontitle>

<index>Superposition Theorem</index>
<index>Theorem, Superposition</index>

<para>
Superposition theorem is one of those strokes of genius that takes a complex subject and simplifies it in a way that makes perfect sense.  A theorem like Millman's certainly works well, but it is not quite obvious <italic>why</italic> it works so well.  Superposition, on the other hand, is obvious.
</para>

<para>
The strategy used in the Superposition Theorem is to eliminate all but one source of power within a network at a time, using series/parallel analysis to determine voltage drops (and/or currents) within the modified network for each power source separately.  Then, once voltage drops and/or currents have been determined for each power source working separately, the values are all ``superimposed'' on top of each other (added algebraically) to find the actual voltage drops/currents with all sources active.  Let's look at our example circuit again and apply Superposition Theorem to it:
</para>

<image>00209.png</image>

<para>
Since we have two sources of power in this circuit, we will have to calculate two sets of values for voltage drops and/or currents, one for the circuit with only the 28 volt battery in effect. . .
</para>

<image>00227.png</image>

<para>
. . . and one for the circuit with only the 7 volt battery in effect:
</para>

<image>00228.png</image>

<para>
When re-drawing the circuit for series/parallel analysis with one source, all other voltage sources are replaced by wires (shorts), and all current sources with open circuits (breaks).  Since we only have voltage sources (batteries) in our example circuit, we will replace every inactive source during analysis with a wire.
</para>

<para>
Analyzing the circuit with only the 28 volt battery, we obtain the following values for voltage and current:
</para>

<image>10192.png</image>

<para>

</para>

<bigspace>

<image>00229.png</image>

<para>
Analyzing the circuit with only the 7 volt battery, we obtain another set of values for voltage and current:
</para>

<image>10193.png</image>

<para>

</para>

<bigspace>

<image>00230.png</image>

<para>
When superimposing these values of voltage and current, we have to be very careful to consider polarity (voltage drop) and direction (electron flow), as the values have to be added <italic>algebraically</italic>.
</para>

<image>00231.png</image>

<para>
Applying these superimposed voltage figures to the circuit, the end result looks something like this:
</para>

<image>00232.png</image>

<para>
Currents add up algebraically as well, and can either be superimposed as done with the resistor voltage drops, or simply calculated from the final voltage drops and respective resistances (I=E/R).  Either way, the answers will be the same.  Here I will show the superposition method applied to current:
</para>

<image>00233.png</image>

<para>
Once again applying these superimposed figures to our circuit:
</para>

<image>00234.png</image>

<para>
Quite simple and elegant, don't you think?  It must be noted, though, that the Superposition Theorem works only for circuits that are reducible to series/parallel combinations for each of the power sources at a time (thus, this theorem is useless for analyzing an unbalanced bridge circuit), and it only works where the underlying equations are linear (no mathematical powers or roots).  The requisite of linearity means that Superposition Theorem is only applicable for determining voltage and current, <italic>not power!!!</italic>  Power dissipations, being nonlinear functions, do not algebraically add to an accurate total when only one source is considered at a time.  The need for linearity also means this Theorem cannot be applied in circuits where the resistance of a component changes with voltage or current.  Hence, networks containing components like lamps (incandescent or gas-discharge) or varistors could not be analyzed.
</para>

<para>
Another prerequisite for Superposition Theorem is that all components must be ``bilateral,'' meaning that they behave the same with electrons flowing either direction through them.  Resistors have no polarity-specific behavior, and so the circuits we've been studying so far all meet this criterion.
</para>

<para>
The Superposition Theorem finds use in the study of alternating current (AC) circuits, and semiconductor (amplifier) circuits, where sometimes AC is often mixed (superimposed) with DC.  Because AC voltage and current equations (Ohm's Law) are linear just like DC, we can use Superposition to analyze the circuit with just the DC power source, then just the AC power source, combining the results to tell what will happen with both AC and DC sources in effect.  For now, though, Superposition will suffice as a break from having to do simultaneous equations to analyze a circuit.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>The Superposition Theorem states that a circuit can be analyzed with only one source of power at a time, the corresponding component voltages and currents algebraically added to find out what they'll do with all power sources in effect.</item>
<item>To negate all but one power source for analysis, replace any source of voltage (batteries) with a wire; replace any current source with an open (break).</item>
</itemize>

</section>







<section>
<sectiontitle>Thevenin's Theorem</sectiontitle>

<index>Thevenin's Theorem</index>
<index>Theorem, Thevenin's</index>
<index>Nonlinear circuit</index>
<index>Circuits, nonlinear</index>

<para>
Thevenin's Theorem states that it is possible to simplify any linear circuit, no matter how complex, to an equivalent circuit with just a single voltage source and series resistance connected to a load.  The qualification of ``linear'' is identical to that found in the Superposition Theorem, where all the underlying equations must be linear (no exponents or roots).  If we're dealing with passive components (such as resistors, and later, inductors and capacitors), this is true.  However, there are some components (especially certain gas-discharge and semiconductor components) which are nonlinear: that is, their opposition to current <italic>changes</italic> with voltage and/or current.  As such, we would call circuits containing these types of components, <italic>nonlinear circuits</italic>.
</para>

<para>
Thevenin's Theorem is especially useful in analyzing power systems and other circuits where one particular resistor in the circuit (called the ``load'' resistor) is subject to change, and re-calculation of the circuit is necessary with each trial value of load resistance, to determine voltage across it and current through it.  Let's take another look at our example circuit:
</para>

<image>00209.png</image>

<para>
Let's suppose that we decide to designate R<subscript>2</subscript> as the ``load'' resistor in this circuit.  We already have four methods of analysis at our disposal (Branch Current, Mesh Current, Millman's Theorem, and Superposition Theorem) to use in determining voltage across R<subscript>2</subscript> and current through R<subscript>2</subscript>, but each of these methods are time-consuming.  Imagine repeating any of these methods over and over again to find what would happen if the load resistance changed (changing load resistance is <italic>very</italic> common in power systems, as multiple loads get switched on and off as needed. the total resistance of their parallel connections changing depending on how many are connected at a time).  This could potentially involve a <italic>lot</italic> of work!
</para>

<index>Equivalent circuit</index>
<index>Circuit, equivalent</index>

<para>
Thevenin's Theorem makes this easy by temporarily removing the load resistance from the original circuit and reducing what's left to an equivalent circuit composed of a single voltage source and series resistance.  The load resistance can then be re-connected to this ``Thevenin equivalent circuit'' and calculations carried out as if the whole network were nothing but a simple series circuit:
</para>

<image>00235.png</image>

<para>
. . . after Thevenin conversion . . .
</para>

<image>00236.png</image>

<para>
The ``Thevenin Equivalent Circuit'' is the electrical equivalent of B<subscript>1</subscript>, R<subscript>1</subscript>, R<subscript>3</subscript>, and B<subscript>2</subscript> as seen from the two points where our load resistor (R<subscript>2</subscript>) connects.
</para>

<para>
The Thevenin equivalent circuit, if correctly derived, will behave exactly the same as the original circuit formed by B<subscript>1</subscript>, R<subscript>1</subscript>, R<subscript>3</subscript>, and B<subscript>2</subscript>.  In other words, the load resistor (R<subscript>2</subscript>) voltage and current should be exactly the same for the same value of load resistance in the two circuits.  The load resistor R<subscript>2</subscript> cannot ``tell the difference'' between the original network of B<subscript>1</subscript>, R<subscript>1</subscript>, R<subscript>3</subscript>, and B<subscript>2</subscript>, and the Thevenin equivalent circuit of E<subscript>Thevenin</subscript>, and R<subscript>Thevenin</subscript>, provided that the values for E<subscript>Thevenin</subscript> and R<subscript>Thevenin</subscript> have been calculated correctly.
</para>

<para>
The advantage in performing the ``Thevenin conversion'' to the simpler circuit, of course, is that it makes load voltage and load current so much easier to solve than in the original network.  Calculating the equivalent Thevenin source voltage and series resistance is actually quite easy.  First, the chosen load resistor is removed from the original circuit, replaced with a break (open circuit):
</para>

<image>00237.png</image>

<para>
Next, the voltage between the two points where the load resistor used to be attached is determined.  Use whatever analysis methods are at your disposal to do this.  In this case, the original circuit with the load resistor removed is nothing more than a simple series circuit with opposing batteries, and so we can determine the voltage across the open load terminals by applying the rules of series circuits, Ohm's Law, and Kirchhoff's Voltage Law:
</para>

<image>10194.png</image>

<para>

</para>

<bigspace>

<image>00238.png</image>

<para>
The voltage between the two load connection points can be figured from the one of the battery's voltage and one of the resistor's voltage drops, and comes out to 11.2 volts.  This is our ``Thevenin voltage'' (E<subscript>Thevenin</subscript>) in the equivalent circuit:
</para>

<image>00239.png</image>

<para>
To find the Thevenin series resistance for our equivalent circuit, we need to take the original circuit (with the load resistor still removed), remove the power sources (in the same style as we did with the Superposition Theorem: voltage sources replaced with wires and current sources replaced with breaks), and figure the resistance from one load terminal to the other:
</para>

<image>00240.png</image>

<para>
With the removal of the two batteries, the total resistance measured at this location is equal to R<subscript>1</subscript> and R<subscript>3</subscript> in parallel: 0.8 <OMEGA>.  This is our ``Thevenin resistance'' (R<subscript>Thevenin</subscript>) for the equivalent circuit:
</para>

<image>00241.png</image>

<para>
With the load resistor (2 <OMEGA>) attached between the connection points, we can determine voltage across it and current through it as though the whole network were nothing more than a simple series circuit:
</para>

<image>10195.png</image>

<para>
Notice that the voltage and current figures for R<subscript>2</subscript> (8 volts, 4 amps) are identical to those found using other methods of analysis.  Also notice that the voltage and current figures for the Thevenin series resistance and the Thevenin source (<italic>total</italic>) do not apply to any component in the original, complex circuit.  Thevenin's Theorem is only useful for determining what happens to a <italic>single</italic> resistor in a network: the load.
</para>

<para>
The advantage, of course, is that you can quickly determine what would happen to that single resistor if it were of a value other than 2 <OMEGA> without having to go through a lot of analysis again.  Just plug in that other value for the load resistor into the Thevenin equivalent circuit and a little bit of series circuit calculation will give you the result.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Thevenin's Theorem is a way to reduce a network to an equivalent circuit composed of a single voltage source, series resistance, and series load.</item>
<item>Steps to follow for Thevenin's Theorem:</item>
<item>(1) Find the Thevenin source voltage by removing the load resistor from the original circuit and calculating voltage across the open connection points where the load resistor used to be.</item>
<item>(2) Find the Thevenin resistance by removing all power sources in  the original circuit (voltage sources shorted and current sources open) and calculating total resistance between the open connection points.</item>
<item>(3) Draw the Thevenin equivalent circuit, with the Thevenin voltage source in series with the Thevenin resistance.  The load resistor re-attaches between the two open points of the equivalent circuit.</item>
<item>(4) Analyze voltage and current for the load resistor following the rules for series circuits.</item>
</itemize>

</section>








<section>
<sectiontitle>Norton's Theorem</sectiontitle>

<index>Norton's Theorem</index>
<index>Theorem, Norton's</index>

<para>
Norton's Theorem states that it is possible to simplify any linear circuit, no matter how complex, to an equivalent circuit with just a single current source and parallel resistance connected to a load.  Just as with Thevenin's Theorem, the qualification of ``linear'' is identical to that found in the Superposition Theorem: all underlying equations must be linear (no exponents or roots).
</para>

<para>
Contrasting our original example circuit against the Norton equivalent: it looks something like this:
</para>

<image>00235.png</image>

<para>
. . . after Norton conversion . . .
</para>

<image>00242.png</image>

<index>Current source</index>
<index>Source, current</index>

<para>
Remember that a <italic>current source</italic> is a component whose job is to provide a constant amount of current, outputting as much or as little voltage necessary to maintain that constant current.
</para>

<para>
As with Thevenin's Theorem, everything in the original circuit except the load resistance has been reduced to an equivalent circuit that is simpler to analyze.  Also similar to Thevenin's Theorem are the steps used in Norton's Theorem to calculate the Norton source current (I<subscript>Norton</subscript>) and Norton resistance (R<subscript>Norton</subscript>).
</para>

<para>
As before, the first step is to identify the load resistance and remove it from the original circuit:
</para>

<image>00237.png</image>

<para>
Then, to find the Norton current (for the current source in the Norton equivalent circuit), place a direct wire (short) connection between the load points and determine the resultant current.  Note that this step is exactly opposite the respective step in Thevenin's Theorem, where we replaced the load resistor with a break (open circuit):
</para>

<image>00243.png</image>

<para>
With zero voltage dropped between the load resistor connection points, the current through R<subscript>1</subscript> is strictly a function of B<subscript>1</subscript>'s voltage and R<subscript>1</subscript>'s resistance: 7 amps (I=E/R).  Likewise, the current through R<subscript>3</subscript> is now strictly a function of B<subscript>2</subscript>'s voltage and R<subscript>3</subscript>'s resistance: 7 amps (I=E/R).  The total current through the short between the load connection points is the sum of these two currents: 7 amps + 7 amps = 14 amps.  This figure of 14 amps becomes the Norton source current (I<subscript>Norton</subscript>) in our equivalent circuit:
</para>

<image>00244.png</image>

<para>
Remember, the arrow notation for a current source points in the direction <italic>opposite</italic> that of electron flow.  Again, apologies for the confusion.  For better or for worse, this is standard electronic symbol notation.  Blame Mr. Franklin again!
</para>

<para>
To calculate the Norton resistance (R<subscript>Norton</subscript>), we do the exact same thing as we did for calculating Thevenin resistance (R<subscript>Thevenin</subscript>): take the original circuit (with the load resistor still removed), remove the power sources (in the same style as we did with the Superposition Theorem: voltage sources replaced with wires and current sources replaced with breaks), and figure total resistance from one load connection point to the other:
</para>

<image>00240.png</image>

<para>
Now our Norton equivalent circuit looks like this:
</para>

<image>00245.png</image>

<para>
If we re-connect our original load resistance of 2 <OMEGA>, we can analyze the Norton circuit as a simple parallel arrangement:
</para>

<image>10196.png</image>

<para>
As with the Thevenin equivalent circuit, the only useful information from this analysis is the voltage and current values for R<subscript>2</subscript>; the rest of the information is irrelevant to the original circuit.  However, the same advantages seen with Thevenin's Theorem apply to Norton's as well: if we wish to analyze load resistor voltage and current over several different values of load resistance, we can use the Norton equivalent circuit again and again, applying nothing more complex than simple parallel circuit analysis to determine what's happening with each trial load.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Norton's Theorem is a way to reduce a network to an equivalent circuit composed of a single current source, parallel resistance, and parallel load.</item>
<item>Steps to follow for Norton's Theorem:</item>
<item>(1) Find the Norton source current by removing the load resistor from the original circuit and calculating current through a short (wire) jumping across the open connection points where the load resistor used to be.</item>
<item>(2) Find the Norton resistance by removing all power sources in the original circuit (voltage sources shorted and current sources open) and calculating total resistance between the open connection points.</item>
<item>(3) Draw the Norton equivalent circuit, with the Norton current source in parallel with the Norton resistance.  The load resistor re-attaches between the two open points of the equivalent circuit.</item>
<item>(4) Analyze voltage and current for the load resistor following the rules for parallel circuits.</item>
</itemize>

</section>








<section>
<sectiontitle>Thevenin-Norton equivalencies</sectiontitle>

<index>Equivalent circuit</index>
<index>Circuit, equivalent</index>

<para>
Since Thevenin's and Norton's Theorems are two equally valid methods of reducing a complex network down to something simpler to analyze, there must be some way to convert a Thevenin equivalent circuit to a Norton equivalent circuit, and vice versa (just what you were dying to know, right?).  Well, the procedure is very simple.
</para>

<para>
You may have noticed that the procedure for calculating Thevenin resistance is identical to the procedure for calculating Norton resistance: remove all power sources and determine resistance between the open load connection points.  As such, Thevenin and Norton resistances for the same original network must be equal.  Using the example circuits from the last two sections, we can see that the two resistances are indeed equal:
</para>

<image>00241.png</image>

<para>

</para>

<bigspace>

<image>00245.png</image>

<para>

</para>

<bigspace>

<image>10197.png</image>

<para>
Considering the fact that both Thevenin and Norton equivalent circuits are intended to behave the same as the original network in supplying voltage and current to the load resistor (as seen from the perspective of the load connection points), these two equivalent circuits, having been derived from the same original network should behave identically.
</para>

<para>
This means that both Thevenin and Norton equivalent circuits should produce the same voltage across the load terminals with no load resistor attached.  With the Thevenin equivalent, the open-circuited voltage would be equal to the Thevenin source voltage (no circuit current present to drop voltage across the series resistor), which is 11.2 volts in this case.  With the Norton equivalent circuit, all 14 amps from the Norton current source would have to flow through the 0.8 <OMEGA> Norton resistance, producing the exact same voltage, 11.2 volts (E=IR).  Thus, we can say that the Thevenin voltage is equal to the Norton current times the Norton resistance:
</para>

<image>10198.png</image>

<para>
So, if we wanted to convert a Norton equivalent circuit to a Thevenin equivalent circuit, we could use the same resistance and calculate the Thevenin voltage with Ohm's Law.
</para>

<para>
Conversely, both Thevenin and Norton equivalent circuits should generate the same amount of current through a short circuit across the load terminals.  With the Norton equivalent, the short-circuit current would be exactly equal to the Norton source current, which is 14 amps in this case.  With the Thevenin equivalent, all 11.2 volts would be applied across the 0.8 <OMEGA> Thevenin resistance, producing the exact same current through the short, 14 amps (I=E/R).  Thus, we can say that the Norton current is equal to the Thevenin voltage divided by the Thevenin resistance:
</para>

<image>10199.png</image>

<para>
This equivalence between Thevenin and Norton circuits can be a useful tool in itself, as we shall see in the next section.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Thevenin and Norton resistances are equal.</item>
<item>Thevenin voltage is equal to Norton current times Norton resistance.</item>
<item>Norton current is equal to Thevenin voltage divided by Thevenin resistance.</item>
</itemize>

</section>








<section>
<sectiontitle>Millman's Theorem revisited</sectiontitle>


<index>Millman's Theorem</index>
<index>Theorem, Millman's</index>

<para>
You may have wondered where we got that strange equation for the determination of ``Millman Voltage'' across parallel branches of a circuit where each branch contains a series resistance and voltage source:
</para>

<image>10188.png</image>

<para>
Parts of this equation seem familiar to equations we've seen before.  For instance, the denominator of the large fraction looks conspicuously like the denominator of our parallel resistance equation.  And, of course, the E/R terms in the numerator of the large fraction should give figures for current, Ohm's Law being what it is (I=E/R).
</para>

<para>
Now that we've covered Thevenin and Norton source equivalencies, we have the tools necessary to understand Millman's equation.  What Millman's equation is actually doing is treating each branch (with its series voltage source and resistance) as a Thevenin equivalent circuit and then converting each one into equivalent Norton circuits.
</para>

<image>00223.png</image>

<para>
Thus, in the circuit above, battery B<subscript>1</subscript> and resistor R<subscript>1</subscript> are seen as a Thevenin source to be converted into a Norton source of 7 amps (28 volts / 4 <OMEGA>) in parallel with a 4 <OMEGA> resistor.  The rightmost branch will be converted into a 7 amp current source (7 volts / 1 <OMEGA>) and 1 <OMEGA> resistor in parallel.  The center branch, containing no voltage source at all, will be converted into a Norton source of 0 amps in parallel with a 2 <OMEGA> resistor:
</para>

<image>00246.png</image>

<para>
Since current sources directly add their respective currents in parallel, the total circuit current will be 7 + 0 + 7, or 14 amps.  This addition of Norton source currents is what's being represented in the numerator of the Millman equation:
</para>

<image>10200.png</image>

<para>
All the Norton resistances are in parallel with each other as well in the equivalent circuit, so they diminish to create a total resistance.  This diminishing of source resistances is what's being represented in the denominator of the Millman's equation:
</para>

<image>10201.png</image>

<para>
In this case, the resistance total will be equal to 571.43 milliohms (571.43 m<OMEGA>).  We can re-draw our equivalent circuit now as one with a single Norton current source and Norton resistance: 
</para>

<image>00247.png</image>

<para>
Ohm's Law can tell us the voltage across these two components now (E=IR):
</para>

<image>10202.png</image>

<para>

</para>

<bigspace>

<image>00248.png</image>

<para>
Let's summarize what we know about the circuit thus far.  We know that the total current in this circuit is given by the sum of all the branch voltages divided by their respective resistances.  We also know that the total resistance is found by taking the reciprocal of all the branch resistance reciprocals.  Furthermore, we should be well aware of the fact that total voltage across all the branches can be found by multiplying total current by total resistance (E=IR).  All we need to do is put together the two equations we had earlier for total circuit current and total resistance, multiplying them to find total voltage:
</para>

<image>10203.png</image>

<para>
The Millman's equation is nothing more than a Thevenin-to-Norton conversion matched together with the parallel resistance formula to find total voltage across all the branches of the circuit.  So, hopefully some of the mystery is gone now!
</para>

</section>






<section>
<sectiontitle>Maximum Power Transfer Theorem</sectiontitle>

<index>Maximum Power Transfer Theorem</index>
<index>Theorem, Maximum Power Transfer</index>

<para>
The Maximum Power Transfer Theorem is not so much a means of analysis as it is an aid to system design.  Simply stated, the maximum amount of power will be dissipated by a load resistance when that load resistance is equal to the Thevenin/Norton resistance of the network supplying the power.  If the load resistance is lower or higher than the Thevenin/Norton resistance of the source network, its dissipated power will be less than maximum.
</para>

<index>Impedance</index>

<para>
This is essentially what is aimed for in radio transmitter design , where the antenna or transmission line ``impedance'' is matched to final power amplifier ``impedance'' for maximum radio frequency power output.  Impedance, the overall opposition to AC and DC current, is very similar to resistance, and must be equal between source and load for the greatest amount of power to be transferred to the load.  A load impedance that is too high will result in low power output.  A load impedance that is too low will not only result in low power output, but possibly overheating of the amplifier due to the power dissipated in its internal (Thevenin or Norton) impedance.
</para>

<para>
Taking our Thevenin equivalent example circuit, the Maximum Power Transfer Theorem tells us that the load resistance resulting in greatest power dissipation is equal in value to the Thevenin resistance (in this case, 0.8 <OMEGA>):
</para>

<image>00249.png</image>

<para>
With this value of load resistance, the dissipated power will be 39.2 watts:
</para>

<image>10204.png</image>

<para>
If we were to try a lower value for the load resistance (0.5 <OMEGA> instead of 0.8 <OMEGA>, for example), our power dissipated by the load resistance would decrease:
</para>

<image>10205.png</image>

<para>
Power dissipation increased for both the Thevenin resistance and the total circuit, but it decreased for the load resistor.  Likewise, if we increase the load resistance (1.1 <OMEGA> instead of 0.8 <OMEGA>, for example), power dissipation will also be less than it was at 0.8 <OMEGA> exactly:
</para>

<image>10206.png</image>

<para>
If you were designing a circuit for maximum power dissipation at the load resistance, this theorem would be very useful.  Having reduced a network down to a Thevenin voltage and resistance (or Norton current and resistance), you simply set the load resistance equal to that Thevenin or Norton equivalent (or vice versa) to ensure maximum power dissipation at the load.  Practical applications of this might include radio transmitter final amplifier stage design (seeking to maximize power delivered to the antenna or transmission line), a <italic>grid tied inverter</italic> loading a solar array, or electric vehicle design (seeking to maximize power delivered to drive motor).
</para>

<para>
<bold>The Maximum Power Transfer Theorem is not:</bold> Maximum power transfer does not coincide with maximum efficiency. Application of The Maximum Power Transfer theorem to AC power distribution will not result in maximum or even high efficiency. The goal of high efficiency is more important for AC power distribution, which dictates a relatively low generator impedance compared to load impedance.
</para>

<para>
Similar to AC power distribution, high fidelity audio amplifiers are designed for a relatively low output impedance and a relatively high speaker load impedance. As a ratio, "output impdance" : "load impedance" is known as <italic>damping factor</italic>, typically in the range of 100 to 1000.  <cite>rar</cite> <cite>dfd</cite>
</para>

<para>
Maximum power transfer does not coincide with the goal of lowest noise. For example, the low-level radio frequency amplifier between the antenna and a  radio receiver is often designed for lowest possible noise. This often requires a mismatch of the amplifier input impedance to the antenna as compared with that dictated by the maximum power transfer theorem. 
</para>




<itemize>
<item><bold>REVIEW:</bold></item>
<item>The <italic>Maximum Power Transfer Theorem</italic> states that the maximum amount of power will be dissipated by a load resistance if it is equal to the Thevenin or Norton resistance of the network supplying power.</item>
<item>The Maximum Power Transfer Theorem does <bold>not</bold> satisfy the goal of  maximum efficiency.</item>
</itemize>

</section>








<section>
<sectiontitle><DELTA>-Y and Y-<DELTA> conversions</sectiontitle>

<index>Delta-Y conversion</index>
<index>Y-Delta conversion</index>

<para>
In many circuit applications, we encounter components connected together in one of two ways to form a three-terminal network: the ``Delta,'' or <DELTA> (also known as the ``Pi,'' or <pi>) configuration, and the ``Y'' (also known as the ``T'') configuration.
</para>

<image>00250.png</image>

<index>Equivalent circuit</index>
<index>Circuit, equivalent</index>

<para>
It is possible to calculate the proper values of resistors necessary to form one kind of network (<DELTA> or Y) that behaves identically to the other kind, as analyzed from the terminal connections alone.  That is, if we had two separate resistor networks, one <DELTA> and one Y, each with its resistors hidden from view, with nothing but the three terminals (A, B, and C) exposed for testing, the resistors could be sized for the two networks so that there would be no way to electrically determine one network apart from the other.  In other words, equivalent <DELTA> and Y networks behave identically.
</para>

<para>
There are several equations used to convert one network to the other:
</para>

<image>10207.png</image>

<para>
<DELTA> and Y networks are seen frequently in 3-phase AC power systems (a topic covered in volume II of this book series), but even then they're usually balanced networks (all resistors equal in value) and conversion from one to the other need not involve such complex calculations.  When would the average technician ever need to use these equations?
</para>

<para>
A prime application for <DELTA>-Y conversion is in the solution of unbalanced bridge circuits, such as the one below:
</para>

<image>00251.png</image>

<para>
Solution of this circuit with Branch Current or Mesh Current analysis is fairly involved, and neither the Millman nor Superposition Theorems are of any help, since there's only one source of power.  We could use Thevenin's or Norton's Theorem, treating R<subscript>3</subscript> as our load, but what fun would that be?  
</para>

<para>
If we were to treat resistors R<subscript>1</subscript>, R<subscript>2</subscript>, and R<subscript>3</subscript> as being connected in a <DELTA> configuration (R<subscript>ab</subscript>, R<subscript>ac</subscript>, and R<subscript>bc</subscript>, respectively) and generate an equivalent Y network to replace them, we could turn this bridge circuit into a (simpler) series/parallel combination circuit:
</para>

<image>00252.png</image>

<para>
After the <DELTA>-Y conversion . . .
</para>

<image>00253.png</image>

<para>
If we perform our calculations correctly, the voltages between points A, B, and C will be the same in the converted circuit as in the original circuit, and we can transfer those values back to the original bridge configuration.
</para>

<image>10208.png</image>

<para>

</para>

<bigspace>

<image>00254.png</image>

<para>
Resistors R<subscript>4</subscript> and R<subscript>5</subscript>, of course, remain the same at 18 <OMEGA> and 12 <OMEGA>, respectively.  Analyzing the circuit now as a series/parallel combination, we arrive at the following figures:
</para>

<image>10209.png</image>

<para>
We must use the voltage drops figures from the table above to determine the voltages between points A, B, and C, seeing how the add up (or subtract, as is the case with voltage between points B and C):
</para>

<image>00255.png</image>

<para>

</para>

<bigspace>

<image>10210.png</image>

<para>
Now that we know these voltages, we can transfer them to the same points A, B, and C in the original bridge circuit:
</para>

<image>00256.png</image>

<para>
Voltage drops across R<subscript>4</subscript> and R<subscript>5</subscript>, of course, are exactly the same as they were in the converted circuit.
</para>

<para>
At this point, we could take these voltages and determine resistor currents through the repeated use of Ohm's Law (I=E/R):
</para>

<image>10211.png</image>

<para>
A quick simulation with SPICE will serve to verify our work:<cite>spi</cite>
</para>

<image>00392.png</image>

<bigspace>

<literal>
unbalanced bridge circuit   
v1 1 0  
r1 1 2 12       
r2 1 3 18       
r3 2 3 6
r4 2 0 18       
r5 3 0 12       
.dc v1 10 10 1  
.print dc v(1,2) v(1,3) v(2,3) v(2,0) v(3,0)    
.end    
</literal>

<bigspace>

<literal>
v1            v(1,2)      v(1,3)      v(2,3)      v(2)        v(3)            
1.000E+01     4.706E+00   5.294E+00   5.882E-01   5.294E+00   4.706E+00
</literal>

<bigspace>

<para>
The voltage figures, as read from left to right, represent voltage drops across the five respective resistors, R<subscript>1</subscript> through R<subscript>5</subscript>.  I could have shown currents as well, but since that would have required insertion of ``dummy'' voltage sources in the SPICE netlist, and since we're primarily interested in validating the <DELTA>-Y conversion equations and not Ohm's Law, this will suffice.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>``Delta'' (<DELTA>) networks are also known as ``Pi'' (<pi>) networks.</item>
<item>``Y'' networks are also known as ``T'' networks.</item>
<item><DELTA> and Y networks can be converted to their equivalent counterparts with the proper resistance equations.  By ``equivalent,'' I mean that the two networks will be electrically identical as measured from the three terminals (A, B, and C).</item>
<item>A bridge circuit can be simplified to a series/parallel circuit by converting half of it from a <DELTA> to a Y network.  After voltage drops between the original three connection points (A, B, and C) have been solved for, those voltages can be transferred back to the original bridge circuit, across those same equivalent points.</item>
</itemize>

</section>




<section>
<sectiontitle>Contributors</sectiontitle>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Dejan Budimir</bold> (January 2003): Suggested clarifications for explaining the Mesh Current method of circuit analysis.
</para>

<para>
<bold>Bill Heath</bold> (December 2002): Pointed out several typographical errors.
</para>

<para>
<bold>Jason Starck</bold> (June 2000): HTML document formatting, which led to a much better-looking second edition.
</para>

<para>
<bold>Davy Van Nieuwenborgh</bold> (April 2004): Pointed out error in Mesh current section, supplied editorial material, end of section.
</para>


</section>



<thebibliography>

<bibitem>[aef] A.E. Fitzergerald, David E. Higginbotham, Arvin Grabel, <italic>Basic Electrical Engineering</italic>, (McGraw-Hill, 1975).</bibitem>

<bibitem>[spi] Tony Kuphaldt,<italic>Using the Spice Circuit Simulation Program</italic>, in``Lessons in Electricity, Reference'', Volume 5, Chapter 7, at <url>http://www.ibiblio.org/obp/electricCircuits/Ref/[http://www.ibiblio.org/obp/electricCircuits/Ref/]</url></bibitem>

<bibitem>[dvn] Davy Van Nieuwenborgh, <italic>private communications</italic>, Theoretical Computer Science laboratory, Department of Computer Science, Vrije Universiteit Brussel (4/7/2004).</bibitem>

<bibitem>[octav] <italic>Octave</italic>, Matrix calculator open source program for Linux or MS Windows, at <url>http://www.gnu.org/software/octave/[http://www.gnu.org/software/octave/]</url></bibitem> 


<bibitem>[rar]Ray A. Rayburn , <italic>private communications</italic>, Senior Consultant K2 Audio, LLC; Fellow of the Audio Engineering Society, (6/29/2009).</bibitem>

<bibitem>[dfd]Damping Factor De-Mystified , at <url>http://www.sweetwater.com/shop/live-sound/power-amplifiers/buying-guide.php#2[http://www.sweetwater.com/shop/live-sound/<allowbreak>power-amplifiers/buying-guide.php#2]</url></bibitem>




</thebibliography>




</chapter>

<pagebreak>

