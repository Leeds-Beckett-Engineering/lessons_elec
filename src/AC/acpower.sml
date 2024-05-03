
<chapter>
<chaptertitle>POWER FACTOR</chaptertitle>

<section>
<sectiontitle>Power in resistive and reactive AC circuits</sectiontitle>

<index>Power factor</index>
<index>Factor, power</index>

<para>
Consider a circuit for a single-phase AC power system, where a 120 volt, 60 Hz AC voltage source is delivering power to a resistive load: (Figure<ref>02211.png below</ref>)
</para>

<image>02211.png<caption>Ac source drives a purely resistive load.</caption></image> 

<para>

</para>

<bigspace>

<image>12120.png</image> 

<para>
In this example, the current to the load would be 2 amps, RMS.  The power dissipated at the load would be 240 watts.  Because this load is purely resistive (no reactance), the current is in phase with the voltage, and calculations look similar to that in an equivalent DC circuit.  If we were to plot the voltage, current, and power waveforms for this circuit, it would look like Figure<ref>02055b.png below</ref>.
</para>

<image>02055.png<caption>Current is in phase with voltage in a resistive circuit.</caption><label>02055b.png</label></image> 

<para>
Note that the waveform for power is always positive, never negative for this resistive circuit.  This means that power is always being dissipated by the resistive load, and never returned to the source as it is with reactive loads.  If the source were a mechanical generator, it would take 240 watts worth of mechanical energy (about 1/3 horsepower) to turn the shaft.
</para>

<para>
Also note that the waveform for power is not at the same frequency as the voltage or current!  Rather, its frequency is <italic>double</italic> that of either the voltage or current waveforms.  This different frequency prohibits our expression of power in an AC circuit using the same complex (rectangular or polar) notation as used for voltage, current, and impedance, because this form of mathematical symbolism implies unchanging phase relationships.  When frequencies are not the same, phase relationships constantly change.
</para>

<para>
As strange as it may seem, the best way to proceed with AC power calculations is to use <italic>scalar</italic> notation, and to handle any relevant phase relationships with trigonometry.
</para>

<para>
For comparison, let's consider a simple AC circuit with a purely reactive load in Figure<ref>02212.png below</ref>.
</para>

<image>02212.png<caption>AC circuit with a purely reactive (inductive) load.</caption></image> 

<para>

</para>

<bigspace>

<image>12121.png</image> 

<para>

</para>

<bigspace>

<image>02059.png<caption>Power is not dissipated in a purely reactive load. Though it is alternately absorbed from and returned to the source.</caption><label>02059b.png</label></image> 

<para>
Note that the power alternates equally between cycles of positive and negative. (Figure<ref>02059b.png above</ref>)  This means that power is being alternately absorbed from and returned to the source.  If the source were a mechanical generator, it would take (practically) no net mechanical energy to turn the shaft, because no power would be used by the load.  The generator shaft would be easy to spin, and the inductor would not become warm as a resistor would.
</para>

<para>
Now, let's consider an AC circuit with a load consisting of both inductance and resistance in Figure<ref>02213.png below</ref>.
</para>

<image>02213.png<caption>AC circuit with both reactance and resistance.</caption></image> 

<para>

</para>

<bigspace>

<image>12122.png</image> 

<para>
At a frequency of 60 Hz, the 160 millihenrys of inductance gives us 60.319 <OMEGA> of inductive reactance.  This reactance combines with the 60 <OMEGA> of resistance to form a total load impedance of 60 + j60.319 <OMEGA>, or 85.078 <OMEGA> <angle> 45.152<superscript>o</superscript>.  If we're not concerned with phase angles (which we're not at this point), we may calculate current in the circuit by taking the polar magnitude of the voltage source (120 volts) and dividing it by the polar magnitude of the impedance (85.078 <OMEGA>).  With a power supply voltage of 120 volts RMS, our load current is 1.410 amps.  This is the figure an RMS ammeter would indicate if connected in series with the resistor and inductor.
</para>

