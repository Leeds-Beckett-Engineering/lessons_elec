
<chapter>
<chaptertitle>SERIES-PARALLEL COMBINATION CIRCUITS</chaptertitle>


<section>
<sectiontitle>What is a series-parallel circuit?</sectiontitle>

<para>
With simple series circuits, all components are connected end-to-end to form only one path for electrons to flow through the circuit:
</para>

<image>00082.png</image>

<para>
With simple parallel circuits, all components are connected between the same two sets of electrically common points, creating multiple paths for electrons to flow from one end of the battery to the other:
</para>

<image>00083.png</image>

<index>Series circuit rules</index>
<index>Rules, series circuits</index>
<index>Parallel circuit rules</index>
<index>Rules, parallel circuits</index>

<para>
With each of these two basic circuit configurations, we have specific sets of rules describing voltage, current, and resistance relationships.
</para>

<itemize>
<item><bold>Series Circuits:</bold></item>
<item>Voltage drops add to equal total voltage.</item>
<item>All components share the same (equal) current.</item>
<item>Resistances add to equal total resistance.</item>
</itemize>

<bigspace>

<itemize>
<item><bold>Parallel Circuits:</bold></item>
<item>All components share the same (equal) voltage.</item>
<item>Branch currents add to equal total current.</item>
<item>Resistances diminish to equal total resistance.</item>
</itemize>

<para>
However, if circuit components are series-connected in some parts and parallel in others, we won't be able to apply a <italic>single</italic> set of rules to every part of that circuit.  Instead, we will have to identify which parts of that circuit are series and which parts are parallel, then selectively apply series and parallel rules as necessary to determine what is happening.  Take the following circuit, for instance:
</para>

<image>00123.png</image>

<para>

</para>

<bigspace>

<image>10126.png</image>

<para>
This circuit is neither simple series nor simple parallel.  Rather, it contains elements of both.  The current exits the bottom of the battery, splits up to travel through R<subscript>3</subscript> and R<subscript>4</subscript>, rejoins, then splits up again to travel through R<subscript>1</subscript> and R<subscript>2</subscript>, then rejoins again to return to the top of the battery.  There exists more than one path for current to travel (not series), yet there are more than two sets of electrically common points in the circuit (not parallel). 
</para>

<para>
Because the circuit is a combination of both series and parallel, we cannot apply the rules for voltage, current, and resistance "across the table" to begin analysis like we could when the circuits were one way or the other.  For instance, if the above circuit were simple series, we could just add up R<subscript>1</subscript> through R<subscript>4</subscript> to arrive at a total resistance, solve for total current, and then solve for all voltage drops.  Likewise, if the above circuit were simple parallel, we could just solve for branch currents, add up branch currents to figure the total current, and then calculate total resistance from total voltage and total current.  However, this circuit's solution will be more complex.
</para>

<para>
The table will still help us manage the different values for series-parallel combination circuits, but we'll have to be careful how and where we apply the different rules for series and parallel.  Ohm's Law, of course, still works just the same for determining values within a vertical column in the table.
</para>

<para>
If we are able to identify which parts of the circuit are series and which parts are parallel, we can analyze it in stages, approaching each part one at a time, using the appropriate rules to determine the relationships of voltage, current, and resistance.  The rest of this chapter will be devoted to showing you techniques for doing this.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>The rules of series and parallel circuits must be applied selectively to circuits containing both types of interconnections.</item>
</itemize>

</section>






<section>
<sectiontitle>Analysis technique</sectiontitle>


<index>Series-parallel analysis</index>
<index>Analysis, series-parallel</index>

<para>
The goal of series-parallel resistor circuit analysis is to be able to determine all voltage drops, currents, and power dissipations in a circuit.  The general strategy to accomplish this goal is as follows:
</para>


<itemize>
<item>Step 1: Assess which resistors in a circuit are connected together in simple series or simple parallel.</item>
<item>Step 2: Re-draw the circuit, replacing each of those series or parallel resistor combinations identified in step 1 with a single, equivalent-value resistor.  If using a table to manage variables, make a new table column for each resistance equivalent.</item>
<item>Step 3: Repeat steps 1 and 2 until the entire circuit is reduced to one equivalent resistor.</item>
<item>Step 4: Calculate total current from total voltage and total resistance (I=E/R).</item>
<item>Step 5: Taking total voltage and total current values, go back to last step in the circuit reduction process and insert those values where applicable.</item>
<item>Step 6: From known resistances and total voltage / total current values from step 5, use Ohm's Law to calculate unknown values (voltage or current) (E=IR or I=E/R).</item>
<item>Step 7: Repeat steps 5 and 6 until all values for voltage and current are known in the original circuit configuration.  Essentially, you will proceed step-by-step from the simplified version of the circuit back into its original, complex form, plugging in values of voltage and current where appropriate until all values of voltage and current are known.</item>
<item>Step 8: Calculate power dissipations from known voltage, current, and/or resistance values.</item>
</itemize>

