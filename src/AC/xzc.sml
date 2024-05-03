

<chapter>
<chaptertitle>REACTANCE AND IMPEDANCE -- CAPACITIVE</chaptertitle>

<section>
<sectiontitle>AC resistor circuits</sectiontitle>

<image>02053.png<caption>Pure resistive AC circuit: voltage and current are in phase.</caption><label>02053a.png</label></image> 

<para>
If we were to plot the current and voltage for a very simple AC circuit consisting of a source and a resistor,  (Figure<ref>02053a.png above</ref>)
<comment>split for double ref</comment>
it would look something like this:  (Figure<ref>02054a.png below</ref>)
</para>

<image>02054.png<caption>Voltage and current ``in phase'' for resistive circuit.</caption><label>02054a.png</label></image> 

<index>Value, instantaneous</index>
<index>Instantaneous value</index>
<index>e, symbol for instantaneous voltage</index>
<index>i, symbol for instantaneous current</index>

<para>
Because the resistor allows an amount of current directly proportional to the voltage across it at all periods of time, the waveform for the current is exactly in phase with the waveform for the voltage.  We can look at any point in time along the horizontal axis of the plot and compare those values of current and voltage with each other (any ``snapshot'' look at the values of a wave are referred to as <italic>instantaneous values</italic>, meaning the values at that <italic>instant</italic> in time).  When the instantaneous value for voltage is zero, the instantaneous current through the resistor is also zero.  Likewise, at the moment in time where the voltage across the resistor is at its positive peak, the current through the resistor is also at its positive peak, and so on.  At any given point in time along the waves, Ohm's Law holds true for the instantaneous values of voltage and current.
</para>

<para>
We can also calculate the power dissipated by this resistor, and plot those values on the same graph:  (Figure<ref>02055a.png below</ref>)
</para>

<image>02055.png<caption>Instantaneous AC power in a resistive circuit is always positive.</caption><label>02055a.png</label></image> 

<index>p, symbol for instantaneous power</index>

<para>
Note that the power is never a negative value.  When the current is positive (above the line), the voltage is also positive, resulting in a power (p=ie) of a positive value.  Conversely, when the current is negative (below the line), the voltage is also negative, which results in a positive value for power (a negative number multiplied by a negative number equals a positive number).  This consistent ``polarity'' of power tells us that the resistor is always dissipating power, taking it from the source and releasing it in the form of heat energy.  Whether the current is positive or negative, a resistor still dissipates energy.
</para>

</section>





<section>
<sectiontitle>AC capacitor circuits</sectiontitle>

<index>Capacitor</index>
<index>Capacitive reactance</index>
<index>Reactance, capacitive</index>

<para>
Capacitors do not behave the same as resistors.  Whereas resistors allow a flow of electrons through them directly proportional to the voltage drop, capacitors oppose <italic>changes</italic> in voltage by drawing or supplying current as they charge or discharge to the new voltage level.  The flow of electrons ``through'' a capacitor is directly proportional to the <italic>rate of change</italic> of voltage across the capacitor.  This opposition to voltage change is another form of <italic>reactance</italic>, but one that is precisely opposite to the kind exhibited by inductors.
</para>

<para>
Expressed mathematically, the relationship between the current ``through'' the capacitor and rate of voltage change across the capacitor is as such:
</para>

<image>12041.png</image> 

<index>Capacitance</index>
<index>Farad</index>
<index>Unit, farad</index>
<index>Calculus</index>
<index>C, symbol for capacitance</index>
<index>e, symbol for instantaneous voltage</index>
<index>v, symbol for instantaneous voltage</index>
<index>i, symbol for instantaneous current</index>

