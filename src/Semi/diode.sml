<chapter>
<chaptertitle>DIODES AND RECTIFIERS</chaptertitle>
<proofread>

<section>
<sectiontitle>Introduction</sectiontitle>


<index>Diode</index>
<index>Rectifier</index>

<para>
A <italic>diode</italic> is an electrical device allowing current to move through it in one direction with far greater ease than in the other.  The most common kind of diode in modern circuit design is the <italic>semiconductor</italic> diode, although other diode technologies exist.  Semiconductor diodes are symbolized in schematic diagrams such as Figure<ref>03246.png below</ref>. The term ``diode'' is customarily reserved for small signal devices, I <leq> 1 A. The term <italic>rectifier</italic> is used for power devices, I <gt> 1 A.
</para>

<image>03246.png<caption>Semiconductor diode schematic symbol: Arrows indicate the direction of electron current flow.</caption></image> 

<para>
When placed in a simple battery-lamp circuit, the diode will either allow or prevent current through the lamp, depending on the polarity of the applied voltage.  (Figure<ref>03247.png below</ref>)
</para>

<image>03247.png<caption>Diode operation: (a) Current flow is permitted; the diode is forward biased. (b) Current flow is prohibited; the diode is reversed biased.</caption></image> 

<index>Forward bias</index>
<index>Reverse bias</index>
<index>Bias, diode</index>

<para>
When the polarity of the battery is such that electrons are allowed to flow through the diode, the diode is said to be <italic>forward-biased</italic>.  Conversely, when the battery is ``backward'' and the diode blocks current, the diode is said to be <italic>reverse-biased</italic>.  A diode may be thought of as like a switch: ``closed'' when forward-biased and ``open'' when reverse-biased.
</para>

<index>Conventional flow</index>
<index>Electron flow</index>
<index>Flow, electron vs. conventional</index>

<para>
Oddly enough, the direction of the diode symbol's ``arrowhead'' points <italic>against</italic> the direction of electron flow.  This is because the diode symbol was invented by engineers, who predominantly use <italic>conventional flow</italic> notation in their schematics, showing current as a flow of charge from the positive (+) side of the voltage source to the negative (-).  This convention holds true for all semiconductor symbols possessing ``arrowheads:'' the arrow points in the permitted direction of conventional flow, and against the permitted direction of electron flow.
</para>

<index>Check valve</index>
<index>Valve, ``check''</index>

<para>
Diode behavior is analogous to the behavior of a hydraulic device called a <italic>check valve</italic>.  A check valve allows fluid flow through it in    only one direction as in Figure<ref>03248.png below</ref>.
</para>

<image>03248.png<caption>Hydraulic check valve analogy: (a) Electron current flow permitted. (b) Current flow prohibited.</caption></image> 

<para>
Check valves are essentially pressure-operated devices: they open and allow flow if the pressure across them is of the correct ``polarity'' to open the gate (in the analogy shown, greater fluid pressure on the right than on the left).  If the pressure is of the opposite ``polarity,'' the pressure difference across the check valve will close and hold the gate so that no flow occurs.
</para>

<para>
Like check valves, diodes are essentially ``pressure-'' operated (voltage-operated) devices.  The essential difference between forward-bias and reverse-bias is the polarity of the voltage dropped across the diode.  Let's take a closer look at the simple battery-diode-lamp circuit shown earlier, this time investigating voltage drops across the various components in Figure<ref>03249.png below</ref>.
</para>

<image>03249.png<caption>Diode circuit voltage measurements: (a) Forward biased. (b) Reverse biased.</caption></image> 

<para>
A forward-biased diode conducts current and drops a small voltage across it, leaving most of the battery voltage dropped across the lamp.  If the battery's polarity is reversed, the diode becomes reverse-biased, and drops <italic>all</italic> of the battery's voltage leaving none for the lamp.  If we consider the diode to be a self-actuating switch (closed in the forward-bias mode and open in the reverse-bias mode), this behavior makes sense.  The most substantial difference is that the diode drops a lot more voltage when conducting than the average mechanical switch (0.7 volts versus tens of millivolts).
</para>

<para>
This forward-bias voltage drop exhibited by the diode is due to the action of the depletion region formed by the P-N junction under the influence of an applied voltage.  If no voltage applied is across a semiconductor diode, a thin depletion region exists around the region of the P-N junction, preventing current flow.  (Figure<ref>03250.png below</ref> (a)) The depletion region is almost devoid of available charge carriers, and acts as an insulator:
</para>

<image>03250.png<caption>Diode representations: PN-junction model, schematic symbol, physical part.</caption></image> 

<para>
The schematic symbol of the diode is shown in Figure<ref>03250.png above</ref> (b) such that the anode (pointing end) corresponds to the P-type semiconductor at (a). The cathode bar, non-pointing end,  at (b) corresponds to the N-type material at (a). Also note that the cathode stripe on the physical part (c) corresponds to the cathode on the symbol. 
</para>

<para>
If a reverse-biasing voltage is applied across the P-N junction, this depletion region expands, further resisting any current through it. (Figure<ref>03251.png below</ref>)
</para>

<image>03251.png<caption>Depletion region expands with reverse bias.</caption></image> 

<index>Forward voltage, diode</index>
<index>Voltage, forward</index>

<para>
Conversely, if a forward-biasing voltage is applied across the P-N junction, the depletion region collapses becoming thinner. The diode becomes less resistive to current through it.  In order for a sustained current to go through the diode; though, the depletion region must be fully collapsed by the applied voltage.  This takes a certain minimum voltage to accomplish, called the <italic>forward voltage</italic> as illustrated in Figure<ref>03252.png below</ref>.
</para>

<image>03252.png<caption>Inceasing forward bias from (a) to (b) decreases depletion region thickness.</caption></image> 

<para>
For silicon diodes, the typical forward voltage is 0.7 volts, nominal.  For germanium diodes, the forward voltage is only 0.3 volts.  The chemical constituency of the P-N junction comprising the diode accounts for its nominal forward voltage figure, which is why silicon and germanium diodes have such different forward voltages.  Forward voltage drop remains approximately constant for a wide range of diode currents, meaning that diode voltage drop is not like that of a resistor or even a normal (closed) switch.  For most simplified circuit analysis,  the voltage drop across a conducting diode may be considered  constant at the nominal figure and  not related to the amount of current.
</para>

<index>Diode equation, the</index>
<index>Equation, diode</index>

<label>DioEqu</label>

<para>
Actually, forward voltage drop is more complex.  An equation describes the exact current through a diode, given the voltage dropped across the junction, the temperature of the junction, and several physical constants.  It is commonly known as the <italic>diode equation</italic>:
</para>

<image>13047.png</image> 

<index>Thermal voltage, diode</index>

<para>
The term kT/q describes the voltage produced within the P-N junction due to the action of temperature, and is called the <italic>thermal voltage</italic>, or V<subscript>t</subscript> of the junction.  At room temperature, this is about 26 millivolts.  Knowing this, and assuming a ``nonideality'' coefficient of 1, we may simplify the diode equation and re-write it as such:
</para>

<image>13048.png</image> 

<para>
You need not be familiar with the ``diode equation''  to analyze simple diode circuits.  Just understand that the voltage dropped across a current-conducting diode <italic>does</italic> change with the amount of current going through it, but that this change is fairly small over a wide range of currents.  This is why many textbooks simply say the voltage drop across a conducting, semiconductor diode remains constant at 0.7 volts for silicon and 0.3 volts for germanium.  However, some circuits intentionally make use of the P-N junction's inherent exponential current/voltage relationship and thus can only be understood in the context of this equation.  Also, since temperature is a factor in the diode equation, a forward-biased P-N junction may also be used as a temperature-sensing device, and thus can only be understood if one has a conceptual grasp on this mathematical relationship.
</para>

<index>Leakage current, diode</index>
<index>Breakdown, diode</index>
<index>PIV rating, diode</index>
<index>Diode PIV rating</index>
<index>Reverse voltage rating, diode</index>

<para>
A reverse-biased diode prevents current from going through it, due to the expanded depletion region.  In actuality, a very small amount of current can and does go through a reverse-biased diode, called the <italic>leakage current</italic>, but it can be ignored for most purposes.  The ability of a diode to withstand reverse-bias voltages is limited, as it is for any insulator.  If the applied reverse-bias voltage becomes too great, the diode will experience a condition known as <italic>breakdown</italic> (Figure<ref>03253.png below</ref>), which is usually destructive.  A diode's maximum reverse-bias voltage rating is known as the <italic>Peak Inverse Voltage</italic>, or <italic>PIV</italic>, and may be obtained from the manufacturer.  Like forward voltage, the PIV rating of a diode varies with temperature, except that PIV <italic>increases</italic> with increased temperature and <italic>decreases</italic> as the diode becomes cooler -- exactly opposite that of forward voltage.
</para>

<image>03253.png<caption>Diode curve: showing knee at 0.7 V forward bias for Si, and reverse breakdown.</caption></image> 

<para>
Typically, the PIV rating of a generic ``rectifier'' diode is at least 50 volts at room temperature.  Diodes with PIV ratings in the many thousands of volts are available for modest prices.
</para>


<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>diode</italic> is an electrical component acting as a one-way valve for current.</item>
<item>When voltage is applied across a diode in such a way that the diode allows current, the diode is said to be <italic>forward-biased</italic>.</item>
<item>When voltage is applied across a diode in such a way that the diode prohibits current, the diode is said to be <italic>reverse-biased</italic>.</item>
<item>The voltage dropped across a conducting, forward-biased diode is called the <italic>forward voltage</italic>.  Forward voltage for a diode varies only slightly for changes in forward current and temperature, and is fixed by the chemical composition of the P-N junction.</item>
<item>Silicon diodes have a forward voltage of approximately 0.7 volts.</item>
<item>Germanium diodes have a forward voltage of approximately 0.3 volts.</item>
<item>The maximum reverse-bias voltage that a diode can withstand without ``breaking down'' is called the <italic>Peak Inverse Voltage</italic>, or <italic>PIV</italic> rating.</item>
</itemize>

</section>






<section>
<sectiontitle>Meter check of a diode</sectiontitle>

<para>
Being able to determine the polarity (cathode versus anode) and basic functionality of a diode is a very important skill for the electronics hobbyist or technician to have.  Since we know that a diode is essentially nothing more than a one-way valve for electricity, it makes sense we should be able to verify its one-way nature using a DC (battery-powered) ohmmeter as in Figure<ref>03254.png below</ref>.  Connected one way across the diode, the meter should show a very low resistance at (a).  Connected the other way across the diode, it should show a very high resistance at (b) (``OL'' on some digital meter models).
</para>

<image>03254.png<caption>Determination of diode polarity: (a) Low resistance indicates  forward bias, black lead is cathode and red lead anode (for most meters) (b) Reversing leads shows high resistance indicating reverse bias.</caption></image> 


<para>
Of course, to determine which end of the diode is the cathode and which is the anode, you must know with certainty which test lead of the meter is positive (+) and which is negative (-) when set to the ``resistance'' or ``<OMEGA>'' function.  With most digital multimeters I've seen, the red lead becomes positive and the black lead negative when set to measure resistance, in accordance with standard electronics color-code convention.  However, this is not guaranteed for all meters.  Many analog multimeters, for example, actually make their black leads positive (+) and their red leads negative (-) when switched to the ``resistance'' function, because it is easier to manufacture it that way!
</para>

<para>
One problem with using an ohmmeter to check a diode is that the readings obtained only have qualitative value, not quantitative.  In other words, an ohmmeter only tells you which way the diode conducts; the low-value resistance indication obtained while conducting is useless.  If an ohmmeter shows a value of ``1.73 ohms'' while forward-biasing a diode, that figure of 1.73 <OMEGA> doesn't represent any real-world quantity useful to us as technicians or circuit designers.  It neither represents the forward voltage drop nor any ``bulk'' resistance in the semiconductor material of the diode itself, but rather is a figure dependent upon both quantities and will vary substantially with the particular ohmmeter used to take the reading.
</para>

<index>Diode check, meter function</index>

<para>
For this reason, some digital multimeter manufacturers equip their meters with a special ``diode check'' function which displays the actual forward voltage drop of the diode in volts, rather than a ``resistance'' figure in ohms.  These meters work by forcing a small current through the diode and measuring the voltage dropped between the two test leads.  (Figure<ref>03256.png below</ref>)
</para>

<image>03256.png<caption>Meter with a ``Diode check'' function displays the forward  voltage drop of 0.548 volts instead of a low resistance.</caption></image> 

<para>
The forward voltage reading obtained with such a meter will typically be less than the ``normal'' drop of 0.7 volts for silicon and 0.3 volts for germanium, because the current provided by the meter is of trivial proportions.  If a multimeter with diode-check function isn't available, or you would like to measure a diode's forward voltage drop at some non-trivial current, the  circuit of Figure<ref>03257.png below</ref> may be constructed using a battery, resistor, and voltmeter
</para>

<image>03257.png<caption>Measuring forward voltage of a diode without``diode check'' meter function: (a) Schematic diagram. (b) Pictorial diagram.</caption></image> 

<para>
Connecting the diode backwards to this testing circuit will simply result in the voltmeter indicating the full voltage of the battery.
</para>

<para>
If this circuit were designed to provide a constant or nearly constant current through the diode despite changes in forward voltage drop, it could be used as the basis of a temperature-measurement instrument, the voltage measured across the diode being inversely proportional to diode junction temperature.  Of course, diode current should be kept to a minimum to avoid self-heating (the diode dissipating substantial amounts of heat energy), which would interfere with temperature measurement.
</para>

<para>
Beware that some digital multimeters equipped with a ``diode check'' function may output a very low test voltage (less than 0.3 volts) when set to the regular ``resistance'' (<OMEGA>) function: too low to fully collapse the depletion region of a PN junction.  The philosophy here is that the ``diode check'' function is to be used for testing semiconductor devices, and the ``resistance'' function for anything else.  By using a very low test voltage to measure resistance, it is easier for a technician to measure the resistance of non-semiconductor components connected to semiconductor components, since the semiconductor component junctions will not become forward-biased with such low voltages.  
</para>

<index>Printed circuit board</index>
<index>PCB</index>

<para>
Consider the example of a resistor and diode connected in parallel, soldered in place on a printed circuit board (PCB).  Normally, one would have to unsolder the resistor from the circuit (disconnect it from all other components) before  measuring its resistance, otherwise any parallel-connected components would affect the reading obtained.  When using a multimeter which outputs a very low test voltage to the probes in the ``resistance'' function mode, the diode's PN junction will not have enough voltage impressed across it to become forward-biased, and will only pass negligible current.  Consequently, the meter ``sees'' the diode as an open (no continuity), and only registers the resistor's resistance.  (Figure<ref>03329.png below</ref>)
</para>

<image>03329.png<caption>Ohmmeter equipped with  a low test voltage (<lt>0.7 V) does not see diodes allowing it to  measure parallel resistors.</caption></image> 

<para>
If such an ohmmeter were used to test a diode, it would indicate a very high resistance (many mega-ohms) even if connected to the diode in the ``correct'' (forward-biased) direction.  (Figure<ref>03330.png below</ref>)
</para>

<image>03330.png<caption>Ohmmeter equipped with  a low test voltage, too low to forward bias diodes,  does not see diodes.</caption></image> 

<para>
Reverse voltage strength of a diode is not as easily tested, because exceeding a normal diode's PIV usually results in destruction of the diode.  Special types of diodes, though, which are designed to ``break down'' in reverse-bias mode without damage (called <italic>zener diodes</italic>), which are tested with the same voltage source / resistor / voltmeter circuit, provided that the voltage source is of high enough value to force the diode into its breakdown region.  More on this subject in a later section of this chapter.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>An ohmmeter may be used to qualitatively check diode function.  There should be low resistance measured one way and very high resistance measured the other way.  When using an ohmmeter for this purpose, be sure you know which test lead is positive and which is negative!  The actual polarity may not follow the colors of the leads as you might expect, depending on the particular design of meter.</item>
<item>Some multimeters provide a ``diode check'' function that displays the actual forward voltage of the diode when its conducting current.  Such meters typically indicate a slightly lower forward voltage than what is ``nominal'' for a diode, due to the very small amount of current used during the check.</item>
</itemize>

</section>







<section>
<sectiontitle>Diode ratings</sectiontitle>

<index>Datasheet, component</index>

<para>
In addition to forward voltage drop (V<subscript>f</subscript>) and peak inverse voltage (PIV), there are many other ratings of diodes important to circuit design and component selection.  Semiconductor manufacturers provide detailed specifications on their products -- diodes included -- in publications known as <italic>datasheets</italic>.  Datasheets for a wide variety of semiconductor components may be found in reference books and on the internet.  I prefer the internet as a source of component specifications because all the data obtained from manufacturer websites are up-to-date.
</para>

<para>
A typical diode datasheet will contain figures for the following parameters:
</para>

<para>
<underline>Maximum repetitive reverse voltage</underline> = V<subscript>RRM</subscript>, the maximum amount of voltage the diode can withstand in reverse-bias mode, in repeated pulses.  Ideally, this figure would be infinite.
</para>

<para>
<underline>Maximum DC reverse voltage</underline> = V<subscript>R</subscript> or V<subscript>DC</subscript>, the maximum amount of voltage the diode can withstand in reverse-bias mode on a continual basis.  Ideally, this figure would be infinite.
</para>

<para>
<underline>Maximum forward voltage</underline> = V<subscript>F</subscript>, usually specified at the diode's rated forward current.  Ideally, this figure would be zero: the diode providing no opposition whatsoever to forward current.  In reality, the forward voltage is described by the ``diode equation.''
</para>

<para>
<underline>Maximum (average) forward current</underline> = I<subscript>F(AV)</subscript>, the maximum average amount of current the diode is able to conduct in forward bias mode.  This is fundamentally a thermal limitation: how much heat can the PN junction handle, given that dissipation power is equal to current (I) multiplied by voltage (V or E) and forward voltage is dependent upon both current and junction temperature.  Ideally, this figure would be infinite.
</para>

<para>
<underline>Maximum (peak or surge) forward current</underline> = I<subscript>FSM</subscript> or i<subscript>f(surge)</subscript>, the maximum peak amount of current the diode is able to conduct in forward bias mode.  Again, this rating is limited by the diode junction's thermal capacity, and is usually much higher than the average current rating due to thermal inertia (the fact that it takes a finite amount of time for the diode to reach maximum temperature for a given current).  Ideally, this figure would be infinite.
</para>

<para>
<underline>Maximum total dissipation</underline> = P<subscript>D</subscript>, the amount of power (in watts) allowable for the diode to dissipate, given the dissipation (P=IE) of diode current multiplied by diode voltage drop, and also the dissipation (P=I<superscript>2</superscript>R) of diode current squared multiplied by bulk resistance.  Fundamentally limited by the diode's thermal capacity (ability to tolerate high temperatures).
</para>

<para>
<underline>Operating junction temperature</underline> = T<subscript>J</subscript>, the maximum allowable temperature for the diode's PN junction, usually given in degrees Celsius (<superscript>o</superscript>C).  Heat is the ``Achilles' heel'' of semiconductor devices: they <italic>must</italic> be kept cool to function properly and give long service life.
</para>

<para>
<underline>Storage temperature range</underline> = T<subscript>STG</subscript>, the range of allowable temperatures for storing a diode (unpowered).  Sometimes given in conjunction with operating junction temperature (T<subscript>J</subscript>), because the maximum storage temperature and the maximum operating temperature ratings are often identical.  If anything, though, maximum storage temperature rating will be greater than the maximum operating temperature rating.
</para>

<para>
<underline>Thermal resistance</underline> = R(<THETA>), the temperature difference between junction and outside air (R(<THETA>)<subscript>JA</subscript>) or between junction and leads (R(<THETA>)<subscript>JL</subscript>) for a given power dissipation.  Expressed in units of degrees Celsius per watt (<superscript>o</superscript>C/W).  Ideally, this figure would be zero, meaning that the diode package was a perfect thermal conductor and radiator, able to transfer all heat energy from the junction to the outside air (or to the leads) with no difference in temperature across the thickness of the diode package.  A high thermal resistance means that the diode will build up excessive temperature at the junction (where its critical) despite best efforts at cooling the outside of the diode, and thus will limit its maximum power dissipation.
</para>

<index>Leakage current, diode</index>
<index>Current, diode leakage</index>
<index>Diode leakage current</index>

<para>
<underline>Maximum reverse current</underline> = I<subscript>R</subscript>, the amount of current through the diode in <italic>reverse-bias</italic> operation, with the maximum rated inverse voltage applied (V<subscript>DC</subscript>).  Sometimes referred to as <italic>leakage current</italic>.  Ideally, this figure would be zero, as a perfect diode would block all current when reverse-biased.  In reality, it is very small compared to the maximum forward current.
</para>

<index>Capacitance, diode</index>
<index>Junction capacitance, diode</index>
<index>Diode junction capacitance</index>

<para>
<underline>Typical junction capacitance</underline> = C<subscript>J</subscript>, the typical amount of capacitance intrinsic to the junction, due to the depletion region acting as a dielectric separating the anode and cathode connections.  This is usually a very small figure, measured in the range of picofarads (pF).
</para>