<para>
This may sound like an intimidating process, but its much easier understood through example than through description.
</para>

<image>00123.png</image>

<para>

</para>

<bigspace>

<image>10126.png</image>

<para>
In the example circuit above, R<subscript>1</subscript> and R<subscript>2</subscript> are connected in a simple parallel arrangement, as are R<subscript>3</subscript> and R<subscript>4</subscript>.  Having been identified, these sections need to be converted into equivalent single resistors, and the circuit re-drawn:
</para>

<image>00124.png</image>

<para>
The double slash (//) symbols represent "parallel" to show that the equivalent resistor values were calculated using the 1/(1/R) formula.  The 71.429 <OMEGA> resistor at the top of the circuit is the equivalent of R<subscript>1</subscript> and R<subscript>2</subscript> in parallel with each other.  The 127.27 <OMEGA> resistor at the bottom is the equivalent of R<subscript>3</subscript> and R<subscript>4</subscript> in parallel with each other.
</para>

<para>
Our table can be expanded to include these resistor equivalents in their own columns:
</para>

<image>10127.png</image>

<para>
It should be apparent now that the circuit has been reduced to a simple series configuration with only two (equivalent) resistances.  The final step in reduction is to add these two resistances to come up with a total circuit resistance.  When we add those two equivalent resistances, we get a resistance of 198.70 <OMEGA>.  Now, we can re-draw the circuit as a single equivalent resistance and add the total resistance figure to the rightmost column of our table.  Note that the "Total" column has been relabeled (R<subscript>1</subscript>//R<subscript>2</subscript><doubledash>R<subscript>3</subscript>//R<subscript>4</subscript>) to indicate how it relates electrically to the other columns of figures.  The "<doubledash>" symbol is used here to represent "series," just as the "//" symbol is used to represent "parallel."
</para>

<image>00125.png</image>

<para>

</para>

<bigspace>

<image>10128.png</image>

<para>
Now, total circuit current can be determined by applying Ohm's Law (I=E/R) to the "Total" column in the table:
</para>

<image>10129.png</image>

<para>
Back to our equivalent circuit drawing, our total current value of 120.78 milliamps is shown as the only current here:
</para>

<image>00126.png</image>

<para>
Now we start to work backwards in our progression of circuit re-drawings to the original configuration.  The next step is to go to the circuit where R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> are in series:
</para>

<image>00127.png</image>

<para>
Since R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> are in series with each other, the current through those two sets of equivalent resistances must be the same.  Furthermore, the current through them must be the same as the total current, so we can fill in our table with the appropriate current values, simply copying the current figure from the Total column to the R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> columns: 
</para>

<image>10130.png</image>

<para>
Now, knowing the current through the equivalent resistors R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript>, we can apply Ohm's Law (E=IR) to the two right vertical columns to find voltage drops across them:
</para>

<image>00128.png</image>

<para>

</para>

<bigspace>

<image>10131.png</image>

<para>
Because we know R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> are parallel resistor equivalents, and we know that voltage drops in parallel circuits are the same, we can transfer the respective voltage drops to the appropriate columns on the table for those individual resistors.  In other words, we take another step backwards in our drawing sequence to the original configuration, and complete the table accordingly:
</para>

<image>00129.png</image>

<para>

</para>

<bigspace>

<image>10132.png</image>

<para>
Finally, the original section of the table (columns R<subscript>1</subscript> through R<subscript>4</subscript>) is complete with enough values to finish.  Applying Ohm's Law to the remaining vertical columns (I=E/R), we can determine the currents through R<subscript>1</subscript>, R<subscript>2</subscript>, R<subscript>3</subscript>, and R<subscript>4</subscript> individually:
</para>

<image>10133.png</image>

<para>
Having found all voltage and current values for this circuit, we can show those values in the schematic diagram as such:
</para>

<image>00130.png</image>

<para>
As a final check of our work, we can see if the calculated current values add up as they should to the total.  Since R<subscript>1</subscript> and R<subscript>2</subscript> are in parallel, their combined currents should add up to the total of 120.78 mA.  Likewise, since R<subscript>3</subscript> and R<subscript>4</subscript> are in parallel, their combined currents should also add up to the total of 120.78 mA.  You can check for yourself to verify that these figures do add up as expected.
</para>

<para>
A computer simulation can also be used to verify the accuracy of these figures.  The following SPICE analysis will show all resistor voltages and currents (note the current-sensing vi1, vi2, . . . "dummy" voltage sources in series with each resistor in the netlist, necessary for the SPICE computer program to track current through each path).  These voltage sources will be set to have values of zero volts each so they will not affect the circuit in any way.
</para>

<image>00131.png</image>

<bigspace>

<literal>
series-parallel circuit  
v1 1 0  
vi1 1 2 dc 0    
vi2 1 3 dc 0    
r1 2 4 100      
r2 3 4 250      
vi3 4 5 dc 0    
vi4 4 6 dc 0    
r3 5 0 350      
r4 6 0 200      
.dc v1 24 24 1  
.print dc v(2,4) v(3,4) v(5,0) v(6,0)   
.print dc i(vi1) i(vi2) i(vi3) i(vi4)   
.end    
</literal>

<bigspace>

<para>
I've annotated SPICE's output figures to make them more readable, denoting which voltage and current figures belong to which resistors.  
</para>

<bigspace>

<literal>
v1            v(2,4)      v(3,4)      v(5)        v(6)        
2.400E+01     8.627E+00   8.627E+00   1.537E+01   1.537E+01
Battery       R1 voltage  R2 voltage  R3 voltage  R4 voltage
voltage
</literal>

<bigspace>

<literal>
v1            i(vi1)      i(vi2)      i(vi3)      i(vi4)      
2.400E+01     8.627E-02   3.451E-02   4.392E-02   7.686E-02
Battery       R1 current  R2 current  R3 current  R4 current
voltage 
</literal>

<bigspace>

<para>
As you can see, all the figures do agree with the our calculated values.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>To analyze a series-parallel combination circuit, follow these steps:</item>
<item>Reduce the original circuit to a single equivalent resistor, re-drawing the circuit in each step of reduction as simple series and simple parallel parts are reduced to single, equivalent resistors.</item>
<item>Solve for total resistance.</item>
<item>Solve for total current (I=E/R).</item>
<item>Determine equivalent resistor voltage drops and branch currents one stage at a time, working backwards to the original circuit configuration again.</item>
</itemize>

</section>






<section>
<sectiontitle>Re-drawing complex schematics</sectiontitle>

<index>Re-drawing schematic diagrams</index>

<para>
Typically, complex circuits are not arranged in nice, neat, clean schematic diagrams for us to follow.  They are often drawn in such a way that makes it difficult to follow which components are in series and which are in parallel with each other.  The purpose of this section is to show you a method useful for re-drawing circuit schematics in a neat and orderly fashion.  Like the stage-reduction strategy for solving series-parallel combination circuits, it is a method easier demonstrated than described.
</para>

<para>
Let's start with the following (convoluted) circuit diagram.  Perhaps this diagram was originally drawn this way by a technician or engineer.  Perhaps it was sketched as someone traced the wires and connections of a real circuit.  In any case, here it is in all its ugliness:
</para>

<image>00132.png</image>

<para>
With electric circuits and circuit diagrams, the length and routing of wire connecting components in a circuit matters little.  (Actually, in some AC circuits it becomes critical, and very long wire lengths can contribute unwanted resistance to both AC and DC circuits, but in most cases wire length is irrelevant.)  What this means for us is that we can lengthen, shrink, and/or bend connecting wires without affecting the operation of our circuit.
</para>

<para>
The strategy I have found easiest to apply is to start by tracing the current from one terminal of the battery around to the other terminal, following the loop of components closest to the battery and ignoring all other wires and components for the time being.  While tracing the path of the loop, mark each resistor with the appropriate polarity for voltage drop. 
</para>

<para>
In this case, I'll begin my tracing of this circuit at the negative terminal of the battery and finish at the positive terminal, in the same general direction as the electrons would flow.  When tracing this direction, I will mark each resistor with the polarity of negative on the entering side and positive on the exiting side, for that is how the actual polarity will be as electrons (negative in charge) enter and exit a resistor:
</para>

<image>00369.png</image>

<para>

</para>

<bigspace>

<image>00133.png</image>

<para>
Any components encountered along this short loop are drawn vertically in order:
</para>

<image>00134.png</image>

<para>
Now, proceed to trace any loops of components connected around components that were just traced.  In this case, there's a loop around R<subscript>1</subscript> formed by R<subscript>2</subscript>, and another loop around R<subscript>3</subscript> formed by R<subscript>4</subscript>: 
</para>

<image>00135.png</image>

<para>
Tracing those loops, I draw R<subscript>2</subscript> and R<subscript>4</subscript> in parallel with R<subscript>1</subscript> and R<subscript>3</subscript> (respectively) on the vertical diagram.  Noting the polarity of voltage drops across R<subscript>3</subscript> and R<subscript>1</subscript>, I mark R<subscript>4</subscript> and R<subscript>2</subscript> likewise:
</para>

<image>00136.png</image>

<para>
Now we have a circuit that is very easily understood and analyzed.  In this case, it is identical to the four-resistor series-parallel configuration we examined earlier in the chapter.
</para>

<para>
Let's look at another example, even uglier than the one before:
</para>

<image>00137.png</image>

<para>
The first loop I'll trace is from the negative (-) side of the battery, through R<subscript>6</subscript>, through R<subscript>1</subscript>, and back to the positive (+) end of the battery:
</para>

<image>00138.png</image>

<para>
Re-drawing vertically and keeping track of voltage drop polarities along the way, our equivalent circuit starts out looking like this:
</para>

<image>00139.png</image>

<para>
Next, we can proceed to follow the next loop around one of the traced resistors (R<subscript>6</subscript>), in this case, the loop formed by R<subscript>5</subscript> and R<subscript>7</subscript>.  As before, we start at the negative end of R<subscript>6</subscript> and proceed to the positive end of R<subscript>6</subscript>, marking voltage drop polarities across R<subscript>7</subscript> and R<subscript>5</subscript> as we go:
</para>

<image>00140.png</image>

<para>
Now we add the R<subscript>5</subscript><doubledash>R<subscript>7</subscript> loop to the vertical drawing.  Notice how the voltage drop polarities across R<subscript>7</subscript> and R<subscript>5</subscript> correspond with that of R<subscript>6</subscript>, and how this is the same as what we found tracing R<subscript>7</subscript> and R<subscript>5</subscript> in the original circuit:
</para>

<image>00141.png</image>

<para>
We repeat the process again, identifying and tracing another loop around an already-traced resistor.  In this case, the R<subscript>3</subscript><doubledash>R<subscript>4</subscript> loop around R<subscript>5</subscript> looks like a good loop to trace next:
</para>

<image>00142.png</image>

<para>
Adding the R<subscript>3</subscript><doubledash>R<subscript>4</subscript> loop to the vertical drawing, marking the correct polarities as well:
</para>

<image>00143.png</image>

<para>
With only one remaining resistor left to trace, then next step is obvious: trace the loop formed by R<subscript>2</subscript> around R<subscript>3</subscript>:
</para>

<image>00144.png</image>

<para>
Adding R<subscript>2</subscript> to the vertical drawing, and we're finished!  The result is a diagram that's very easy to understand compared to the original:
</para>

<image>00145.png</image>

<para>
This simplified layout greatly eases the task of determining where to start and how to proceed in reducing the circuit down to a single equivalent (total) resistance.  Notice how the circuit has been re-drawn, all we have to do is start from the right-hand side and work our way left, reducing simple-series and simple-parallel resistor combinations one group at a time until we're done.  
</para>

<para>
In this particular case, we would start with the simple parallel combination of R<subscript>2</subscript> and R<subscript>3</subscript>, reducing it to a single resistance.  Then, we would take that equivalent resistance (R<subscript>2</subscript>//R<subscript>3</subscript>) and the one in series with it (R<subscript>4</subscript>), reducing them to another equivalent resistance (R<subscript>2</subscript>//R<subscript>3</subscript><doubledash>R<subscript>4</subscript>).  Next, we would proceed to calculate the parallel equivalent of that resistance (R<subscript>2</subscript>//R<subscript>3</subscript><doubledash>R<subscript>4</subscript>) with R<subscript>5</subscript>, then in series with R<subscript>7</subscript>, then in parallel with R<subscript>6</subscript>, then in series with R<subscript>1</subscript> to give us a grand total resistance for the circuit as a whole.
</para>

<para>
From there we could calculate total current from total voltage and total resistance (I=E/R), then "expand" the circuit back into its original form one stage at a time, distributing the appropriate values of voltage and current to the resistances as we go.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Wires in diagrams and in real circuits can be lengthened, shortened, and/or moved without affecting circuit operation.</item>
<item>To simplify a convoluted circuit schematic, follow these steps:</item>
<item>Trace current from one side of the battery to the other, following any single path ("loop") to the battery.  Sometimes it works better to start with the loop containing the most components, but regardless of the path taken the result will be accurate.  Mark polarity of voltage drops across each resistor as you trace the loop.  Draw those components you encounter along this loop in a vertical schematic.</item>
<item>Mark traced components in the original diagram and trace remaining loops of components in the circuit.  Use polarity marks across traced components as guides for what connects where.  Document new components in loops on the vertical re-draw schematic as well.</item>
<item>Repeat last step as often as needed until all components in  original diagram have been traced.</item>
</itemize>

</section>







<section>
<sectiontitle>Component failure analysis</sectiontitle>

<quotation>

<para>
<italic>"I consider that I understand an equation when I can predict the properties of its solutions, without actually solving it."</italic>
</para>

<para>
<bold>P.A.M Dirac, physicist</bold>
</para>

</quotation>

<para>
There is a lot of truth to that quote from Dirac.  With a little modification, I can extend his wisdom to electric circuits by saying, "I consider that I understand a circuit when I can predict the approximate effects of various changes made to it without actually performing any calculations."
</para>

<para>
At the end of the series and parallel circuits chapter, we briefly considered how circuits could be analyzed in a <italic>qualitative</italic> rather than <italic>quantitative</italic> manner.  Building this skill is an important step towards becoming a proficient troubleshooter of electric circuits.  Once you have a thorough understanding of how any particular failure will affect a circuit (i.e. you don't have to perform any arithmetic to predict the results), it will be much easier to work the other way around: pinpointing the source of trouble by assessing how a circuit is behaving.
</para>

<index>Qualitative analysis</index>
<index>Analysis, qualitative</index>

<para>
Also shown at the end of the series and parallel circuits chapter was how the table method works just as well for aiding failure analysis as it does for the analysis of healthy circuits.  We may take this technique one step further and adapt it for total qualitative analysis.  By <italic>"qualitative"</italic> I mean working with symbols representing "increase," "decrease," and "same" instead of precise numerical figures.  We can still use the principles of series and parallel circuits, and the concepts of Ohm's Law, we'll just use symbolic <italic>qualities</italic> instead of numerical <italic>quantities</italic>.  By doing this, we can gain more of an intuitive "feel" for how circuits work rather than leaning on abstract equations, attaining Dirac's definition of "understanding."
</para>

<para>
Enough talk.  Let's try this technique on a real circuit example and see how it works:
</para>

<image>00132.png</image>

<para>
This is the first "convoluted" circuit we straightened out for analysis in the last section.  Since you already know how this particular circuit reduces to series and parallel sections, I'll skip the process and go straight to the final form:
</para>

<image>00136.png</image>

<para>
R<subscript>3</subscript> and R<subscript>4</subscript> are in parallel with each other; so are R<subscript>1</subscript> and R<subscript>2</subscript>.  The parallel equivalents of R<subscript>3</subscript>//R<subscript>4</subscript> and R<subscript>1</subscript>//R<subscript>2</subscript> are in series with each other.  Expressed in symbolic form, the total resistance for this circuit is as follows: 
</para>

<bigspace>

<para>
R<subscript>Total</subscript> = (R<subscript>1</subscript>//R<subscript>2</subscript>)<doubledash>(R<subscript>3</subscript>//R<subscript>4</subscript>)
</para>

<bigspace>

<para>
First, we need to formulate a table with all the necessary rows and columns for this circuit:
</para>

<image>10135.png</image>

<para>
Next, we need a failure scenario.  Let's suppose that resistor R<subscript>2</subscript> were to fail shorted.  We will assume that all other components maintain their original values.  Because we'll be analyzing this circuit qualitatively rather than quantitatively, we won't be inserting any real numbers into the table.  For any quantity unchanged after the component failure, we'll use the word "same" to represent "no change from before."  For any quantity that has changed as a result of the failure, we'll use a down arrow for "decrease" and an up arrow for "increase."  As usual, we start by filling in the spaces of the table for individual resistances and total voltage, our "given" values:
</para>

<image>10136.png</image>

<para>
The only "given" value different from the normal state of the circuit is R<subscript>2</subscript>, which we said was failed shorted (abnormally low resistance).  All other initial values are the same as they were before, as represented by the "same" entries.  All we have to do now is work through the familiar Ohm's Law and series-parallel principles to determine what will happen to all the other circuit values.
</para>

<para>
First, we need to determine what happens to the resistances of parallel subsections R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript>.  If neither R<subscript>3</subscript> nor R<subscript>4</subscript> have changed in resistance value, then neither will their parallel combination.  However, since the resistance of R<subscript>2</subscript> has decreased while R<subscript>1</subscript> has stayed the same, their parallel combination must decrease in resistance as well:
</para>

<image>10137.png</image>

<para>
Now, we need to figure out what happens to the total resistance.  This part is easy: when we're dealing with only one component change in the circuit, the change in total resistance will be in the same direction as the change of the failed component.  This is not to say that the <italic>magnitude</italic> of change between individual component and total circuit will be the same, merely the <italic>direction</italic> of change.  In other words, if any single resistor decreases in value, then the total circuit resistance must also decrease, and vice versa.  In this case, since R<subscript>2</subscript> is the only failed component, and its resistance has decreased, the total resistance <italic>must</italic> decrease: 
</para>

<image>10138.png</image>

<index>Ohm's Law, qualitative</index>

<para>
Now we can apply Ohm's Law (qualitatively) to the Total column in the table.  Given the fact that total voltage has remained the same and total resistance has decreased, we can conclude that total current must increase (I=E/R).
</para>

<para>
In case you're not familiar with the qualitative assessment of an equation, it works like this.  First, we write the equation as solved for the unknown quantity.  In this case, we're trying to solve for current, given voltage and resistance:
</para>

<image>10139.png</image>

<para>
Now that our equation is in the proper form, we assess what change (if any) will be experienced by "I," given the change(s) to "E" and "R":
</para>

<image>10140.png</image>

<para>
If the denominator of a fraction decreases in value while the numerator stays the same, then the overall value of the fraction must increase:
</para>

<image>10141.png</image>

<para>
Therefore, Ohm's Law (I=E/R) tells us that the current (I) will increase.  We'll mark this conclusion in our table with an "up" arrow:
</para>

<image>10142.png</image>

<para>
With all resistance places filled in the table and all quantities determined in the Total column, we can proceed to determine the other voltages and currents.  Knowing that the total resistance in this table was the result of R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> in <italic>series</italic>, we know that the value of total current will be the same as that in R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> (because series components share the same current).  Therefore, if total current increased, then current through R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> must also have increased with the failure of R<subscript>2</subscript>:
</para>

<image>10143.png</image>

<para>
Fundamentally, what we're doing here with a qualitative usage of Ohm's Law and the rules of series and parallel circuits is no different from what we've done before with numerical figures.  In fact, its a lot easier because you don't have to worry about making an arithmetic or calculator keystroke error in a calculation.  Instead, you're just focusing on the <italic>principles</italic> behind the equations.  From our table above, we can see that Ohm's Law should be applicable to the R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> columns.  For R<subscript>3</subscript>//R<subscript>4</subscript>, we figure what happens to the voltage, given an increase in current and no change in resistance.  Intuitively, we can see that this must result in an increase in voltage across the parallel combination of R<subscript>3</subscript>//R<subscript>4</subscript>:
</para>

<image>10144.png</image>

<para>
But how do we apply the same Ohm's Law formula (E=IR) to the R<subscript>1</subscript>//R<subscript>2</subscript> column, where we have resistance decreasing <italic>and</italic> current increasing?  It's easy to determine if only one variable is changing, as it was with R<subscript>3</subscript>//R<subscript>4</subscript>, but with two variables moving around and no definite numbers to work with, Ohm's Law isn't going to be much help.  However, there is another rule we can apply <italic>horizontally</italic> to determine what happens to the voltage across R<subscript>1</subscript>//R<subscript>2</subscript>: the rule for voltage in series circuits.  If the voltages across R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript> add up to equal the total (battery) voltage and we know that the R<subscript>3</subscript>//R<subscript>4</subscript> voltage has increased while total voltage has stayed the same, then the voltage across R<subscript>1</subscript>//R<subscript>2</subscript> <italic>must</italic> have decreased with the change of R<subscript>2</subscript>'s resistance value:
</para>

<image>10145.png</image>

<para>
Now we're ready to proceed to some new columns in the table.  Knowing that R<subscript>3</subscript> and R<subscript>4</subscript> comprise the parallel subsection R<subscript>3</subscript>//R<subscript>4</subscript>, and knowing that voltage is shared equally between parallel components, the increase in voltage seen across the parallel combination R<subscript>3</subscript>//R<subscript>4</subscript> must also be seen across R<subscript>3</subscript> and R<subscript>4</subscript> individually:
</para>

<image>10146.png</image>

<para>
The same goes for R<subscript>1</subscript> and R<subscript>2</subscript>.  The voltage decrease seen across the parallel combination of R<subscript>1</subscript> and R<subscript>2</subscript> will be seen across R<subscript>1</subscript> and R<subscript>2</subscript> individually:
</para>

<image>10147.png</image>

<para>
Applying Ohm's Law vertically to those columns with unchanged ("same") resistance values, we can tell what the current will do through those components.  Increased voltage across an unchanged resistance leads to increased current.  Conversely, decreased voltage across an unchanged resistance leads to decreased current:
</para>

<image>10148.png</image>

<para>
Once again we find ourselves in a position where Ohm's Law can't help us: for R<subscript>2</subscript>, both voltage and resistance have decreased, but without knowing <italic>how much</italic> each one has changed, we can't use the I=E/R formula to qualitatively determine the resulting change in current.  However, we can still apply the rules of series and parallel circuits <italic>horizontally</italic>.  We know that the current through the R<subscript>1</subscript>//R<subscript>2</subscript> parallel combination has increased, and we also know that the current through R<subscript>1</subscript> has decreased.  One of the rules of parallel circuits is that total current is equal to the sum of the individual branch currents.  In this case, the current through R<subscript>1</subscript>//R<subscript>2</subscript> is equal to the current through R<subscript>1</subscript> added to the current through R<subscript>2</subscript>.  If current through R<subscript>1</subscript>//R<subscript>2</subscript> has increased while current through R<subscript>1</subscript> has decreased, current through R<subscript>2</subscript> <italic>must</italic> have increased:
</para>

<image>10149.png</image>

<para>
And with that, our table of qualitative values stands completed.  This particular exercise may look laborious due to all the detailed commentary, but the actual process can be performed very quickly with some practice.  An important thing to realize here is that the general procedure is little different from quantitative analysis: start with the known values, then proceed to determining total resistance, then total current, then transfer figures of voltage and current as allowed by the rules of series and parallel circuits to the appropriate columns.
</para>

<para>
A few general rules can be memorized to assist and/or to check your progress when proceeding with such an analysis:
</para>

<itemize>
<item>For any <italic>single</italic> component failure (open or shorted), the total resistance will always change in the same direction (either increase or decrease) as the resistance change of the failed component.</item>
<item>When a component fails shorted, its resistance always decreases.  Also, the current through it will increase, and the voltage across it <italic>may</italic> drop.  I say "may" because in some cases it will remain the same (case in point: a simple parallel circuit with an ideal power source).</item>
<item>When a component fails open, its resistance always increases.  The current through that component will decrease to zero, because it is an incomplete electrical path (no continuity).  This <italic>may</italic> result in an increase of voltage across it.  The same exception stated above applies here as well: in a simple parallel circuit with an ideal voltage source, the voltage across an open-failed component will remain unchanged.</item>
</itemize>

</section>




<section>
<sectiontitle>Building series-parallel resistor circuits</sectiontitle>

<index>Solderless breadboard</index>
<index>Breadboard, solderless</index>

<para>
Once again, when building battery/resistor circuits, the student or hobbyist is faced with several different modes of construction.  Perhaps the most popular is the <italic>solderless breadboard</italic>: a platform for constructing temporary circuits by plugging components and wires into a grid of interconnected points.  A breadboard appears to be nothing but a plastic frame with hundreds of small holes in it.  Underneath each hole, though, is a spring clip which connects to other spring clips beneath other holes.  The connection pattern between holes is simple and uniform:
</para>

<image>00447.png</image>

<para>
Suppose we wanted to construct the following series-parallel combination circuit on a breadboard:
</para>

<image>00123.png</image>

<para>
The recommended way to do so on a breadboard would be to arrange the resistors in approximately the same pattern as seen in the schematic, for ease of relation to the schematic.  If 24 volts is required and we only have 6-volt batteries available, four may be connected in series to achieve the same effect:
</para>

<image>00458.png</image>

<para>
This is by no means the only way to connect these four resistors together to form the circuit shown in the schematic.  Consider this alternative layout:
</para>

<image>00459.png</image>

<index>Terminal strip</index>
<index>Barrier strip</index>
<index>Terminal block</index>

<para>
If greater permanence is desired without resorting to soldering or wire-wrapping, one could choose to construct this circuit on a <italic>terminal strip</italic> (also called a <italic>barrier strip</italic>, or <italic>terminal block</italic>).  In this method, components and wires are secured by mechanical tension underneath screws or heavy clips attached to small metal bars.  The metal bars, in turn, are mounted on a nonconducting body to keep them electrically isolated from each other.
</para>

<para>
Building a circuit with components secured to a terminal strip isn't as easy as plugging components into a breadboard, principally because the components cannot be physically arranged to resemble the schematic layout.  Instead, the builder must understand how to "bend" the schematic's representation into the real-world layout of the strip.  Consider one example of how the same four-resistor circuit could be built on a terminal strip:
</para>

<image>00460.png</image>

<para>
Another terminal strip layout, simpler to understand and relate to the schematic, involves anchoring parallel resistors (R<subscript>1</subscript>//R<subscript>2</subscript> and R<subscript>3</subscript>//R<subscript>4</subscript>) to the same two terminal points on the strip like this:
</para>

<image>00461.png</image>

<para>
Building more complex circuits on a terminal strip involves the same spatial-reasoning skills, but of course requires greater care and planning.  Take for instance this complex circuit, represented in schematic form:
</para>

<image>00137.png</image>

<para>
The terminal strip used in the prior example barely has enough terminals to mount all seven resistors required for this circuit!  It will be a challenge to determine all the necessary wire connections between resistors, but with patience it can be done.  First, begin by installing and labeling all resistors on the strip.  The original schematic diagram will be shown next to the terminal strip circuit for reference:
</para>

<image>00462.png</image>

<para>
Next, begin connecting components together wire by wire as shown in the schematic.  Over-draw connecting lines in the schematic to indicate completion in the real circuit.  Watch this sequence of illustrations as each individual wire is identified in the schematic, then added to the real circuit:
</para>

<image>00463.png</image>

<para>

</para>

<bigspace>

<image>00464.png</image>

<para>

</para>

<bigspace>

<image>00465.png</image>

<para>

</para>

<bigspace>

<image>00466.png</image>

<para>

</para>

<bigspace>

<image>00467.png</image>

<para>

</para>

<bigspace>

<image>00468.png</image>

<para>

</para>

<bigspace>

<image>00469.png</image>

<para>

</para>

<bigspace>

<image>00470.png</image>

<para>

</para>

<bigspace>

<image>00471.png</image>

<para>

</para>

<bigspace>

<image>00472.png</image>

<para>

</para>

<bigspace>

<image>00473.png</image>

<para>
Although there are minor variations possible with this terminal strip circuit, the choice of connections shown in this example sequence is both electrically accurate (electrically identical to the schematic diagram) and carries the additional benefit of not burdening any one screw terminal on the strip with more than two wire ends, a good practice in any terminal strip circuit.  
</para>

<para>
An example of a "variant" wire connection might be the very last wire added (step 11), which I placed between the left terminal of R<subscript>2</subscript> and the left terminal of R<subscript>3</subscript>.  This last wire completed the parallel connection between R<subscript>2</subscript> and R<subscript>3</subscript> in the circuit.  However, I could have placed this wire instead between the left terminal of R<subscript>2</subscript> and the right terminal of R<subscript>1</subscript>, since the right terminal of R<subscript>1</subscript> is already connected to the left terminal of R<subscript>3</subscript> (having been placed there in step 9) and so is electrically common with that one point.  Doing this, though, would have resulted in <italic>three</italic> wires secured to the right terminal of R<subscript>1</subscript> instead of two, which is a <italic>faux pax</italic> in terminal strip etiquette.  Would the circuit have worked this way?  Certainly!  It's just that more than two wires secured at a single terminal makes for a "messy" connection: one that is aesthetically unpleasing and may place undue stress on the screw terminal.
</para>

<para>
Another variation would be to reverse the terminal connections for resistor R<subscript>7</subscript>.  As shown in the last diagram, the voltage polarity across R<subscript>7</subscript> is negative on the left and positive on the right (- , +), whereas all the other resistor polarities are positive on the left and negative on the right (+ , -):
</para>

<image>00492.png</image> 

<para>
While this poses no electrical problem, it might cause confusion for anyone measuring resistor voltage drops with a voltmeter, especially an analog voltmeter which will "peg" downscale when subjected to a voltage of the wrong polarity.  For the sake of consistency, it might be wise to arrange all wire connections so that all resistor voltage drop polarities are the same, like this:
</para>

<image>00493.png</image> 

<para>
Though electrons do not care about such consistency in component layout, people do.  This illustrates an important aspect of any engineering endeavor: the human factor.  Whenever a design may be modified for easier comprehension and/or easier maintenance -- with no sacrifice of functional performance -- it should be done so.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Circuits built on terminal strips can be difficult to lay out, but when built they are robust enough to be considered permanent, yet easy to modify.</item>
<item>It is bad practice to secure more than two wire ends and/or component leads under a single terminal screw or clip on a terminal strip.  Try to arrange connecting wires so as to avoid this condition.</item>
<item>Whenever possible, build your circuits with clarity and ease of understanding in mind.  Even though component and wiring layout is usually of little consequence in DC circuit function, it matters significantly for the sake of the person who has to modify or troubleshoot it later.</item>
</itemize>

</section>




<section>
<sectiontitle>Contributors</sectiontitle>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Tony Armstrong</bold> (January 23, 2003): Suggested reversing polarity on resistor R<subscript>7</subscript> in last terminal strip circuit.
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