<para>
The expression <italic>de/dt</italic> is one from calculus, meaning the rate of change of instantaneous voltage (e) over time, in volts per second.  The capacitance (C) is in Farads, and the instantaneous current (i), of course, is in amps.  Sometimes you will find the rate of instantaneous voltage change over time expressed as dv/dt instead of de/dt: using the lower-case letter ``v'' instead or ``e'' to represent voltage, but it means the exact same thing.  To show what happens with alternating current, let's analyze a simple capacitor circuit: (Figure<ref>02068.png below</ref>)
</para>

<image>02068.png<caption>Pure capacitive circuit: capacitor voltage lags capacitor current by 90<superscript>o</superscript></caption></image> 

<para>
If we were to plot the current and voltage for this very simple circuit, it would look something like this: (Figure<ref>02069.png below</ref>)
</para>

<image>02069.png<caption>Pure capacitive circuit waveforms.</caption></image> 

<index>Lagging phase shift</index>
<index>Leading phase shift</index>

<para>
Remember, the current through a capacitor is a reaction against the <italic>change</italic> in voltage across it.  Therefore, the instantaneous current is zero whenever the instantaneous voltage is at a peak (zero change, or level slope, on the voltage sine wave), and the instantaneous current is at a peak wherever the instantaneous voltage is at maximum change (the points of steepest slope on the voltage wave, where it crosses the zero line).  This results in a voltage wave that is -90<superscript>o</superscript> out of phase with the current wave.  Looking at the graph, the current wave seems to have a ``head start'' on the voltage wave; the current ``leads'' the voltage, and the voltage ``lags'' behind the current. (Figure<ref>02070.png below</ref>)
</para>

<image>02070.png<caption>Voltage lags current by 90<superscript>o</superscript> in a pure capacitive circuit.</caption></image> 

<para>
As you might have guessed, the same unusual power wave that we saw with the simple inductor circuit is present in the simple capacitor circuit, too: (Figure<ref>02071.png below</ref>)
</para>

<image>02071.png<caption>In a pure capacitive circuit, the instantaneous power may be positive or negative.</caption></image> 

<para>
As with the simple inductor circuit, the 90 degree phase shift between voltage and current results in a power wave that alternates equally between positive and negative.  This means that a capacitor does not dissipate power as it reacts against changes in voltage; it merely absorbs and releases power, alternately.
</para>

<index>Capacitive reactance</index>
<index>Reactance, capacitive</index>
<index>X, symbol for reactance</index>

<para>
A capacitor's opposition to change in voltage translates to an opposition to alternating voltage in general, which is by definition always changing in instantaneous magnitude and direction.  For any given magnitude of AC voltage at a given frequency, a capacitor of given size will ``conduct'' a certain magnitude of AC current.  Just as the current through a resistor is a function of the voltage across the resistor and the resistance offered by the resistor, the AC current through a capacitor is a function of the AC voltage across it, and the <italic>reactance</italic> offered by the capacitor.  As with inductors, the reactance of a capacitor is expressed in ohms and symbolized by the letter X (or X<subscript>C</subscript> to be more specific).
</para>

<para>
Since capacitors ``conduct'' current in proportion to the rate of voltage change, they will pass more current for faster-changing voltages (as they charge and discharge to the same voltage peaks in less time), and less current for slower-changing voltages.  What this means is that reactance in ohms for any capacitor is <italic>inversely</italic> proportional to the frequency of the alternating current. (Table<ref>xcreact.tbl below</ref>)
</para>

<index>f, symbol for frequency</index>

<image>12042.png</image> 



<table>xcreact.tbl<caption>Reactance of a 100 uF capacitor:</caption>

<tabular>{|r|r|}

<hr>

<tr>
<th>Frequency (Hertz)</th><th>Reactance (Ohms)</th>
</tr>
<hr>

<tr>
<td>60</td><td>26.5258</td>
</tr>


<tr>
<td>120</td><td>13.2629</td>
</tr>


<tr>
<td>2500</td><td>0.6366 </td>
</tr>

<hr>

</tabular>
</table>