<para>
We already know that reactive components dissipate zero power, as they equally absorb power from, and return power to, the rest of the circuit.  Therefore, any inductive reactance in this load will likewise dissipate zero power.  The only thing left to dissipate power here is the resistive portion of the load impedance.  If we look at the waveform plot of voltage, current, and total power for this circuit, we see how this combination works in Figure<ref>02214.png below</ref>.
</para>

<image>02214.png<caption>A combined resistive/reactive circuit dissipates more power than it returns to the source. The reactance dissipates no power; though, the resistor does.</caption></image> 

<para>
As with any reactive circuit, the power alternates between positive and negative instantaneous values over time.  In a purely reactive circuit that alternation between positive and negative power is equally divided, resulting in a net power dissipation of zero.  However, in circuits with mixed resistance and reactance like this one, the power waveform will still alternate between positive and negative, but the amount of positive power will exceed the amount of negative power.  In other words, the combined inductive/resistive load will consume more power than it returns back to the source.
</para>

<para>
Looking at the waveform plot for power, it should be evident that the wave spends more time on the positive side of the center line than on the negative, indicating that there is more power absorbed by the load than there is returned to the circuit.  What little returning of power that occurs is due to the reactance; the imbalance of positive versus negative power is due to the resistance as it dissipates energy outside of the circuit (usually in the form of heat).  If the source were a mechanical generator, the amount of mechanical energy needed to turn the shaft would be the amount of power averaged between the positive and negative power cycles.
</para>

<index>Scalar number</index>
<index>Number, scalar</index>
<index>Complex number</index>
<index>Number, complex</index>
<index>Vector</index>

<para>
Mathematically representing power in an AC circuit is a challenge, because the power wave isn't at the same frequency as voltage or current.  Furthermore, the phase angle for power means something quite different from the phase angle for either voltage or current.  Whereas the angle for voltage or current represents a relative <italic>shift in timing</italic> between two waves, the phase angle for power represents a <italic>ratio</italic> between power dissipated and power returned.  Because of this way in which AC power differs from AC voltage or current, it is actually easier to arrive at figures for power by calculating with <italic>scalar</italic> quantities of voltage, current, resistance, and reactance than it is to try to derive it from <italic>vector</italic>, or <italic>complex</italic> quantities of voltage, current, and impedance that we've worked with so far.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>In a purely resistive circuit, all circuit power is dissipated by the resistor(s).  Voltage and current are in phase with each other.</item>
<item>In a purely reactive circuit, no circuit power is dissipated by the load(s).  Rather, power is alternately absorbed from and returned to the AC source.  Voltage and current are 90<superscript>o</superscript> out of phase with each other.</item>
<item>In a circuit consisting of resistance and reactance mixed, there will be more power dissipated by the load(s) than returned, but some power will definitely be dissipated and some will merely be absorbed and returned.  Voltage and current in such a circuit will be out of phase by a value somewhere between 0<superscript>o</superscript> and 90<superscript>o</superscript>.</item>
</itemize>

</section>






<section>
<sectiontitle>True, Reactive, and Apparent power</sectiontitle>

<index>Power, reactive</index>
<index>Power, apparent</index>
<index>Power, true</index>
<index>Volt-amp, unit</index>
<index>VA, unit</index>
<index>Volt-amp-reactive, unit</index>
<index>VAR, unit</index>
<index>Unit, volt-amp</index>
<index>Unit, volt-amp-reactive</index>
<index>Watt, unit</index>
<index>Unit, watt</index>
<index>Q, symbol for reactive power</index>
<index>S, symbol for apparent power</index>
<index>P, symbol for true power</index>

