
<chapter>
<chaptertitle>THYRISTORS</chaptertitle>


<section>
<sectiontitle>Hysteresis</sectiontitle>
<proofread>

<para>
Thyristors are a class of semiconductor components exhibiting <italic>hysteresis</italic>, that property whereby a system fails to return to its original state after some cause of state change has been removed.  A very simple example of hysteresis is the mechanical action of a toggle switch: when the lever is pushed, it flips to one of two extreme states (positions) and will remain there even after the source of motion is removed (after you remove your hand from the switch lever).  To illustrate the absence of hysteresis, consider the action of a "momentary" pushbutton switch, which returns to its original state after the button is no longer pressed: when the stimulus is removed (your hand), the system (switch) immediately and fully returns to its prior state with no "latching" behavior.
</para>

<para>
Bipolar, junction field-effect, and insulated gate field-effect transistors are all non-hysteric devices.  That is, these do not inherently "latch" into a state after being stimulated by a voltage or current signal.  For any given input signal at any given time, a transistor will exhibit a predictable output response as defined by its characteristic curve.  Thyristors, on the other hand, are semiconductor devices that tend to stay "on" once turned on, and tend to stay "off" once turned off.  A momentary event is able to flip these devices into either their on or off states where these will remain that way on their own, even after the cause of the state change is taken away.  As such, these are useful only as on/off switching devices -- much like a toggle switch -- and cannot be used as analog signal amplifiers.
</para>

<index>Positive feedback</index>
<index>Regenerative feedback</index>

<para>
Thyristors are constructed using the same technology as bipolar junction transistors, and in fact may be analyzed as circuits comprised of transistor pairs.  How then, can a hysteric device (a thyristor) be made from non-hysteric devices (transistors)?  The answer to this question is <italic>positive feedback</italic>, also known as <italic>regenerative feedback</italic>.  As you should recall, feedback is the condition where a percentage of the output signal is "fed back" to the input of an amplifying device.  Negative, or degenerative, feedback results in a diminishing of voltage gain with increases in stability, linearity, and bandwidth.  Positive feedback, on the other hand, results in a kind of instability where the amplifier's output tends to "saturate."  In the case of thyristors, this saturating tendency equates to the device "wanting" to stay on once turned on, and off once turned off.
</para>

<para>
In this chapter we will explore several different kinds of thyristors, most of which stem from a single, basic two-transistor core circuit.  Before we do that, though, it would be beneficial to study the technological predecessor to thyristors: gas discharge tubes.
</para>

</section>




<section>
<sectiontitle>Gas discharge tubes</sectiontitle>