<para>
Please note that the relationship of capacitive reactance to frequency is exactly opposite from that of inductive reactance.  Capacitive reactance (in ohms) decreases with increasing AC frequency.  Conversely, inductive reactance (in ohms) increases with increasing AC frequency.  Inductors oppose faster changing currents by producing greater voltage drops; capacitors oppose faster changing voltage drops by allowing greater currents.
</para>

<index>Angular velocity</index>
<index><omega>, symbol for angular velocity</index>
<index>Radian, angular measurement</index>

<para>
As with inductors, the reactance equation's 2<pi>f term may be replaced by the lower-case Greek letter Omega (<omega>), which is referred to as the <italic>angular velocity</italic> of the AC circuit.  Thus, the equation X<subscript>C</subscript> = 1/(2<pi>fC) could also be written as X<subscript>C</subscript> = 1/(<omega>C), with <omega> cast in units of <italic>radians per second</italic>.
</para>

<para>
Alternating current in a simple capacitive circuit is equal to the voltage (in volts) divided by the capacitive reactance (in ohms), just as either alternating or direct current in a simple resistive circuit is equal to the voltage (in volts) divided by the resistance (in ohms).  The following circuit illustrates this mathematical relationship by example: (Figure<ref>02072.png below</ref>)
</para>

<image>02072.png<caption>Capacitive reactance.</caption></image> 

<para>

</para>

<bigspace>

<image>12043.png</image> 

<para>
However, we need to keep in mind that voltage and current are not in phase here.  As was shown earlier, the current has a phase shift of +90<superscript>o</superscript> with respect to the voltage.  If we represent these phase angles of voltage and current mathematically, we can calculate the phase angle of the capacitor's reactive opposition to current.
</para>

<image>12044.png</image> 

<para>

</para>

<bigspace>

<image>02073.png<caption>Voltage lags current by 90<superscript>o</superscript> in a capacitor.</caption></image> 

<para>
Mathematically, we say that the phase angle of a capacitor's opposition to current is -90<superscript>o</superscript>, meaning that a capacitor's opposition to current is a negative imaginary quantity. (Figure<ref>02073.png above</ref>)  This phase angle of reactive opposition to current becomes critically important in circuit analysis, especially for complex AC circuits where reactance and resistance interact.  It will prove beneficial to represent <italic>any</italic> component's opposition to current in terms of complex numbers, and not just scalar quantities of resistance and reactance. 
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Capacitive reactance</italic> is the opposition that a capacitor offers to alternating current due to its phase-shifted storage and release of energy in its electric field.  Reactance is symbolized by the capital letter ``X'' and is measured in ohms just like resistance (R).</item>
<item>Capacitive reactance can be calculated using this formula: X<subscript>C</subscript> = 1/(2<pi>fC)</item>
<item>Capacitive reactance <italic>decreases</italic> with increasing frequency.  In other words, the higher the frequency, the less it opposes (the more it ``conducts'') the AC flow of electrons.</item>
</itemize>

</section>






<section>
<sectiontitle>Series resistor-capacitor circuits</sectiontitle>

<para>
In the last section, we learned what would happen in simple resistor-only and capacitor-only AC circuits.  Now we will combine the two components together in series form and investigate the effects. (Figure<ref>02074.png below</ref>)
</para>

<image>02074.png<caption>Series capacitor circuit: voltage lags current by 0<superscript>o</superscript> to 90<superscript>o</superscript>.</caption></image> 

<index>Impedance</index>
<index>Z, symbol for impedance</index>

<para>
The resistor will offer 5 <OMEGA> of resistance to AC current regardless of frequency, while the capacitor will offer 26.5258 <OMEGA> of reactance to AC current at 60 Hz.  Because the resistor's resistance is a real number (5 <OMEGA> <angle> 0<superscript>o</superscript>, or 5 + j0 <OMEGA>), and the capacitor's reactance is an imaginary number (26.5258 <OMEGA> <angle> -90<superscript>o</superscript>, or 0 - j26.5258 <OMEGA>), the combined effect of the two components will be an opposition to current equal to the complex sum of the two numbers.  The term for this complex opposition to current is <italic>impedance</italic>, its symbol is Z, and it is also expressed in the unit of ohms, just like resistance and reactance.  In the above example, the total circuit impedance is:
</para>