<para>
We know that reactive loads such as inductors and capacitors dissipate zero power, yet the fact that they drop voltage and draw current gives the deceptive impression that they actually <italic>do</italic> dissipate power.  This ``phantom power'' is called <italic>reactive power</italic>, and it is measured in a unit called <italic>Volt-Amps-Reactive</italic> (VAR), rather than watts.  The mathematical symbol for reactive power is (unfortunately) the capital letter Q.  The actual amount of power being used, or dissipated, in a circuit is called <italic>true power</italic>, and it is measured in watts (symbolized by the capital letter P, as always).  The combination of reactive power and true power is called <italic>apparent power</italic>, and it is the product of a circuit's voltage and current, without reference to phase angle.  Apparent power is measured in the unit of <italic>Volt-Amps</italic> (VA) and is symbolized by the capital letter S.
</para>

<para>
As a rule, true power is a function of a circuit's dissipative elements, usually resistances (R).  Reactive power is a function of a circuit's reactance (X).  Apparent power is a function of a circuit's total impedance (Z).  Since we're dealing with scalar quantities for power calculation, any complex starting quantities such as voltage, current, and impedance must be represented by their <italic>polar magnitudes</italic>, not by real or imaginary rectangular components.  For instance, if I'm calculating true power from current and resistance, I must use the polar magnitude for current, and not merely the ``real'' or ``imaginary'' portion of the current.  If I'm calculating apparent power from voltage and impedance, both of these formerly complex quantities must be reduced to their polar magnitudes for the scalar arithmetic.
</para>

<para>
There are several power equations relating the three types of power to resistance, reactance, and impedance (all using scalar quantities):
</para>

<image>12123.png</image> 

<para>
Please note that there are two equations each for the calculation of true and reactive power.  There are three equations available for the calculation of apparent power, P=IE being useful <italic>only</italic> for that purpose.  Examine the following circuits and see how these three types of power interrelate for: a purely resistive load in  Figure<ref>02215.png below</ref>,
a purely reactive load in Figure<ref>02216.png below</ref>,
and a resistive/reactive load in Figure<ref>02217.png below</ref>.
</para>



<para>
Resistive load only: 
</para>

<image>02215.png<caption>True power, reactive power, and apparent power for a purely resistive load.</caption></image> 



<para>
Reactive load only:
</para>

<image>02216.png<caption>True power, reactive power, and apparent power for a purely reactive load.</caption></image> 



<para>
Resistive/reactive load:
</para>

<image>02217.png<caption>True power, reactive power, and apparent power for a resistive/reactive load.</caption></image> 



<index>Triangle, power</index>
<index>Power triangle</index>

<para>
These three types of power -- true, reactive, and apparent -- relate to one another in trigonometric form.  We call this the <italic>power triangle</italic>: (Figure<ref>02218.png below</ref>).
</para>

<image>02218.png<caption>Power triangle relating appearant power to true power and reactive power. </caption></image> 

<para>
Using the laws of trigonometry, we can solve for the length of any side (amount of any type of power), given the lengths of the other two sides, or the length of one side and an angle.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Power dissipated by a load is referred to as <italic>true power</italic>.  True power is symbolized by the letter P and is measured in the unit of Watts (W).</item>
<item>Power merely absorbed and returned in load due to its reactive properties is referred to as <italic>reactive power</italic>.  Reactive power is symbolized by the letter Q and is measured in the unit of Volt-Amps-Reactive (VAR).</item>
<item>Total power in an AC circuit, both dissipated and absorbed/returned is referred to as <italic>apparent power</italic>.  Apparent power is symbolized by the letter S and is measured in the unit of Volt-Amps (VA).</item>
<item>These three types of power are trigonometrically related to one another.  In a right triangle, P = adjacent length, Q = opposite length, and S = hypotenuse length.  The opposite angle is equal to the circuit's impedance (Z) phase angle.</item>
</itemize>

</section>





<section>
<sectiontitle>Calculating power factor</sectiontitle>