<para>
If you've ever witnessed a lightning storm, you've seen electrical hysteresis in action (and probably didn't realize what you were seeing).  The action of strong wind and rain accumulates tremendous static electric charges between cloud and earth, and between clouds as well.  Electric charge imbalances manifest themselves as high voltages, and when the electrical resistance of air can no longer hold these high voltages at bay, huge surges of current travel between opposing poles of electrical charge which we call "lightning."
</para>

<para>
The buildup of high voltages by wind and rain is a fairly continuous process, the rate of charge accumulation increasing under the proper atmospheric conditions.  However, lightning bolts are anything but continuous: they exist as relatively brief surges rather than continuous discharges.  Why is this?  Why don't we see soft, glowing lightning <italic>arcs</italic> instead of violently brief lightning <italic>bolts</italic>?  The answer lies in the nonlinear (and hysteric) resistance of air.
</para>

<index>Plasma</index>
<index>Ionization</index>

<para>
Under ordinary conditions, air has an extremely high amount of resistance.  It is so high, in fact, that we typically treat its resistance as infinite and electrical conduction through the air as negligible.  The presence of water and  dust in air lowers its resistance some, but it is still an insulator for most practical purposes.  When enough high voltage is applied across a distance of air, though, its electrical properties change: electrons become "stripped" from their normal positions around their respective atoms and are liberated to constitute a current.  In this state, air is considered to be <italic>ionized</italic> and is called a <italic>plasma</italic> rather than a  <italic>gas</italic>.  This usage of the word "plasma" is not to be confused with the medical term (meaning the fluid portion of blood), but is a fourth state of matter, the other three being solid, liquid, and vapor (gas).  Plasma is a relatively good conductor of electricity, its specific resistance being much lower than that of the same substance in its gaseous state.
</para>

<para>
As an electric current moves through the plasma, there is energy dissipated in the plasma in the form of heat, just as current through a solid resistor dissipates energy in the form of heat.  In the case of lightning, the temperatures involved are extremely high.  High temperatures are also sufficient to convert gaseous air into a plasma or maintain plasma in that state without the presence of high voltage.  As the voltage between cloud and earth, or between cloud and cloud, decreases as the charge imbalance is neutralized by the current of the lightning bolt, the heat dissipated by the bolt maintains the air path in a plasma state, keeping its resistance low.  The lightning bolt remains a plasma until the voltage decreases to too low a level to sustain enough current to dissipate enough heat.  Finally, the air returns to a gaseous state and stops conducting current, thus allowing voltage to build up once more.
</para>

<para>
Note how throughout this cycle, the air exhibits hysteresis.  When not conducting electricity, it tends to <italic>remain an insulator</italic> until voltage builds up past a critical threshold point.  Then, once it changes state and becomes a plasma, it tends to <italic>remain a conductor</italic> until voltage falls below a lower critical threshold point.  Once "turned on" it tends to stay "on," and once "turned off" it tends to stay "off."  This hysteresis, combined with a steady buildup of voltage due to the electrostatic effects of wind and rain, explains the action of lightning as brief bursts.
</para>

<index>Relaxation oscillator</index>
<index>Oscillator, relaxation</index>

<para>
In electronic terms, what we have here in the action of lightning is a simple <italic>relaxation oscillator</italic>.  Oscillators are electronic circuits that produce an oscillating (AC) voltage from a steady supply of DC power.  A relaxation oscillator is one that works on the principle of a charging capacitor that is suddenly discharged every time its voltage reaches a critical threshold value.  One of the simplest relaxation oscillators in existence is comprised of three components (not counting the DC power supply): a resistor, capacitor, and neon lamp in  Figure<ref>03189.png below</ref>.
</para>

<image>03189.png<caption>Simple relaxation oscillator</caption></image> 

<para>
Neon lamps are nothing more than two metal electrodes inside a sealed glass bulb, separated by the neon gas inside.  At room temperatures and with no applied voltage, the lamp has nearly infinite resistance.  However, once a certain threshold voltage is exceeded (this voltage depends on the gas pressure and geometry of the lamp), the neon gas will become ionized (turned into a plasma) and its resistance dramatically reduced.  In effect, the neon lamp exhibits the same characteristics as air in a lightning storm, complete with the emission of light as a result of the discharge, albeit on a much smaller scale.
</para>

<para>
The capacitor in the relaxation oscillator circuit shown above charges at an inverse exponential rate determined by the size of the resistor.  When its voltage reaches the threshold voltage of the lamp, the lamp suddenly "turns on" and quickly discharges the capacitor to a low voltage value.  Once discharged, the lamp "turns off" and allows the capacitor to build up a charge once more.  The result is a series of brief flashes of light from the lamp, the rate of which is dictated by battery voltage, resistor resistance, capacitor capacitance, and lamp threshold voltage.
</para>

<index>Thyratron tube</index>
<index>Triode tube</index>

<para>
While gas-discharge lamps are more commonly used as sources of illumination, their hysteric properties were leveraged in slightly more sophisticated variants known as <italic>thyratron tubes</italic>.  Essentially a gas-filled triode tube (a triode being a three-element vacuum electron tube performing much a similar function to the N-channel, D-type IGFET), the thyratron tube could be turned on with a small control voltage applied between grid and cathode, and turned off by reducing the plate-to-cathode voltage.
</para>

<image>03018.png<caption>Simple thyratron control circuit</caption></image> 

<para>
In essence, thyratron tubes were <italic>controlled</italic> versions of neon lamps built specifically for switching current to a load.  The dot inside the circle of the schematic symbol indicates a gas fill, as opposed to the hard vacuum normally seen in other electron tube designs.  In the circuit shown above in Figure<ref>03018.png above</ref>. the thyratron tube allows current through the load in one direction (note the polarity across the load resistor) when triggered by the small DC control voltage connected between grid and cathode.  Note that the load's power source is AC, which provides a clue about how the thyratron turns off after its been triggered on: since AC voltage periodically passes through a condition of 0 volts between half-cycles, the current through an AC-powered load must also periodically halt.  This brief pause of current between half-cycles gives the tube's gas time to cool, letting it return to its normal "off" state.  Conduction may resume only if enough voltage is applied by the AC power source (some other time in the wave's cycle) <italic>and</italic> if the DC control voltage allows it.
</para>

<para>
An oscilloscope display of load voltage in such a circuit would look something like Figure<ref>03190.png below</ref>.
</para>

<image>03190.png<caption>Thyratron waveforms</caption></image> 

<para>
As the AC supply voltage climbs from zero volts to its first peak, the load voltage remains at zero (no load current) until the threshold voltage is reached.  At that point, the tube switches "on" and begins to conduct, the load voltage now following the AC voltage through the rest of the half cycle.  Load voltage exists (and thus load current) even when the AC voltage waveform has dropped below the threshold value of the tube.  This is hysteresis at work: the tube stays in its conductive mode past the point where it first turned on, continuing to conduct until there the supply voltage drops off to almost zero volts.  Because thyratron tubes are one-way (diode) devices, no voltage develops across the load through the negative half-cycle of AC.  In practical thyratron circuits, multiple tubes arranged in some form of full-wave rectifier circuit to facilitate full-wave DC power to the load.  
</para>

<index>Voltage-controlled oscillator</index>
<index>VCO</index>

<para>
The thyratron tube has been applied to a relaxation oscillator circuit. <cite>VTS</cite> The  frequency is controlled by a small DC voltage between grid and cathode.  (See Figure<ref>03191.png below</ref>) This  voltage-controlled oscillator is known as a <italic>VCO</italic>.  Relaxation oscillators produce a very non-sinusoidal output, and they exist mostly as demonstration circuits (as is the case here) or in applications where the harmonic rich waveform is desirable. <cite>MET</cite>
</para>

<image>03191.png<caption>Voltage controlled thyratron relaxation oscillator</caption></image> 

<para>
I speak of thyratron tubes in the past tense for good reason: modern semiconductor components have obsoleted thyratron tube technology for all but a few very special applications.  It is no coincidence that the word <italic>thyristor</italic> bears so much similarity to the word <italic>thyratron</italic>, for this class of semiconductor components does much the same thing: use <italic>hy</italic>ste<italic>r</italic>etically switch current on and off.  It is these modern devices that we now turn our attention to.
</para>


  
<itemize>
<item><bold>REVIEW:</bold></item>
<item>Electrical <italic>hysteresis</italic>, the tendency for a component to remain "on" (conducting) after it begins to conduct and to remain "off" (nonconducting) after it ceases to conduct, helps to explain why lightning bolts exist as momentary surges of current rather than continuous discharges through the air.</item>
<item>Simple gas-discharge tubes such as neon lamps exhibit electrical hysteresis.</item>
<item>More advanced gas-discharge tubes have been made with control elements so that their "turn-on" voltage could be adjusted by an external signal.  The most common of these tubes was called the <italic>thyratron</italic>.</item>
<item>Simple oscillator circuits called <italic>relaxation oscillators</italic> may be created with nothing more than a resistor-capacitor charging network and a hysteretic device connected across the capacitor.</item>
</itemize>

</section>





<hypertarget>ShockleyDiode[]</hypertarget>
<section>
<sectiontitle>The Shockley Diode</sectiontitle>

<index>Four-layer diode</index>
<index>4-layer diode</index>
<index>PNPN diode</index>
<index>Shockley diode</index>
<index>Diode, Shockley</index>
<index>Diode, PNPN</index>
<index>Diode, four-layer</index>

<para>
Our exploration of thyristors begins with a device called the <italic>four-layer diode</italic>, also known as a <italic>PNPN diode</italic>, or a <italic>Shockley diode</italic> after its inventor, William Shockley.  This is not to be confused with a <italic>Schottky diode</italic>, that two-layer metal-semiconductor device known for its high switching speed.  A crude illustration of the Shockley diode, often seen in textbooks, is a four-layer sandwich of P-N-P-N semiconductor material, Figure<ref>03192.png below</ref>.
</para>

<image>03192.png<caption>Shockley or 4-layer diode</caption></image> 

<para>
Unfortunately, this simple illustration does nothing to enlighten the viewer on how it works or why.  Consider an alternative rendering of the device's construction in Figure<ref>03193.png below</ref>.
</para>

<image>03193.png<caption>Transistor equivalent of Shockley diode</caption></image> 

<para>
Shown like this, it appears to be a set of interconnected bipolar transistors, one PNP and the other NPN.  Drawn using standard schematic symbols, and respecting the layer doping concentrations not shown in the last image, the Shockley diode looks like this (Figure<ref>03194.png below</ref>)
</para>

<image>03194.png<caption>Shockley diode: physical diagram, equivalent schematic diagram, and schematic symbol.</caption></image> 

<para>
Let's connect one of these devices to a source of variable voltage and see what happens: (Figure<ref>03195.png below</ref>)
</para>

<image>03195.png<caption>Powered Shockley diode equivalent circuit.</caption></image> 

<para>
With no voltage applied, of course there will be no current.  As voltage is initially increased, there will still be no current because neither transistor is able to turn on: both will be in cutoff mode.  To understand why this is, consider what it takes to turn a bipolar junction transistor on: current through the base-emitter junction.  As you can see in the diagram, base current through the lower transistor is controlled by the upper transistor, and the base current through the upper transistor is controlled by the lower transistor.  In other words, neither transistor can turn on until the <italic>other</italic> transistor turns on.  What we have here, in vernacular terms, is known as a Catch-22.
</para>

<para>
So how can a Shockley diode ever conduct current, if its constituent transistors stubbornly maintain themselves in a state of cutoff?  The answer lies in the behavior of <italic>real</italic> transistors as opposed to <italic>ideal</italic> transistors.  An ideal bipolar transistor will never conduct collector current if no base current flows, no matter how much or little voltage we apply between collector and emitter.  Real transistors, on the other hand, have definite limits to how much collector-emitter voltage each can withstand before one breaks down and conduct.  If two real transistors are connected in this fashion to form a Shockley diode, each one  will conduct if sufficient voltage is applied by the battery between anode and cathode to cause one of them to break down.  Once one transistor breaks down and begins to conduct, it will allow base current through the other transistor, causing it to turn on in a normal fashion, which then allows base current through the first transistor.  The end result is that both transistors will be saturated, now keeping each other turned on instead of off.
</para>

<para>
So, we can force a Shockley diode to turn on by applying sufficient voltage between anode and cathode.  As we have seen, this will inevitably cause one of the transistors to turn on, which then turns the other transistor on, ultimately "latching" both transistors on where each will tend to remain.  But how do we now get the two transistors to turn off again?  Even if the applied voltage is reduced to a point well below what it took to get the Shockley diode conducting, it will remain conducting because both transistors now have base current to maintain regular, controlled conduction.  The answer to this is to reduce the applied voltage to a much lower point where too little current flows to maintain transistor bias, at which point one of the transistors will cutoff, which then halts base current through the other transistor, sealing both transistors in the "off" state as each one was before any voltage was applied at all.
</para>

<para>
If we graph this sequence of events and plot the results on an I/V graph, the hysteresis is evident.  First, we will observe the circuit as the DC voltage source (battery) is set to zero voltage:  (Figure<ref>03196.png below</ref>)
</para>

<image>03196.png<caption>Zero applied voltage; zero current</caption></image> 

<para>
Next, we will steadily increase the DC voltage.  Current through the circuit is at or nearly at zero, as the breakdown limit has not been reached for either transistor: (Figure<ref>03197.png below</ref>)
</para>

<image>03197.png<caption>Some applied voltage; still no current</caption></image> 

<para>
When the voltage breakdown limit of one transistor is reached, it will begin to conduct collector current even though no base current has gone through it yet.  Normally, this sort of treatment would destroy a bipolar junction transistor, but the PNP junctions comprising a Shockley diode are engineered to take this kind of abuse, similar to the way a Zener diode is built to handle reverse breakdown without sustaining damage.  For the sake of illustration I'll assume the lower transistor breaks down first, sending current through the base of the upper transistor: (Figure<ref>03198.png below</ref>)
</para>

<image>03198.png<caption>More voltage applied; lower transistor breaks down</caption></image> 

<para>
As the upper transistor receives base current, it turns on as expected.  This action allows the lower transistor to conduct normally, the two transistors "sealing" themselves in the "on" state.  Full current is quickly seen in the circuit: (Figure<ref>03199.png below</ref>)
</para>

<image>03199.png<caption>Transistors are now fully conducting.</caption></image> 

<para>
The positive feedback mentioned earlier in this chapter is clearly evident here.  When one transistor breaks down, it allows current through the device structure.  This current may be viewed as the "output" signal of the device.  Once an output current is established, it works to hold both transistors in saturation, thus ensuring the continuation of a substantial output current.  In other words, an output current "feeds back" positively to the input (transistor base current) to keep both transistors in the "on" state, thus reinforcing (or <italic>regenerating</italic>) itself.
</para>

<para>
With both transistors maintained in a state of saturation with the presence of ample base current, each will continue to conduct even if the applied voltage is greatly reduced from the breakdown level.  The effect of positive feedback is to keep both transistors in a state of saturation despite the loss of input stimulus (the original, high voltage needed to break down one transistor and cause a base current through the other transistor): (Figure<ref>03200.png below</ref>)
</para>

<image>03200.png<caption>Current maintained even when voltage is reduced</caption></image> 

<para>
If the DC voltage source is turned down too far, though, the circuit will eventually reach a point where there isn't enough current to sustain both transistors in saturation.  As one transistor passes less and less collector current, it reduces the base current for the other transistor, thus reducing base current for the first transistor.  The vicious cycle continues rapidly until both transistors fall into cutoff:  (Figure<ref>03201.png below</ref>)
</para>

<image>03201.png<caption>If voltage drops too low, both transistors shut off.</caption></image> 

<para>
Here, positive feedback is again at work: the fact that the cause/effect cycle between both transistors is "vicious" (a decrease in current through one works to decrease current through the other, further decreasing current through the first transistor) indicates a positive relationship between output (controlled current) and input (controlling current through the transistors' bases).
</para>

<para>
The resulting curve on the graph is classically hysteretic: as the input signal (voltage) is increased and decreased, the output (current) does not follow the same path going down as it did going up:  (Figure<ref>03202.png below</ref>)
</para>

<image>03202.png<caption>Hysteretic curve</caption></image> 

<para>
Put in simple terms, the Shockley diode tends to stay on once its turned on, and stay off once its turned off.   No "in-between" or "active" mode in its operation: it is a purely on or off device, as are all thyristors.
</para>

<index>Latching, thyristor</index>
<index>Firing, thyristor</index>
<index>Breakover, thyristor</index>
<index>Breakdown, transistor</index>
<index>Dropout, thyristor</index>

<para>
A few special terms apply to Shockley diodes and all other thyristor devices built upon the Shockley diode foundation.  First is the term used to describe its "on" state: <italic>latched</italic>.  The word "latch" is reminiscent of a door lock mechanism, which tends to keep the door closed once it has been pushed shut.  The term <italic>firing</italic> refers to the initiation of a latched state.  To get a Shockley diode to latch, the applied voltage must be increased until <italic>breakover</italic> is attained.  Though this action is best described as transistor break<italic>down</italic>, the term break<italic>over</italic> is used instead because the result is a pair of transistors in mutual saturation rather than destruction of the transistor.  A latched Shockley diode is re-set back into its nonconducting state by reducing current through it until <italic>low-current dropout</italic> occurs.
</para>

<para>
Note that Shockley diodes may be fired in a way other than breakover: excessive <italic>voltage rise</italic>, or <italic>dv/dt</italic>.  If the applied voltage across the diode increases at a high rate of change, it may trigger.  This is able to cause latching (turning on) of the diode due to inherent junction capacitances within the transistors.  Capacitors, as you may recall, oppose <italic>changes</italic> in voltage by drawing or supplying current.  If the applied voltage across a Shockley diode rises at too fast a rate, those tiny capacitances will draw enough current during that time to activate the transistor pair, turning them both on.  Usually, this form of latching is undesirable, and can be minimized by filtering high-frequency (fast voltage rises) from the diode with series inductors and parallel resistor-capacitor networks called <italic>snubbers</italic>:  (Figure<ref>03203.png below</ref>)
</para>

<image>03203.png<caption>Both the series inductor and parallel resistor-capacitor ``snubber'' circuit help minimize the Shockley diode's exposure to excessively rising voltage.</caption></image> 

<index>Critical rate of voltage rise</index>
<index>Voltage rise, critical rate of</index>

<para>
The voltage rise limit of a Shockley diode is referred to as the <italic>critical rate of voltage rise</italic>.  Manufacturers usually provide this specification for the devices they sell.
</para>
 
<itemize>
<item><bold>REVIEW:</bold></item>
<item>Shockley diodes are four-layer PNPN semiconductor devices.  These behave as a pair of interconnected PNP and NPN transistors.</item>
<item>Like all thyristors, Shockley diodes tend to stay on once turned on (<italic>latched</italic>), and stay off once turned off.</item>
<item>To latch a Shockley diode exceed the anode-to-cathode <italic>breakover</italic> voltage, or exceed the anode-to-cathode <italic>critical rate of voltage rise</italic>.</item>
<item>To cause a Shockley diode to stop conducting,  reduce the current going through it to a level below its <italic>low-current dropout</italic> threshold.</item>
</itemize>

</section>






<hypertarget>DIAClnk[]</hypertarget>
<section>
<sectiontitle>The DIAC</sectiontitle>

<index>DIAC</index>

<para>
Like all diodes, Shockley diodes are unidirectional devices; that is, these only conduct current in one direction.  If bidirectional (AC) operation is desired, two Shockley diodes may be joined in parallel facing different directions to form a new kind of thyristor, the <italic>DIAC</italic>:  (Figure<ref>03204.png below</ref>)
</para>

<image>03204.png<caption>The DIAC</caption></image> 

<para>
A DIAC operated with a DC voltage across it behaves exactly the same as a Shockley diode.  With AC, however, the behavior is different from what one might expect.  Because alternating current repeatedly reverses direction, DIACs will not stay latched longer than one-half cycle.  If a DIAC becomes latched, it will continue to conduct current only as long as voltage is available to push enough current in that direction.  When the AC polarity reverses, as it must twice per cycle, the DIAC will drop out due to insufficient current, necessitating another breakover before it conducts again.  The result is the current waveform in Figure<ref>03205.png below</ref>.
</para>

<image>03205.png<caption>DIAC waveforms</caption></image> 

<para>
DIACs are almost never used alone, but in conjunction with other thyristor devices.
</para>

</section>




<section>
<sectiontitle>The Silicon-Controlled Rectifier (SCR)</sectiontitle>

<index>Silicon-controlled rectifier</index>
<index>SCR</index>

<para>
Shockley diodes are curious devices, but rather limited in application.  Their usefulness may be expanded, however, by equipping them with another means of latching.  In doing so, each becomes true amplifying devices (if only in an on/off mode), and we refer to these as <italic>silicon-controlled rectifiers</italic>, or <italic>SCR</italic>s.
</para>

<para>
The progression from Shockley diode to SCR is achieved with one small addition, actually nothing more than a third wire connection to the existing PNPN structure:  (Figure<ref>03206.png below</ref>)
</para>

<image>03206.png<caption>The Silicon-Controlled Rectifier (SCR)</caption></image> 

<index>Floating</index>
<index>Critical rate of voltage rise</index>
<index>Voltage rise, critical rate of</index>

<para>
If an SCR's gate is left <italic>floating</italic> (disconnected), it behaves exactly as a Shockley diode.  It may be latched by breakover voltage or by exceeding the critical rate of voltage rise between anode and cathode, just as with the Shockley diode.  Dropout is accomplished by reducing current until one or both internal transistors fall into cutoff mode, also like the Shockley diode.  However, because the gate terminal connects directly to the base of the lower transistor, it may be used as an alternative means to latch the SCR.  By applying a small voltage between gate and cathode, the lower transistor will be forced <italic>on</italic> by the resulting base current, which will cause the upper transistor to conduct, which then supplies the lower transistor's base with current so that it no longer needs to be activated by a gate voltage.  The necessary gate current to initiate latch-up, of course, will be much lower than the current through the SCR from cathode to anode, so the SCR does achieve a measure of amplification.
</para>

<para>
This method of securing SCR conduction is called <italic>triggering</italic>, and it is by far the most common way that SCRs are latched in actual practice.  In fact, SCRs are usually chosen so that their breakover voltage is far beyond the greatest voltage expected to be experienced from the power source, so that it can be turned on <italic>only</italic> by an intentional voltage pulse applied to the gate.
</para>

<index>Gate-Turn-Off thyristor</index>
<index>Gate-Controlled Switch</index>
<index>GTO</index>
<index>GCS</index>

<para>
It should be mentioned that SCRs may <italic>sometimes</italic> be turned off by directly shorting their gate and cathode terminals together, or by "reverse-triggering" the gate with a negative voltage (in reference to the cathode), so that the lower transistor is forced into cutoff.  I say this is "sometimes" possible because it involves shunting all of the upper transistor's collector current past the lower transistor's base.  This current may be substantial, making triggered shut-off of an SCR difficult at best.  A variation of the SCR, called a <italic>Gate-Turn-Off</italic> thyristor, or <italic>GTO</italic>, makes this task easier.  But even with a GTO, the gate current required to turn it off may be as much as 20% of the anode (load) current!  The schematic symbol for a GTO is shown in the following illustration:  (Figure<ref>03276.png below</ref>)
</para>

<image>03276.png<caption>The Gate Turn-Off thyristor (GTO)</caption></image> 

<para>
SCRs and GTOs share the same equivalent schematics (two transistors connected in a positive-feedback fashion), the only differences being details of construction designed to grant the NPN transistor a greater <beta> than the PNP.  This allows a smaller gate current (forward or reverse) to exert a greater degree of control over conduction from cathode to anode, with the PNP transistor's latched state being more dependent upon the NPN's than vice versa.  The Gate-Turn-Off thyristor is also known by the name of <italic>Gate-Controlled Switch</italic>, or <italic>GCS</italic>.
</para>

<para>
A rudimentary test of SCR function, or at least terminal identification, may be performed with an ohmmeter.  Because the internal connection between gate and cathode is a single PN junction, a meter should indicate continuity between these terminals with the red test lead on the gate and the black test lead on the cathode like this:  (Figure<ref>03207.png below</ref>)
</para>

<image>03207.png<caption>Rudimentary test of SCR</caption></image> 

<para>
All other continuity measurements performed on an SCR will show "open" ("OL" on some digital multimeter displays).  It must be understood that this test is very crude and does <italic>not</italic> constitute a comprehensive assessment of the SCR.  It is possible for an SCR to give good ohmmeter indications and still be defective.  Ultimately, the only way to test an SCR is to subject it to a load current.
</para>

<para>
If you are using a multimeter with a "diode check" function, the gate-to-cathode junction voltage indication you get may or may not correspond to what's expected of a silicon PN junction (approximately 0.7 volts).  In some cases, you will read a much lower junction voltage: mere hundredths of a volt.  This is due to an internal resistor connected between the gate and cathode incorporated within some SCRs.  This resistor is added to make the SCR less susceptible to false triggering by spurious voltage spikes, from circuit "noise" or from static electric discharge.  In other words, having a resistor connected across the gate-cathode junction requires that a <italic>strong</italic> triggering signal (substantial current) be applied to latch the SCR.  This feature is often found in larger SCRs, not on small SCRs.  Bear in mind that an SCR with an internal resistor connected between gate and cathode will indicate continuity <italic>in both directions</italic> between those two terminals:  (Figure<ref>03324.png below</ref>)
</para>

<image>03324.png<caption>Larger SCRs have gate to cathode resistor.</caption></image> 

<index>Sensitive gate, SCR</index>

<para>
"Normal" SCRs, lacking this internal resistor, are sometimes referred to as <italic>sensitive gate</italic> SCRs due to their ability to be triggered by the slightest positive gate signal.
</para>

<para>
The test circuit for an SCR is both practical as a diagnostic tool for checking suspected SCRs and also an excellent aid to understanding basic SCR operation.  A DC voltage source is used for powering the circuit, and two pushbutton switches are used to latch and unlatch the SCR, respectively:  (Figure<ref>03208.png below</ref>)
</para>

<image>03208.png<caption>SCR testing circuit</caption></image> 

<para>
Actuating the normally-open "on" pushbutton switch connects the gate to the anode, allowing current from the negative terminal of the battery, through the cathode-gate PN junction, through the switch, through the load resistor, and back to the battery.  This gate current should force the SCR to latch on, allowing current to go directly from cathode to anode without further triggering through the gate.  When the "on" pushbutton is released, the load should remain energized.
</para>

<para>
Pushing the normally-closed "off" pushbutton switch breaks the circuit, forcing current through the SCR to halt, thus forcing it to turn off (low-current dropout).
</para>

<index>Holding current, SCR</index>

<para>
If the SCR fails to latch, the problem may be with the load and not the SCR.  A certain minimum amount of load current is required to hold the SCR latched in the "on" state.  This minimum current level is called the <italic>holding current</italic>.  A load with too great a resistance value may not draw enough current to keep an SCR latched when gate current ceases, thus giving the false impression of a bad (unlatchable) SCR in the test circuit.  Holding current values for different SCRs should be available from the manufacturers.  Typical holding current values range from 1 milliamp to 50 milliamps or more for larger units.
</para>

<para>
For the test to be fully comprehensive, more than the triggering action needs to be tested.  The forward breakover voltage limit of the SCR could be tested by increasing the DC voltage supply (with no pushbuttons actuated) until the SCR latches all on its own.  Beware that a breakover test may require very high voltage: many power SCRs have breakover voltage ratings of 600 volts or more!  Also, if a pulse voltage generator is available, the critical rate of voltage rise for the SCR could be tested in the same way: subject it to pulsing supply voltages of different V/time rates with no pushbutton switches actuated and see when it latches.
</para>

<para>
In this simple form, the SCR test circuit could suffice as a start/stop control circuit for a DC motor, lamp, or other practical load:  (Figure<ref>03209.png below</ref>)
</para>

<image>03209.png<caption>DC motor start/stop control circuit</caption></image> 

<index>Power supply schematic, AC-DC</index>
<index>AC-DC power supply schematic</index>
<index>Crowbar</index>

<para>
Another practical use for the SCR in a DC circuit is as a <italic>crowbar</italic> device for overvoltage protection.  A "crowbar" circuit consists of an SCR placed in parallel with the output of a DC power supply, for placing a direct short-circuit on the output of that supply to prevent excessive voltage from reaching the load.  Damage to the SCR and power supply is prevented by the judicious placement of a fuse or substantial series resistance ahead of the SCR to limit short-circuit current:  (Figure<ref>03210.png below</ref>)
</para>

<image>03210.png<caption>Crowbar circuit used in DC power supply</caption></image> 

<para>
Some device or circuit sensing the output voltage will be connected to the gate of the SCR, so that when an overvoltage condition occurs, voltage will be applied between the gate and cathode, triggering the SCR and forcing the fuse to blow.  The effect will be approximately the same as dropping a solid steel crowbar directly across the output terminals of the power supply, hence the name of the circuit.
</para>

<index>Natural commutation</index>
<index>Commutation, natural</index>

<para>
Most applications of the SCR are for AC power control, despite the fact that SCRs are inherently DC (unidirectional) devices.  If bidirectional circuit current is required, multiple SCRs may be used, with one or more facing each direction to handle current through both half-cycles of the AC wave.  The primary reason SCRs are used at all for AC power control applications is the unique response of a thyristor to an alternating current.  As we saw, the thyratron tube (the electron tube version of the SCR) and the DIAC, a hysteretic device triggered on during a portion of an AC half-cycle will latch and remain on throughout the remainder of the half-cycle until the AC current decreases to zero, as it must to begin the next half-cycle.  Just prior to the zero-crossover point of the current waveform, the thyristor will turn off due to insufficient current (this behavior is also known as <italic>natural commutation</italic>) and must be fired again during the next cycle.  The result is a circuit current equivalent to a "chopped up" sine wave.  For review, here is the graph of a DIAC's response to an AC voltage whose peak exceeds the breakover voltage of the DIAC: (Figure<ref>03205a.png below</ref>)
</para>


<image>03205.png<caption>DIAC bidirectional response</caption><label>03205a.png</label></image>
<para>
With the DIAC, that breakover voltage limit was a fixed quantity.  With the SCR, we have control over exactly when the device becomes latched by triggering the gate at any point in time along the waveform.  By connecting a suitable control circuit to the gate of an SCR, we can "chop" the sine wave at any point to allow for time-proportioned power control to a load.
</para>

<para>
Take the circuit in  Figure<ref>03211.png below</ref> as an example.  Here, an SCR is positioned in a circuit to control power to a load from an AC source.
</para>

<image>03211.png<caption>SCR control of AC power</caption></image> 

<para>
Being a unidirectional (one-way) device, at most we can only deliver half-wave power to the load, in the half-cycle of AC where the supply voltage polarity is positive on the top and negative on the bottom.  However, for demonstrating the basic concept of time-proportional control, this simple circuit is better than one controlling full-wave power (which would require two SCRs).
</para>

<para>
With no triggering to the gate, and the AC source voltage well below the SCR's breakover voltage rating, the SCR will never turn on.  Connecting the SCR gate to the anode through a standard rectifying diode (to prevent reverse current through the gate in the event of the SCR containing a built-in gate-cathode resistor), will allow the SCR to be triggered almost immediately at the beginning of every positive half-cycle:  (Figure<ref>03212.png below</ref>)
</para>

<image>03212.png<caption>Gate connected directly to anode through a diode; nearly complete half-wave current through load.</caption></image> 

<para>
We can delay the triggering of the SCR, however, by inserting some resistance into the gate circuit, thus increasing the amount of voltage drop required before enough gate current triggers the SCR.  In other words, if we make it harder for electrons to flow through the gate by adding a resistance, the AC voltage will have to reach a higher point in its cycle before there will be enough gate current to turn the SCR on.  The result is in Figure<ref>03213.png below</ref>.
</para>
 
<image>03213.png<caption>Resistance inserted in gate circuit; less than half-wave current through load.</caption></image> 

<para>
With the half-sine wave chopped up to a greater degree by delayed triggering of the SCR, the load receives less average power (power is delivered for less time throughout a cycle).  By making the series gate resistor variable, we can make adjustments to the time-proportioned power:  (Figure<ref>03214.png below</ref>)
</para>

<image>03214.png<caption>Increasing the resistance raises the threshold level, causing less power to be delivered to the load. Decreasing the resistance lowers the threshold level, causing more power to be delivered to the load.</caption></image> 

<para>
Unfortunately, this control scheme has a significant limitation.  In using the AC source waveform for our SCR triggering signal, we limit control to the first half of the waveform's half-cycle.  In other words, it is not possible for us to wait until <italic>after</italic> the wave's peak to trigger the SCR.  This means we can turn down the power only to the point where the SCR turns on at the very peak of the wave:  (Figure<ref>03215.png below</ref>)
</para>

<image>03215.png<caption>Circuit at minimum power setting</caption></image> 

<para>
Raising the trigger threshold any more will cause the circuit to not trigger at all, since not even the peak of the AC power voltage will be enough to trigger the SCR.  The result will be no power to the load.
</para>

<para>
An ingenious solution to this control dilemma is found in the addition of a phase-shifting capacitor to the circuit:  (Figure<ref>03216.png below</ref>)
</para>

<image>03216.png<caption>Addition of a phase-shifting capacitor to the circuit</caption></image> 

<para>
The smaller waveform shown on the graph is voltage across the capacitor.   For the sake of illustrating the phase shift, I'm assuming a condition of maximum control resistance where the SCR is not triggering at all with no load current, save for what little current goes through the control resistor and capacitor.  This capacitor voltage will be phase-shifted anywhere from 0<superscript>o</superscript> to 90<superscript>o</superscript> lagging behind the power source AC waveform.  When this phase-shifted voltage reaches a high enough level, the SCR will trigger.
</para>

<para>
With  enough voltage across the capacitor to periodically trigger the SCR, the resulting load current waveform will look something like Figure<ref>03217.png below</ref>)
</para>

<image>03217.png<caption>Phase-shifted signal triggers SCR into conduction.</caption></image> 

<para>
Because the capacitor waveform is still <italic>rising</italic> after the main AC power waveform has reached its peak, it becomes possible to trigger the SCR at a threshold level beyond that peak, thus chopping the load current wave further than it was possible with the simpler circuit.  In reality, the capacitor voltage waveform is a bit more complex that what is shown here, its sinusoidal shape distorted every time the SCR latches on.  However, what I'm trying to illustrate here is the delayed triggering action gained with the phase-shifting RC network; thus, a simplified, undistorted waveform serves the purpose well.
</para>

<para>
SCRs may also be triggered, or "fired," by more complex circuits.  While the circuit previously shown is sufficient for a simple application like a lamp control, large industrial motor controls often rely on more sophisticated triggering methods.  Sometimes, pulse transformers are used to couple a triggering circuit to the gate and cathode of an SCR to provide electrical isolation between the triggering and power circuits:  (Figure<ref>03218.png below</ref>)
</para>

<image>03218.png<caption>Transformer coupling of trigger signal provides isolation.</caption></image> 

<index>Rectifier, controlled</index>
<index>Controlled rectifier</index>
<index>SCR bridge rectifier</index>

<para>
When multiple SCRs are used to control power, their cathodes are often <italic>not</italic> electrically common, making it difficult to connect a single triggering circuit to all SCRs equally.  An example of this is the <italic>controlled bridge rectifier</italic> shown in  Figure<ref>03219.png below</ref>.
</para>

<image>03219.png<caption>Controlled bridge rectifier</caption></image> 

<para>
In any bridge rectifier circuit, the rectifying diodes (in this example, the rectifying SCRs) must conduct in opposite pairs.  SCR<subscript>1</subscript> and SCR<subscript>3</subscript> must be fired simultaneously, and  SCR<subscript>2</subscript> and SCR<subscript>4</subscript> must be fired together as a pair.  As you will notice, though, these pairs of SCRs do not share the same cathode connections, meaning that it would not work to simply parallel their respective gate connections and connect a single voltage source to trigger both:  (Figure<ref>03220.png below</ref>)
</para>

<image>03220.png<caption>This strategy will not work for triggering SCR<subscript>2</subscript> and SCR<subscript>4</subscript> as a pair.</caption></image> 

<para>
Although the triggering voltage source shown will trigger SCR<subscript>4</subscript>, it will not trigger SCR<subscript>2</subscript> properly because the two thyristors do not share a common cathode connection to reference that triggering voltage.  Pulse transformers connecting the two thyristor gates to a common triggering voltage source <italic>will</italic> work, however:  (Figure<ref>03221.png below</ref>)
</para>

<image>03221.png<caption>Transformer coupling of the gates allows triggering of SCR<subscript>2</subscript> and SCR<subscript>4</subscript> . </caption></image> 

<para>
Bear in mind that this circuit only shows the gate connections for two out of the four SCRs.  Pulse transformers and triggering sources for SCR<subscript>1</subscript> and SCR<subscript>3</subscript>, as well as the details of the pulse sources themselves, have been omitted for the sake of simplicity.
</para>

<para>
Controlled bridge rectifiers are not limited to single-phase designs.  In most industrial control systems, AC power is available in three-phase form for maximum efficiency, and solid-state control circuits are built to take advantage of that.  A three-phase controlled rectifier circuit built with SCRs, without pulse transformers or triggering circuitry shown, would look like Figure<ref>03222.png below</ref>.
</para>

<image>03222.png<caption>Three-phase bridge SCR control of load</caption></image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>Silicon-Controlled Rectifier</italic>, or <italic>SCR</italic>, is essentially a Shockley diode with an extra terminal added.  This extra terminal is called the <italic>gate</italic>, and it is used to <italic>trigger</italic> the device into conduction (latch it) by the application of a small voltage.</item>
<item>To trigger, or <italic>fire</italic>, an SCR, voltage must be applied between the gate and cathode, positive to the gate and negative to the cathode.  When testing an SCR, a momentary connection between the gate and anode is sufficient in polarity, intensity, and duration to trigger it.</item>
<item>SCRs may be fired by intentional triggering of the gate terminal, excessive voltage (breakdown) between anode and cathode, or excessive rate of voltage rise between anode and cathode.  SCRs may be turned off by anode current falling below the <italic>holding current value</italic> (low-current dropout), or by "reverse-firing" the gate (applying a negative voltage to the gate).  Reverse-firing is only sometimes effective, and always involves high gate current.</item>
<item>A variant of the SCR, called a Gate-Turn-Off thyristor (GTO), is specifically designed to be turned off by means of reverse triggering.  Even then, reverse triggering requires fairly high current: typically 20% of the anode current.</item>
<item>SCR terminals may be identified by a continuity meter: the only two terminals showing any continuity between them at all should be the gate and cathode.  Gate and cathode terminals connect to a PN junction inside the SCR, so a continuity meter should obtain a diode-like reading between these two terminals with the red (+) lead on the gate and the black (-) lead on the cathode.  Beware, though, that some large SCRs have an internal resistor connected between gate and cathode, which will affect any continuity readings taken by a meter.</item>
<item>SCRs are true <italic>rectifiers</italic>: they only allow current through them in one direction.  This means they cannot be used alone for full-wave AC power control.</item>
<item>If the diodes in a rectifier circuit are replaced by SCRs, you have the makings of a <italic>controlled</italic> rectifier circuit, whereby DC power to a load may be time-proportioned by triggering the SCRs at different points along the AC power waveform.</item>
</itemize>

</section>






<section>
<sectiontitle>The TRIAC</sectiontitle>

<para>
SCRs are unidirectional (one-way) current devices, making them useful for controlling DC only.  If two SCRs are joined in back-to-back parallel fashion just like two Shockley diodes were joined together to form a DIAC, we have a new device known as the <italic>TRIAC</italic>:  (Figure<ref>03223.png below</ref>)
</para>

<image>03223.png<caption>The TRIAC SCR equivalent and, TRIAC schematic symbol</caption></image> 

<para>
Because individual SCRs are more flexible to use in advanced control systems, these are more commonly seen in circuits like motor drives; TRIACs are usually seen in simple, low-power applications like household dimmer switches.  A simple lamp dimmer circuit is shown in Figure<ref>03224.png below</ref>, complete with the phase-shifting resistor-capacitor network necessary for after-peak firing.
</para>

<image>03224.png<caption>TRIAC phase-control of power</caption></image> 

<index>Harmonic</index>
<index>Harmonic, even vs. odd</index>
<index>Harmonics and waveform symmetry</index>
<index>Waveform symmetry and harmonics</index>

<para>
TRIACs are notorious for not firing <italic>symmetrically</italic>.  This means these usually won't trigger at the exact same gate voltage level for one polarity as for the other.  Generally speaking, this is undesirable, because unsymmetrical firing results in a current waveform with a greater variety of harmonic frequencies.  Waveforms that are symmetrical above and below their average centerlines are comprised of only odd-numbered harmonics.  Unsymmetrical waveforms, on the other hand, contain even-numbered harmonics (which may or may not be accompanied by odd-numbered harmonics as well).  
</para>

<para>
In the interest of reducing total harmonic content in power systems, the fewer and less diverse the harmonics, the better -- one more reason  individual SCRs are favored over TRIACs for complex, high-power control circuits.  One way to make the TRIAC's current waveform more symmetrical is to use a device external to the TRIAC to time the triggering pulse.  A DIAC placed in series with the gate does a fair job of this:  (Figure<ref>03225.png below</ref>)
</para>

<image>03225.png<caption>DIAC improves symmetry of control</caption></image> 
<para>
DIAC breakover voltages tend to be much more symmetrical (the same in one polarity as the other) than TRIAC triggering voltage thresholds.  Since the DIAC prevents any gate current until the triggering voltage has reached a certain, repeatable level in either direction, the firing point of the TRIAC from one half-cycle to the next tends to be more consistent, and the waveform more symmetrical above and below its centerline.
</para>

<para>
Practically all the characteristics and ratings of SCRs apply equally to TRIACs, except that TRIACs of course are bidirectional (can handle current in both directions).  Not much more needs to be said about this device except for an important caveat concerning its terminal designations.
</para>

<para>
From the equivalent circuit diagram shown earlier, one might think that main terminals 1 and 2 were interchangeable.  These are not!  Although it is helpful to imagine the TRIAC as being composed of two SCRs joined together, it in fact is constructed from a single piece of semiconducting material, appropriately doped and layered.  The actual operating characteristics may differ slightly from that of the equivalent model.
</para>

<para>
This is made most evident by contrasting two simple circuit designs, one that works and one that doesn't.  The following two circuits are a variation of the lamp dimmer circuit shown earlier, the phase-shifting capacitor and DIAC removed for simplicity's sake.  Although the resulting circuit lacks the fine control ability of the more complex version (with capacitor and DIAC), it <italic>does</italic> function:  (Figure<ref>03226.png below</ref>)
</para>

<image>03226.png<caption>This circuit with the gate to MT<subscript>2</subscript> does function.</caption></image> 

<para>
Suppose we were to swap the two main terminals of the TRIAC around.  According to the equivalent circuit diagram shown earlier in this section, the swap should make no difference.  The circuit ought to work:  (Figure<ref>03227.png below</ref>)
</para>

<image>03227.png<caption>With the gate swapped to MT<subscript>1</subscript>, this circuit does not function.</caption></image> 

<para>
However, if this circuit is built, it will be found that it does not work!  The load will receive no power, the TRIAC refusing to fire at all, no matter how low or high a resistance value the control resistor is set to.  The key to successfully triggering a TRIAC is to make sure the gate receives its triggering current from the <italic>main terminal 2</italic> side of the circuit (the main terminal on the opposite side of the TRIAC symbol from the gate terminal).  Identification of the MT<subscript>1</subscript> and MT<subscript>2</subscript> terminals must be done via the TRIAC's part number with reference to a data sheet or book.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>TRIAC</italic> acts much like two SCRs connected back-to-back for bidirectional (AC) operation.</item>
<item>TRIAC controls are more often seen in simple, low-power circuits than complex, high-power circuits.  In large power control circuits, multiple SCRs tend to be favored.</item>
<item>When used to control AC power to a load, TRIACs are often accompanied by DIACs connected in series with their gate terminals.  The DIAC helps the TRIAC fire more symmetrically (more consistently from one polarity to another).</item>
<item>Main terminals 1 and 2 on a TRIAC are <italic>not</italic> interchangeable.</item>
<item>To successfully trigger a TRIAC, gate current must come from the <italic>main terminal 2</italic> (MT<subscript>2</subscript>) side of the circuit!</item>
</itemize>

</section>






<section>
<sectiontitle>Optothyristors</sectiontitle>

<para>
Like bipolar transistors, SCRs and TRIACs are also manufactured as light-sensitive devices, the action of impinging light replacing the function of triggering voltage.
</para>

<para>
Optically-controlled SCRs are often known by the acronym <italic>LASCR</italic>, or <bold>L</bold>ight <bold>A</bold>ctivated <bold>SCR</bold>.  Its symbol, not surprisingly, looks like  Figure<ref>03228.png below</ref>.
</para>

<image>03228.png<caption>Light activated SCR</caption></image> 

<para>
Optically-controlled TRIACs don't receive the honor of having their own acronym, but instead are humbly known as opto-TRIACs.  Their schematic symbol is shown in  Figure<ref>03229.png below</ref>.
</para>

<image>03229.png<caption>Opto-TRIAC</caption></image> 

<para>
Optothyristors (a general term for either the LASCR or the opto-TRIAC) are commonly found inside sealed "optoisolator" modules.
</para>
 
</section>





<section>
<sectiontitle>The Unijunction Transistor (UJT)</sectiontitle>
<index>Transistor, unijunction</index>
<index>Unijunction transistor</index>

<para>
<bold>Unijunction transistor:</bold> Although a unijunction transistor is not a thyristor, this device can trigger larger thyristors with a pulse at base B1. A <italic>unijunction transistor</italic> is composed of a bar of N-type silicon having a P-type connection in the middle.  See Figure<ref>03504.png below</ref>(a). The connections at the ends of the bar are known as bases B1 and B2; the P-type mid-point is the emitter. With the emitter disconnected, the total resistance R<subscript>BBO</subscript>,  a datasheet item, is the sum of R<subscript>B1</subscript> and R<subscript>B2</subscript> as shown in  Figure<ref>03504.png below</ref>(b).  R<subscript>BBO</subscript> ranges from 4-12k<OMEGA> for different device types. The intrinsic standoff ratio <eta> is the ratio of  R<subscript>B1</subscript> to  R<subscript>BBO</subscript>. It varies from 0.4 to 0.8 for different devices. The schematic symbol is Figure<ref>03504.png below</ref>(c)
</para>

<image>03504.png<caption>Unijunction transistor: (a) Construction, (b) Model, (c) Symbol</caption></image>

<para>
The Unijunction emitter current vs voltage characteristic curve  (Figure<ref>03508.png below</ref>(a) ) shows that as V<subscript>E</subscript> increases, current I<subscript>E</subscript> increases up I<subscript>P</subscript> at the peak  point.  Beyond the peak point, current increases as voltage decreases in the negative resistance region.  The voltage reaches a  minimum at the valley point. The resistance of R<subscript>B1</subscript>, the saturation resistance is lowest at the valley point.
</para>

<para>
I<subscript>P</subscript> and I<subscript>V</subscript>, are datasheet parameters; For a 2n2647, I<subscript>P</subscript> and I<subscript>V</subscript> are 2<mu>A and 4mA, respectively. <cite>AMS</cite>  V<subscript>P</subscript> is the voltage drop across R<subscript>B1</subscript> plus a 0.7V diode drop; see Figure<ref>03508.png below</ref>(b).  V<subscript>V</subscript> is estimated to be approximately 10% of V<subscript>BB</subscript>.
</para>



<image>03508.png<caption>Unijunction transistor: (a) emitter characteristic curve, (b) model for V<subscript>P .</subscript></caption></image>

<para>
The relaxation oscillator in Figure<ref>03506.png below</ref> is an application of the unijunction oscillator. R<subscript>E</subscript> charges C<subscript>E</subscript> until the peak point. The unijunction emitter terminal has no effect on the capacitor until this point is reached. Once the capacitor voltage, V<subscript>E</subscript>, reaches the peak voltage point V<subscript>P</subscript>, the lowered  emitter-base1 E-B1 resistance quickly discharges the capacitor. Once  the capacitor discharges below the valley point V<subscript>V</subscript>, the E-RB1 resistance reverts back to high resistance, and the capacitor is free to charge again.
</para>

<image>03506.png<caption>Unijunction transistor relaxation oscillator and waveforms. Oscillator drives SCR.</caption></image>

<para>
During capacitor discharge through the E-B1 saturation resistance, a pulse may be seen on the external B1 and B2 load resistors, Figure<ref>03506.png above</ref>.  The load resistor at B1 needs to be low to not affect the discharge time. The external resistor at B2 is optional. It may be replaced by a short circuit.  The approximate frequency is given by 1/f = T = RC. A more accurate expression for frequency is given in Figure<ref>03506.png above</ref>.
</para>

<para>
The charging resistor R<subscript>E</subscript> must fall within certain limits. It must be small enough to allow I<subscript>P</subscript> to flow based on the V<subscript>BB</subscript> supply less V<subscript>P</subscript>. It must be large enough to supply I<subscript>V</subscript> based on the V<subscript>BB</subscript> supply less V<subscript>V</subscript>. <cite>MHW</cite>  The equations and an example for a 2n2647: 
</para>

<image>13080.png</image>

<index>Programmable unijunction transistor</index>
<index>Transistor, programmable unijunction</index>

<para>
<bold>Programmable Unijunction Transistor (PUT):</bold> Although the unijunction transistor is listed as obsolete (read expensive if obtainable), the programmable unijunction transistor is alive and well. It is inexpensive and in production. Though it serves a function similar to the unijunction transistor, the PUT is a three terminal thyristor. The PUT shares the four-layer structure typical of thyristors shown in Figure<ref>03507.png below</ref>. Note that the gate, an N-type layer near the anode,  is known as an ``anode gate''. Moreover, the gate lead on the schematic symbol is attached to the anode end of the symbol. 
</para>

<image>03507.png<caption>Programmable unijunction transistor: Characteristic curve, internal construction, schematic symbol.</caption></image>

<para>
The characteristic curve for the programmable unijunction transistor in Figure<ref>03507.png above</ref> is similar to that of the unijunction transistor. This is a plot of anode current I<subscript>A</subscript> versus anode voltage V<subscript>A</subscript>. The gate lead voltage sets, programs, the peak anode voltage V<subscript>P</subscript>. As anode current inceases, voltage increases up to the peak point. Thereafter, increasing current results in decreasing voltage, down to the valley point.
</para>

<para>
The PUT equivalent of the unijunction transistor is shown in Figure<ref>03509.png below</ref>. External PUT resistors R1 and R2 replace unijunction transistor internal resistors R<subscript>B1</subscript> and R<subscript>B2</subscript>, respectively. These resistors allow the calculation of the intrinsic standoff ratio <eta>. 
</para>

<image>03509.png<caption>PUT equivalent of unijunction transistor</caption></image>

<para>
Figure<ref>03505.png below</ref> shows the PUT version of the  unijunction relaxation oscillator Figure<ref>03506.png previous</ref>. Resistor R charges the capacitor until the peak point, Figure<ref>03507.png previous</ref>, then heavy conduction moves the operating point down the negative resistance slope to the valley point.  A current spike flows through the cathode during capacitor discharge, developing a voltage spike across the cathode resistors. After capacitor discharge, the operating point resets back to the slope up to the peak point.
</para>

<image>03505.png<caption>PUT relaxation oscillator</caption></image>

<para>
<bold>Problem: </bold> What is the range of suitable values for R in Figure<ref>03505.png above</ref>, a relaxation oscillator? The charging resistor must be small enough to  supply enough current to raise the anode to V<subscript>P</subscript> the peak point (Figure<ref>03507.png previous</ref>) while charging the capacitor. Once V<subscript>P</subscript> is reached, anode voltage decreases as current increases (negative resistance), which moves the operating point to the valley. It is the job of the capacitor to supply the valley current I<subscript>V</subscript>. Once it is discharged, the operating point resets back to the upward slope to the peak point. The resistor must be large enough so that it will never supply the high valley current I<subscript>P</subscript>. If the charging resistor ever could supply that much current, the resistor would supply the valley current after the capacitor was discharged and the operating point would never reset back to the high resistance condition to the left of the  peak point.
</para>

<para>
We select the same V<subscript>BB</subscript>=10V used for the unijunction transistor example. We select values of R1 and R2 so that <eta> is about 2/3. We calculate <eta> and V<subscript>S</subscript>.  The parallel equivalent of R1, R2 is R<subscript>G</subscript>, which is only used to make selections from Table<ref>put1.tbl below</ref>. Along with V<subscript>S</subscript>=10, the closest value to our 6.3, we find V<subscript>T</subscript>=0.6V, in Table<ref>put1.tbl below</ref>  and calculate V<subscript>P</subscript>.
</para>


<image>13081.png</image>

<para>
We also find I<subscript>P</subscript> and I<subscript>V</subscript>, the peak and valley currents, respectively in Table<ref>put1.tbl below</ref>.  We still need V<subscript>V</subscript>, the valley voltage. We used 10% of V<subscript>BB</subscript>= 1V, in the previous unijunction example. Consulting the datasheet, we find the forward voltage V<subscript>F</subscript>=0.8V at I<subscript>F</subscript>=50mA.  The valley current I<subscript>V</subscript>=70<mu>A is much less than I<subscript>F</subscript>=50mA. Therefore,  V<subscript>V</subscript> must be less than  V<subscript>F</subscript>=0.8V. How much less?  To be safe we set  V<subscript>V</subscript>=0V. This will raise the lower limit on the resistor range a little.
</para>

<image>13082.png</image>

<para>
Choosing R <gt> 143k guarantees that the operating point can reset from the valley point after capacitor discharge. R <lt> 755k allows charging up to V<subscript>P</subscript> at the peak point.
</para>



<table>put1.tbl<caption>Selected 2n6027 PUT parameters, adapted from 2n6027 datasheet. <cite>ON1</cite></caption>
<tabular>{|l|l|l|l|l|l|}
<hr>

<tr>
<th>Parameter</th><th>Conditions</th><th>min</th><th>typical</th><th>max</th><th>units</th>
</tr>
<hr>

<tr>
<td>V<subscript>T</subscript><td><sp></td><td><sp></td><td><sp></td><td><sp></td><td>V</td>
</tr>

<tr>
<td><sp></td><td>V<subscript>S</subscript>=10V, R<subscript>G</subscript>=1Meg</td><td>0.2</td><td>0.7</td><td>1.6</td><td><sp></td>
</tr>

<tr>
<td><sp></td><td>V<subscript>S</subscript>=10V, R<subscript>G</subscript>=10k</td><td>0.2</td><td>0.35</td><td>0.6</td><td><sp></td>
</tr>
<hr>

<tr>
<td>I<subscript>P</subscript></td><td><sp></td><td><sp></td><td><sp></td><td><sp></td><td><mu>A</td>
</tr>

<tr>
<td><sp></td><td>V<subscript>S</subscript>=10V, R<subscript>G</subscript>=1Meg</td><td>-</td><td>1.25</td><td>2.0</td><td><sp></td>
</tr>

<tr>
<td><sp></td><td>V<subscript>S</subscript>=10V, R<subscript>G</subscript>=10k</td><td>-</td><td>4.0</td><td>5.0</td><td><sp></td>
</tr>
<hr>

<tr>
<td>I<subscript>V</subscript></td><td><sp></td><td><sp></td><td><sp></td><td><sp></td><td><mu>A</td>
</tr>

<tr>
<td><sp></td><td>V<subscript>S</subscript>=10V, R<subscript>G</subscript>=1Meg</td><td>-</td><td>18</td><td>50</td><td><sp></td>
</tr>

<tr>
<td><sp></td><td>V<subscript>S</subscript>=10V, R<subscript>G</subscript>=10k</td><td>70</td><td>150</td><td>-</td><td><sp></td>
</tr>

<tr>
<td><sp></td><td>V<subscript>S</subscript>=10V, R<subscript>G</subscript>=200<OMEGA></td><td>1500</td><td>-</td><td>-</td><td><sp></td>
</tr>

<hr>
<tr>
<td>V<subscript>F</subscript></td><td>I<subscript>F</subscript>=50mA</td><td>-</td><td>0.8</td><td>1.5</td><td>V</td>
</tr>

<hr>
</tabular>
</table>

<para>
Figure<ref>03510.png below</ref> show the PUT relaxation oscillator with the final resistor values. A practical application of a PUT triggering an SCR is also shown. This circuit needs a V<subscript>BB</subscript> unfiltered supply (not shown) divided down from the bridge rectifier to reset the relaxation oscillator after each power zero crossing. The variable resistor should have a minimum resistor in series with it to prevent a low pot setting from hanging at the valley point.
</para>

<image>03510.png<caption>PUT relaxation oscillator with component values. PUT drives SCR lamp dimmer.</caption></image>
  
<para>
PUT timing circuits are said to be usable to 10kHz.  If a linear ramp is required instead of an exponential ramp, replace the charging resistor with a constant current source such as a FET based constant current diode. A substitute PUT may be built from a PNP and NPN silicon transistor as shown for the SCS equivalent circuit in Figure<ref>03319.png below</ref> by omitting the cathode gate and using the anode gate.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A unijunction transistor consists of two bases (B1, B2) attached to a resistive bar of silicon, and an emitter in the center. The E-B1 junction has negative resistance properties; it can switch between high and low resistance.</item>
<item>A PUT (programmable unijunction transistor) is a 3-terminal 4-layer thyristor acting like a unijunction transistor. An external resistor network ``programs'' <eta>. </item>
<item>The intrinsic standoff ratio is  <eta>=R1/(R1+R2) for a PUT; substitute R<subscript>B1</subscript> and R<subscript>B2</subscript>, respectively, for a unijunction transistor. The trigger voltage is determined by <eta>. </item>
<item>Unijunction transistors and programmable unijunction transistors are applied to oscillators, timing circuits, and thyristor triggering.</item>
</itemize>

</section>






<section>
<sectiontitle>The Silicon-Controlled Switch (SCS)</sectiontitle>

<index>Silicon-controlled switch</index>
<index>SCS</index>

<para>
If we take the equivalent circuit for an SCR and add another external terminal, connected to the base of the top transistor and the collector of the bottom transistor, we have a device known as a <italic>silicon-controlled-switch</italic>, or <italic>SCS</italic>:  (Figure<ref>03319.png below</ref>)
</para>

<image>03319.png<caption>The Silicon-Controlled Switch(SCS)</caption></image> 

<index>Forced commutation</index>
<index>Commutation, forced</index>

<para>
This extra terminal allows more control to be exerted over the device, particularly in the mode of <italic>forced commutation</italic>, where an external signal forces it to turn off while the main current through the device has not yet fallen below the holding current value.  Note that  the motor is in the anode  gate circuit in  Figure<ref>03320.png below</ref>. This is correct, although it doesn't look right. The anode lead is required to switch the SCS off. Therefore the motor cannot be in series with the anode.
</para>

<image>03320.png<caption>SCS: Motor start/stop circuit, equivalent circuit with two transistors.</caption></image> 

<para>
When the "on" pushbutton switch is actuated, the voltage applied between the cathode gate and the cathode, forward-biases the lower transistor's base-emitter junction, and turning it on.  The top transistor of the SCS is ready to conduct, having been supplied with a current path from its emitter terminal (the SCS's anode terminal) through resistor R<subscript>2</subscript> to the positive side of the power supply.  As in the case of the SCR, both transistors turn on and maintain each other in the "on" mode.  When the lower transistor turns on, it conducts the motor's load current, and the motor starts and runs.
</para>

<index>Natural commutation</index>
<index>Commutation, natural</index>
<index>Forced commutation</index>
<index>Commutation, forced</index>

<para>
The motor may be stopped by interrupting the power supply, as with an SCR, and this is called <italic>natural commutation</italic>.  However, the SCS provides us with another means of turning off: <italic>forced commutation</italic> by shorting the anode terminal to the cathode. <cite>GE1</cite>  If this is done (by actuating the "off" pushbutton switch), the upper transistor within the SCS will lose its emitter current, thus halting current through the base of the lower transistor.  When the lower transistor turns off, it breaks the circuit for base current through the top transistor (securing its "off" state), and the motor (making it stop).  The SCS will remain in the off condition until such time that the "on" pushbutton switch is re-actuated.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>silicon-controlled switch</italic>, or <italic>SCS</italic>, is essentially an SCR with an extra gate terminal.</item>
<item>Typically, the load current through an SCS is carried by the <italic>anode gate</italic> and <italic>cathode</italic> terminals, with the <italic>cathode gate</italic> and <italic>anode</italic> terminals sufficing as control leads.</item>
<item>An SCS is turned on by applying a positive voltage between the <italic>cathode gate</italic> and <italic>cathode</italic> terminals.  It may be turned off (forced commutation) by applying a negative voltage between the <italic>anode</italic> and <italic>cathode</italic> terminals, or simply by shorting those two terminals together.  The <italic>anode</italic> terminal must be kept positive with respect to the cathode in order for the SCS to latch.</item>
</itemize>

</section>






<section>
<sectiontitle>Field-effect-controlled thyristors</sectiontitle>

<index>MOS-gated thyristor</index>
<index>MOS Controlled Thyristor</index>

<para>
Two relatively recent technologies designed to reduce the "driving" (gate trigger current) requirements of classic thyristor devices are the <italic>MOS-gated thyristor</italic> and the <italic>MOS Controlled Thyristor</italic>, or <italic>MCT</italic>.
</para>

<para>
The MOS-gated thyristor uses a MOSFET to initiate conduction through the upper (PNP) transistor of a standard thyristor structure, thus triggering the device.  Since a MOSFET requires negligible current to "drive" (cause it to saturate), this makes the thyristor as a whole very easy to trigger:  (Figure<ref>03331.png below</ref>)
</para>

<image>03331.png<caption>MOS-gated thyristor equivalent circuit</caption></image> 

<para>
Given the fact that ordinary SCRs are quite easy to "drive" as it is, the practical advantage of using an even more sensitive device (a MOSFET) to initiate triggering is debatable.  Also, placing a MOSFET at the gate input of the thyristor now makes it <italic>impossible</italic> to turn it off by a reverse-triggering signal.  Only low-current dropout can make this device stop conducting after it has been latched.
</para>

<para>
A device of arguably greater value would be a fully-controllable thyristor, whereby a small gate signal could both trigger the thyristor and force it to turn off.  Such a device does exist, and it is called the <italic>MOS Controlled Thyristor</italic>, or <italic>MCT</italic>.  It uses a pair of MOSFETs connected to a common gate terminal, one to trigger the thyristor and the other to "untrigger" it:  (Figure<ref>03332.png below</ref>)
</para>

<image>03332.png<caption>MOS-controlled thyristor (MCT) equivalent circuit</caption></image> 

<para>
A positive gate voltage (with respect to the cathode) turns on the upper (N-channel) MOSFET, allowing base current through the upper (PNP) transistor, which latches the transistor pair in an "on" state.  Once both transistors are fully latched, there will be little voltage dropped between anode and cathode, and the thyristor will remain latched as long as the controlled current exceeds the minimum (holding) current value.  However, if a negative gate voltage is applied (with respect to the anode, which is at nearly the same voltage as the cathode in the latched state), the lower MOSFET will turn on and "short" between the lower (NPN) transistor's base and emitter terminals, thus forcing it into cutoff.  Once the NPN transistor cuts off, the PNP transistor will drop out of conduction, and the whole thyristor turns off.  Gate voltage has full control over conduction through the MCT: to turn it on and to turn it off.
</para>

<index>IGBT</index>
<index>Insulated-Gate Bipolar Transistor</index>
<index>IGT</index>
<index>Insulated-Gate Transistor</index>

<para>
This device is still a thyristor, though.  If zero voltage is  applied between gate and cathode, neither MOSFET will turn on.  Consequently, the bipolar transistor pair will remain in whatever state it was last in (hysteresis).  So, a brief positive pulse to the gate turns the MCT on, a brief negative pulse forces it off, and no applied gate voltage lets it remain in whatever state it is already in.  In essence, the MCT is a latching version of the IGBT (Insulated Gate Bipolar Transistor).
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>MOS-gated thyristor</italic> uses an N-channel MOSFET to trigger a thyristor, resulting in an extremely low gate current requirement.</item>
<item>A <italic>MOS Controlled Thyristor</italic>, or <italic>MCT</italic>, uses two MOSFETS to exert full control over the thyristor.  A positive gate voltage triggers the device; a negative gate voltage forces it to turn off.  Zero gate voltage allows the thyristor to remain in whatever state it was previously in (off, or latched on).</item>
</itemize>

</section>



<thebibliography>

<bibitem>[VTS]``Phattytron PT-1 Vacuum Tube Synthesizer'', The Audio Playground Synthesizer Museum  at <url>http://www.keyboardmuseum.com/ar/m/meta/pt1.html[http://www.keyboardmuseum.com/ar/m/meta/pt1.html]</url></bibitem> 

<bibitem>[MET]``At last, a pitch source with tube power'', METASONIX, PMB 109, 881 11th Street, Lakeport CA 95453 USA  at <url>http://www.metasonix.com/index.php?option=com_content&task=view&id=14&Itemid=31[http://www.metasonix.com/i<allowbreak>ndex.php?option=com_content&task=view&id=14&Itemid=31]</url></bibitem> 

<bibitem>[GE1]``Silicon Contolled Switches'', GE Transistor Manual, The General Electric Company, 1964, Figure 16.19(M).</bibitem> 

<bibitem>[ON1] ``2N6027, 2N6028  Programmable Unijunction Transistor '', datasheet  at <url>http://www.onsemi.com/pub_link/Collateral/2N6027-D.PDF[http://www.onsemi.com<allowbreak>/pub_link/Collateral/<allowbreak>2N6027-D.PDF]</url></bibitem> 


<bibitem>[AMS] ``Unijunction Transistor '', American Microsemiconductor,  at <url>http://www.americanmicrosemi.com/tutorials/unijunction.htm[http://www.americanmicrosemi.com/<allowbreak>tutorials/unijunction.htm]</url></bibitem> 

<bibitem>[MHW]Matthew H. Williams,  ``Unijunction Transistor '',  at <url>http://baec.tripod.com/DEC90/uni_tran.htm[http://baec.tripod.com/DEC90/uni_tran.htm]</url></bibitem> 


Unijunction Transistor
by 

http://baec.tripod.com/DEC90/uni_tran.htm
</thebibliography>


</chapter>

<pagebreak>