<index>R, symbol for resistance</index>
<index>X, symbol for reactance</index>

<image>12045.png</image> 

<index>Ohm's Law</index>

<para>
Impedance is related to voltage and current just as you might expect, in a manner similar to resistance in Ohm's Law:
</para>

<index>E, symbol for voltage</index>
<index>I, symbol for current</index>
<index>Z, symbol for impedance</index>

<image>12021.png</image> 

<para>
In fact, this is a far more comprehensive form of Ohm's Law than what was taught in DC electronics (E=IR), just as impedance is a far more comprehensive expression of opposition to the flow of electrons than simple resistance is.  Any resistance and any reactance, separately or in combination (series/parallel), can be and should be represented as a single impedance.
</para>

<para>
To calculate current in the above circuit, we first need to give a phase angle reference for the voltage source, which is generally assumed to be zero.  (The phase angles of resistive and capacitive impedance are <italic>always</italic> 0<superscript>o</superscript> and -90<superscript>o</superscript>, respectively, regardless of the given phase angles for voltage or current).
</para>

<image>12046.png</image> 

<para>
As with the purely capacitive circuit, the current wave is leading the voltage wave (of the source), although this time the difference is 79.325<superscript>o</superscript> instead of a full 90<superscript>o</superscript>. (Figure<ref>02075.png below</ref>)
</para>

<image>02075.png<caption>Voltage lags current (current leads voltage)in a series R-C circuit.</caption></image> 

<para>
As we learned in the AC inductance chapter, the ``table'' method of organizing circuit quantities is a very useful tool for AC analysis just as it is for DC analysis.  Let's place out known figures for this series circuit into a table and continue the analysis using this tool:
</para>

<image>12047.png</image> 

<para>
Current in a series circuit is shared equally by all components, so the figures placed in the ``Total'' column for current can be distributed to all other columns as well:
</para>

<image>12048.png</image> 

<para>
Continuing with our analysis, we can apply Ohm's Law (E=IR) vertically to determine voltage across the resistor and capacitor:
</para>

<image>12049.png</image> 

<para>
Notice how the voltage across the resistor has the exact same phase angle as the current through it, telling us that E and I are in phase (for the resistor only).  The voltage across the capacitor has a phase angle of -10.675<superscript>o</superscript>, exactly 90<superscript>o</superscript> <italic>less</italic> than the phase angle of the circuit current.  This tells us that the capacitor's voltage and current are still 90<superscript>o</superscript> out of phase with each other.
</para>

<para>
Let's check our calculations with SPICE: (Figure<ref>02076.png below</ref>)
</para>

<image>02076.png<caption>Spice circuit: R-C.</caption></image> 

<bigspace>

<table>
<literal>
ac r-c circuit   
v1 1 0 ac 10 sin
r1 1 2 5
c1 2 0 100u     
.ac lin 1 60 60 
.print ac v(1,2) v(2,0) i(v1)   
.print ac vp(1,2) vp(2,0) ip(v1)
.end    
</literal>
</table>

<bigspace>


<table>
<literal>
freq          v(1,2)      v(2)        i(v1)           
6.000E+01     1.852E+00   9.827E+00   3.705E-01

freq          vp(1,2)     vp(2)       ip(v1)          
6.000E+01     7.933E+01  -1.067E+01  -1.007E+02
</literal>
</table>

<bigspace>

<image>12050.png</image> 