<para>
As was mentioned before, the angle of this ``power triangle'' graphically indicates the ratio between the amount of dissipated (or <italic>consumed</italic>) power and the amount of absorbed/returned power.  It also happens to be the same angle as that of the circuit's impedance in polar form.  When expressed as a fraction, this ratio between true power and apparent power is called the <italic>power factor</italic> for this circuit.  Because true power and apparent power form the adjacent and hypotenuse sides of a right triangle, respectively, the power factor ratio is also equal to the cosine of that phase angle.  Using values from the last example circuit:
</para>

<image>12124.png</image> 

<para>
It should be noted that power factor, like all ratio measurements, is a <italic>unitless</italic> quantity.
</para>

<para>
For the purely resistive circuit, the power factor is 1 (perfect), because the reactive power equals zero.  Here, the power triangle would look like a horizontal line, because the opposite (reactive power) side would have zero length.
</para>

<para>
For the purely inductive circuit, the power factor is zero, because true power equals zero.  Here, the power triangle would look like a vertical line, because the adjacent (true power) side would have zero length.
</para>

<para>
The same could be said for a purely capacitive circuit.  If there are no dissipative (resistive) components in the circuit, then the true power must be equal to zero, making any power in the circuit purely reactive.  The power triangle for a purely capacitive circuit would again be a vertical line (pointing down instead of up as it was for the purely inductive circuit).
</para>

<para>
Power factor can be an important aspect to consider in an AC circuit, because any power factor less than 1 means that the circuit's wiring has to carry more current than what would be necessary with zero reactance in the circuit to deliver the same amount of (true) power to the resistive load.  If our last example circuit had been purely resistive, we would have been able to deliver a full 169.256 watts to the load with the same 1.410 amps of current, rather than the mere 119.365 watts that it is presently dissipating with that same current quantity.  The poor power factor makes for an inefficient power delivery system.
</para>

<para>
Poor power factor can be corrected, paradoxically, by adding another load to the circuit drawing an equal and opposite amount of reactive power, to cancel out the effects of the load's inductive reactance.  Inductive reactance can only be canceled by capacitive reactance, so we have to add a <italic>capacitor</italic> in parallel to our example circuit as the additional load.  The effect of these two opposing reactances in parallel is to bring the circuit's total impedance equal to its total resistance (to make the impedance phase angle equal, or at least closer, to zero).
</para>

<para>
Since we know that the (uncorrected) reactive power is 119.998 VAR (inductive), we need to calculate the correct capacitor size to produce the same quantity of (capacitive) reactive power.  Since this capacitor will be directly in parallel with the source (of known voltage), we'll use the power formula which starts from voltage and reactance:
</para>

<image>12125.png</image> 

<para>
Let's use a rounded capacitor value of 22 <mu>F and see what happens to our circuit: (Figure<ref>02219.png below</ref>)
</para>

<image>02219.png<caption>Parallel capacitor corrects lagging power factor of inductive load. V2 and node numbers: 0, 1, 2, and 3 are SPICE related, and may be ignored for the moment.</caption></image> 

<para>

</para>



<image>12126.png</image> 

<para>
The power factor for the circuit, overall, has been substantially improved.  The main current has been decreased from 1.41 amps to 994.7 milliamps, while the power dissipated at the load resistor remains unchanged at 119.365 watts.  The power factor is much closer to being 1:
</para>

<image>12127.png</image> 

<para>
Since the impedance angle is still a positive number, we know that the circuit, overall, is still more inductive than it is capacitive.  If our power factor correction efforts had been perfectly on-target, we would have arrived at an impedance angle of exactly zero, or purely resistive.  If we had added too large of a capacitor in parallel, we would have ended up with an impedance angle that was negative, indicating that the circuit was more capacitive than inductive.
</para>


<para>
A SPICE simulation of the circuit of (Figure<ref>02219.png above</ref>) shows  total voltage and total current are nearly in phase. The SPICE circuit file has a zero volt voltage-source (V2) in series with the capacitor so that the capacitor current may be measured. The start time  of 200 msec ( instead of 0) in the transient analysis statement allows the DC conditions to stabilize before collecting data. See SPICE listing ``pf.cir power factor''.
</para>