<index>Reverse recovery time, diode</index>
<index>Switching time, diode</index>
<index>Commutation time, diode</index>
<index>Time, diode switching</index>

<para>
<underline>Reverse recovery time</underline> = t<subscript>rr</subscript>, the amount of time it takes for a diode to ``turn off'' when the voltage across it alternates from forward-bias to reverse-bias polarity.  Ideally, this figure would be zero: the diode halting conduction <italic>immediately</italic> upon polarity reversal.  For a typical rectifier diode, reverse recovery time is in the range of tens of microseconds; for a ``fast switching'' diode, it may only be a few nanoseconds.
</para>

<para>
Most of these parameters vary with temperature or other operating conditions, and so a single figure fails to fully describe any given rating.  Therefore, manufacturers provide graphs of component ratings plotted against other variables (such as temperature), so that the circuit designer has a better idea of what the device is capable of.
</para>


</section>





<section>
<sectiontitle>Rectifier circuits</sectiontitle>

<index>Rectifier circuit</index>
<index>Rectifier circuit, half-wave</index>
<index>Half-wave rectifier circuit</index>

<hypertarget>half-W-R[]</hypertarget>

<para>
Now we come to the most popular application of the diode: <italic>rectification</italic>.  Simply defined, rectification is the conversion of alternating current (AC) to direct current (DC).  This involves a device that only allows one-way flow of electrons.  As we have seen, this is exactly what a semiconductor diode does.  The simplest kind of rectifier circuit is the <italic>half-wave</italic> rectifier. It only allows one half of an AC waveform to pass through to the load. (Figure<ref>03258.png below</ref>)
</para>

<image>03258.png<caption>Half-wave rectifier circuit.</caption></image> 

<para>
For most power applications, half-wave rectification is insufficient for the task.  The harmonic content of the rectifier's output waveform is very large and consequently difficult to filter.  Furthermore, the AC power source only supplies power to the load one half every full cycle, meaning that half of its capacity is unused.  Half-wave rectification is, however, a very simple way to reduce power to a resistive load.  Some two-position lamp dimmer switches apply full AC power to the lamp filament for ``full'' brightness and then half-wave rectify it for a lesser light output.  (Figure<ref>03259.png below</ref>)
</para>

<image>03259.png<caption>Half-wave rectifier application: Two level lamp dimmer.</caption></image> 

<para>
In the ``Dim'' switch position, the incandescent lamp receives approximately one-half the power it would normally receive operating on full-wave AC.  Because the half-wave rectified power pulses far more rapidly than the filament has time to heat up and cool down, the lamp does not blink.  Instead, its filament merely operates at a lesser temperature than normal, providing less light output.  This principle of ``pulsing'' power rapidly to a slow-responding load device to control the electrical power sent to it is  common in the world of industrial electronics.  Since the controlling device (the diode, in this case) is either fully conducting or fully nonconducting at any given time, it dissipates little heat energy while controlling load power, making this method of power control very energy-efficient.  This circuit is perhaps the crudest possible method of pulsing power to a load, but it suffices as a proof-of-concept application.
</para>

<index>Rectifier circuit, full-wave</index>
<index>Full-wave rectifier circuit</index>
<index>Center-tap rectifier circuit</index>

<para>
If we need to rectify AC power to obtain the full use of <italic>both</italic> half-cycles of the sine wave, a different rectifier circuit configuration must be used.  Such a circuit is called a <italic>full-wave</italic> rectifier.  One kind of full-wave rectifier, called the <italic>center-tap</italic> design, uses a transformer with a center-tapped secondary winding and two diodes, as in Figure<ref>03260.png below</ref>.
</para>

<image>03260.png<caption>Full-wave rectifier, center-tapped design.</caption></image> 

<para>
This circuit's operation is easily understood one half-cycle at a time.  Consider the first half-cycle, when the source voltage polarity is positive (+) on top and negative (-) on bottom.  At this time, only the top diode is conducting; the bottom diode is blocking current, and the load ``sees'' the first half of the sine wave, positive on top and negative on bottom.  Only the top half of the transformer's secondary winding carries current during this half-cycle as in Figure<ref>03261.png below</ref>.
</para>

<image>03261.png<caption>Full-wave center-tap rectifier: Top half of secondary winding conducts during positive half-cycle of input, delivering positive half-cycle to load..</caption></image> 

<para>
During the next half-cycle, the AC polarity reverses.  Now, the other diode and the other half of the transformer's secondary winding carry current while the portions of the circuit formerly carrying current during the last half-cycle sit idle.  The load still ``sees'' half of a sine wave, of the same polarity as before: positive on top and negative on bottom.  (Figure<ref>03262.png below</ref>)
</para>

<image>03262.png<caption>Full-wave center-tap rectifier: During negative input half-cycle, bottom half of secondary winding conducts, delivering a positive half-cycle to the load.</caption></image> 

<para>
One disadvantage of this full-wave rectifier design is the necessity of a transformer with a center-tapped secondary winding.  If the circuit in question is one of high power, the size and expense of a suitable transformer is significant.  Consequently, the center-tap rectifier design is only seen in low-power applications.
</para>

<para>
The full-wave center-tapped rectifier polarity at the load may be reversed by changing the direction of the diodes. Furthermore, the reversed diodes can be paralleled with an existing positive-output rectifier. The result is  dual-polarity full-wave center-tapped rectifier in Figure<ref>03444.png below</ref>. Note that the connectivity of the diodes themselves  is the same configuration as a bridge.
</para>

<image>03444.png<caption>Dual polarity full-wave center tap rectifier</caption></image> 

<index>Rectifier circuit, full-wave</index>
<index>Full-wave rectifier circuit</index>
<index>Bridge rectifier circuit</index>

<para>
Another, more popular full-wave rectifier design exists, and it is built around a four-diode bridge configuration.  For obvious reasons, this design is called a <italic>full-wave bridge</italic>.  (Figure<ref>03263.png below</ref>)
</para>

<image>03263.png<caption>Full-wave bridge rectifier.</caption></image> 

<para>
Current directions for the full-wave bridge rectifier circuit are as shown in  Figure<ref>03264.png below</ref> for positive  half-cycle  and
<comment>split for double ref</comment>
Figure<ref>03265.png below</ref> for negative half-cycles of the AC source waveform. Note that regardless of the polarity of the input, the current flows in the same direction through the load. That is, the negative half-cycle of source is a positive half-cycle at the load. The current flow is through two diodes in series for both polarities. Thus, two diode drops of the source voltage are lost (0.7<cdot>2=1.4 V for Si) in the diodes. This is a disadvantage compared with a full-wave center-tap design. This disadvantage is only a problem in very low voltage power supplies.
</para>

<image>03264.png<caption>Full-wave bridge rectifier: Electron flow for positive half-cycles.</caption></image> 


<image>03265.png<caption>Full-wave bridge rectifier: Electron flow for negative half=cycles.</caption></image> 

<para>
Remembering the proper layout of diodes in a full-wave bridge rectifier circuit can often be frustrating to the new student of electronics.  I've found that an alternative representation of this circuit is easier both to remember and to comprehend.  It's the exact same circuit, except all diodes are drawn in a horizontal attitude, all ``pointing'' the same direction.  (Figure<ref>03266.png below</ref>)
</para>

<image>03266.png<caption>Alternative layout style for Full-wave bridge rectifier.</caption></image> 

<index>Bridge rectifier circuit, polyphase</index>
<index>Polyphase bridge rectifier circuit</index>
<index>Three-phase bridge rectifier circuit</index>

<para>
One advantage of remembering this layout for a bridge rectifier circuit is that it expands easily into a polyphase version in Figure<ref>03267.png below</ref>.
</para>

<image>03267.png<caption>Three-phase full-wave bridge rectifier circuit.</caption></image> 

<para>
Each three-phase line connects between a pair of diodes: one to route power to the positive (+) side of the load, and the other to route power to the negative (-) side of the load.  Polyphase systems with more than three phases are easily accommodated into a bridge rectifier scheme.  Take for instance the six-phase bridge rectifier circuit in Figure<ref>03268.png below</ref>.
</para>

<image>03268.png<caption>Six-phase full-wave bridge rectifier circuit.</caption></image> 

<para>
When polyphase AC is rectified, the phase-shifted pulses overlap each other to produce a DC output that is much ``smoother'' (has less AC content) than that produced by the rectification of single-phase AC.  This is a decided advantage in high-power rectifier circuits, where the sheer physical size of filtering components would be prohibitive but low-noise DC power must be obtained.  The diagram in  Figure<ref>03269.png below</ref> shows the full-wave rectification of three-phase AC.
</para>

<image>03269.png<caption>Three-phase AC and  3-phase full-wave rectifier output.</caption></image> 

<index>Ripple voltage</index>
<index>Voltage, ripple</index>

<para>
In any case of rectification -- single-phase or polyphase -- the amount of AC voltage mixed with the rectifier's DC output is called <italic>ripple voltage</italic>.  In most cases, since ``pure'' DC is the desired goal, ripple voltage is undesirable.  If the power levels are not too great, filtering networks may be employed to reduce the amount of ripple in the output voltage.
</para>

<para>
Sometimes, the method of rectification is referred to by counting the number of DC ``pulses'' output for every 360<superscript>o</superscript> of electrical ``rotation.''  A single-phase, half-wave rectifier circuit, then, would be called a <italic>1-pulse</italic> rectifier, because it produces a single pulse during the time of one complete cycle (360<superscript>o</superscript>) of the AC waveform.  A single-phase, full-wave rectifier (regardless of design, center-tap or bridge) would be called a <italic>2-pulse</italic> rectifier, because it outputs two pulses of DC during one AC cycle's worth of time.  A three-phase full-wave rectifier would be called a <italic>6-pulse</italic> unit.
</para>

<para>
Modern electrical engineering convention further describes the function of a rectifier circuit by using a three-field notation of <italic>phases</italic>, <italic>ways</italic>, and number of <italic>pulses</italic>.  A single-phase, half-wave rectifier circuit is given the somewhat cryptic designation of 1Ph1W1P (1 phase, 1 way, 1 pulse), meaning that the AC supply voltage is single-phase, that current on each phase of the AC supply lines moves in only  one direction (way), and that there is a single pulse of DC produced for every 360<superscript>o</superscript> of electrical rotation.  A single-phase, full-wave, center-tap rectifier circuit would be designated as 1Ph1W2P in this notational system: 1 phase, 1 way or direction of current in each winding half, and 2 pulses or output voltage per cycle.  A single-phase, full-wave, bridge rectifier would be designated as 1Ph2W2P: the same as for the center-tap design, except current can go <italic>both</italic> ways through the AC lines instead of just one way.  The three-phase bridge rectifier circuit shown earlier would be called a 3Ph2W6P rectifier.
</para>

<para>
Is it possible to obtain more pulses than twice the number of phases in a rectifier circuit?  The answer to this question is yes: especially in polyphase circuits.  Through the creative use of transformers, sets of full-wave rectifiers may be paralleled in such a way that more than six pulses of DC are produced for three phases of AC.  A 30<superscript>o</superscript> phase shift is introduced from primary to secondary of a three-phase transformer when the winding configurations are not of the same type.  In other words, a transformer connected either Y-<DELTA> or <DELTA>-Y will exhibit this 30<superscript>o</superscript> phase shift, while a transformer connected Y-Y or <DELTA>-<DELTA> will not.  This phenomenon may be exploited by having one transformer connected Y-Y feed a bridge rectifier, and have another transformer connected Y-<DELTA> feed a second bridge rectifier, then parallel the DC outputs of both rectifiers.   (Figure<ref>03270.png below</ref>) Since the ripple voltage waveforms of the two rectifiers' outputs are phase-shifted 30<superscript>o</superscript> from one another, their superposition results in less ripple than either rectifier output considered separately: 12 pulses per 360<superscript>o</superscript> instead of just six:
</para>

<image>03270.png<caption>Polyphase rectifier circuit: 3-phase 2-way 12-pulse (3Ph2W12P)</caption></image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Rectification</italic> is the conversion of alternating current (AC) to direct current (DC).</item>
<item>A <italic>half-wave</italic> rectifier is a circuit that allows only one half-cycle of the AC voltage waveform to be applied to the load, resulting in one non-alternating polarity across it.  The resulting DC delivered to the load ``pulsates'' significantly.</item>
<item>A <italic>full-wave</italic> rectifier is a circuit that converts both half-cycles of the AC voltage waveform to an unbroken series of voltage pulses of the same polarity.  The resulting DC delivered to the load doesn't ``pulsate'' as much.</item>
<item>Polyphase alternating current, when rectified, gives a much ``smoother'' DC waveform (less <italic>ripple</italic> voltage) than rectified single-phase AC.</item>
</itemize>

</section>



<section>
<sectiontitle>Peak detector</sectiontitle>

<index>Peak detector</index>

<para>
A <italic>peak detector</italic> is a series connection of a diode and a capacitor outputting a DC voltage equal to the peak value of the applied AC signal. The circuit is shown in Figure<ref>03441.png below</ref> with the corresponding SPICE net list. 
<comment>split for double hyperlink</comment>
An AC voltage source applied  to the peak detector, charges the capacitor to the peak of the input. The diode conducts positive ``half cycles,'' charging the capacitor to the waveform peak. When the input waveform falls below the DC ``peak'' stored on the capacitor, the diode is reverse biased, blocking current flow from capacitor back to the source. Thus, the capacitor retains the peak value even as the waveform drops to zero. Another view of the peak detector is that it is the same as a <hyperlink>half-W-R[half-wave rectifier]</hyperlink>   with a filter capacitor added to the output.
</para>


<figure>
<htmlo><label>03441.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03441.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03441.eps
C1 2 0 0.1u
R1 1 3 1.0k
V1 1 0 SIN(0 5 1k)
D1 3 2 diode
.model diode d
.tran 0.01m 50mm
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Peak detector: Diode conducts on positive half cycles charging capacitor to the peak voltage (less diode forward drop).</caption>
<tex><label>03441.png</label></tex>
</figure>


<para>
It takes a few cycles for the capacitor to charge to the peak as in  Figure<ref>23027.png below</ref> due to the series resistance (RC ``time constant''). Why does the capacitor not charge all the way to 5 V? It would charge to 5 V if an ``ideal diode'' were obtainable. However, the silicon diode has a forward voltage drop of 0.7 V which subtracts from the 5 V peak of the input.
</para>

<image>23027.png<caption>Peak detector: Capacitor charges to peak within a few cycles.</caption></image>

<para>
The circuit in Figure<ref>03441.png above</ref> could represent a DC power supply based on a half-wave rectifier. The resistance would be a few Ohms instead of 1 k<OMEGA> due to a transformer secondary winding replacing the voltage source and resistor. A larger ``filter'' capacitor would be used. A  power supply based on a 60 Hz source with  a filter of a few hundred <mu>F could supply up to 100 mA. Half-wave supplies seldom supply more due to the difficulty of filtering a half-wave. 
</para>


<para>
The peak detector may be combined with other components to build a <hyperlink>CrystalRadio[crystal radio][SEMI_9.html]</hyperlink> <pageref>03442.png</pageref>.
</para>



</section>







<section>
<sectiontitle>Clipper circuits</sectiontitle>

<index>Clipper circuit</index>
<index>Slicer circuit</index>

<para>
A circuit which removes the peak of a waveform is known as a <italic>clipper</italic>. A negative clipper is shown in Figure<ref>03437.png below</ref>. 
<comment>split for double ref</comment>
This schematic diagram was produced with Xcircuit schematic capture program. Xcircuit produced the SPICE net list Figure<ref>03437.png below</ref>, except for the second, and next to last pair of lines which were inserted with a text editor.
</para>


<figure>
<htmlo><label>03437.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03437.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03437.eps
*  A K ModelName
D1 0 2 diode
R1 2 1 1.0k
V1 1 0 SIN(0 5 1k)
.model diode d
.tran .05m 3m
.end

</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Clipper: clips negative peak at -0.7 V.</caption>
<tex><label>03437.png</label></tex>
</figure>


<para>
During the positive half cycle of the 5 V peak input, the diode is reversed biased. The diode does not conduct. It is as if the diode were not there. The positive half cycle is unchanged at the output V(2) in Figure<ref>23024.png below</ref>. Since the output positive peaks actually overlays the input sinewave V(1), the input has been shifted upward  in the plot for clarity.  In Nutmeg, the SPICE display module, the command ``plot v(1)+1)'' accomplishes this.
</para>


<image>23024.png<caption>V(1)+1 is actually V(1), a 10 Vptp sinewave, offset by 1 V for display clarity. V(2) output  is clipped at -0.7 V, by diode D1.</caption></image>


<para>
During the negative half cycle of sinewave input of Figure<ref>23024.png above</ref>, the diode is forward biased, that is, conducting. The negative half cycle of the sinewave is shorted out. The negative half cycle of V(2) would be clipped at 0 V for an ideal diode. The waveform is clipped at -0.7 V due to the forward voltage drop of the silicon diode. The spice model defaults to 0.7 V unless parameters in the model statement specify otherwise. Germanium or Schottky diodes  clip at lower voltages.
</para>

<para>
Closer examination of the negative clipped peak  (Figure<ref>23024.png above</ref>) reveals that it follows the input for a slight period of time while the sinewave is moving toward -0.7 V. The clipping action is only effective after the input sinewave exceeds -0.7 V. The diode is not conducting for the complete half cycle, though, during most of it.
</para>

<para>
The addition of an anti-parallel diode to the existing diode in  Figure<ref>03437.png above</ref> yields the symmetrical clipper in
<comment>split for double ref</comment>
Figure<ref>03438.png below</ref>.
</para>


<figure>
<htmlo><label>03438.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03438.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03438.eps
D1 0 2 diode
D2 2 0 diode
R1 2 1 1.0k
V1 1 0 SIN(0 5 1k)
.model diode d
.tran 0.05m 3m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Symmetrical clipper: Anti-parallel diodes clip both positive and negative peak, leaving a <plusminus> 0.7 V output.</caption>
<tex><label>03438.png</label></tex>
</figure>

<para>
Diode D1 clips the negative peak  at -0.7 V as before. The additional diode D2 conducts for positive half cycles of the sine wave as it exceeds 0.7 V, the forward diode drop. The remainder of the voltage drops across the series resistor. Thus, both peaks of the input sinewave are clipped in  Figure<ref>23025.png below</ref>.
The net list is in Figure<ref>03438.png above</ref>
</para>

<image>23025.png<caption>Diode D1 clips at -0.7 V as it conducts during negative peaks. D2 conducts for positive peaks, clipping at 0.7V.</caption></image>


<para>
The most general form of the diode clipper is shown in  Figure<ref>03439.png below</ref>. For an ideal diode, the clipping occurs at the level of the clipping voltage,  V1 and V2.  However, the voltage sources have been adjusted to account for the 0.7 V forward drop of the real silicon diodes.  D1  clips at 1.3V +0.7V=2.0V when the diode begins to conduct.  D2  clips at -2.3V -0.7V=-3.0V when D2 conducts.
</para>

<figure>
<htmlo><label>03439.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03439.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03439.eps
V1 3 0 1.3
V2 4 0 -2.3
D1 2 3 diode
D2 4 2 diode
R1 2 1 1.0k
V3 1 0 SIN(0 5 1k)
.model diode d
.tran 0.05m 3m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>D1 clips the input sinewave at 2V. D2 clips at -3V.</caption>
<tex><label>03439.png</label></tex>
</figure>

<para>
The clipper in Figure<ref>03439.png above</ref> does not have to clip both levels. To clip at one level with one diode and one voltage source, remove the other diode and source. 
</para>

<para>
The net list is in Figure<ref>03439.png above</ref>.
<comment>split for double ref</comment>
The waveforms  in  Figure<ref>23026.png below</ref> show the clipping of v(1) at output v(2).
</para>

<image>23026.png<caption>D1 clips the sinewave at 2V. D2 clips at -3V.</caption></image>

<para>
There is also a <hyperlink>zenerclip[zener diode clipper]</hyperlink> circuit in the ``Zener diode'' section. A zener diode replaces both the diode and the DC voltage source.
</para>


<para>
A practical application of a clipper is to prevent an  amplified speech signal from overdriving a radio transmitter in  Figure<ref>03440.png below</ref>. Over driving the transmitter generates spurious radio signals which causes interference with other stations. The clipper is a protective measure.
</para>

<image>03440.png<caption>Clipper prevents over driving radio transmitter by voice peaks.</caption></image>

<para>
A sinewave may be  squared up by overdriving a clipper. Another clipper application is the protection of exposed inputs of integrated circuits. The input of the IC is connected to a pair  of diodes as at node ``2''  of Figure<ref>03439.png above</ref>. The voltage sources are replaced by the power supply rails of the IC. For example, CMOS IC's use 0V and +5 V. Analog amplifiers might use <plusminus>12V for the V1 and V2 sources.
</para>