<para>
Once again, SPICE confusingly prints the current phase angle at a value equal to the real phase angle plus 180<superscript>o</superscript> (or minus 180<superscript>o</superscript>).  However, its a simple matter to correct this figure and check to see if our work is correct.  In this case, the -100.7<superscript>o</superscript> output by SPICE for current phase angle equates to a positive 79.3<superscript>o</superscript>, which does correspond to our previously calculated figure of 79.325<superscript>o</superscript>. 
</para>

<para>
Again, it must be emphasized that the calculated figures corresponding to real-life voltage and current measurements are those in <italic>polar</italic> form, not rectangular form!  For example, if we were to actually build this series resistor-capacitor circuit and measure voltage across the resistor, our voltmeter would indicate <bold>1.8523</bold> volts, not 343.11 millivolts (real rectangular) or 1.8203 volts (imaginary rectangular).  Real instruments connected to real circuits provide indications corresponding to the vector length (magnitude) of the calculated figures.  While the rectangular form of complex number notation is useful for performing addition and subtraction, it is a more abstract form of notation than polar, which alone has direct correspondence to true measurements.
</para>



<para>
Impedance (Z) of a series R-C circuit may be calculated, given the resistance (R) and the capacitive reactance (X<subscript>C</subscript>). Since E=IR, E=IX<subscript>C</subscript>, and E=IZ, resistance, reactance, and impedance are proportional to voltage, respectively. Thus, the voltage phasor diagram can be replaced by a similar impedance diagram.  (Figure<ref>02516.png below</ref>)
</para>

<image>02516.png<caption>Series: R-C circuit Impedance phasor diagram.</caption></image> 

<bigspace>
<para>
<bold>Example:</bold>
</para>

<para>
Given: A 40 <OMEGA> resistor in series with a 88.42 microfarad capacitor.   Find the impedance at 60 hertz.
</para>

<literal>
<sp>
<sp>          X<subscript>C</subscript> = 1/(2<pi>fC)
<sp>          X<subscript>C</subscript> = 1/(2<pi><cdot>60<cdot>88.42<times>10<superscript>-6</superscript>) 
<sp>          X<subscript>C</subscript> = 30 <OMEGA>
<sp>           Z = R - jX<subscript>C</subscript> 
<sp>           Z = 40 - j30
<sp>          |Z| = sqrt(40<superscript>2</superscript> +  (-30)<superscript>2</superscript>) = 50 <OMEGA>
<sp>          <angle>Z = arctangent(-30/40) = -36.87<superscript>o</superscript>
<sp>           Z = 40 - j30 = 50<angle>-36.87<superscript>o</superscript>
</literal>
</para>

<bigspace>



<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Impedance</italic> is the total measure of opposition to electric current and is the complex (vector) sum of (``real'') resistance and (``imaginary'') reactance.</item>
<item>Impedances (Z) are managed just like resistances (R) in series circuit analysis: series impedances add to form the total impedance.  Just be sure to perform all calculations in complex (not scalar) form!  Z<subscript>Total</subscript> = Z<subscript>1</subscript> + Z<subscript>2</subscript> + . . . Z<subscript>n</subscript></item>
<item>Please note that impedances always add in series, regardless of what type of components comprise the impedances.  That is, resistive impedance, inductive impedance, and capacitive impedance are to be treated the same way mathematically.</item>
<item>A purely resistive impedance will always have a phase angle of exactly 0<superscript>o</superscript> (Z<subscript>R</subscript> = R <OMEGA> <angle> 0<superscript>o</superscript>).</item>
<item>A purely capacitive impedance will always have a phase angle of exactly -90<superscript>o</superscript> (Z<subscript>C</subscript> = X<subscript>C</subscript> <OMEGA> <angle> -90<superscript>o</superscript>).</item>
<item>Ohm's Law for AC circuits: E = IZ ; I = E/Z ; Z = E/I</item>
<item>When resistors and capacitors are mixed together in circuits, the total impedance will have a phase angle somewhere between 0<superscript>o</superscript> and -90<superscript>o</superscript>.</item>
<item>Series AC circuits exhibit the same fundamental properties as series DC circuits: current is uniform throughout the circuit, voltage drops add to form the total voltage, and impedances add to form the total impedance.</item>
</itemize>