<table>
<literal>
<sp>          pf.cir power factor
<sp>          V1 1 0 sin(0 170 60)
<sp>          C1 1 3 22uF
<sp>          v2 3 0 0
<sp>          L1 1 2 160mH
<sp>          R1 2 0 60
<sp>          # resolution stop start
<sp>          .tran 1m     200m 160m
<sp>          .end
</literal>
</table>


<para>
The Nutmeg plot of the various currents with respect to the applied voltage V<subscript>total</subscript> is shown in  (Figure<ref>22057.png below</ref>).  The reference is  V<subscript>total</subscript>, to which all other measurements are compared. This is because the applied voltage, V<subscript>total</subscript>, appears across the parallel branches of the circuit. There is no single current common to all components. We can compare those currents to V<subscript>total</subscript>.
</para>

<image>22057.png<caption>Zero phase angle due to in-phase V<subscript>total</subscript> and I<subscript>total</subscript> . The lagging I<subscript>L</subscript> with respect to V<subscript>total</subscript> is corrected by a leading I<subscript>C</subscript> .</caption></image> 

<para>
Note that the total current (I<subscript>total</subscript>) is in phase with the applied voltage (V<subscript>total</subscript>), indicating a phase angle of near zero. This is no coincidence. Note that the lagging current, I<subscript>L</subscript> of the inductor would have caused the total current to have a lagging phase somewhere between  (I<subscript>total</subscript>) and  I<subscript>L</subscript>. However, the leading capacitor current, I<subscript>C</subscript>, compensates for the lagging inductor current. The result is a total current phase-angle somewhere  between the inductor and capacitor currents. Moreover, that total current  (I<subscript>total</subscript>) was forced to be in-phase with the total applied voltage (V<subscript>total</subscript>), by the calculation of an appropriate capacitor value.  
</para>

<para>
Since the total voltage and current are in phase, the product of these two waveforms, power, will always be positive throughout a 60 Hz cycle, real power as in  Figure<ref>02055b.png above</ref>.
<comment>split for multiple refs in one line.</comment>
Had the phase-angle not been corrected to zero (PF=1), the product would have been negative where positive portions of one waveform overlapped negative portions of the other as in Figure<ref>02214.png above</ref>. Negative power is fed back to the generator. It cannot be sold; though, it does waste power in the resistance of electric lines between load and generator. The parallel capacitor corrects this problem.
</para>

<para>
Note that reduction of line losses applies to the lines from the generator to the point where the power factor correction capacitor is applied. In other words, there is still circulating current between the capacitor and the inductive load. This is not normally a problem because the power factor correction is applied close to the offending load, like an induction motor.
</para>


<para>
It should be noted that too much capacitance in an AC circuit will result in a low power factor just as well as too much inductance.  You must be careful not to over-correct when adding capacitance to an AC circuit.  You must also be <italic>very</italic> careful to use the proper capacitors for the job (rated adequately for power system voltages and the occasional voltage spike from lightning strikes, for continuous AC service, and capable of handling the expected levels of current).
</para>

<index>Leading phase shift</index>
<index>Lagging phase shift</index>

<para>
If a circuit is predominantly inductive, we say that its power factor is <italic>lagging</italic> (because the current wave for the circuit lags behind the applied voltage wave).  Conversely, if a circuit is predominantly capacitive, we say that its power factor is <italic>leading</italic>.  Thus, our example circuit started out with a power factor of 0.705 lagging, and was corrected to a power factor of 0.999 lagging.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Poor power factor in an AC circuit may be ``corrected'', or re-established at a value close to 1, by adding a parallel reactance opposite the effect of the load's reactance.  If the load's reactance is inductive in nature (which is almost always will be), parallel <italic>capacitance</italic> is what is needed to correct poor power factor.</item>
</itemize>

</section>





<section>
<sectiontitle>Practical power factor correction</sectiontitle>