<itemize>
<item><bold>REVIEW</bold></item>
<item>A resistor and diode driven by an AC voltage source clips the signal observed across the diode.</item>
<item>A pair of anti-parallel Si diodes clip symmetrically at <plusminus>0.7V</item>
<item>The grounded end of a clipper diode(s) can be disconnected and wired to a DC voltage to clip at an arbitrary level.</item>
<item>A clipper can serve as a protective measure, preventing a signal from exceeding the clip limits.</item>
</itemize>


</section>

<para>

</para>







<section>
<sectiontitle>Clamper circuits</sectiontitle>

<index>Clamper circuit</index>
<index>Restorer circuit</index>
<index>DC restorer circuit</index>

<para>
The circuits in Figure<ref>03443.png below</ref> are known as <italic>clampers</italic> or <italic>DC restorers</italic>.
<comment>split for double ref</comment>
The corresponding netlist is in Figure<ref>23028.png below</ref>.  These circuits clamp a peak of a waveform to a specific DC level compared with a capacitively coupled signal which swings about its average DC level (usually 0V). If the diode is removed from the clamper, it defaults to a simple coupling capacitor-- no clamping.
</para>


<para>
What is the clamp voltage? And, which peak gets clamped? In Figure<ref>03443.png below</ref> (a) the clamp voltage is 0 V ignoring diode drop, (more exactly 0.7 V with Si diode drop).

<comment>split for double ref</comment>
In  Figure<ref>23028.png below</ref>, the positive peak of V(1) is clamped to the 0 V (0.7 V) clamp level. Why is this? On the first positive half cycle, the diode conducts charging the capacitor left end to +5 V (4.3 V). This is  -5 V (-4.3 V) on the right end at V(1,4).

<comment>split for double ref</comment>
Note the polarity marked on the capacitor in Figure<ref>03443.png below</ref> (a). The right end of the capacitor is -5 V DC (-4.3 V) with respect to ground. It also has an AC 5 V peak sinewave coupled across it from source V(4) to node 1. The sum of the two is a 5 V peak sine riding on a - 5 V DC (-4.3 V) level. The diode only conducts on successive positive excursions of source V(4) if the peak V(4) exceeds the charge on the capacitor. This only happens if the charge on the capacitor drained off due to a load, not shown. The charge on the capacitor is equal to the positive peak of V(4) (less 0.7 diode drop). The AC riding on the negative end, right end, is shifted down. The positive peak of the waveform is clamped to 0 V (0.7 V) because the diode conducts on the positive peak. 
</para>

<image>03443.png<caption>Clampers: (a) Positive peak clamped to 0 V. (b) Negative peak clamped to 0 V. (c) Negative peak clamped to 5 V.  </caption></image>


<figure>
<htmlo><label>23028.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23028.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03443.eps
V1 6 0 5
D1 6 3 diode
C1 4 3 1000p
D2 0 2 diode
C2 4 2 1000p
C3 4 1 1000p
D3 1 0 diode
V2 4 0 SIN(0 5 1k)
.model diode d
.tran 0.01m 5m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>V(4) source voltage 5 V peak used in all clampers. V(1) clamper output from  Figure<ref>03443.png above</ref> (a). V(1,4) DC voltage on capacitor in Figure (a). V(2) clamper output from Figure (b). V(3) clamper output from Figure (c).</caption>
<tex><label>23028.png</label></tex>
</figure>

<para>
Suppose the polarity of the diode is reversed as in Figure<ref>03443.png above</ref> (b)? The diode conducts on the negative peak of source V(4). 
<comment>split for double ref</comment>
The negative peak is clamped to 0 V (-0.7 V). See V(2) in Figure<ref>23028.png above</ref>.
</para>

<para>
The most general realization of the clamper is shown in Figure<ref>03443.png above</ref> (c) with the diode connected to a DC reference. The capacitor still charges during the negative peak of the source. Note that the polarities of the AC source and the DC reference are series aiding. Thus, the capacitor charges to the sum to the two, 10 V DC (9.3 V). Coupling the 5 V peak  sinewave across the capacitor yields 
<comment>split for double ref</comment>
Figure<ref>23028.png above</ref> V(3), the sum of the charge on the capacitor and the sinewave. The negative peak appears to be clamped to 5 V DC (4.3V), the value of the DC clamp reference (less diode drop).
</para>


<para>
Describe the waveform if the DC clamp reference is changed from 5 V to 10 V. The clamped waveform will shift up. The negative peak will be clamped to 10 V (9.3). Suppose that the amplitude of the sine wave source is increased from 5 V to 7 V?  The negative peak clamp level will remain unchanged. Though, the amplitude of the sinewave output will increase.
</para>

<para>
An application of the clamper circuit is as a ``DC restorer'' in ``composite video''  circuitry in both television transmitters and receivers. An NTSC (US video standard) video signal ``white level'' corresponds to minimum (12.5%) transmitted power. The video ``black level'' corresponds to a high level (75% of transmitter power. There is a ``blacker than black level'' corresponding to 100% transmitted power assigned to synchronization signals. The NTSC signal contains both video and synchronization pulses. The problem with the composite video is that its average DC level varies with the scene, dark vs light. The video itself is supposed to vary. However, the sync must always peak at 100%. To prevent the sync signals from drifting with changing scenes, a ``DC restorer'' clamps the top of the sync pulses to a voltage corresponding to 100% transmitter modulation. <cite>ATCO</cite>
</para>


<itemize>
<item>REVIEW:</item>
<item>A capacitively coupled signal alternates about its average DC level (0 V).  </item>
<item>The signal out of a clamper appears the have one peak clamped to a DC voltage. Example: The negative peak is clamped to 0 VDC, the waveform appears to be shifted upward. The polarity of the diode determines which peak is clamped.</item>
<item>An application of a clamper, or DC restorer, is in clamping the sync pulses of composite video to a voltage corresponding to 100% of transmitter power.</item>
</itemize>



</section>







<section>
<sectiontitle>Voltage multipliers</sectiontitle>

<index>Voltage multiplier circuit</index>
<index>Multiplier circuit, diode</index>
<index>Voltage doubler circuit</index>

<para>
A <italic>voltage multiplier</italic> is a specialized rectifier circuit producing an output which is theoretically an integer times the AC peak input, for example, 2, 3, or 4 times the AC peak input. Thus, it is possible to get 200 VDC from a 100 V<subscript>peak</subscript> AC source using a doubler, 400 VDC from a quadrupler. Any load in a practical circuit will lower these voltages.
</para>

<para>
A voltage doubler application is a DC power supply capable of using either a 240 VAC or 120 VAC source. The supply uses a switch selected full-wave bridge to produce  about 300 VDC from a 240 VAC source. The 120 V position of the switch rewires the bridge as a doubler producing about 300 VDC from the 120 VAC. In both cases, 300 VDC is produced. This is the input to a switching regulator producing lower voltages for powering, say, a personal computer.
</para>

<para>
The half-wave voltage doubler in Figure<ref>03255.png below</ref> (a) is composed of two circuits: a clamper at (b)
<comment>split for double ref</comment>
and  peak detector (half-wave rectifier) in Figure<ref>03441.png prior</ref>,
<comment>split for double ref</comment>
which is shown in modified form in Figure<ref>03255.png below</ref> (c).  C2 has been added to a  peak detector (half-wave rectifier).
</para>

<image>03255.png<caption>Half-wave voltage doubler (a) is composed of (b) a clamper and (c) a half-wave rectifier.</caption></image>



<para>
Referring to Figure<ref>03255.png above</ref> (b), C2 charges to 5 V (4.3 V considering the diode drop) on the negative half cycle of AC input. The right end is grounded by the conducting D2. The left end is charged at the negative peak of the AC input. This is the operation of the clamper.
</para>

<para>
During the positive half cycle, the half-wave rectifier comes into play at Figure<ref>03255.png above</ref> (c). Diode D2 is out of the circuit since it is reverse biased. C2 is now in series with the voltage source. Note the polarities of the generator and C2, series aiding. Thus, rectifier D1 sees a total of 10 V at the peak of the sinewave, 5 V from generator and 5 V from C2.
<comment>split for double ref</comment>
D1 conducts waveform v(1) (Figure<ref>23029.png below</ref>),
<comment>split for double ref</comment>
charging C1 to the peak of the sine wave riding on 5 V DC  (Figure<ref>23029.png below</ref> v(2)). Waveform v(2) is the output of the doubler, which stabilizes at 10 V (8.6 V with diode drops) after a few cycles of sinewave input.
</para>

<figure>
<htmlo><label>23029.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23029.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03255.eps
C1 2 0 1000p
D1 1 2 diode
C2 4 1 1000p
D2 0 1 diode
V1 4 0 SIN(0 5 1k)
.model diode d
.tran 0.01m 5m
.end
</literal>

<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Voltage doubler: v(4) input. v(1) clamper stage. v(2) half-wave rectifier stage, which is the doubler output.</caption>
<tex><label>23029.png</label></tex>
</figure>

<para>
The <italic>full-wave voltage doubler</italic> is composed of a pair of series stacked  half-wave rectifiers.  (Figure<ref>03273.png below</ref>)
<comment>split for double ref</comment>
The corresponding netlist is in Figure<ref>03273.png below</ref>. The bottom rectifier charges C1 on the negative half cycle of input. The top rectifier charges C2 on the positive halfcycle. Each capacitor takes on a charge of 5 V (4.3 V considering diode drop). The output at node 5 is the series total of C1 + C2 or 10 V (8.6 V with diode drops).
</para>


<figure>
<htmlo><label>03273.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03273.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03273.eps
*R1 3 0 100k
*R2 5 3 100k
D1 0 2 diode
D2 2 5 diode
C1 3 0 1000p
C2 5 3 1000p
V1 2 3 SIN(0 5 1k)
.model diode d
.tran 0.01m 5m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Full-wave voltage doubler consists of two half-wave rectifiers operating on alternating polarities.</caption>
<tex><label>03273.png</label></tex>
</figure>

<para>
Note that the output v(5) Figure<ref>23030.png below</ref> reaches full value within one cycle of the input v(2) excursion.
</para>

<image>23030.png<caption>Full-wave voltage doubler: v(2) input, v(3)voltage  at mid point, v(5) voltage  at output</caption></image>

<para>
Figure<ref>03274.png below</ref> illustrates the derivation of the full-wave doubler from a pair of opposite polarity half-wave rectifiers (a). The negative rectifier of the pair is redrawn for clarity (b). Both are combined at (c) sharing the same ground. At (d) the negative rectifier is re-wired to share one voltage source with the positive rectifier. This yields a <plusminus>5 V (4.3 V with diode drop) power supply; though, 10 V is measurable between the two outputs. The ground reference point is moved so that +10 V is available with respect to ground.
</para>


<image>03274.png<caption>Full-wave doubler: (a) Pair of doublers, (b) redrawn, (c) sharing the ground, (d) share the same voltage source. (e) move the ground point.</caption></image>

<para>
A <italic>voltage tripler</italic> (Figure<ref>03283.png below</ref>) is built from a combination of a doubler  and a half wave rectifier (C3, D3). The half-wave rectifier produces 5 V (4.3 V) at node 3. The doubler provides another 10 V (8.4 V) between nodes 2 and 3. for a total of 15 V (12.9 V) at the output node 2 with respect to ground.
<comment>split for double ref</comment>
The netlist is in Figure<ref>23031.png below</ref>.
</para>

<image>03283.png<caption>Voltage tripler composed of doubler stacked atop a single stage rectifier.</caption></image>

<para>
Note that V(3) in Figure<ref>23031.png below</ref> rises to 5 V (4.3 V) on the first negative half cycle. Input v(4) is shifted upward by 5 V (4.3 V) due to 5 V from the half-wave rectifier. And 5 V more at v(1) due to the clamper (C2, D2). D1 charges C1 (waveform v(2)) to the peak value of v(1).
</para>

<figure>
<htmlo><label>23031.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23031.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03283.eps
C3 3 0 1000p
D3 0 4 diode
C1 2 3 1000p
D1 1 2 diode
C2 4 1 1000p
D2 3 1 diode
V1 4 3 SIN(0 5 1k)
.model diode d
.tran 0.01m 5m
.end

</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Voltage tripler: v(3) half-wave rectifier, v(4) input+ 5 V, v(1) clamper, v(2) final output.</caption>
<tex><label>23031.png</label></tex>
</figure>


<para>
A <italic>voltage quadrupler</italic> is a stacked combination of two doublers shown in Figure<ref>03286.png below</ref>. Each doubler provides 10 V (8.6 V) for a series total at node 2 with respect to ground of 20 V (17.2 V).

<comment>split for double ref</comment>
The netlist is in Figure<ref>23032.png below</ref>.
</para>


<image>03286.png<caption>Voltage quadrupler, composed of two doublers stacked  in series, with output at node 2.</caption></image>

<para>
The waveforms of the quadrupler are shown in Figure<ref>23032.png below</ref>. Two DC outputs are available: v(3), the doubler output, and v(2) the quadrupler output. Some of the intermediate voltages at clampers illustrate that the input sinewave (not shown), which swings by <plusminus)>5 V, is successively clamped at higher levels: at v(5), v(4) and v(1). Strictly v(4) is not a clamper output. It is simply the AC voltage source in series with the v(3) the doubler output. None the less, v(1) is a clamped version of v(4)
</para>

<figure>
<htmlo><label>23032.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23032.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03441.eps
*SPICE 03286.eps
C22 4 5 1000p
C11 3 0 1000p
D11 0 5 diode
D22  5 3 diode
C1 2 3 1000p
D1  1 2 diode
C2 4 1 1000p
D2  3 1 diode
V1 4 3 SIN(0 5 1k)
.model diode d
.tran 0.01m 5m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Voltage quadrupler: DC voltage available at v(3) and v(2). Intermediate waveforms: Clampers:  v(5), v(4), v(1).</caption>
<tex><label>23032.png</label></tex>
</figure>

<para>
Some notes on voltage multipliers are in order at this point. The circuit parameters used in the examples (V= 5 V 1 kHz, C=1000 pf) do not provide much current, microamps. Furthermore, load resistors have been omitted. Loading reduces the voltages from those shown.  If the circuits are to be driven by a kHz source at low voltage, as in the examples, the capacitors are usually 0.1 to 1.0 <mu>F so that milliamps of current are available at the output. If the multipliers are driven from 50/60 Hz, the capacitor are a few hundred to a few thousand microfarads to provide hundreds of milliamps of output current. If driven from line voltage, pay attention to the polarity and voltage ratings of the capacitors.
</para>

<para>
Finally, any direct line driven power supply (no transformer) is dangerous to the experimenter and line operated test equipment. Commercial direct driven supplies are safe because the hazardous circuitry is in an enclosure to protect the user. When breadboarding these circuits with electrolytic capacitors of any voltage, the capacitors will explode if the polarity is reversed. Such circuits  should be powered up behind a safety shield. 
</para>

<index>Cockcroft-Walton, voltage multiplier</index>
<index>Voltage multiplier, Cockcroft-Walton</index>

<para>
A voltage multiplier  of cascaded half-wave doublers of arbitrary length is known as a <italic>Cockcroft-Walton </italic> multiplier as shown in Figure<ref>03288.png below</ref>. This multiplier is used when a high voltage at low current is required. The advantage over a conventional supply is that an expensive high voltage transformer is not required-- at least not as high as the output.
</para>



<image>03288.png<caption>Cockcroft-Walton x8 voltage multiplier; output at v(8).</caption></image>

<para>
The pair of diodes and capacitors to the left of nodes 1 and 2 in Figure<ref>03288.png above</ref>

constitute a half-wave doubler. Rotating the diodes by 45<superscript>o</superscript> counterclockwise, and the bottom capacitor by 90<superscript>o</superscript> makes it look like
<comment>split for double ref</comment>
Figure<ref>03255.png prior</ref> (a). Four of the doubler sections are cascaded to the right for a theoretical x8 multiplication factor. Node 1 has a clamper waveform (not shown), a sinewave shifted up by 1x (5 V). The other odd numbered nodes are sinewaves clamped to successively higher voltages.
<comment>split for double ref</comment>
Node 2, the output of the first doubler, is a 2x DC voltage v(2) in Figure<ref>23033.png below</ref>. Successive even numbered nodes charge to successively higher voltages: v(4), v(6), v(8)
</para>

<figure>
<htmlo><label>23033.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23033.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
D1 7 8 diode
C1 8 6 1000p
D2 6 7 diode
C2 5 7 1000p
D3 5 6 diode
C3 4 6 1000p
D4 4 5 diode
C4 3 5 1000p
D5 3 4 diode
C5 2 4 1000p
D6 2 3 diode
D7 1 2 diode
C6 1 3 1000p
C7 2 0 1000p
C8 99 1 1000p
D8 0 1 diode
V1 99 0 SIN(0 5 1k)
.model diode d
.tran 0.01m 50m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Cockcroft-Walton (x8) waveforms. Output is v(8).</caption>
<tex><label>23033.png</label></tex>
</figure>





<para>
Without diode drops, each doubler yields   2Vin or 10 V, considering two diode drops (10-1.4)=8.6 V is realistic. For a total of 4 doublers one expects 4<cdot>8.6=34.4 V out of 40 V. Consulting Figure<ref>23033.png above</ref>, v(2) is about right;however, v(8) is <lt>30 V instead of the anticipated 34.4 V. The bane of the Cockcroft-Walton multiplier is that each additional stage adds less than the previous stage. Thus, a practical limit to the number of stages exist. It is possible to overcome this limitation with a modification to the basic circuit. <cite>ABR</cite> Also note the time scale of 40 msec compared with 5 ms for previous circuits. It required 40 msec for the voltages to rise to a terminal value for this circuit.
<comment>split for double ref</comment>
The netlist in Figure<ref>23033.png above</ref> has a ``.tran 0.010m 50m'' command to extend the simulation time to 50 msec; though, only 40 msec is plotted.
</para>

<para>
The Cockcroft-Walton multiplier serves as  a more efficient high voltage source for photomultiplier tubes requiring up to 2000 V. <cite>ABR</cite> Moreover, the tube has  numerous <italic>dynodes</italic>, terminals requiring connection to the lower voltage ``even numbered'' nodes. The series string of multiplier taps  replaces a heat generating resistive voltage divider of previous designs.
</para>

<para>
An AC line operated Cockcroft-Walton multiplier provides high voltage to ``ion generators'' for neutralizing electrostatic charge and for air purifiers.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A voltage multiplier produces a DC multiple (2,3,4, etc) of the AC peak input voltage.</item>
<item>The most basic multiplier is a half-wave doubler. </item>
<item>The full-wave double is a superior circuit as a doubler.</item>
<item>A tripler is a half-wave doubler and a conventional rectifier stage (peak detector).</item>
<item>A quadrupler is a pair of half-wave doublers</item>
<item>A long string of half-wave doublers is known as a Cockcroft-Walton multiplier.</item>
</itemize>


</section>







<section>
<sectiontitle>Inductor commutating circuits</sectiontitle>

<index>Kickback, inductive</index>

<para>
A popular use of diodes is for the mitigation of inductive ``kickback:'' the pulses of high voltage produced when direct current through an inductor is interrupted.  Take, for example, this simple circuit in Figure<ref>03271.png below</ref> with no protection against inductive kickback.
</para>

<image>03271.png<caption>Inductive kickback: (a) Switch open. (b) Switch closed, electron current flows from battery through coil which has polarity matching battery. Magnetic field stores energy. (c) Switch open, Current still flows in coil due to collapsing magnetic field. Note polarity change on coil. (d) Coil voltage vs time.</caption></image> 

<index>Faraday's Law</index>