</section>





<section>
<sectiontitle>Parallel resistor-capacitor circuits</sectiontitle>

<para>
Using the same value components in our series example circuit, we will connect them in parallel and see what happens: (Figure<ref>02263.png below</ref>)
</para>

<image>02263.png<caption>Parallel R-C circuit.</caption></image> 

<para>
Because the power source has the same frequency as the series example circuit, and the resistor and capacitor both have the same values of resistance and capacitance, respectively, they must also have the same values of impedance.  So, we can begin our analysis table with the same ``given'' values:
</para>

<image>12051.png</image> 

<para>
This being a parallel circuit now, we know that voltage is shared equally by all components, so we can place the figure for total voltage (10 volts <angle> 0<superscript>o</superscript>) in all the columns:
</para>

<image>12052.png</image> 

<para>
Now we can apply Ohm's Law (I=E/Z) vertically to two columns in the table, calculating current through the resistor and current through the capacitor:
</para>

<image>12053.png</image> 

<para>
Just as with DC circuits, branch currents in a parallel AC circuit add up to form the total current (Kirchhoff's Current Law again):
</para>

<image>12054.png</image> 

<para>
Finally, total impedance can be calculated by using Ohm's Law (Z=E/I) vertically in the ``Total'' column.  As we saw in the AC inductance chapter, parallel impedance can also be calculated by using a reciprocal formula identical to that used in calculating parallel resistances.  It is noteworthy to mention that this parallel impedance rule holds true regardless of the kind of impedances placed in parallel.  In other words, it doesn't matter if we're calculating a circuit composed of parallel resistors, parallel inductors, parallel capacitors, or some combination thereof: in the form of impedances (Z), all the terms are common and can be applied uniformly to the same formula.  Once again, the parallel impedance formula looks like this:
</para>

<image>12036.png</image> 
<bigspace>
<para>
The only drawback to using this equation is the significant amount of work required to work it out, especially without the assistance of a calculator capable of manipulating complex quantities.  Regardless of how we calculate total impedance for our parallel circuit (either Ohm's Law or the reciprocal formula), we will arrive at the same figure:
</para>

<image>12055.png</image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Impedances (Z) are managed just like resistances (R) in parallel circuit analysis: parallel impedances diminish to form the total impedance, using the reciprocal formula.  Just be sure to perform all calculations in complex (not scalar) form!  Z<subscript>Total</subscript> = 1/(1/Z<subscript>1</subscript> + 1/Z<subscript>2</subscript> + . . . 1/Z<subscript>n</subscript>)</item>
<item>Ohm's Law for AC circuits:  E = IZ ; I = E/Z ; Z = E/I</item>
<item>When resistors and capacitors are mixed together in parallel circuits (just as in series circuits), the total impedance will have a phase angle somewhere between 0<superscript>o</superscript> and -90<superscript>o</superscript>.  The circuit current will have a phase angle somewhere between 0<superscript>o</superscript> and +90<superscript>o</superscript>.</item>
<item>Parallel AC circuits exhibit the same fundamental properties as parallel DC circuits: voltage is uniform throughout the circuit, branch currents add to form the total current, and impedances diminish (through the reciprocal formula) to form the total impedance.</item>
</itemize>

</section>






<section>
<sectiontitle>Capacitor quirks</sectiontitle>

<para>
As with inductors, the ideal capacitor is a purely reactive device, containing absolutely zero resistive (power dissipative) effects.  In the real world, of course, nothing is so perfect.  However, capacitors have the virtue of generally being <italic>purer</italic> reactive components than inductors.  It is a lot easier to design and construct a capacitor with low internal series resistance than it is to do the same with an inductor.  The practical result of this is that real capacitors typically have impedance phase angles more closely approaching 90<superscript>o</superscript> (actually, -90<superscript>o</superscript>) than inductors.  Consequently, they will tend to dissipate less power than an equivalent inductor.  
</para>

<para>
Capacitors also tend to be smaller and lighter weight than their equivalent inductor counterparts, and since their electric fields are almost totally contained between their plates (unlike inductors, whose magnetic fields naturally tend to extend beyond the dimensions of the core), they are less prone to transmitting or receiving electromagnetic ``noise'' to/from other components.  For these reasons, circuit designers tend to favor capacitors over inductors wherever a design permits either alternative.
</para>

<index>Dielectric ``loss''</index>

<para>
Capacitors with significant resistive effects are said to be <italic>lossy</italic>, in reference to their tendency to dissipate (``lose'') power like a resistor.  The source of capacitor loss is usually the dielectric material rather than any wire resistance, as wire length in a capacitor is very minimal.
</para>

<index>Dielectric heating</index>
<index>Heating, dielectric</index>

<para>
Dielectric materials tend to react to changing electric fields by producing heat.  This heating effect represents a loss in power, and is equivalent to resistance in the circuit.  The effect is more pronounced at higher frequencies and in fact can be so extreme that it is sometimes exploited in manufacturing processes to heat insulating materials like plastic!  The plastic object to be heated is placed between two metal plates, connected to a source of high-frequency AC voltage.  Temperature is controlled by varying the voltage or frequency of the source, and the plates never have to contact the object being heated.
</para>

<para>
This effect is undesirable for capacitors where we expect the component to behave as a purely <italic>reactive</italic> circuit element.  One of the ways to mitigate the effect of dielectric ``loss'' is to choose a dielectric material less susceptible to the effect.  Not all dielectric materials are equally ``lossy.''  A relative scale of dielectric loss from least to greatest is given in Table<ref>dielectricloss.tbl below</ref>.
</para>


<table>dielectricloss.tbl<caption>Dielectric loss</caption>
<tabular>{|l|l|}
<hr>

<tr>
<th>Material</th><th>Loss</th>
</tr>
<hr>

<tr>
<td>Vacuum</td><td>Low</td>
</tr>
<tr>
<td>Air</td><td>-</td>
</tr>
<tr>
<td>Polystyrene</td><td>-</td>
</tr>
<tr>
<td>Mica</td><td>-</td>
</tr>
<tr>
<td>Glass</td><td>-</td>
</tr>
<tr>
<td>Low-K ceramic</td><td>-</td>
</tr>
<tr>
<td>Plastic film (Mylar)</td><td>-</td>
</tr>
<tr>
<td>Paper</td><td>-</td>
</tr>
<tr>
<td>High-K ceramic</td><td>-</td>
</tr>
<tr>
<td>Aluminum oxide</td><td>-</td>
</tr>
<tr>
<td>Tantalum pentoxide</td><td>high</td>
</tr>

<hr>

</tabular>
</table>


<para>
Dielectric resistivity manifests itself both as a series and a parallel resistance with the pure capacitance: (Figure<ref>02077.png below</ref>)
</para>

<image>02077.png<caption>Real capacitor has both series and parallel resistance. </caption></image> 

<para>
Fortunately, these stray resistances are usually of modest impact (low series resistance and high parallel resistance), much less significant than the stray resistances present in an average inductor.
</para>

<index>Electrolytic capacitor</index>

<para>
Electrolytic capacitors, known for their relatively high capacitance and low working voltage, are also known for their notorious lossiness, due to both the characteristics of the microscopically thin dielectric film and the electrolyte paste.  Unless specially made for AC service, electrolytic capacitors should never be used with AC unless it is mixed (biased) with a constant DC voltage preventing the capacitor from ever being subjected to reverse voltage.  Even then, their resistive characteristics may be too severe a shortcoming for the application anyway.
</para>

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