<index>Meter, power factor</index>
<index>Power factor meter</index>

<para>
When the need arises to correct for poor power factor in an AC power system, you probably won't have the luxury of knowing the load's exact inductance in henrys to use for your calculations.  You may be fortunate enough to have an instrument called a <italic>power factor meter</italic> to tell you what the power factor is (a number between 0 and 1), and the apparent power (which can be figured by taking a voltmeter reading in volts and multiplying by an ammeter reading in amps).  In less favorable circumstances you may have to use an oscilloscope to compare voltage and current waveforms, measuring phase shift in <italic>degrees</italic> and calculating power factor by the cosine of that phase shift.  
</para>

<para>
Most likely, you will have access to a wattmeter for measuring true power, whose reading you can compare against a calculation of apparent power (from multiplying total voltage and total current measurements).  From the values of true and apparent power, you can determine reactive power and power factor.  Let's do an example problem to see how this works: (Figure<ref>02220.png below</ref>)
</para>

<image>02220.png<caption>Wattmeter reads true power; product of voltmeter and ammeter readings yields appearant power.</caption></image> 

<para>
First, we need to calculate the apparent power in kVA.  We can do this by multiplying load voltage by load current:
</para>

<image>12128.png</image> 

<para>
As we can see, 2.308 kVA is a much larger figure than 1.5 kW, which tells us that the power factor in this circuit is rather poor (substantially less than 1).  Now, we figure the power factor of this load by dividing the true power by the apparent power:
</para>

<image>12129.png</image> 

<para>
Using this value for power factor, we can draw a power triangle, and from that determine the reactive power of this load: (Figure<ref>02221.png below</ref>)
</para>

<image>02221.png<caption>Reactive power may be calculated from true power and appearant power.</caption></image> 

<para>
To determine the unknown (reactive power) triangle quantity, we use the Pythagorean Theorem ``backwards,'' given the length of the hypotenuse (apparent power) and the length of the adjacent side (true power):
</para>

<image>12130.png</image> 

<para>
If this load is an electric motor, or most any other industrial AC load, it will have a lagging (inductive) power factor, which means that we'll have to correct for it with a <italic>capacitor</italic> of appropriate size, wired in parallel.  Now that we know the amount of reactive power (1.754 kVAR), we can calculate the size of capacitor needed to counteract its effects:
</para>

<image>12131.png</image> 

<para>
Rounding this answer off to 80 <mu>F, we can place that size of capacitor in the circuit and calculate the results: (Figure<ref>02222.png below</ref>)
</para>

<image>02222.png<caption>Parallel capacitor corrects lagging (inductive) load.</caption></image> 

<para>
An 80 <mu>F capacitor will have a capacitive reactance of 33.157 <OMEGA>, giving a current of 7.238 amps, and a corresponding reactive power of 1.737 kVAR (for the capacitor <italic>only</italic>).  Since the capacitor's current is 180<superscript>o</superscript> out of phase from the the load's inductive contribution to current draw, the capacitor's reactive power will directly subtract from the load's reactive power, resulting in:
</para>

<image>12132.png</image> 

<para>
This correction, of course, will not change the amount of true power consumed by the load, but it will result in a substantial reduction of apparent power, and of the total current drawn from the 240 Volt source: (Figure<ref>02223.png below</ref>)
</para>

<image>02223.png<caption>Power triangle before and after capacitor correction.</caption></image> 

<para>
The new apparent power can be found from the true and new reactive power values, using the standard form of the Pythagorean Theorem:
</para>

<image>12133.png</image> 

<para>
This gives a corrected power factor of (1.5kW / 1.5009 kVA), or 0.99994, and a new total current of (1.50009 kVA / 240 Volts), or 6.25 amps, a substantial improvement over the uncorrected value of 9.615 amps!  This lower total current will translate to less heat losses in the circuit wiring, meaning greater system efficiency (less power wasted).
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