<para>
When the pushbutton switch is actuated, current goes through the inductor, producing a magnetic field around it.  When the switch is de-actuated, its contacts open, interrupting current through the inductor, and causing the magnetic field to rapidly collapse.  Because the voltage induced in a coil of wire is directly proportional to the <italic>rate of change</italic> over time of magnetic flux (Faraday's Law: e = Nd<PHI>/dt), this rapid collapse of magnetism around the coil produces a high voltage ``spike''.  
</para>

<index>Commutating diode</index>

<para>
If the inductor in question is an electromagnet coil, such as in a solenoid or relay (constructed for the purpose of creating a physical force via its magnetic field when energized), the effect of inductive ``kickback'' serves no useful purpose at all.  In fact, it is quite detrimental to the switch, as it causes excessive arcing at the contacts, greatly reducing their service life.  Of the practical methods for mitigating the high voltage transient created when the switch is opened, none so simple as the so-called <italic>commutating diode</italic> in Figure<ref>03272.png below</ref>.
</para>

<image>03272.png<caption>Inductive kickback with protection: (a) Switch open. (b)Switch closed, storing energy in magnetic field. (c) Switch open, inductive kickback is shorted by diode.</caption></image> 

<para>
In this circuit, the diode is placed in parallel with the coil, such that it will be reverse-biased when DC voltage is applied to the coil through the switch.  Thus, when the coil is energized, the diode conducts no current in  Figure<ref>03272.png above</ref> (b).
</para>


<para>
However, when the switch is opened, the coil's inductance responds to the decrease in current by inducing a voltage of reverse polarity, in an effort to maintain current at the same magnitude and in the same direction.  This sudden reversal of voltage polarity across the coil forward-biases the diode, and the diode provides a current path for the inductor's current, so that its stored energy is dissipated slowly rather than suddenly in Figure<ref>03272.png above</ref> (c).
</para>


<para>
As a result, the voltage induced in the coil by its collapsing magnetic field is quite low: merely the forward voltage drop of the diode, rather than hundreds of volts as before.  Thus, the switch contacts experience a voltage drop equal to the battery voltage plus about 0.7 volts (if the diode is silicon) during this discharge time.
</para>

<index>Commutating diode</index>
<index>Commutation</index>
<index>Snubber</index>

<para>
In electronics parlance, <italic>commutation</italic> refers to the reversal of voltage polarity or current direction.  Thus, the purpose of a <italic>commutating diode</italic> is to act whenever voltage reverses polarity, for example, on an inductor coil when current through it is interrupted.  A less formal term for a commutating diode is <italic>snubber</italic>, because it ``snubs'' or ``squelches'' the inductive kickback.
</para>

<index>Faraday's Law</index>

<para>
A noteworthy disadvantage of this method is the extra time it imparts to the coil's discharge.  Because the induced voltage is clamped to a very low value, its rate of magnetic flux change over time is comparatively slow.  Remember that Faraday's Law describes the magnetic flux rate-of-change (d<PHI>/dt) as being proportional to the induced, instantaneous voltage (<italic>e</italic> or <italic>v</italic>).  If the instantaneous voltage is limited to some low figure, then the rate of change of magnetic flux over time will likewise be limited to a low (slow) figure.  
</para>

<para>
If an electromagnet coil is ``snubbed'' with a commutating diode, the magnetic field will dissipate at a relatively slow rate compared to the original scenario (no diode) where the field disappeared almost instantly upon switch release.  The amount of time in question will most likely be less than one second, but it will be measurably slower than without a commutating diode in place.  This may be an intolerable consequence if the coil is used to actuate an electromechanical relay, because the relay will possess a natural ``time delay'' upon coil de-energization, and an unwanted delay of even a fraction of a second may wreak havoc in some circuits.
</para>

<para>
Unfortunately, one cannot eliminate the high-voltage transient of inductive kickback <italic>and</italic> maintain fast de-magnetization of the coil: Faraday's Law will not be violated.  However, if slow de-magnetization is unacceptable, a compromise may be struck between transient voltage and time by allowing the coil's voltage to rise to some higher level (but not so high as without a commutating diode in place).  The schematic in  Figure<ref>03275.png below</ref>  shows how this can be done.
</para>

<image>03275.png<caption>(a) Commutating diode with series resistor. (b) Voltage waveform. (c) Level with no diode. (d) Level with diode, no resistor. (e) Compromise level with diode and resistor.</caption></image> 

<para>
A resistor placed in series with the commutating diode allows the coil's induced voltage to rise to a level greater than the diode's forward voltage drop, thus hastening the process of de-magnetization.  This, of course, will place the switch contacts under greater stress, and so the resistor must be sized to limit that transient voltage at an acceptable maximum level.
</para>

</section>



<section>
<sectiontitle>Diode switching circuits</sectiontitle>

<para>
Diodes can perform  switching and digital logic operations. Forward and reverse bias switch a diode between the low and high impedance states, respectively. Thus, it serves as a switch.
</para>


<subsection>
<subsectiontitle>Logic</subsectiontitle>

<para>
Diodes can perform digital logic functions: AND, and OR. Diode logic was used in early digital computers. It only finds limited application today. Sometimes it is convenient to fashion a single logic gate from a few diodes.
</para>

<image>03461.png<caption>Diode AND gate</caption></image>

<para>
An AND gate is shown in Figure<ref>03461.png above</ref>. Logic gates have inputs and an output (Y) which is a function of the inputs. The inputs to the gate are high (logic 1), say 10 V, or low, 0 V (logic 0). In the figure, the logic levels are generated by switches. If a switch is up, the input is effectively high (1). If the switch is down, it connects a diode cathode to ground, which is low (0). The output depends on the combination of inputs at A and B. The inputs and output are customarily recorded in a ``truth table'' at (c) to describe the logic of a gate. At (a) all inputs are high (1). This is recorded in the last line of the truth table at (c). The output, Y, is high (1) due to the V<superscript>+</superscript> on the top of the resistor. It is unaffected by open switches. At (b) switch A pulls the cathode of the connected diode low, pulling output Y low (0.7 V). This is recorded in the third line of the truth table. The second line of the truth table describes the output with the switches reversed from (b). Switch B pulls the diode and output low. The first line of the truth table recordes the Output=0  for both input low (0). The truth table describes a logical AND function. Summary: both inputs A and B high yields a high (1) out.
</para>

<para>
A two input OR gate composed of a pair of diodes is shown in Figure<ref>03462.png below</ref>. If both inputs are logic low at (a) as simulated by both switches ``downward,'' the output Y is pulled low by the resistor. This logic zero is recorded in the first line of the truth table at (c). If one of the inputs is high as at (b), or the other input is high, or both inputs high, the diode(s) conduct(s), pulling the output Y high. These results are reordered in the second through fourth lines of the truth table. Summary: any input ``high'' is a high out at Y.
</para>

<image>03462.png<caption>OR gate: (a) First line, truth table (TT). (b) Third line TT. (d) Logical OR of power line supply and back-up battery.</caption></image>

<para>
A backup battery may be OR-wired with a line operated DC power supply in Figure<ref>03462.png above</ref> (d) to power a load, even during a power failure. With AC power present, the line supply powers the load, assuming that it  is a higher voltage than the battery. In the event of a power failure, the line supply voltage drops to 0 V; the battery powers the load. The diodes must be in series with the power sources to prevent a failed line supply from draining the battery, and to prevent it from over charging the battery when line power is available. Does your PC computer retain its BIOS setting when powered off? Does your VCR (video cassette recorder) retain the clock setting after a power failure? (PC  Yes, old VCR no, new VCR yes.)
</para>

</subsection>

<subsection>
<subsectiontitle>Analog switch</subsectiontitle>

<para>
Diodes  can switch analog signals. A reverse biased diode appears to be an open circuit. A forward biased diode is a low resistance conductor. The only problem is isolating the AC signal being switched from the DC control signal. The circuit in Figure<ref>03463.png below</ref> is a parallel resonant network: resonant tuning inductor paralleled by one (or more) of the switched resonator capacitors. This parallel LC resonant circuit could be a  preselector filter for a radio receiver. It could be the frequency determining network of an oscillator (not shown). The  digital control lines may be driven by a microprocessor interface.
</para>

<image>03463.png<caption>Diode switch: A digital control signal (low) selects a resonator capacitor by forward biasing the switching diode.</caption></image>


<para>
The large value DC blocking capacitor grounds the resonant tuning inductor for AC while blocking DC. It would have a low reactance compared to the parallel LC reactances. This prevents the anode DC voltage from being shorted to ground by the resonant tuning inductor. A switched resonator capacitor is selected by pulling the corresponding digital control low. This forward biases the switching diode. The DC current path is from +5 V through an RF choke (RFC), a switching diode, and an RFC to ground via the digital control. The purpose of the RFC at the +5 V is to keep AC out of the +5 V supply. The RFC in series with the digital control is to keep AC out of the external control line. The decoupling capacitor shorts the little AC leaking through the RFC to ground, bypassing the external digital control line.
</para>

<para>
With all three digital control lines high (<geq>+5 V), no switched resonator capacitors are selected due to diode reverse bias. Pulling one or more lines low, selects one or more switched resonator capacitors, respectively. As more capacitors are switched in parallel with the resonant tuning inductor, the resonant frequency decreases.
</para>

<para>
The reverse biased diode capacitance may be substantial compared with very high frequency or ultra high frequency circuits. <hyperlink>pindiode[PIN diodes]</hyperlink> may be used as switches for lower capacitance.
</para>

</subsection>

</section>





<section>
<sectiontitle>Zener diodes</sectiontitle>

<para>
If we connect a diode and resistor in series with a DC voltage source so that the diode is forward-biased, the voltage drop across the diode will remain fairly constant over a wide range of power supply voltages as in Figure<ref>03284.png below</ref> (a).
</para>


<para>
According to the ``diode equation'' <pageref>DioEqu[here]</pageref>, the current through a forward-biased PN junction is proportional to <italic>e</italic> raised to the power of the forward voltage drop.  Because this is an exponential function, current rises quite rapidly for modest increases in voltage drop.  Another way of considering this is to say that voltage dropped across a forward-biased diode changes little for large variations in diode current.  In the circuit shown in Figure<ref>03284.png below</ref> (a), diode current is limited by the voltage of the power supply, the series resistor, and the diode's voltage drop, which as we know doesn't vary much from 0.7 volts.  If the power supply voltage were to be increased, the resistor's voltage drop would increase almost the same amount, and the diode's voltage drop just a little.  Conversely, a decrease in power supply voltage would result in an almost equal decrease in resistor voltage drop, with just a little decrease in diode voltage drop.  In a word, we could summarize this behavior by saying that the diode is <italic>regulating</italic> the voltage drop at approximately 0.7 volts.
</para>

<para>
Voltage regulation is a useful diode property to exploit.  Suppose we were building some kind of circuit which could not tolerate variations in power supply voltage, but needed to be powered by a chemical battery, whose voltage changes over its lifetime.  We could form a circuit as shown and connect the circuit requiring steady voltage across the diode, where it would receive an unchanging 0.7 volts.
</para>

<para>
This would certainly work, but most practical circuits of any kind require a power supply voltage in excess of 0.7 volts to properly function.  One way we could increase our voltage regulation point would be to connect multiple diodes in series, so that their individual forward voltage drops of 0.7 volts each would add to create a larger total.  For instance, if we had ten diodes in series, the regulated voltage would be ten times 0.7, or 7 volts in Figure<ref>03284.png below</ref> (b).
</para>

<image>03284.png<caption>Forward biased Si reference: (a) single diode, 0.7V, (b) 10-diodes in series 7.0V.</caption></image> 

<para>
So long as the battery voltage never sagged below 7 volts, there would always be about 7 volts dropped across the ten-diode ``stack.''
</para>

<para>
If larger regulated voltages are required, we could either use more diodes in series (an inelegant option, in my opinion), or try a fundamentally different approach.  We know that diode forward voltage is a fairly constant figure under a wide range of conditions, but so is <italic>reverse breakdown voltage</italic>, and breakdown voltage is typically much, much greater than forward voltage.  If we reversed the polarity of the diode in our single-diode regulator circuit and increased the power supply voltage to the point where the diode ``broke down'' (could no longer withstand the reverse-bias voltage impressed across it), the diode would similarly regulate the voltage at that breakdown point, not allowing it to increase further as in Figure<ref>03285.png below</ref> (a).
</para>

<image>03285.png<caption>(a) Reverse biased Si small-signal diode breaks down at about 100V. (b) Symbol for Zener diode.</caption></image> 

<index>Zener diode</index>
<index>Diode, zener</index>

<para>
Unfortunately, when normal rectifying diodes ``break down,'' they usually do so destructively.  However, it is possible to build a special type of diode that can handle breakdown without failing completely.  This type of diode is called a <italic>zener diode</italic>, and its symbol looks like Figure<ref>03285.png above</ref> (b).
</para>


<para>
When forward-biased, zener diodes behave much the same as standard rectifying diodes: they have a forward voltage drop which follows the ``diode equation'' and is about 0.7 volts.  In reverse-bias mode, they do not conduct until the applied voltage reaches or exceeds the so-called <italic>zener voltage</italic>, at which point the diode is able to conduct substantial current, and in doing so will try to limit the voltage dropped across it to that zener voltage point.  So long as the power dissipated by this reverse current does not exceed the diode's thermal limits, the diode will not be harmed.
</para>

<para>
Zener diodes are manufactured with zener voltages ranging anywhere from a few volts to hundreds of volts.  This zener voltage changes slightly with temperature, and like common carbon-composition resistor values, may be anywhere from 5 percent to 10 percent in error from the manufacturer's specifications.  However, this stability and accuracy is generally good enough for the zener diode to be used as a voltage regulator device in common power supply circuit in Figure<ref>03287.png below</ref>.
</para>

<image>03287.png<caption>Zener diode regulator circuit, Zener voltage =  12.6V).</caption></image> 

<para>
Please take note of the zener diode's orientation in the above circuit: the diode is <italic>reverse-biased</italic>, and intentionally so.  If we had oriented the diode in the ``normal'' way, so as to be forward-biased, it would only drop 0.7 volts, just like a regular rectifying diode.  If we want to exploit this diode's reverse breakdown properties, we must operate it in its reverse-bias mode.  So long as the power supply voltage remains above the zener voltage (12.6 volts, in this example), the voltage dropped across the zener diode will remain at approximately 12.6 volts.
</para>

<index>Zener diode failure mode</index>
<index>Failure mode, zener diode</index>
<index>Joule's Law</index>

<para>
Like any semiconductor device, the zener diode is sensitive to temperature.  Excessive temperature will destroy a zener diode, and because it both drops voltage and conducts current, it produces its own heat in accordance with Joule's Law (P=IE).  Therefore, one must be careful to design the regulator circuit in such a way that the diode's power dissipation rating is not exceeded.  Interestingly enough, when zener diodes fail due to excessive power dissipation, they usually fail <italic>shorted</italic> rather than open.  A diode failed in this manner is readily detected: it drops almost zero voltage when biased either way, like a piece of wire.
</para>

<para>
Let's examine a zener diode regulating circuit mathematically, determining all voltages, currents, and power dissipations.  Taking the same form of circuit shown earlier, we'll perform calculations assuming a zener voltage of 12.6 volts, a power supply voltage of 45 volts, and a series resistor value of 1000 <OMEGA> (we'll regard the zener voltage to be <italic>exactly</italic> 12.6 volts so as to avoid having to qualify all figures as ``approximate'' in Figure<ref>03289.png below</ref> (a)
</para>


<para>
If the zener diode's voltage is 12.6 volts and the power supply's voltage is 45 volts, there will be 32.4 volts dropped across the resistor (45 volts - 12.6 volts = 32.4 volts).  32.4 volts dropped across 1000 <OMEGA> gives 32.4 mA of current in the circuit.  (Figure<ref>03289.png below</ref> (b))
</para>

<image>03289.png<caption>(a) Zener Voltage regulator with 1000 <OMEGA> resistor. (b) Calculation of voltage drops and current.</caption></image> 

<para>
Power is calculated by multiplying current by voltage (P=IE), so we can calculate power dissipations for both the resistor and the zener diode quite easily:
</para>

<image>13049.png</image> 

<para>
A zener diode with a power rating of 0.5 watt would be adequate, as would a resistor rated for 1.5 or 2 watts of dissipation.  
</para>

<para>
If excessive power dissipation is detrimental, then why not design the circuit for the least amount of dissipation possible?  Why not just size the resistor for a very high value of resistance, thus severely limiting current and keeping power dissipation figures very low?  Take this circuit, for example, with a 100 k<OMEGA> resistor instead of a 1 k<OMEGA> resistor.  Note that both the power supply voltage and the diode's zener voltage in Figure<ref>03290.png below</ref> are identical to the last example:
</para>

<image>03290.png<caption>Zener regulator with 100 k<OMEGA> resistor.</caption></image> 

<para>
With only 1/100 of the current we had before (324 <mu>A instead of 32.4 mA), both power dissipation figures should be 100 times smaller:
</para>

<image>13050.png</image> 

<para>
Seems ideal, doesn't it?  Less power dissipation means lower operating temperatures for both the diode and the resistor, and also less wasted energy in the system, right?  A higher resistance value <italic>does</italic> reduce power dissipation levels in the circuit, but it unfortunately introduces another problem.  Remember that the purpose of a regulator circuit is to provide a stable voltage <italic>for another circuit</italic>.  In other words, we're eventually going to power something with 12.6 volts, and this something will have a current draw of its own.  Consider our first regulator circuit, this time with a 500 <OMEGA> load connected in parallel with the zener diode in Figure<ref>03291.png below</ref>.
</para>

<image>03291.png<caption>Zener regulator with 1000 <OMEGA> series resistor and 500 <OMEGA> load.</caption></image> 

<para>
If 12.6 volts is maintained across a 500 <OMEGA> load, the load will draw 25.2 mA of current.  In order for the 1 k<OMEGA> series ``dropping'' resistor to drop 32.4 volts (reducing the power supply's voltage of 45 volts down to 12.6 across the zener), it still must conduct 32.4 mA of current.  This leaves 7.2 mA of current through the zener diode.
</para>

<para>
Now consider our ``power-saving'' regulator circuit with the 100 k<OMEGA> dropping resistor, delivering power to the same 500 <OMEGA> load.  What it is supposed to do is maintain 12.6 volts across the load, just like the last circuit.  However, as we will see, it <italic>cannot</italic> accomplish this task.  (Figure<ref>03292.png below</ref>) 
</para>

<image>03292.png<caption>Zener  non-regulator with 100 K<OMEGA> series resistor with 500 <OMEGA> load.></caption></image> 

<para>
With the larger value of dropping resistor in place, there will only be about 224 mV of voltage across the 500 <OMEGA> load, far less than the expected value of 12.6 volts!  Why is this?  If we actually had 12.6 volts across the load, it would draw 25.2 mA of current, as before.  This load current would have to go through the series dropping resistor as it did before, but with a new (much larger!) dropping resistor in place, the voltage dropped across that resistor with 25.2 mA of current going through it would be 2,520 volts!  Since we obviously don't have that much voltage supplied by the battery, this cannot happen.
</para>

<para>
The situation is easier to comprehend if we temporarily remove the zener diode from the circuit and analyze the behavior of the two resistors alone in  Figure<ref>03293.png below</ref>.
</para>

<image>03293.png<caption>Non-regulator with Zener removed.</caption></image> 

<para>
Both the 100 k<OMEGA> dropping resistor and the 500 <OMEGA> load resistance are in series with each other, giving a total circuit resistance of 100.5 k<OMEGA>.  With a total voltage of 45 volts and a total resistance of 100.5 k<OMEGA>, Ohm's Law (I=E/R) tells us that the current will be 447.76 <mu>A.  Figuring voltage drops across both resistors (E=IR), we arrive at 44.776 volts and 224 mV, respectively.  If we were to re-install the zener diode at this point, it would ``see'' 224 mV across it as well, being in parallel with the load resistance.  This is far below the zener breakdown voltage of the diode and so it will not ``break down'' and conduct current.  For that matter, at this low voltage the diode wouldn't conduct even if it were forward-biased!  Thus, the diode ceases to regulate voltage.  At least 12.6 volts must be dropped across to ``activate'' it.
</para>

<para>
The analytical technique of removing a zener diode from a circuit and seeing whether or not enough voltage is present to make it conduct is a sound one.  Just because a zener diode happens to be connected in a circuit doesn't guarantee that the full zener voltage will always be dropped across it!  Remember that zener diodes work by <italic>limiting</italic> voltage to some maximum level; they cannot <italic>make up</italic> for a lack of voltage.
</para>

<para>
In summary, any zener diode regulating circuit will function so long as the load's resistance is equal to or greater than some minimum value.  If the load resistance is too low, it will draw too much current, dropping too much voltage across the series dropping resistor, leaving insufficient voltage across the zener diode to make it conduct.  When the zener diode stops conducting current, it can no longer regulate voltage, and the load voltage will fall below the regulation point.
</para>

<para>
Our regulator circuit with the 100 k<OMEGA> dropping resistor must be good for some value of load resistance, though.  To find this acceptable load resistance value, we can use a table to calculate resistance in the two-resistor series circuit (no diode), inserting the known values of total voltage and dropping resistor resistance, and calculating for an expected load voltage of 12.6 volts:
</para>

<image>13051.png</image> 

<para>
With 45 volts of total voltage and 12.6 volts across the load, we should have 32.4 volts across R<subscript>dropping</subscript>:
</para>

<image>13052.png</image> 

<para>
With 32.4 volts across the dropping resistor, and 100 k<OMEGA> worth of resistance in it, the current through it will be 324 <mu>A:
</para>

<image>13053.png</image> 

<para>
Being a series circuit, the current is equal through all components at any given time:
</para>

<image>13054.png</image> 

<para>
Calculating load resistance is now a simple matter of Ohm's Law (R = E/I), giving us 38.889 k<OMEGA>:
</para>

<image>13055.png</image> 

<para>
Thus, if the load resistance is exactly 38.889 k<OMEGA>, there will be 12.6 volts across it, diode or no diode.  Any load resistance smaller than 38.889 k<OMEGA> will result in a load voltage less than 12.6 volts, diode or no diode.  With the diode in place, the load voltage will be regulated to a maximum of 12.6 volts for any load resistance <italic>greater</italic> than 38.889 k<OMEGA>.
</para>

<para>
With the original value of 1 k<OMEGA> for the dropping resistor, our regulator circuit was able to adequately regulate voltage even for a load resistance as low as 500 <OMEGA>.  What we see is a tradeoff between power dissipation and acceptable load resistance.  The higher-value dropping resistor gave us less power dissipation, at the expense of raising the acceptable minimum load resistance value.  If we wish to regulate voltage for low-value load resistances, the circuit must be prepared to handle higher power dissipation.
</para>

<para>
Zener diodes regulate voltage by acting as complementary loads, drawing more or less current as necessary to ensure a constant voltage drop across the load.  This is analogous to regulating the speed of an automobile by braking rather than by varying the throttle position: not only is it wasteful, but the brakes must be built to handle all the engine's power when the driving conditions don't demand it.  Despite this fundamental inefficiency of design, zener diode regulator circuits are widely employed due to their sheer simplicity.  In high-power applications where the inefficiencies would be unacceptable, other voltage-regulating techniques are applied.  But even then, small zener-based circuits are often used to provide a ``reference'' voltage to drive a more efficient amplifier circuit controlling the main power.
</para>

<para>
Zener diodes are manufactured in standard voltage ratings listed in Table <ref>czdv.tbl below</ref>. The table ``Common zener diode voltages'' lists common voltages for 0.3W and 1.3W parts. The wattage corresponds to die and package size, and is the power that the diode may dissipate without damage. 
</para>

<table>czdv.tbl<caption>Common zener diode voltages</caption>
<tabular>{|l|l|l|l|l|l|l|}
<hr>
<tr>
 <td>0.5W</td><td></td><td></td><td></td><td></td><td></td><td></td>

 
</tr>
<tr>
 <td>    2.7V</td><td>3.0V</td><td>3.3V</td><td>3.6V</td><td>3.9V</td><td>4.3V</td><td>4.7V  </td> 
</tr>
<tr>
 <td>     5.1V</td><td>5.6V</td><td>6.2V</td><td>6.8V</td><td>7.5V</td><td>8.2V</td><td>9.1V</td>
</tr>
<tr>
 <td>    10V</td><td> 11V</td><td> 12V</td><td> 13V</td><td> 15V</td><td> 16V</td><td> 18V</td>
</tr>
<tr>
 <td>    20V</td><td> 24V</td><td> 27V</td><td> 30V</td><td></td><td></td><td></td>
</tr>
<hr>
<tr><td>1.3W</td><td></td><td></td><td></td><td></td><td></td><td></td>
</tr>
<tr>
 <td>     4.7V</td><td>5.1V</td><td>5.6V</td><td>6.2V</td><td>6.8V</td><td>7.5V</td><td>8.2V</td>
</tr>
<tr>
 <td>     9.1V</td><td>10V</td><td> 11V</td><td> 12V</td><td> 13V</td><td> 15V</td><td> 16V</td>
</tr>
<tr>
 <td>   18V</td><td>20V</td><td>  22V</td><td>  24V</td><td>  27V</td><td>  30V</td><td>  33V</td>
</tr>
<tr>
 <td>   36V</td><td>39V</td><td>  43V</td><td>  47V</td><td>  51V</td><td>  56V</td><td>  62V</td>
</tr>
<tr>
 <td>68V</td><td>75V</td><td>100V</td><td>200V</td><td></td><td></td><td></td>
</tr>

<hr>
</tabular>
</table>

<index>clipper, zener diode</index>
<index>Zener diode, clipper</index>

<hypertarget>zenerclip[]</hypertarget>

<para>
<bold>Zener diode clipper:</bold> A clipping circuit which clips the peaks of waveform at approximately the zener voltage of the diodes. The circuit of  Figure<ref>03445.png below</ref> has two zeners connected series opposing to symmetrically clip a waveform at nearly the Zener voltage. The resistor limits current drawn by the zeners to a safe value.
</para>


<figure>
<htmlo><label>03445.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03445.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*SPICE 03445.eps
D1 4 0 diode
D2 4 2 diode
R1 2 1 1.0k
V1 1 0 SIN(0 20 1k)
.model diode d bv=10
.tran 0.001m 2m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Zener diode clipper:</caption>
<tex><label>03445.png</label></tex>
</figure>


<para>
The zener breakdown voltage for the diodes is set at 10 V by the diode model parameter ``bv=10'' in the spice net list in Figure<ref>03445.png above</ref>. This causes the zeners to clip at about 10 V. The back-to-back diodes clip both peaks. For a positive half-cycle, the top zener is reverse biased, breaking down at the zener voltage of 10 V. The lower zener drops approximately 0.7 V since it is forward biased. Thus, a more accurate clipping level is 10+0.7=10.7V. Similar negative half-cycle clipping occurs a -10.7 V.
<comment>split for double ref</comment>
(Figure<ref>23034.png below</ref>) shows the clipping level at a little over <plusminus>10 V.
</para>

<image>23034.png<caption>Zener diode clipper: v(1) input is clipped at waveform v(2).</caption></image>



<itemize>
<item><bold>REVIEW:</bold></item>
<item>Zener diodes are designed to be operated in reverse-bias mode, providing a relatively low, stable breakdown, or <italic>zener</italic> voltage at which they begin to conduct substantial reverse current.</item>
<item>A zener diode may function as a voltage regulator by acting as an accessory load, drawing more current from the source if the voltage is too high, and less if it is too low.</item>
</itemize>

</section>







<section>
<sectiontitle>Special-purpose diodes</sectiontitle>


<subsection>
<subsectiontitle>Schottky diodes</subsectiontitle>

<index>Schottky diode</index>
<index>Diode, schottky</index>
<index>Diode, hot carrier</index>
<index>hot carrier diode</index>

<para>
<italic>Schottky diodes</italic> are constructed of a <italic>metal</italic>-to-N junction rather than a P-N semiconductor junction.  Also known as <italic>hot-carrier</italic> diodes, Schottky diodes are characterized by fast switching times (low reverse-recovery time), low forward voltage drop (typically 0.25 to 0.4 volts for a metal-silicon junction), and low junction capacitance.
</para>

<para>
The schematic symbol for a schottky diode is shown in Figure<ref>03277.png below</ref>.
</para>

<image>03277.png<caption>Schottky diode schematic symbol.</caption></image> 

<para>
The forward voltage drop (V<subscript>F</subscript>), reverse-recovery time (t<subscript>rr</subscript>), and junction capacitance (C<subscript>J</subscript>) of Schottky diodes are closer to ideal than the average ``rectifying'' diode.  This makes them well suited for high-frequency applications.  Unfortunately, though, Schottky diodes typically have lower forward current (I<subscript>F</subscript>) and reverse voltage (V<subscript>RRM</subscript> and V<subscript>DC</subscript>) ratings than rectifying diodes and are thus unsuitable for applications involving substantial amounts of power. Though they are used in low voltage switching regulator power supplies.
</para>

<para>
Schottky diode technology finds broad application in high-speed computer circuits, where the fast switching time equates to high speed capability, and the low forward voltage drop equates to less power dissipation when conducting.
</para>

<para>
Switching regulator power supplies operating at 100's of kHz cannot use conventional silicon diodes as rectifiers because of their slow switching speed . When the signal applied to a diode changes from forward to reverse bias, conduction continues for a short time, while carriers are being swept out of the depletion region. Conduction only ceases after this t<subscript>r</subscript> <italic> reverse recovery time</italic> has expired. Schottky diodes have a shorter reverse recovery time.
</para>

<para>
Regardless of switching speed, the 0.7 V forward voltage drop of silicon diodes causes poor efficiency in low voltage supplies. This is not a problem in, say, a 10 V supply. In a 1 V supply the 0.7 V drop is a substantial portion of the output. One solution is to use a schottky power diode which has a lower forward drop.
</para>

</subsection>





<label>esakiTD</label>
<subsection>
<subsectiontitle>Tunnel diodes</subsectiontitle>

<index>Tunnel diode</index>
<index>Diode, tunnel</index>

<para>
<italic>Tunnel diodes</italic> exploit a strange quantum phenomenon called <italic>resonant tunneling</italic> to provide a negative resistance forward-bias characteristics.  When a small forward-bias voltage is applied across a tunnel diode, it begins to conduct current. (Figure<ref>03278.png below</ref>(b))  As the voltage is increased, the current increases and reaches a peak value called the <italic>peak current</italic> (I<subscript>P</subscript>).  If the voltage is increased a little more, the current actually begins to <italic>decrease</italic> until it reaches a low point called the <italic>valley current</italic> (I<subscript>V</subscript>).  If the voltage is increased further yet, the current begins to increase again, this time without decreasing into another ``valley.''  
<comment>split for double ref</comment>
The schematic symbol  for the tunnel diode  shown in Figure<ref>03278.png below</ref>(a).
</para>

<image>03278.png<caption>Tunnel diode (a) Schematic symbol. (b) Current vs voltage plot (c) Oscillator.</caption></image> 

<index>Negative resistance</index>
<index>Resistance, negative</index>

<para>
The forward voltages necessary to drive a tunnel diode to its peak and valley currents are known as peak voltage (V<subscript>P</subscript>) and valley voltage (V<subscript>V</subscript>), respectively.  The region on the graph where current is decreasing while applied voltage is increasing (between V<subscript>P</subscript> and V<subscript>V</subscript> on the horizontal scale) is known as the region of <italic>negative resistance</italic>.
</para>

<index>Esaki diode</index>
<index>Diode, Esaki</index>

<para>
Tunnel diodes, also known as <italic>Esaki diodes</italic> in honor of their Japanese inventor Leo Esaki, are able to transition between peak and valley current levels very quickly, ``switching'' between high and low states of conduction much faster than even Schottky diodes.  Tunnel diode characteristics are also relatively unaffected by changes in temperature.
</para>

<image>03469.png<caption>Reverse breakdown voltage versus doping level. After Sze <cite>SGG</cite> </caption></image>

<para>
Tunnel diodes are heavily doped in both the P and N regions, 1000 times the level in a rectifier. This can be seen in Figure<ref>03469.png above</ref>. Standard diodes are to the far left, zener diodes near to the left, and tunnel diodes to the right of the dashed line. The heavy doping produces an unusually thin depletion region. This produces an unusually low reverse breakdown voltage with high leakage. The thin depletion region causes high capacitance. To overcome this, the tunnel diode junction area must be tiny. The forward diode characteristic consists of two regions: a normal forward diode characteristic with current rising exponentially beyond V<subscript>F</subscript>, 0.3 V for Ge, 0.7 V for Si.   Between 0 V and V<subscript>F</subscript> is an additional ``negative resistance'' characteristic peak. This is due to quantum mechanical tunneling involving the dual particle-wave nature of electrons. The depletion region is thin enough compared with the equivalent wavelength of the electron that they can tunnel through. They do not have to overcome the normal forward diode voltage V<subscript>F</subscript>. The energy level of the conduction band of the N-type material  overlaps the level of the  valence band in the P-type region. With increasing voltage, tunneling begins; the levels overlap; current increases, up to a  point. As current increases further, the energy levels overlap less; current decreases with increasing voltage. This is the ``negative resistance'' portion of the curve.   
</para>

<para>
Tunnel diodes are not good rectifiers, as they have relatively high ``leakage'' current when reverse-biased.  Consequently, they find application only in special circuits where their unique tunnel effect has value.  To exploit the tunnel effect, these diodes are maintained at a bias voltage somewhere between the peak and valley voltage levels, always in a forward-biased polarity (anode positive, and cathode negative).
</para>

<para>
Perhaps the most common application of a tunnel diode is in simple high-frequency oscillator circuits as in Figure<ref>03278.png above</ref>(c), where it allows a DC voltage source to contribute power to an LC ``tank'' circuit, the diode conducting when the voltage across it reaches the peak (tunnel) level and effectively insulating at all other voltages. The resistors  bias the tunnel diode at a few tenths of a volt centered on the negative resistance portion of the characteristic curve. The L-C resonant circuit may be a section of waveguide for microwave operation. Oscillation to 5 GHz is possible.
</para>

<para>
At one time the tunnel diode was the only solid-state microwave amplifier available. Tunnel diodes were popular starting in the 1960's. They were longer lived than  traveling wave tube amplifiers, an important consideration in satellite transmitters. Tunnel diodes are also resistant to radiation because of the heavy doping. Today various  transistors operate at microwave frequencies. Even small signal tunnel diodes are expensive and difficult to find today. There is one remaining manufacturer of germanium tunnel diodes, and none for silicon devices. They are sometimes used in military equipment because they are insensitive to radiation  and large temperature changes.</para>

<para>
There has been some research involving possible integration of silicon tunnel diodes into CMOS integrated circuits. They are thought to be capable of switching at 100 GHz in digital circuits.  The sole manufacturer of germanium devices  produces them one at a time. A batch process for silicon tunnel diodes must be developed, then integrated with conventional CMOS processes. <cite>SZL</cite>
</para>

<para>
The Esaki tunnel diode should not be confused with the <italic>resonant tunneling diode</italic> <pageref>resonantTD[CH 2][SEMI_2.html]</pageref>, of more complex construction from compound semiconductors. The RTD is a more recent development capable of higher speed.
</para>

</subsection>






<subsection>
<subsectiontitle>Light-emitting diodes</subsectiontitle>

<para>
Diodes, like all semiconductor devices, are governed by the principles described in quantum physics.  One of these principles is the emission of specific-frequency radiant energy whenever electrons fall from a higher energy level to a lower energy level.  This is the same principle at work in a neon lamp, the characteristic pink-orange glow of ionized neon due to the specific energy transitions of its electrons in the midst of an electric current.  The unique color of a neon lamp's glow is due to the fact that its <italic>neon</italic> gas inside the tube, and not due to the particular amount of current through the tube or voltage between the two electrodes.  Neon gas glows pinkish-orange over a wide range of ionizing voltages and currents.  Each chemical element has its own ``signature'' emission of radiant energy when its electrons ``jump'' between different, quantized energy levels.  Hydrogen gas, for example, glows red when ionized; mercury vapor glows blue.  This is what makes spectrographic identification of elements possible.
</para>

<index>Light-emitting diode</index>
<index>Diode, light-emitting</index>
<index>LED</index>

<para>
Electrons flowing through a PN junction experience similar transitions in energy level, and emit radiant energy as they do so.  The frequency of this radiant energy is determined by the crystal structure of the semiconductor material, and the elements comprising it.  Some semiconductor junctions, composed of special chemical combinations, emit radiant energy within the spectrum of visible light as the electrons change  energy levels.  Simply put, these junctions <italic>glow</italic> when forward biased.  A diode intentionally designed to glow like a lamp is called a <italic>light-emitting diode</italic>, or <italic>LED</italic>.
</para>

<para>
Forward biased silicon diodes give off heat as electron and holes from the N-type and P-type regions, respectively, recombine at the junction.  In a  forward biased LED, the recombination of electrons and holes in the active region in Figure<ref>03294.png below</ref> (c) yields photons. This process is known as <italic>electroluminescence</italic>. To give off photons, the potential barrier through which the electrons fall must be higher than for a silicon diode. The forward diode drop can range to a few volts for some color LEDs.


</para>

<para>
Diodes made from a combination of the elements gallium, arsenic, and phosphorus (called <italic>gallium-arsenide-phosphide</italic>) glow bright red, and are some of the most common LEDs manufactured.  By altering the chemical constituency of the PN junction, different colors may be obtained. Early generations of LEDs were red, green, yellow, orange, and infra-red, later generations included blue and ultraviolet, with violet being the latest color added to the selection.   Other colors may be obtained by combining two or more primary-color (red, green, and blue) LEDs together in the same package, sharing the same optical lens.  This allowed for multicolor LEDs, such as tricolor LEDs (commercially available in the 1980's) using red and green (which can create yellow) and later RGB LEDs (red, green, and blue), which cover the entire color spectrum.
</para>


 
<para>
The schematic symbol for an LED is a regular diode shape inside of a circle, with two small arrows pointing away (indicating emitted light), shown in Figure<ref>03294.png below</ref>.
</para>

<image>03294.png<caption>LED, Light Emitting Diode: (a) schematic symbol. (b) Flat side and short lead of device correspond to cathode, as well as the internal arrangement of the cathode. (c) Cross section of Led die.</caption></image>

<para>
This notation of having two small arrows pointing away from the device is common to the schematic symbols of all light-emitting semiconductor devices.  Conversely, if a device is light-<italic>activated</italic> (meaning that incoming light stimulates it), then the symbol will have two small arrows pointing <italic>toward</italic> it.  LEDs can sense  light. They  generate a small voltage when exposed to light, much like a solar cell on a small scale.  This property can be gainfully applied in a variety of light-sensing circuits.
</para>


<para>
Because LEDs are made of different chemical substances than silicon diodes, their forward voltage drops will be different.  Typically, LEDs have much larger forward voltage drops than rectifying diodes, anywhere from about 1.6 volts to over 3 volts, depending on the color.  Typical operating current for a standard-sized LED is around 20 mA.  When operating an LED from a DC voltage source greater than the LED's forward voltage, a series-connected ``dropping'' resistor must be included to prevent full source voltage from damaging the LED.  Consider the example circuit in Figure<ref>03295.png below</ref> (a) using a 6 V source.
</para>

<image>03295.png<caption>Setting LED current at 20 ma. (a) for a 6 V source, (b) for a 24 V source.</caption></image> 

<para>
With the LED dropping 1.6 volts, there will be 4.4 volts dropped across the resistor.  Sizing the resistor for an LED current of 20 mA is as simple as taking its voltage drop (4.4 volts) and dividing by circuit current (20 mA), in accordance with Ohm's Law (R=E/I).  This gives us a figure of 220 <OMEGA>.  Calculating power dissipation for this resistor, we take its voltage drop and multiply by its current (P=IE), and end up with 88 mW, well within the rating of a 1/8 watt resistor.  Higher battery voltages will require larger-value dropping resistors, and possibly higher-power rating resistors as well.  Consider the example in Figure<ref>03295.png above</ref> (b) for a supply voltage of 24 volts:
</para>


<para>
Here, the dropping resistor must be increased to a size of 1.12 k<OMEGA> to drop 22.4 volts at 20 mA so that the LED still receives only 1.6 volts.  This also makes for a higher resistor power dissipation: 448 mW, nearly one-half a watt of power!  Obviously, a resistor rated for 1/8 watt power dissipation or even 1/4 watt dissipation will overheat if used here.
</para>

<para>
Dropping resistor values need not be precise for LED circuits.  Suppose we were to use a 1 k<OMEGA> resistor instead of a 1.12 k<OMEGA> resistor in the circuit shown above.  The result would be a slightly greater circuit current and LED voltage drop, resulting in a brighter light from the LED and slightly reduced service life.  A dropping resistor with too much resistance (say, 1.5 k<OMEGA> instead of 1.12 k<OMEGA>) will result in less circuit current, less LED voltage, and a dimmer light.  LEDs are quite tolerant of variation in applied power, so you need not strive for perfection in sizing the dropping resistor.
</para>

<para>
Multiple LEDs are sometimes required, say in lighting. If LEDs are operated in parallel, each must have its own current limiting resistor as in Figure<ref>03296.png below</ref> (a) to ensure  currents dividing more equally.
<comment>split for double ref</comment>
However, it is more efficient to operate LEDs in series (Figure<ref>03296.png below</ref> (b)) with a single dropping resistor. As the number of series LEDs increases the series resistor value must decrease to maintain current, to a point. The number of LEDs in series (V<subscript>f</subscript>) cannot exceed the capability of the power supply.
<comment>split for double ref</comment>
Multiple series strings may be employed as in Figure<ref>03296.png below</ref> (c). 
</para>

<para>
In spite of equalizing the currents in multiple LEDs, the brightness of the devices may not match due to variations in the individual parts. Parts can be selected for brightness matching for critical applications.
</para>

<image>03296.png<caption>Multiple LEDs: (a) In parallel, (b) in series, (c) series-parallel</caption></image> 

<para>
Also because of their unique chemical makeup, LEDs have much, much lower peak-inverse voltage (PIV) ratings than ordinary rectifying diodes.  A typical LED might only be rated at 5 volts in reverse-bias mode.  Therefore, when using alternating current to power an LED,  connect a protective rectifying diode anti-parallel with the LED to prevent reverse breakdown every other half-cycle as in  Figure<ref>03298.png below</ref> (a).
</para>

<image>03298.png<caption>Driving an LED with AC</caption></image> 



<para>
The anti-parallel diode in Figure<ref>03298.png above</ref> can be replaced with an anti-parallel LED. The resulting pair of anti-parallel LED's illuminate on alternating half-cycles of the AC sinewave. This configuration draws 20 ma, splitting it equally between the LED's on alternating AC half cycles. Each LED only receives 10 mA due to this sharing.   The same is true of the LED anti-parallel combination with a rectifier. The LED only receives 10 ma. If 20 mA was required for the LED(s), The resistor value could be halved.
</para>


<para>
The forward voltage drop of LED's is  inversely proportional to the wavelength (<lambda>). As wavelength decreases  going from infrared to visible colors to ultraviolet, V<subscript>f</subscript> increases. While this trend is most obvious in the various devices from a single manufacturer, The voltage range for a particular color LED from various manufacturers varies. This range of voltages is shown in Table<ref>leds.tbl below</ref>.
</para>

<table>leds.tbl<caption>Optical and electrical properties of  LED's</caption>

<tabular>{|l|l|l|l|}

<hr>

<tr>
<th>LED</th><th><lambda> nm (= 10 <superscript>-9</superscript>m)</th><th>V<subscript>f</subscript>(from)</th><th>V<subscript>f</subscript> (to)</th>
</tr>
<hr>
<tr>
<td>infrared</td><td>940</td><td>1.2</td><td>1.7</td>
</tr>

<tr>
<td>red</td><td>660</td><td>1.5</td><td>2.4</td>
</tr>

<tr>
<td>orange</td><td>602-620</td><td>2.1</td><td>2.2</td>
</tr>



<tr>
<td>yellow, green</td><td>560-595</td><td>1.7</td><td>2.8</td>
</tr>

<tr>
<td>white, blue, violet</td><td>-</td><td>3</td><td>4</td>
</tr>

<tr>
<td>ultraviolet</td><td>370</td><td>4.2</td><td>4.8</td>
</tr>
<hr>

</tabular>
</table>

<para>
As lamps, LEDs are superior to incandescent bulbs in many ways.  First and foremost is efficiency: LEDs output far more light power per watt of electrical input than an incandescent lamp.  This is a significant advantage if the circuit in question is battery-powered, efficiency translating to longer battery life.  Second is the fact that LEDs are far more reliable, having a much greater service life than incandescent lamps.  This is because LEDs are ``cold'' devices: they operate at much cooler temperatures than an incandescent lamp with a white-hot metal filament, susceptible to breakage from mechanical and thermal shock.  Third is the high speed at which LEDs may be turned on and off.  This advantage is also due to the ``cold'' operation of LEDs: they don't have to overcome thermal inertia in transitioning from off to on or vice versa.  For this reason, LEDs are used to transmit digital (on/off) information as pulses of light, conducted in empty space or through fiber-optic cable, at very high rates of speed (millions of pulses per second).
</para>


<para>
LEDs excel in monochromatic lighting applications like traffic signals and automotive tail lights. Incandescents are abysmal in this application since they require filtering, decreasing efficiency. LEDs do not require filtering.
</para>

<para>
One major disadvantage of using LEDs as sources of illumination is their monochromatic (single-color) emission.  No one wants to read a book under the light of a red, green, or blue LED.  However, if used in combination, LED colors may be mixed for a more broad-spectrum glow.  A new broad spectrum light source is the white LED. While small white panel indicators have been available for many years, illumination grade devices are still in development.
</para>



<table>lamps.tbl<caption>Efficiency of lighting</caption>

<tabular>{|l|l|l|l|}
<hr>

<tr>
<th>Lamp type</th><th>Efficiency lumen/watt</th><th>Life hrs</th><th>notes</th>
</tr>

<tr>
<td>White LED</td><td>35</td><td>100,000</td><td>costly</td>
</tr>

<tr>
<td>White LED, future</td><td>100</td><td>100,000</td><td>R&D target</td>
</tr>

<tr>
<td>Incandescent</td><td>12</td><td>1000</td><td>inexpensive</td>
</tr>

<hr>
<tr>
<td>Halogen</td><td>15-17</td><td>2000</td><td>high quality light</td>
</tr>

<tr>
<td>Compact fluorescent</td><td>50-100</td><td>10,000</td><td>cost effective</td>
</tr>

<tr>
<td>Sodium vapor, lp</td><td>70-200</td><td>20,000</td><td>outdoor</td>
</tr>

<tr>
<td>Mercury vapor</td><td>13-48</td><td>18,000</td><td>outdoor</td>
</tr>
<hr>

</tabular>
</table>

<para>
A white LED is a blue  LED exciting a phosphor which emits yellow light. The blue plus yellow approximates white light. The nature of the phosphor determines the characteristics of the light.  A red phosphor may be added to improve the quality of the yellow plus blue mixture at the expense of efficiency. Table <ref>lamps.tbl above</ref> compares white illumination LEDs to expected future devices and other conventional lamps. Efficiency is measured in lumens of light output per watt of input power. If the 50 lumens/watt device can be improved to 100 lumens/watt, white LEDs will be comparable to compact fluorescent lamps in efficiency.
</para>


<para>
LEDs in general have been a major subject of R&D since the 1960's. Because of this it is impractical to cover all geometries, chemistries, and characteristics that have been created over the decades. The early devices were relatively dim and took moderate currents. The efficiencies have been improved in later generations to the point it is hazardous to look closely and directly into an illuminated LED. This can result in eye damage, and the LEDs only required a minor increase in dropping voltage (Vf) and current. Modern high intensity devices have reached 180 lumens using 0.7 Amps (82 lumens/watt, Luxeon Rebel series cool white), and even higher intensity models can use even higher currents with a corresponding increase in brightness. Other developments, such as quantum dots, are the subject of current research, so expect to see new things for these devices in the future
</para>




</subsection>
<subsection>
<subsectiontitle>Laser diodes</subsectiontitle>

<index>Laser diode</index>
<index>Diode, laser</index>

<para>
The <italic>laser diode</italic> is a further development upon the regular light-emitting diode, or LED.  The term ``laser'' itself is actually an acronym, despite the fact its often written in lower-case letters.  ``Laser'' stands for <bold>L</bold>ight <bold>A</bold>mplification by <bold>S</bold>timulated <bold>E</bold>mission of <bold>R</bold>adiation, and refers to another strange quantum process whereby characteristic light emitted by electrons falling from high-level to low-level energy states in a material stimulate other electrons in a substance to make similar ``jumps,'' the result being a synchronized output of light from the material.  This synchronization extends to the actual <italic>phase</italic> of the emitted light, so that all light waves emitted from a ``lasing'' material are not just the same frequency (color), but also the same phase as each other, so that they reinforce one another and are able to travel in a very tightly-confined, nondispersing beam.  This is why laser light stays so remarkably focused over long distances: each and every light wave coming from the laser is in step with each other. 
</para>

<image>03297.png<caption>(a) White light of many wavelengths. (b) Mono-chromatic LED light, a single wavelength. (c) Phase coherent laser light.</caption></image> 

<index>Coherent light</index>
<index>Monochromatic light</index>
<index>Laser light</index>

<para>
Incandescent lamps produce ``white'' (mixed-frequency, or mixed-color) light as in  Figure<ref>03297.png above</ref> (a).
<comment>split for double ref</comment>
Regular LEDs produce monochromatic light: same frequency (color), but different phases, resulting in similar beam dispersion in Figure<ref>03297.png above</ref> (b). 
<comment>split for double ref</comment>
Laser LEDs produce <italic>coherent light</italic>: light that is both monochromatic (single-color) and monophasic (single-phase), resulting in precise beam confinement as in Figure<ref>03297.png above</ref> (c).
</para>

<para>
Laser light finds wide application in the modern world: everything from surveying, where a straight and nondispersing light beam is very useful for precise sighting of measurement markers, to the reading and writing of optical disks, where only the narrowness of a focused laser beam is able to resolve the microscopic ``pits'' in the disk's surface comprising the binary 1's and 0's of digital information.
</para>

<para>
Some laser diodes require special high-power ``pulsing'' circuits to deliver large quantities of voltage and current in short bursts.  Other laser diodes may be operated continuously at lower power.  In the continuous laser, laser action occurs only within a certain range of diode current, necessitating some form of current-regulator circuit.  As laser diodes age, their power requirements may change (more current required for less output power), but it should be remembered that low-power laser diodes, like LEDs, are fairly long-lived devices, with typical service lives in the tens of thousands of hours.
</para>

</subsection>






<subsection>
<subsectiontitle>Photodiodes</subsectiontitle>

<index>Photodiode</index>
<index>Diode, light-activated</index>

<para>
A <italic>photodiode</italic> is a diode optimized to produce an electron current flow in response to irradiation by ultraviolet, visible, or infrared light. Silicon is most often used to fabricate photodiodes; though, germanium and gallium arsenide can be used. The junction through which light enters the semiconductor must be  thin enough to pass most of the light on to the active region (depletion region) where light is converted to electron hole pairs.
</para>


<para>
In Figure<ref>03446.png below</ref> a shallow P-type diffusion into an N-type wafer produces a PN junction near the surface of the wafer. The P-type layer needs to be thin to pass as much light as possible. A heavy N+ diffusion on the back of the wafer makes contact with metalization. The top metalization may be a fine grid of metallic fingers on the top of the wafer for large cells. In small photodiodes, the top contact might be a sole bond wire contacting the bare P-type silicon top.
</para>


<image>03446.png<caption>Photodiode: Schematic symbol and cross section. </caption></image>

<para>
Light entering the top of the photodiode stack fall off exponentially in with  depth of the silicon. A thin top P-type layer allows most photons to pass into the depletion region where electron-hole pairs are formed. The electric field across the depletion region due to the built in diode potential causes electrons to be swept into the N-layer, holes into the P-layer. Actually electron-hole pairs may be formed in any of the semiconductor regions. However, those formed in the depletion region are most likely to be separated into the respective N and P-regions. Many of the electron-hole pairs formed in the P and N-regions recombine. Only a few do so in the depletion region. Thus, a few electron-hole pairs in the N and P-regions, and most in the depletion region contribute to <italic>photocurrent</italic>, that current resulting from light falling on the photodiode.
</para>

<para>
The voltage out of a photodiode may be observed. Operation in this <italic> photovoltaic</italic> (PV) mode is not linear over a large dynamic range, though it is sensitive and has low noise at frequencies less than 100 kHz.  The preferred mode of operation is often <italic>photocurrent (PC)</italic> mode because the current is linearly proportional to light flux over several decades of intensity, and higher frequency response can be achieved. PC mode is achieved with reverse bias or zero bias on the photodiode. A current amplifier (transimpedance amplifier) should be used with a photodiode in PC mode. Linearity and PC mode are achieved as long as the diode does not become forward biased.
</para>

<para>
High speed operation is often required of  photodiodes, as opposed to solar cells. Speed is a function of diode capacitance, which can be minimized by decreasing cell area. Thus, a sensor for a high speed fiber optic link will use an area no larger than necessary, say 1 mm<superscript>2</superscript>. Capacitance may also be decreased by increasing the thickness of the depletion region, in the manufacturing process or by increasing the reverse bias on the diode.
</para>


<index>Photodiode, PIN</index>
<index>PIN, photodiode</index>

<label>PINphoto</label>

<para>
<bold>PIN diode</bold> The <italic>p-i-n diode</italic> or <italic>PIN diode</italic> is a photodiode with an intrinsic layer between the P and N-regions as in Figure<ref>03447.png below</ref>. The <bold>P</bold>-<bold>I</bold>ntrinsic-<bold>N</bold> structure increases the distance between the P and N conductive layers, decreasing capacitance, increasing speed. The volume of the photo sensitive region also increases, enhancing conversion efficiency. The bandwidth can extend to 10's of gHz. PIN photodiodes are the preferred for high sensitivity, and  high speed at moderate cost.
</para>


<image>03447.png<caption>PIN photodiode: The intrinsic region increases the thickness of the depletion region.</caption></image>

<index>Photodiode, APD</index>
<index>Avalanche photodiode</index>


<para>
<bold>Avalanche photo diode:</bold>An <italic>avalanche photodiode (APD)</italic>designed to operate at high reverse bias exhibits an electron multiplier effect analogous to a photomultiplier tube. The reverse bias can run from 10's of volts to nearly 2000 V. The high level of reverse bias accelerates photon created electron-hole pairs in the intrinsic region to a high enough velocity to free additional carriers from collisions with the crystal lattice. Thus, many  electrons per photon result. The motivation for the APD is to achieve amplification within the photodiode to overcome noise in external amplifiers. This works to some extent. However, the APD creates noise of its own. At high speed the APD is superior to a PIN diode amplifier combination, though not for low speed applications. APD's are expensive, roughly the price of a photomultiplier tube. So, they are only competitive with PIN photodiodes  for niche applications. One such application is single photon counting as applied to nuclear physics.
</para>

</subsection>


<subsection>
<subsectiontitle>Solar cells</subsectiontitle>
<index>Solar cell</index>

<para>
A photodiode optimized for efficiently delivering power to a load is the <italic>solar cell</italic>. It operates in photovoltaic mode (PV) because it is forward biased by the voltage developed across the load resistance.
</para>

<para>
Monocrystalline solar cells are manufactured in a process similar to semiconductor processing. This involves growing a single crystal boule from molten high purity silicon (P-type), though, not as high purity as for semiconductors.  The boule is diamond sawed  or wire sawed into wafers. The ends of the boule must be discarded or recycled, and silicon is lost in the saw kerf. Since modern cells are nearly square, silicon is lost in squaring the boule.  Cells may be etched to  texture (roughen) the surface to help trap light within the cell.  Considerable silicon is lost in producing the 10 or 15 cm square wafers. These days (2007) it is common for solar cell manufacturer to purchase  the wafers at this stage  from a supplier to the semiconductor industry.
</para>

<para>
P-type Wafers are loaded back-to-back into fused silica boats exposing only the outer surface to the N-type dopant in the diffusion furnace. The diffusion process forms a thin n-type layer on the top of the cell. The diffusion also shorts the edges of the cell front to back. The periphery must be removed by plasma etching to unshort the cell. Silver and or aluminum  paste is screened on the back of the cell, and  a silver grid on the front. These are sintered in a furnace for good electrical contact.  (Figure<ref>03448.png below</ref>)
</para>

<para>
The cells are wired in series with metal ribbons. For charging 12 V batteries, 36 cells at approximately 0.5 V are vacuum laminated between glass, and a polymer metal back. The glass may have a textured surface to help trap light. 
</para>


<image>03448.png<caption>Silicon Solar cell</caption></image>

<para>
The ultimate commercial high efficiency (21.5%) single crystal silicon solar cells have all contacts on the back of the  cell. The active area of the cell is increased by moving the top (-) contact conductors to the back of the cell. The top (-) contacts are normally made to the N-type silicon on top of the cell. In Figure<ref>03452.png below</ref> the (-) contacts are made to N<superscript>+</superscript> diffusions on the bottom interleaved with (+) contacts. The top surface is textured to aid in trapping light within the cell.. <cite>VSW</cite>
</para>


<image>03452.png<caption>High efficiency solar cell with all contacts on the back. Adapted from Figure 1 <cite>VSW</cite></caption></image>



<para>
<bold>Multicyrstalline silicon cells</bold> start out as molten silicon cast into a rectangular mold. As the  silicon cools, it  crystallizes into a few large (mm to cm sized) randomly oriented crystals instead of a single one. The remainder of the process is the same as for single crystal cells. The finished cells show  lines dividing the individual crystals, as if the cells were cracked. The high efficiency is not quite as high as single crystal cells due to losses at crystal grain boundaries. The cell surface cannot be roughened by etching due to the random orientation of the crystals. However, an antireflectrive coating improves efficiency. These cells are competitive for all but space applications.
</para>


<para>
<bold>Three layer cell</bold>: The highest efficiency solar cell is a stack of three cells tuned to absorb different  portions of the solar spectrum. Though three cells can be stacked atop one another, a monolithic single crystal structure of 20 semiconductor layers is more compact. At 32 % efficiency, it is now (2007) favored over silicon for space application. The high cost prevents it from finding many earth bound applications other than concentrators based on lenses or mirrors. 
</para>

<para>
Intensive research has recently produced a version enhanced for terrestrial concentrators at 400 - 1000 suns and 40.7% efficiency. This requires either a big inexpensive Fresnel lens or reflector and a small area of the expensive semiconductor. This combination is thought to be competitive with inexpensive silicon cells for solar power plants. <cite>RRK</cite> 
<comment>split for double ref</comment>
<cite>LZy</cite>
</para>


<para>
<italic>Metal organic chemical vapor deposition (MOCVD)</italic> deposits the layers atop a P-type germanium substrate. The top layers of N and P-type gallium indium phosphide (GaInP) having a band gap of 1.85 eV, absorbs ultraviolet and visible light. These wavelengths have enough energy to  exceed the band gap. Longer wavelengths (lower energy) do not have enough energy to create electron-hole pairs, and pass on through to the next layer. A gallium arsenide layers having a band gap of 1.42 eV, absorbs near infrared light. Finally the germanium layer and substrate absorb far infrared. The series of three cells produce a voltage which is the sum of the voltages of the three cells. The voltage developed by each material is 0.4 V less than the band gap energy listed in Table<ref>3layercell.tbl below</ref>. For example, for GaInP: 1.8 eV/e - 0.4 V = 1.4 V. For all three the voltage is 1.4 V + 1.0 V + 0.3 V = 2.7 V.  <cite>BRB</cite>
</para>






<table>3layercell.tbl<caption>High efficiency triple layer solar cell.</caption>

<tabular>{|l|l|l|}

<hr>

<tr>
<th>Layer</th><th>Band gap</th><th>Light absorbed</th>
</tr>
<hr>

<tr>
<td>Gallium indium phosphide</td><td>1.8 eV</td><td>UV, visible</td>
</tr>

<tr>
<td>Gallium arsenide</td><td>1.4 eV</td><td>near infrared</td>
</tr>

<tr>
<td>Germanium</td><td>0.7 eV</td><td>far infrared</td>
</tr>

<hr>

</tabular>
</table>





<para>
Crystalline solar cell arrays have a long usable life. Many arrays are guaranteed for 25 years, and believed to be good for 40 years. They do not suffer initial degradation compared with amorphous silicon.
</para>

<para>
Both single and multicrystalline solar cells are based on silicon wafers. The silicon is both the substrate and the active device layers.  Much silicon is consumed. This kind of cell has been around for decades, and takes approximately 86% of the solar electric market. For further information about crystalline solar cells see Honsberg. <cite>CHS</cite>
</para>

<para>
<bold>Amorphous silicon</bold> thin film solar cells use tiny amounts of the active raw material, silicon. Approximately half the cost of conventional crystalline solar cells is the solar cell grade silicon. The thin film deposition process reduces this cost. The downside is that efficiency is about half that of conventional crystalline cells. Moreover, efficiency degrades by 15-35% upon exposure to sunlight. A 7% efficient cell soon ages to 5% efficiency. Thin film amorphous silicon cells work better than crystalline cells in dim light. They are put to good use in solar powered calculators. 
</para>



<para>
Non-silicon based solar cells make up about 7% of the market. These are thin-film polycrystalline products.   Various compound semiconductors are the subject of research and development. Some  non-silicon products are in production. Generally, the efficiency is better than amorphous silicon, but not nearly as good as crystalline silicon. 
</para>

<para>
<bold>Cadmium telluride</bold> as a polycrystalline thin film on metal or glass can have a higher efficiency than amorphous silicon thin films. If deposited on metal, that layer is the negative contact to the cadmium telluride thin film. The transparent P-type cadmium sulfide atop the cadmium telluride serves as a buffer layer. The positive top contact is transparent, electrically conductive fluorine doped tin oxide. These layers may be laid down on a sacrificial foil in place of the glass in the process in the  following pargraph. The sacrificial foil is removed after the cell is mounted to a permanent substrate.
</para>

<image>03449.png<caption>Cadmium telluride solar cell on glass or metal.</caption></image>

<para>
A process for depositing cadmium telluride on glass begins with the deposition of N-type transparent, electrically conducive, tin oxide on a glass substrate. The next layer is P-type cadmium telluride; though, N-type or intrinsic may be used. These two layers constitute the NP junction. A P<superscript>+</superscript> (heavy P-type) layer of lead telluride aids in establishing a low resistance contact. A metal layer makes the final contact to the lead telluride. These layers may be laid down by vacuum deposition, chemical vapor deposition (CVD), screen printing, electrodeposition, or atmospheric pressure chemical vapor deposition (APCVD) in helium. <cite>KWM</cite> 
</para>


<para>
A variation of cadmium telluride is mercury cadmium telluride.  Having lower bulk resistance and lower contact resistance improves efficiency over cadmium telluride.
</para>



<image>03450.png<caption>Cadmium Indium Gallium diSelenide solar cell (CIGS)</caption></image>


<para>
<bold>Cadmium Indium Gallium diSelenide</bold>: A most promising thin film solar cell  at this time (2007) is manufactured on a ten inch wide roll of flexible polyimide-- Cadmium Indium Gallium diSelenide (CIGS). It has a spectacular efficiency of 10%.  Though, commercial grade crystalline silicon cells surpassed this decades ago, CIGS should be cost competitive. The deposition processes are at a low enough temperature to use a polyimide polymer as a substrate instead of metal or glass.  (Figure<ref>03450.png above</ref>) The CIGS is manufactured in a roll to roll process, which should drive down costs. GIGS cells may also be produced by an  inherently low cost electrochemical process. <cite>EET</cite> 
</para>

<itemize>
<item><bold>REVIEW</bold>:</item>
<item>Most solar cells are silicon  single crystal or multicrystal because of their good efficiency and moderate cost.</item>
<item>Less efficient thin films of various amorphous or polycrystalline materials comprise the rest of the market.</item>
<item>Table <ref>solarcell.tbl below</ref> compares selected solar cells.</item>
</itemize>



<table>solarcell.tbl<caption>Solar cell properties</caption>

<tabular>{|p{2in}|p{0.65in}|p{0.65in}|p{2in}|}

<hr>

<tr>
<th>Solar cell type</th><th>Maximum efficiency</th><th>Practical efficiency</th><th>Notes</th>
</tr>
<hr>

<tr>
<td>Selenium, polycrystalline</td><td>0.7%</td><td>-</td><td>1883, Charles Fritts</td>
</tr>

<tr>
<td>Silicon, single crystal</td><td>-</td><td>4%</td><td>1950's, first  silicon solar cell</td>
</tr>

<tr>
<td>Silicon, single crystal PERL, terrestrial, space</td><td>25%</td><td>-</td><td>solar cars, cost=100x commercial</td>
</tr>

<tr>
<td>Silicon, single crystal, commercial terrestrial</td><td>24%</td><td>14-17%</td><td>$5-$10/peak watt</td>
</tr>

<tr>
<td>Cypress Semiconductor, Sunpower, silicon single crystal</td><td>21.5%</td><td>19%</td><td>all contacts on cell back</td>
</tr>

<tr>
<td>Gallium Indium Phosphide/ Gallium Arsenide/ Germanium, single crystal, multilayer</td><td>-</td><td>32%</td><td>Preferred for space.</td>
</tr>

<tr>
<td>Advanced terrestrial version of above.</td><td>-</td><td>40.7%</td><td>Uses optical concentrator.</td>
</tr>

<tr>
<td>Silicon, multicrystalline</td><td>18.5%</td><td>15.5%</td><td>-</td>
</tr>

<tr>
<td>Thin films, </td><td>-</td><td>-</td><td>-</td>
</tr>

<tr>
<td>Silicon, amorphous</td><td>13%</td><td>5-7%</td><td>Degrades in sun light. Good indoors for calculators or cloudy outdoors.</td>
</tr>

<tr>
<td>Cadmium telluride, polycrystalline</td><td>16%</td><td>-</td><td>glass or metal substrate</td>
</tr>

<tr>
<td>Copper indium arsenide diselenide, polycrystalline</td><td>18%</td><td>10%</td><td>10 inch flexible polymer web. <cite>NTH</cite></td>
</tr>


<tr>
<td>Organic polymer, 100% plastic</td><td>4.5%</td><td>-</td><td>R&D project</td>
</tr>

<hr>

</tabular>
</table>



</subsection>





<subsection>
<subsectiontitle>Varicap or varactor  diodes</subsectiontitle>
<index>Diode, hot carrier</index>

<index>Varicap diode</index>
<index>Diode, varicap</index>
<index>Varactor diode</index>
<index>Diode, varactor</index>


<para>
A variable capacitance diode is known as a <italic>varicap diode</italic> or as a <italic>varactor</italic>. If a diode is reverse biased, an insulating depletion region forms between the two semiconductive layers. In many diodes the width of the depletion region may be changed by varying the reverse bias. This varies the capacitance. This effect is accentuated in varicap diodes. The schematic symbols is shown in Figure<ref>03456.png below</ref>, one of which is packaged as common cathode dual diode.
</para>

<image>03456.png<caption>Varicap diode: Capacitance varies with reverse bias. This varies the frequency of a resonant network.</caption></image>

<para>
If a varicap diode is part of a resonant circuit as in Figure<ref>03456.png above</ref>, the frequency may be varied with a control voltage, V<subscript>control</subscript>. A large capacitance, low X<subscript>c</subscript>, in series with the varicap prevents V<subscript>control</subscript> from being shorted out by inductor L. As long as the series capacitor is large, it has minimal effect on the frequency of resonant circuit. C<subscript>optional</subscript> may be used to set the center resonant frequency. V<subscript>control</subscript> can then vary the frequency about this point. Note that the required  active circuitry to make the resonant network oscillate is not shown. For an example of a varicap diode tuned AM radio receiver see ``electronic varicap diode tuning,'' <pageref>03477.png[Ch 9 ][SEMI_9.html]</pageref>
</para>

<para>


Some varicap diodes may be referred to as abrupt,  hyperabrupt, or super hyper abrupt. These refer to the change in junction capacitance with changing reverse bias as being abrupt or hyper-abrupt, or super hyperabrupt. These diodes offer a relatively large  change in capacitance. This is useful when oscillators or filters are swept over a large frequency range.  Varying the bias of abrupt varicaps over the rated limits, changes capacitance by a 4:1 ratio, hyperabrupt by 10:1,  super hyperabrupt by 20:1.
</para>

<para>
Varactor diodes may be used in frequency multiplier circuits. See ``Practical analog semiconductor circuits,'' <hyperlink>varactormul[Varactor multiplier][SEMI_9.html]</hyperlink>
</para>


<subsection>
<subsectiontitle>Snap diode</subsectiontitle>
<index>Snap diode</index>
<index>Step recovery diode</index>
<index>Diode, snap</index>


<para>
The <italic>snap diode</italic>, also known as the <italic>step recovery diode</italic> is designed for use in high ratio frequency multipliers up to 20 gHz. When the diode is forward biased, charge is stored in the PN junction. This charge is drawn out as the diode is reverse biased. The diode looks like a low impedance current source during forward bias. When reverse bias is applied it still looks like a low impedance source until all the charge is withdrawn. It then ``snaps'' to a high impedance state causing a voltage impulse, rich in harmonics. An applications is a comb generator, a generator of many harmonics. Moderate power 2x and 4x multipliers are another application.
</para>

</subsection>

</subsection>


<hypertarget>pindiode[]</hypertarget>
<subsection>
<subsectiontitle>PIN diodes</subsectiontitle>

<index>PIN diode</index>
<index>Diode, pin</index>

<para>
A <italic>PIN diode</italic> is a fast low capacitance switching diode. Do not confuse a PIN switching diode with a PIN photo diode <pageref>PINphoto[here]</pageref>. A PIN diode is manufactured like a silicon switching diode with an intrinsic region added between the PN junction layers. This yields a thicker depletion region, the insulating layer at the junction of a reverse biased diode. This results in lower capacitance than a reverse biased switching diode.
</para>

<image>03460.png<caption>Pin diode: Cross section aligned with schematic symbol.</caption></image>

<para>
PIN diodes are used in place of switching diodes in radio frequency (RF) applications, for example, a T/R switch <pageref>PinTR[here][SEMI_9.html]</pageref>. The 1n4007 1000 V, 1 A general purpose power diode is reported to be usable as a PIN switching diode. The high voltage rating of this diode is achieved by the inclusion of an intrinsic layer dividing the PN junction.
<comment>split for double pageref</comment>
This intrinsic layer makes the 1n4007 a PIN diode. Another PIN diode application is as the antenna switch <pageref>Pinant[here][SEMI_9.html]</pageref> for a direction finder receiver.
</para>

<para>
PIN diodes serve as variable resistors when the forward bias is varied. One such application is the voltage variable attenuator <pageref>Pinatt[here][SEMI_9.html]</pageref>. The low capacitance characteristic of PIN diodes, extends the frequency flat response  of the attenuator to  microwave frequencies.

</para>


</subsection>




<subsection>
<subsectiontitle>IMPATT diode</subsectiontitle>
<index>IMPATT diode</index>
<index>Diode, IMPATT</index>


<para>
<The <italic>IMPact Avalanche Transit Time</italic> diode is a high power radio frequency (RF) generator operating from 3 to 100 gHz. IMPATT diodes are fabricated from silicon, gallium arsenide, or silicon carbide.
</para>


<para>
An IMPATT diode is  reverse biased above the breakdown voltage. The high doping levels produce a thin depletion region. The resulting  high electric field rapidly accelerates carriers which free other carriers in collisions with the crystal lattice. Holes are swept into the P<subscript>+</subscript> region. Electrons drift toward the N regions. The cascading effect creates an avalanche current which increases even as voltage across the junction decreases. The  pulses of  current lag the voltage peak across the junction. A ``negative resistance'' effect in conjunction with a resonant circuit produces  oscillations at high power levels (high for semiconductors). 
</para> 

<image>03458.png<caption>IMPATT diode: Oscillator circuit  and heavily doped P and N layers.</caption></image>

<para>
The resonant circuit in the schematic diagram of Figure<ref>03458.png above</ref> is the lumped circuit equivalent of a waveguide section, where the IMPATT diode is mounted. DC reverse bias is applied through a choke which keeps RF from being lost in the bias supply. This may be a section of waveguide known as a bias Tee. Low power RADAR transmitters may use an IMPATT diode as a power source. They are too noisy for use in the receiver. <cite>YMCW</cite>
</para>

</subsection>

<subsection>
<subsectiontitle>Gunn diode</subsectiontitle>
<italic>Diode, gunn</italic>
<italic>Gunn diode</italic>


<para>
A <italic>gunn diode</italic> is solely composed of N-type semiconductor. As such, it is not a true diode. Figure<ref>03459.png below</ref> shows a lightly doped N<superscript>-</superscript> layer surrounded by heavily doped N<italic>+</italic> layers. A voltage applied across the N-type gallium arsenide gunn diode creates a strong electric field across the lightly doped N<superscript>-</superscript> layer. 
</para>

<image>03459.png<caption>Gunn diode: Oscillator circuit  and cross section of only N-type semiconductor diode.</caption></image>

<para>
As voltage is increased, conduction increases due to electrons in a low energy conduction band. As voltage is increased beyond the threshold of approximately 1 V, electrons move from the lower conduction band to the higher energy conduction band where they no longer contribute to conduction. In other words, as voltage increases, current decreases, a negative resistance condition. The oscillation frequency is determined by the transit time of the conduction electrons, which is inversely related to the thickness of the  N<superscript>-</superscript> layer.
</para>


<para>
The frequency may be controlled to some extent by embedding the gunn diode into a resonant circuit. The lumped circuit equivalent shown in Figure<ref>03459.png above</ref> is actually a coaxial transmission line or waveguide. Gallium arsenide gunn diodes are available for operation from 10 to 200 gHz at 5 to 65 mw power. Gunn diodes may also serve as amplifiers. <cite>CHW</cite>
<comment>split for double cite</comment>
<cite>IAP</cite>
</para>

</subsection>




<subsection>
<subsectiontitle>Shockley diode</subsectiontitle>


<para>
The <italic>Shockley diode</italic>is a 4-layer thyristor used to trigger larger thyristors. It only conducts in one direction when triggered by a voltage exceeding the <italic>breakover voltage</italic>, about 20 V. See ``Thyristors,'' <hyperlink>ShockleyDiode[The Shockley Diode][SEMI_7.html]</hyperlink>. 
<comment>split for double ref</comment>
The bidirectional version is called a <italic>diac</italic>. See ``Thyristors,''   <hyperlink>DIAClnk[The DIAC][SEMI_7.html]</hyperlink>. 
</para>

</subsection>



<subsection>
<subsectiontitle>Constant-current diodes</subsectiontitle>

<index>Constant-current diode</index>
<index>Current-limiting diode</index>
<index>Current-regulating diode</index>
<index>Diode, constant-current</index>

<para>
A <italic>constant-current diode</italic>, also known as a <italic>current-limiting diode</italic>, or <italic>current-regulating diode</italic>, does exactly what its name implies: it regulates current through it to some maximum level. The constant current diode is a two terminal version of a JFET. If we try to force more current through a constant-current diode than its current-regulation point, it simply ``fights back'' by dropping more voltage.  If we were to build the circuit in Figure<ref>03299.png below</ref>(a)
<comment>split for double ref</comment>
and plot diode current against diode voltage, we'd get a graph that rises at first and then levels off at the current regulation point as in  Figure<ref>03299.png below</ref>(b).
</para>

<image>03299.png<caption>Constant current diode: (a) Test circuit, (b) current vs voltage characteristic.</caption></image> 

<para>
One application for a constant-current diode is to automatically limit current through an LED or laser diode over a wide range of power supply voltages as in  Figure<ref>03300.png below</ref>.
</para>

<image>03300.png<caption>Constant current diode application: driving laser diode.</caption></image> 

<para>
Of course, the constant-current diode's regulation point should be chosen to match the LED or laser diode's optimum forward current.  This is especially important for the laser diode, not so much for the LED, as regular LEDs tend to be more tolerant of forward current variations.
</para>

<para>
Another application is in the charging of small secondary-cell batteries, where a constant charging current leads to predictable charging times.  Of course, large secondary-cell battery banks might also benefit from constant-current charging, but constant-current diodes tend to be very small devices, limited to regulating currents in the milliamp range.
</para>

</subsection>


</section>





<section>
<sectiontitle>Other diode technologies</sectiontitle>

<subsection>
<subsectiontitle>SiC diodes</subsectiontitle>


<para>
Diodes manufactured from silicon carbide are capable of high temperature operation to 400<superscript>o</superscript>C. This could be in a high temperature environment: down hole oil well logging, gas turbine engines, auto engines. Or, operation in a moderate environment at high power dissipation. Nuclear and space applications are promising as SiC is 100 times more resistant to radiation compared with silicon.  SiC is a better conductor of heat than any metal. Thus, SiC is better than silicon at conducting away heat. Breakdown voltage is several kV. SiC power devices are expected to reduce electrical energy losses in the power industry by a factor of 100.
</para>

</subsection>

<subsection>
<subsectiontitle>Polymer diode</subsectiontitle>
<index>diode, MIM</index>
<index>MIM diode</index>

<para>
Diodes based on organic chemicals have been produced using low temperature processes. Hole rich and electron rich conductive polymers may be ink jet printed in layers. Most of the research and development is  of the <italic>organic LED</italic> (OLED). However, development of inexpensive printable organic RFID (radio frequency identification) tags is on going. In this effort, a  pentacene organic rectifier has been operated at 50 MHz. Rectification to 800 MHz is a development goal. An inexpensive <italic>metal insulator metal</italic> (MIM) diode acting like  a back-to-back zener diode clipper has been delveloped. Also, a tunnel diode like device has been fabricated.
</para>

</subsection>
</section>



<section>
<sectiontitle>SPICE models</sectiontitle>
<index>SPICE, diode</index>
<index>Diode, SPICE</index>
<para>
The SPICE circuit simulation program provides for modeling diodes in circuit simulations. The diode model is based on characterization of individual devices as described in a product data sheet and manufacturing process characteristics not listed. Some information has been extracted from a 1N4004 data sheet in  Figure<ref>03467.png below</ref>. 
</para>


<image>03467.png<caption>Data sheet 1N4004 excerpt, after <cite>DI4</cite>.</caption></image>

<para> The diode statement begins with a diode element name which must begin with ``d'' plus optional characters. Example diode element names include: d1, d2, dtest, da, db, d101. Two node numbers specify the connection of the anode and cathode, respectively, to other components. The node numbers are followed by a model name, referring to a subsequent ``.model'' statement.
</para>

<para>
The model statement line begins with  ``.model,'' followed by the model name matching one or more diode statements. Next, a ``d'' indicates a diode is being modeled. The remainder of the model statement is a list of optional diode parameters of the form ParameterName=ParameterValue. None are used  in Example below. Example2 has some parameters defined. For a list of diode parameters, see  Table<ref>diodespice.tbl below</ref>. 
</para>

<literal>
<sp>
<sp>General form:  d[name] [anode] [cathode] [modelname]
<sp>               .model ([modelname] d [parmtr1=x] [parmtr2=y] . . .)
<sp>
<sp>Example:       d1 1 2 mod1
<sp>                .model mod1 d
<sp>
<sp>Example2:      D2 1 2 Da1N4004
<sp>                .model Da1N4004 D (IS=18.8n RS=0 BV=400 IBV=5.00u CJO=30 M=0.333 N=2)
<sp>
</literal>



<para>
The easiest approach to take for a SPICE model is the same as for a data sheet: consult the manufacturer's web site. Table<ref>diodespice2.tbl below</ref> lists the model parameters for some selected diodes. A fallback strategy is to build a SPICE model from those parameters listed on the data sheet.  A third strategy, not considered here, is to take measurements of an actual device. Then,  calculate, compare  and adjust the SPICE parameters to the measurements.
</para>



<table>diodespice.tbl<caption>Diode SPICE parameters</caption>

<tabular>{|l|l|p{2.0in}|l|l|}
<hr>

<tr>
<th>Symbol</th><th>Name</th><th>Parameter</th><th>Units</th><th>Default</th>
</tr>
<hr>
<tr>
<td>I<subscript>S</subscript></td><td>IS</td><td>Saturation current (diode equation)</td><td>A</td><td>1E-14</td>
</tr>
<tr>
<td>R<subscript>S</subscript></td><td>RS</td><td>Parsitic resistance (series resistance)</td><td><OMEGA></td><td>0</td>
</tr>
<tr>
<td>n</td><td>N</td><td>Emission coefficient, 1 to 2</td><td>-</td><td>1</td>
</tr>
<tr>
<td><tau><subscript>D</subscript></td><td>TT</td><td>Transit time</td><td>s</td><td>0</td>
</tr>
<tr>
<td>C<subscript>D</subscript>(0)</td><td>CJO</td><td>Zero-bias junction capacitance</td><td>F</td><td>0</td>
</tr>
<tr>
<td><phi><subscript>0</subscript></td><td>VJ</td><td>Junction potential</td><td>V</td><td>1</td>
</tr>

<tr>
<td>m</td><td>M</td><td>Junction grading coefficient</td><td>-</td><td>0.5</td>
</tr>

<tr>
<td>-</td><td>-</td><td><sp><sp><sp><sp>0.33 for linearly graded  junction</td><td>-</td><td>-</td>
</tr>


<tr>
<td>-</td><td>-</td><td><sp><sp><sp><sp>0.5 for abrupt junction</td><td>-</td><td>-</td>
</tr>

<tr>
<td>E<subscript>g</subscript></td><td>EG</td><td>Activation energy:</td><td>eV</td><td>1.11</td>
</tr>
<tr>
<td>-</td><td>-</td><td><sp><sp><sp><sp>Si: 1.11</td><td>-</td><td>-</td>
</tr>
<tr>
<td>-</td><td>-</td><td><sp><sp><sp><sp>Ge: 0.67</td><td>-</td><td>-</td>
</tr>
<tr>
<td>-</td><td>-</td><td><sp><sp><sp><sp>Schottky: 0.69</td><td>-</td><td>-</td>
</tr>
<tr>
<td>p<subscript>i</subscript></td><td>XTI</td><td>IS temperature exponent</td><td>-</td><td>3.0</td>
</tr>
<tr>
<td>-</td><td>-</td><td><sp><sp><sp><sp>pn junction: 3.0</td><td>-</td><td>-</td>
</tr>
<tr>
<td>-</td><td>-</td><td><sp><sp><sp><sp>Schottky: 2.0</td><td>-</td><td>-</td>
</tr>
<tr>
<td>k<subscript>f</subscript></td><td>KF</td><td>Flicker noise coefficient</td><td>-</td><td>0</td>
</tr>
<tr>
<td>a<subscript>f</subscript></td><td>AF</td><td>Flicker noise exponent</td><td>-</td><td>1</td>
</tr>
<tr>
<td>FC</td><td>FC</td><td>Forward bias depletion capacitance coefficient</td><td>-</td><td>0.5</td>
</tr>
<tr>
<td>BV</td><td>BV</td><td>Reverse breakdown voltage</td><td>V</td><td><infinity></td>
</tr>
<tr>
<td>IBV</td><td>IBV</td><td>Reverse breakdown current</td><td>A</td><td>1E-3</td>
</tr>

<hr>
</tabular>
</table>


<para>
If diode parameters are not specified as in ``Example'' model  above, the parameters take on the default values listed in Table<ref>diodespice.tbl above</ref> 
<comment>split for double ref</comment>
 and Table<ref>diodespice2.tbl below</ref>. These defaults model integrated circuit diodes.  These are certainly adequate for preliminary work with discrete devices
<comment>split for double ref</comment>
 For more critical work, use SPICE models supplied by the manufacturer <cite>DIn</cite>,  
<comment>split for double ref</comment>
 SPICE vendors, and other sources. <cite>smi</cite>  
</para>


<table>diodespice2.tbl<caption>SPICE parameters for selected diodes; sk=schottky Ge=germanium; else silicon.</caption>

<tabular>{|p{0.7in}|l|l|l|l|l|l|p{0.2in}|l|p{0.25in}|l|p{0.25in}|}
<hr>

<tr>
<th>Part</th><th>IS</th><th>RS</th><th>N</th><th>TT</th><th>CJO</th><th>M</th><th>VJ</th><th>EG</th><th>XTI</th><th>BV</th><th>IBV</th>
</tr>
<hr>

<tr>
<td>Default</td><td>1E-14</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0.5</td><td>1</td><td>1.11</td><td>3</td><td><infinity></td><td>1m</td>
</tr>

<tr>
<td>1N5711 sk</td><td>315n</td><td>2.8</td><td>2.03</td><td>1.44n</td><td>2.00p</td><td>0.333</td><td>-</td><td>0.69</td><td>2</td><td>70</td><td>10u</td>
</tr>


<tr>
<td>1N5712 sk</td><td>680p</td><td>12</td><td>1.003</td><td>50p</td><td>1.0p</td><td>0.5</td><td>0.6</td><td>0.69</td><td>2</td><td>20</td><td>-</td>
</tr>

<tr>
<td>1N34 Ge</td><td>200p</td><td>84m</td><td>2.19</td><td>144n</td><td>4.82p</td><td>0.333</td><td>0.75</td><td>0.67</td><td>-</td><td>60</td><td>15u</td>
</tr>

<tr>
<td>1N4148</td><td>35p</td><td>64m</td><td>1.24</td><td>5.0n</td><td>4.0p</td><td>0.285</td><td>0.6</td><td>-</td><td>-</td><td>75</td><td>-</td>
</tr>

<tr>
<td>1N3891</td><td>63n</td><td>9.6m</td><td>2</td><td>110n</td><td>114p</td><td>0.255</td><td>0.6</td><td>-</td><td>-</td><td>250</td><td>-</td>
</tr>

<tr>
<td>10A04 10A </td><td>844n</td><td>2.06m</td><td>2.06</td><td>4.32u</td><td>277p</td><td>0.333</td><td>-</td><td>-</td><td>-</td><td>400</td><td>10u</td>
</tr>

<tr>
<td>1N4004 1A</td><td>76.9n</td><td>42.2m</td><td>1.45</td><td>4.32u</td><td>39.8p</td><td>0.333</td><td>-</td><td>-</td><td>-</td><td>400</td><td>5u</td>
</tr>

<tr>
<td>1N4004 data sheet</td><td>18.8n</td><td>-</td><td>2</td><td>-</td><td>30p</td><td>0.333</td><td>-</td><td>-</td><td>-</td><td>400</td><td>5u</td>
</tr>

<hr>
</tabular>
</table>


<para>
Otherwise, derive some of the  parameters from the data sheet. First select a value for spice parameter N between 1 and 2.  It is required for the diode equation (n). Massobrio <cite>PAGM</cite> pp 9, recommends ".. n, the emission coefficient is usually about 2." 
<comment>split for double ref</comment>
In Table<ref>diodespice2.tbl above</ref>, we see that power rectifiers 1N3891 (12 A), and 10A04 (10 A) both use about 2. The first four in the table are not relevant because they are schottky, schottky, germanium, and silicon small signal, respectively. 
The saturation current, IS,  is derived from the diode equation, a value of (V<subscript>D</subscript>, I<subscript>D</subscript>) on the graph in Figure<ref>03467.png above</ref>, and N=2 (n in the diode equation). 
</para>
<bigspace>

<literal>
<sp>     I<subscript>D</subscript> = <math> I<subscript2>S</subscript2>(e<superscript2>V<subscript2>D</subscript2>/nV<subscript2>T</subscript2></superscript2> -1)</math>
<sp>
<sp>     V<subscript>T</subscript> = 26 mV at 25<superscript>o</superscript>C       n = 2.0    V<subscript>D</subscript> = 0.925 V at 1 A from graph   
<sp>
<sp>     1 A = <math> I<subscript2>S</subscript2>(e<superscript2>(0.925 V)/(2)(26 mV)</superscript2> -1)</math>
<sp>
<sp>     I<subscript>S</subscript> =  18.8E-9 
<sp>
<sp>
</literal>

<para>
The numerical values of IS=18.8n and N=2 are entered in last line of            Table<ref>diodespice2.tbl above</ref> for comparison to the manufacturers model for 1N4004, which is considerably different. RS defaults to 0 for now. It will be estimated later. The important DC static parameters are N, IS, and RS.
</para>

<para>
Rashid <cite>MHR</cite> suggests that TT, <tau><subscript>D</subscript>, the transit time, be approximated from the reverse recovery stored charge Q<subscript>RR</subscript>, a data sheet parameter (not available on our data sheet) and I<subscript>F</subscript>, forward current.
</para>
<bigspace>

<literal>
<sp>     I<subscript>D</subscript> = <math> I<subscript2>S</subscript2>(e<superscript2>V<subscript2>D</subscript2>/nV<subscript2>T</subscript2></superscript2> -1)</math>
<sp>
<sp>     <tau><subscript>D</subscript> =  Q<subscript>RR</subscript>/I<subscript>F</subscript>  
<sp>
</literal>

<para>
We take the TT=0 default for lack of Q<subscript>RR</subscript>. Though it would be reasonable to take TT for a similar rectifier like the 10A04 at 4.32u. The 1N3891 TT is not a valid choice because it is a fast recovery rectifier.  CJO, the zero bias junction capacitance is estimated from the V<subscript>R</subscript> vs C<subscript>J</subscript> graph in Figure<ref>03467.png above</ref>. The capacitance at the nearest to zero voltage on the graph is 30 pF at 1 V. If simulating high speed transient response, as in switching regulator power supplies, TT and CJO parameters must be provided.
</para>


<para>
The junction grading coefficient M is related to the doping profile of the junction. This is not a data sheet item. The default is 0.5 for an abrupt junction. We opt for M=0.333 corresponding to a linearly graded junction. The power rectifiers in Table<ref>diodespice2.tbl above</ref> use lower values for M than 0.5.
</para>

<para>
We take the default values for VJ and EG. Many more diodes use VJ=0.6 than shown in Table<ref>diodespice2.tbl above</ref>. However the  10A04 rectifier uses the default, which we use for our 1N4004 model (Da1N4001 in
<comment>split for double ref</comment>
Table<ref>diodespice.tbl above</ref>). 
<comment>split for double ref</comment>
Use the default EG=1.11 for silicon diodes and rectifiers. Table<ref>diodespice.tbl above</ref> lists values for schottky and germanium diodes.
<comment>split for double ref</comment>
Take the XTI=3, the default IS temperature coefficient for silicon devices. See Table<ref>diodespice.tbl above</ref> for XTI for schottky diodes.
</para>


<para>
The abbreviated data sheet, Figure<ref>03467.png above</ref>, lists I<subscript>R</subscript> = 5 <mu>A @ V<subscript>R</subscript> = 400 V, corresponding to IBV=5u and BV=400 respectively. 
<comment>split for double ref</comment>
The 1n4004 SPICE parameters derived from the data sheet are listed in the last line of Table<ref>diodespice2.tbl above</ref>  for comparison to the manufacturer's model listed above it. BV is only necessary if the simulation exceeds the reverse breakdown voltage of the diode, as is the case for zener diodes. IBV, reverse breakdown current, is frequently omitted, but may be entered if provided with BV.
</para>


<para>
Figure<ref>03468.png below</ref> shows a circuit to compare the manufacturers model, the model derived from the datasheet, and the default model using default parameters. The three dummy  0 V sources are necessary for diode current measurement. The 1 V source is swept from 0 to 1.4 V in 0.2 mV steps. 
<comment>split for double ref</comment>
See .DC statement in the netlist in Table<ref>03468.tbl below</ref>. DI1N4004 is the manufacturer's diode model, Da1N4004 is our derived diode model.
</para>

<image>03468.png<caption>SPICE circuit for comparison of manufacturer model (D1), calculated datasheet model (D2), and default model (D3).</caption></image>

<table>03468.tbl<caption>SPICE netlist parameters: (D1) DI1N4004 manufacturer's model, (D2) Da1N40004  datasheet derived, (D3)  default diode model.</caption>
<literal>
*SPICE circuit <03468.eps> from XCircuit v3.20
D1 1 5 DI1N4004
V1 5 0 0
D2 1 3 Da1N4004
V2 3 0 0
D3 1 4 Default
V3 4 0 0
V4 1 0 1
.DC V4 0 1400mV 0.2m
.model Da1N4004 D (IS=18.8n RS=0      BV=400 IBV=5.00u CJO=30
+M=0.333   N=2.0  TT=0)
.MODEL DI1N4004 D (IS=76.9n RS=42.0m  BV=400 IBV=5.00u CJO=39.8p
+M=0.333 N=1.45 TT=4.32u)
.MODEL Default D
.end
</literal>
</table>


<para>
We compare the three models in Figure<ref>23037.png below</ref>.
<comment>split for double ref</comment>
 and to the datasheet graph data in Table<ref>diodespice3.tbl below</ref>.
VD is the diode voltage versus the diode currents for the manufacturer's model, our calculated datasheet model and the default diode model. The last column ``1N4004 graph'' is from the datasheet 
<comment>split for double ref</comment>
voltage versus current curve in Figure<ref>03467.png above</ref> which we attempt to match. Comparison of the currents for the three model to the last column shows that the default model is good at low currents, the manufacturer's model is good at high currents, and our calculated datasheet model is best of all up to 1 A. Agreement is almost perfect at 1 A because the IS calculation is based on diode voltage at 1 A. Our model grossly over states current above 1 A.
</para>

<image>23037.png<caption>First trial of manufacturer model, calculated datasheet model, and default model.</caption></image>

<table>diodespice3.tbl<caption>Comparison of manufacturer model, calculated datasheet model, and default model to 1N4004 datasheet graph of V vs I.</caption>
<literal>
<sp>
<sp>                    model        model       model      1N4004
index    VD         manufacturer   datasheet    default      graph
3500  7.000000e-01  1.612924e+00  1.416211e-02  5.674683e-03  0.01
4001  8.002000e-01  3.346832e+00  9.825960e-02  2.731709e-01  0.13
4500  9.000000e-01  5.310740e+00  6.764928e-01  1.294824e+01  0.7
4625  9.250000e-01  5.823654e+00  1.096870e+00  3.404037e+01  1.0
5000  1.000000e-00  7.395953e+00  4.675526e+00  6.185078e+02  2.0
5500  1.100000e+00  9.548779e+00  3.231452e+01  2.954471e+04  3.3
6000  1.200000e+00  1.174489e+01  2.233392e+02  1.411283e+06  5.3
6500  1.300000e+00  1.397087e+01  1.543591e+03  6.741379e+07  8.0
7000  1.400000e+00  1.621861e+01  1.066840e+04  3.220203e+09 12.0 
</literal>
</table>

<para>
The solution is to increase RS from  the default RS=0. Changing RS from 0 to 8m in the datasheet model causes the  curve to intersect  10 A (not shown) at the same voltage as the manufacturer's model. Increasing RS to 28.6m shifts the curve further to the right as shown in Figure<ref>23038.png below</ref>. This has the effect of more closely matching our datasheet model 
<comment>split for double ref</comment>
to the datasheet graph (Figure<ref>03467.png above</ref>).  
<comment>split for double ref</comment>
Table<ref>diodespice4.tbl below</ref>  shows that the current  1.224470e+01 A at 1.4 V matches the graph at 12 A.  However, the current at 0.925 V has degraded from 1.096870e+00 above to 7.318536e-01.
</para>

<image>23038.png<caption>Second trial to improve calculated datasheet model compared with manufacturer model and default model.</caption></image>

<table>diodespice4.tbl<caption>Changing Da1N4004 model statement RS=0 to RS=28.6m decreases the current at VD=1.4 V to 12.2 A.</caption>
<literal>
.model Da1N4004 D (IS=18.8n RS=28.6m  BV=400 IBV=5.00u CJO=30
+M=0.333   N=2.0  TT=0)
<sp>                       model            model           1N4001
index      VD           manufacturer     datasheet        graph
3505    7.010000e-01    1.628276e+00    1.432463e-02      0.01
4000    8.000000e-01    3.343072e+00    9.297594e-02      0.13
4500    9.000000e-01    5.310740e+00    5.102139e-01      0.7
4625    9.250000e-01    5.823654e+00    7.318536e-01      1.0
5000    1.000000e-00    7.395953e+00    1.763520e+00      2.0
5500    1.100000e+00    9.548779e+00    3.848553e+00      3.3
6000    1.200000e+00    1.174489e+01    6.419621e+00      5.3
6500    1.300000e+00    1.397087e+01    9.254581e+00      8.0
7000    1.400000e+00    1.621861e+01    1.224470e+01     12.
</literal>
</table>

<para>
Suggested reader exercise: decrease N so that the current at VD=0.925 V is restored to 1 A. This may increase the current (12.2 A) at VD=1.4 V requiring an increase of RS to decrease current to 12 A. 
</para>

<para>
<bold>Zener diode:</bold> There are two approaches to modeling a zener diode: set the BV parameter to the zener voltage in the model statement, or model the zener with a subcircuit containing a diode clamper set  to the zener voltage. An example of the first approach sets the breakdown voltage BV to 15  for the 1n4469 15 V zener diode model (IBV optional):
</para>

<literal>
<sp>
.model D1N4469 D ( BV=15 IBV=17m )
<sp>
</literal>

<para>
The second approach models the zener with a subcircuit. Clamper D1 and VZ in  Figure<ref>03470.png below</ref> models the 15 V reverse breakdown voltage of a 1N4477A zener diode. Diode DR accounts for the forward conduction of the zener in the subcircuit.
</para>

<figure>
<htmlo><label>03470.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03470.png</imagenf></td><td></td><td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
.SUBCKT DI-1N4744A 1 2
* Terminals A K
D1 1 2 DF
DZ 3 1 DR
VZ 2 3 13.7
.MODEL DF D ( IS=27.5p RS=0.620 N=1.10
+ CJO=78.3p VJ=1.00 M=0.330 TT=50.1n )
.MODEL DR D ( IS=5.49f RS=0.804 N=1.77 )
.ENDS
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Zener diode subcircuit uses clamper (D1 and VZ) to model zener.</caption>
<tex><label>03470.png</label></tex>
</figure>


<para>
<bold>Tunnel diode:</bold> A tunnel diode may be modeled by a pair of field effect transistors (JFET) in a SPICE subcircuit.  <cite>KHM</cite> An oscillator circuit is also shown in this reference.
</para>

<para>
<bold>Gunn diode:</bold> A Gunn diode may also  be modeled by a pair of JFET's.  <cite>ISG</cite> This reference shows a microwave relaxation oscillator.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Diodes are described in SPICE by a diode component statement referring to .model statement. The .model statement contains parameters describing the diode. If parameters are not provided, the model takes on default values.</item>
<item>Static DC parameters include N, IS, and RS. Reverse breakdown parameters: BV, IBV.</item>
<item>Accurate dynamic timing requires TT and CJO parameters</item>
<item>Models provided by the manufacturer are highly recommended.</item>
</itemize>

</section>



<section>
<sectiontitle*>Contributors</sectiontitle*>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Jered Wierzbicki</bold> (December 2002): Pointed out error in diode equation -- Boltzmann's constant shown incorrectly.
</para>

</section>



<thebibliography>
<bibitem>[PAGM]  Paolo Antognetti, Giuseppe Massobrio ``Semiconductor Device Modeling with SPICE,'' ISBN 0-07-002107-4, 1988</bibitem> 

<bibitem>[ATCO]ATCO Newsletter, Volume 14 No. 1, January 1997  at <url>http://www.atco.tv/homepage/vol14_1.pdf[http://www.atco.tv/homepage/vol14_1.pdf]</url></bibitem> 

<bibitem>[ABR]D.A. Brunner, et al,, ``A Cockcroft-Walton Base for the FEU84-3 Photomultiplier Tube,'' Department of Physics, Indiana University, Bloomington, Indiana 47405 January 1998,   at <url>http://dustbunny.physics.indiana.edu/~paul/cwbase/[http://dustbunny.physics.indiana.edu/~paul/cwbase/]</url></bibitem> 

<bibitem>[BRB]Brenton Burnet, ``The Basic Physics and Design of III-V Multijunction Solar,'' NREL, at <url>photochemistry.epfl.ch/EDEY/NREL.pdf[photochemistry.epfl.ch/EDEY/NREL.pdf]</url></bibitem> 

<bibitem>[DIn] Diodes Incorporated <url>http://www.diodes.com/products/spicemodels/index.php[http://www.diodes.com/products/spicemodels/index.php]</url></bibitem> 

<bibitem>[DI4] Diodes Incorporated, ``1N4001/L - 1N4007/l, 1.0A rectifier,'' at <url>http://www.diodes.com/datasheets/ds28002.pdf[http://www.diodes.com/datasheets/ds28002.pdf]</url></bibitem> 

<bibitem>[EET] ``Solar firm gains $30 million in funding,'' EE Times, 07/12/2007 at <url>http://www.eetimes.com/news/latest/showArticle.jhtml?articleID=201001129[http://www.eetimes.com/news/latest/showArticle.jhtml?articleID=201001129]</url></bibitem>

<bibitem>[CHS] Christiana Honsberg, Stuart Bowden, ``Photovoltaics CDROM,'' at <url> http://www.udel.edu/igert/pvcdrom/[http://www.udel.edu/igert/pvcdrom/]</url></bibitem> 

<bibitem>[RRK]R. R. King, et. al., ``40% efficient metamorphic GaInP/GaInAs/Ge multijunction solar cells'',  Applied Physics Letters, 90, 183516 (2007) , at <url>http://scitation.aip.org/getabs/servlet/GetabsServlet?prog=normal&id=APPLAB000090000018183516000001&idtype=cvips&gifs=yes[http://scitation.aip.org<allowbreak>/getabs/servlet/GetabsServlet?<allowbreak>prog=normal&<allowbreak>id=APPLAB000090000018183516000001<allowbreak>&idtype=cvips&gifs=yes]</url></bibitem> 


<bibitem>[KWM]Kim W Mitchell, ``Method of making a thin film cadmium telluride solar cell,'' United States Patent 4734381,<url>http://www.freepatentsonline.com/4734381.html[http://www.freepatentsonline.com/4734381.html]</url></bibitem> 

<bibitem>[KHM] Karl H. Muller ``RF/Microwave Analysis'' Intusoft Newsletter #51, November 1997, at <url>http://www.intusoft.com/nlhtm/nl51.htm[http://www.intusoft.com/nlhtm/nl51.htm]</url></bibitem> 

<bibitem>[ISG]  ``A Gunn Diode Relaxation Oscillator,'' Intusoft Newsletter #52, February 1998, at <url>http://www.intusoft.com/nlhtm/nl52.htm[http://www.intusoft.com/nlhtm/nl52.htm]</url></bibitem> 

<bibitem>[OAK]OAK Solar., ``Technical LED's LED color chart,''  at <url>http://www.oksolar.com/led/led_color_chart.htm[http://www.oksolar.com/led/led_color_chart.htm]</url></bibitem> 

<bibitem>[IAP]Ian Poole, ``Summary of the Gunn Diode,''  at <url>,http://www.radio-electronics.com/info/data/semicond/gunndiode/gunndiode.php [http://www.radio-electronics.com/<allowbreak>nfo/data/semicond/gunndiode/gunndiode.php]</url></bibitem> 

<bibitem>[MHR] Muhammad H. Rashid,  ``SPICE for Power Electronics and Electric Power,'' ISBN 0-13-030420-4, 1993</bibitem> 

<bibitem>[smi]  ``SPICE model index,'' V2.16 30-Nov-05, at <url>http://homepages.which.net/~paul.hills/Circuits/Spice/ModelIndex.html[http://homepages.which.net/<allowbreak>~paul.hills/Circuits/Spice/ModelIndex.html]</url></bibitem> 

<bibitem>[NTH] Neil Thomas,  ``Advancing CIGS Solar Cell Manufacturing Technology,''  April 6, 2007 at <url>http://www.renewableenergyaccess.com/rea/news/story?id=48033&src=rss[http://www.renewableenergyaccess.com/rea/news/story?id=48033&src=rss]</url></bibitem> 

<bibitem>[VSW]P.J. Verlinden, Sinton, K. Wickham, R.M. Swanson Crane, ``BACKSIDE-CONTACT SILICON SOLAR CELLS WITH IMPROVED EFFICIENCY.'' at <url>http://www.sunpowercorp.com/techpapers/EPSEC97.pdf[http://www.sunpowercorp.com/techpapers/EPSEC97.pdf]</url></bibitem> 

<bibitem>[CHW] Christian Wolff, ``Radar Principles,'' Radar components, Gunn diodes at   at <url>http://www.radartutorial.eu/17.bauteile/bt12.en.htm[http://www.radartutorial.eu/17.bauteile/bt12.en.htm]</url></bibitem> 

<bibitem>[YMCW]L. Yuan, M. R. Melloch, J. A. Cooper, K. J. Webb,``Silicon Carbide IMPATT Oscillators for High-Power Microwave and Millimeter-Wave Generation,'' IEEE/Cornell Conference on Advanced Concepts in High Speed Semiconductor Devices and Circuits, Ithaca, NY, August 7-9, 2000. at <url>http://www.ecn.purdue.edu/WBG/Device_Research/IMPATT_Diodes/Index.html[http://www.ecn.purdue.edu/WBG/Device_Research/IMPATT_Diodes/Index.html]</url></bibitem> 

<bibitem>[SZL] Alan Seabaugh, Zhaoming HU, Qingmin LIU, David Rink, Jinli Wang,  ``Silicon Based Tunnel Diodes and Integrated Circuits,''  at <url>http://www.nd.edu/~nano/0a1003QFDpaper_v1.pdf[http://www.nd.edu/~nano/0a1003QFDpaper_v1.pdf]</url></bibitem> 

<bibitem>[SGG]  S. M. Sze, G. Gibbons, ``Avalanche breakdown voltages of abrupt and linearly graded p-n junctions in Ge, Si, GaAs, and Ga P,'' Appl. Phys. Lett., 8, 111 (1966).</bibitem> 

<bibitem>[LZy] Lisa Zyga,  ``40% efficient solar cells to be used for solar electricity'', PhysOrgForum, at <url>http://www.physorg.com/news99904887.html[http://www.physorg.com/news99904887.html]</url></bibitem> 

</thebibliography>




<comment>was 36 pages</comment>


</chapter>

<pagebreak>

