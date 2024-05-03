
<chapter>
<chaptertitle>TRANSMISSION LINES</chaptertitle>


<section>
<sectiontitle>A 50-ohm cable?</sectiontitle>

<index>Cable, coaxial</index>
<index>Coaxial cable</index>

<para>
Early in my explorations of electricity, I came across a length of <italic>coaxial cable</italic> with the label ``50 ohms'' printed along its outer sheath. (Figure<ref>02351.png below</ref>)  Now, coaxial cable is a two-conductor cable made of a single conductor surrounded by a braided wire jacket, with a plastic insulating material separating the two.  As such, the outer (braided) conductor completely surrounds the inner (single wire) conductor, the two conductors insulated from each other for the entire length of the cable.  This type of cabling is often used to conduct weak (low-amplitude) voltage signals, due to its excellent ability to shield such signals from external interference.
</para>

<image>02351.png<caption>Coaxial cable contruction.</caption></image> 

<para>
I was mystified by the ``50 ohms'' label on this coaxial cable.  How could two conductors, insulated from each other by a relatively thick layer of plastic, have 50 ohms of resistance between them?  Measuring resistance between the outer and inner conductors with my ohmmeter, I found it to be infinite (open-circuit), just as I would have expected from two insulated conductors.  Measuring each of the two conductors' resistances from one end of the cable to the other indicated nearly zero ohms of resistance: again, exactly what I would have expected from continuous, unbroken lengths of wire.  Nowhere was I able to measure 50 <OMEGA> of resistance on this cable, regardless of which points I connected my ohmmeter between.
</para>

<index>Transmission line</index>

<para>
What I didn't understand at the time was the cable's response to short-duration voltage ``pulses'' and high-frequency AC signals.  Continuous direct current (DC) -- such as that used by my ohmmeter to check the cable's resistance -- shows the two conductors to be completely insulated from each other, with nearly infinite resistance between the two.  However, due to the effects of capacitance and inductance distributed along the length of the cable, the cable's response to rapidly-changing voltages is such that it acts as a <italic>finite</italic> impedance, drawing current proportional to an applied voltage.  What we would normally dismiss as being just a pair of wires becomes an important circuit element in the presence of transient and high-frequency AC signals, with characteristic properties all its own.  When expressing such properties, we refer to the wire pair as a <italic>transmission line</italic>.
</para>

<index>RF: Radio Frequency</index>

<para>
This chapter explores transmission line behavior.  Many transmission line effects do not appear in significant measure in AC circuits of powerline frequency (50 or 60 Hz), or in continuous DC circuits, and so we haven't had to concern ourselves with them in our study of electric circuits thus far.  However, in circuits involving high frequencies and/or extremely long cable lengths, the effects are very significant.  Practical applications of transmission line effects abound in radio-frequency (``RF'') communication circuitry, including computer networks, and in low-frequency circuits subject to voltage transients (``surges'') such as lightning strikes on power lines.
</para>

</section>




<section>
<sectiontitle>Circuits and the speed of light</sectiontitle>

<para>
Suppose we had a simple one-battery, one-lamp circuit controlled by a switch.  When the switch is closed, the lamp immediately lights.  When the switch is opened, the lamp immediately darkens: (Figure<ref>02352.png below</ref>)
</para>

<image>02352.png<caption>Lamp appears to immediately respond to switch.</caption></image> 

<para>
Actually, an incandescent lamp takes a short time for its filament to warm up and emit light after receiving an electric current of sufficient magnitude to power it, so the effect is not instant.  However, what I'd like to focus on is the immediacy of the electric current itself, not the response time of the lamp filament.  For all practical purposes, the effect of switch action is instant at the lamp's location.  Although electrons move through wires very slowly, the overall effect of electrons pushing against each other happens at the speed of light (approximately 186,000 miles per <italic>second</italic>!).
</para>

<para>
What would happen, though, if the wires carrying power to the lamp were 186,000 miles long?  Since we know the effects of electricity do have a finite speed (albeit very fast), a set of very long wires should introduce a time delay into the circuit, delaying the switch's action on the lamp: (Figure<ref>02353.png below</ref>)
</para>

<image>02353.png<caption>At the speed of light, lamp responds after 1 second.</caption></image> 

<para>
Assuming no warm-up time for the lamp filament, and no resistance along the 372,000 mile length of both wires, the lamp would light up approximately one second after the switch closure.  Although the construction and operation of superconducting wires 372,000 miles in length would pose enormous practical problems, it is theoretically possible, and so this ``thought experiment'' is valid.  When the switch is opened again, the lamp will continue to receive power for one second of time after the switch opens, then it will de-energize.
</para>

<para>
One way of envisioning this is to imagine the electrons within a conductor as rail cars in a train: linked together with a small amount of ``slack'' or ``play'' in the couplings.  When one rail car (electron) begins to move, it pushes on the one ahead of it and pulls on the one behind it, but not before the slack is relieved from the couplings.  Thus, motion is transferred from car to car (from electron to electron) at a maximum velocity limited by the coupling slack, resulting in a much faster transfer of motion from the left end of the train (circuit) to the right end than the actual speed of the cars (electrons): (Figure<ref>02354.png below</ref>)
</para>

<image>02354.png<caption>Motion is transmitted sucessively from one car to next.</caption></image> 

<para>
Another analogy, perhaps more fitting for the subject of transmission lines, is that of waves in water.  Suppose a flat, wall-shaped object is suddenly moved horizontally along the surface of water, so as to produce a wave ahead of it.  The wave will travel as water molecules bump into each other, transferring wave motion along the water's surface far faster than the water molecules themselves are actually traveling: (Figure<ref>02355.png below</ref>)
</para>

<image>02355.png<caption>Wave motion in water.</caption></image> 

<para>
Likewise, electron motion ``coupling'' travels approximately at the speed of light, although the electrons themselves don't move that quickly.  In a very long circuit, this ``coupling'' speed would become noticeable to a human observer in the form of a short time delay between switch action and lamp action.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>In an electric circuit, the effects of electron motion travel approximately at the speed of light, although electrons within the conductors do not travel anywhere near that velocity.</item>
</itemize>

</section>





<section>
<sectiontitle>Characteristic impedance</sectiontitle>

<para>
Suppose, though, that we had a set of parallel wires of <italic>infinite</italic> length, with no lamp at the end.  What would happen when we close the switch?  Being that there is no longer a load at the end of the wires, this circuit is open.  Would there be no current at all? (Figure<ref>02356.png below</ref>)
</para>

<image>02356.png<caption>Driving an infinite transmission line.</caption></image> 

<para>
Despite being able to avoid wire resistance through the use of superconductors in this ``thought experiment,'' we cannot eliminate capacitance along the wires' lengths.  <italic>Any</italic> pair of conductors separated by an insulating medium creates capacitance between those conductors: (Figure<ref>02359.png below</ref>)
</para>

<image>02359.png<caption>Equivalent circuit showing stray capacitance between conductors.</caption></image> 

<para>
Voltage applied between two conductors creates an electric field between those conductors.  Energy is stored in this electric field, and this storage of energy results in an opposition to change in voltage.  The reaction of a capacitance against changes in voltage is described by the equation i = C(de/dt), which tells us that current will be drawn proportional to the voltage's rate of change over time.  Thus, when the switch is closed, the capacitance between conductors will react against the sudden voltage increase by charging up and drawing current from the source.  According to the equation, an instant rise in applied voltage (as produced by perfect switch closure) gives rise to an infinite charging current.
</para>

<para>
However, the current drawn by a pair of parallel wires will not be infinite, because there exists series impedance along the wires due to inductance. (Figure<ref>02357.png below</ref>)  Remember that current through <italic>any</italic> conductor develops a magnetic field of proportional magnitude. 
<comment>split for 2-ref tags</comment>
Energy is stored in this magnetic field, (Figure<ref>02358.png below</ref>) and this storage of energy results in an opposition to change in current.  Each wire develops a magnetic field as it carries charging current for the capacitance between the wires, and in so doing drops voltage according to the inductance equation e = L(di/dt).  This voltage drop limits the voltage rate-of-change across the distributed capacitance, preventing the current from ever reaching an infinite magnitude:
</para>

<image>02357.png<caption>Equivalent circuit showing stray capacitance and inductance.</caption></image> 

<para>

</para>


<image>02358.png<caption>Voltage charges capacitance, current charges  inductance.</caption></image> 

<para>
Because the electrons in the two wires transfer motion to and from each other at nearly the speed of light, the ``wave front'' of voltage and current change will propagate down the length of the wires at that same velocity, resulting in the distributed capacitance and inductance progressively charging to full voltage and current, respectively, like this: (Figures<ref>02360.png below</ref>, 
<ref>02361.png below</ref>, 
<ref>02362.png below</ref>, 
<ref>02363.png below</ref>)

<comment>formerly the above ref's needed to be on seperate lines for sml2latx.sed</comment>

</para>

<image>02360.png<caption>Uncharged transmission line.</caption></image> 

<para>

</para>


<image>02361.png<caption>Begin wave propagation.</caption></image> 

<para>

</para>


<image>02362.png<caption>Continue wave propagation.</caption></image> 

<bigspace>

<image>02363.png<caption>Propagate at speed of light.</caption></image> 

<para>
The end result of these interactions is a constant current of limited magnitude through the battery source.  Since the wires are infinitely long, their distributed capacitance will never fully charge to the source voltage, and their distributed inductance will never allow unlimited charging current.  In other words, this pair of wires will draw current from the source so long as the switch is closed, behaving as a constant load.  No longer are the wires merely conductors of electrical current and carriers of voltage, but now constitute a circuit component in themselves, with unique characteristics.  No longer are the two wires merely <italic>a pair of conductors</italic>, but rather a <italic>transmission line</italic>.
</para>

<index>Characteristic impedance</index>
<index>Impedance, characteristic</index>

<para>
As a constant load, the transmission line's response to applied voltage is resistive rather than reactive, despite being comprised purely of inductance and capacitance (assuming superconducting wires with zero resistance).  We can say this because there is no difference from the battery's perspective between a resistor eternally dissipating energy and an infinite transmission line eternally absorbing energy.  The impedance (resistance) of this line in ohms is called the <italic>characteristic impedance</italic>, and it is fixed by the geometry of the two conductors.  For a parallel-wire line with air insulation, the characteristic impedance may be calculated as such:
</para>

<image>12144.png</image> 

<para>
If the transmission line is coaxial in construction, the characteristic impedance follows a different equation:
</para>

<image>12145.png</image> 

<index>Velocity factor, transmission line</index>

<para>
In both equations, identical units of measurement must be used in both terms of the fraction.  If the insulating material is other than air (or a vacuum), both the characteristic impedance and the propagation velocity will be affected.  The ratio of a transmission line's true propagation velocity and the speed of light in a vacuum is called the <italic>velocity factor</italic> of that line.
</para>

<index>Relative permittivity</index>
<index>Permittivity, relative</index>
<index>Dielectric constant</index>

<para>
Velocity factor is purely a factor of the insulating material's relative permittivity (otherwise known as its <italic>dielectric constant</italic>), defined as the ratio of a material's electric field permittivity to that of a pure vacuum.  The velocity factor of any cable type -- coaxial or otherwise -- may be calculated quite simply by the following formula:
</para>

<image>12148.png</image> 

<index>Natural impedance</index>

<para>
Characteristic impedance is also known as <italic>natural impedance</italic>, and it refers to the equivalent resistance of a transmission line if it were infinitely long, owing to distributed capacitance and inductance as the voltage and current ``waves'' propagate along its length at a propagation velocity equal to some large fraction of light speed.
</para>

<para>
It can be seen in either of the first two equations that a transmission line's characteristic impedance (Z<subscript>0</subscript>) increases as the conductor spacing increases.  If the conductors are moved away from each other, the distributed capacitance will decrease (greater spacing between capacitor ``plates''), and the distributed inductance will increase (less cancellation of the two opposing magnetic fields).  Less parallel capacitance and more series inductance results in a smaller current drawn by the line for any given amount of applied voltage, which by definition is a greater impedance.  Conversely, bringing the two conductors closer together increases the parallel capacitance and decreases the series inductance.  Both changes result in a larger current drawn for a given applied voltage, equating to a lesser impedance.
</para>

<para>
Barring any dissipative effects such as dielectric ``leakage'' and conductor resistance, the characteristic impedance of a transmission line is equal to the square root of the ratio of the line's inductance per unit length divided by the line's capacitance per unit length:
</para>

<image>12146.png</image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>transmission line</italic> is a pair of parallel conductors exhibiting certain characteristics due to distributed capacitance and inductance along its length.</item>
<item>When a voltage is suddenly applied to one end of a transmission line, both a voltage ``wave'' and a current ``wave'' propagate along the line at nearly light speed.</item>
<item>If a DC voltage is applied to one end of an infinitely long transmission line, the line will draw current from the DC source as though it were a constant resistance.</item>
<item>The <italic>characteristic impedance</italic> (Z<subscript>0</subscript>) of a transmission line is the resistance it would exhibit if it were infinite in length.  This is entirely different from leakage resistance of the dielectric separating the two conductors, and the metallic resistance of the wires themselves.  Characteristic impedance is purely a function of the capacitance and inductance distributed along the line's length, and would exist even if the dielectric were perfect (infinite parallel resistance) and the wires superconducting (zero series resistance).</item>
<item><italic>Velocity factor</italic> is a fractional value relating a transmission line's propagation speed to the speed of light in a vacuum.  Values range between 0.66 and 0.80 for typical two-wire lines and coaxial cables.  For any cable type, it is equal to the reciprocal (1/x) of the square root of the relative permittivity of the cable's insulation.</item>
</itemize>

</section>





<section>
<sectiontitle>Finite-length transmission lines</sectiontitle>

<para>
A transmission line of infinite length is an interesting abstraction, but physically impossible.  All transmission lines have some finite length, and as such do not behave precisely the same as an infinite line.  If that piece of 50 <OMEGA> ``RG-58/U'' cable I measured with an ohmmeter years ago had been infinitely long, I actually would have been able to measure 50 <OMEGA> worth of resistance between the inner and outer conductors.  But it was not infinite in length, and so it measured as ``open'' (infinite resistance).
</para>

<index>Surge impedance</index>

<para>
Nonetheless, the characteristic impedance rating of a transmission line is important even when dealing with limited lengths.  An older term for characteristic impedance, which I like for its descriptive value, is <italic>surge impedance</italic>.  If a transient voltage (a ``surge'') is applied to the end of a transmission line, the line will draw a current proportional to the surge voltage magnitude divided by the line's surge impedance (I=E/Z).  This simple, Ohm's Law relationship between current and voltage will hold true for a limited period of time, but not indefinitely.  
</para>

<para>
If the end of a transmission line is open-circuited -- that is, left unconnected -- the current ``wave'' propagating down the line's length will have to stop at the end, since electrons cannot flow where there is no continuing path.  This abrupt cessation of current at the line's end causes a ``pile-up'' to occur along the length of the transmission line, as the electrons successively find no place to go.  Imagine a train traveling down the track with slack between the rail car couplings: if the lead car suddenly crashes into an immovable barricade, it will come to a stop, causing the one behind it to come to a stop as soon as the first coupling slack is taken up, which causes the next rail car to stop as soon as the next coupling's slack is taken up, and so on until the last rail car stops.  The train does not come to a halt together, but rather in sequence from first car to last: (Figure<ref>02364.png below</ref>)
</para>

<image>02364.png<caption>Reflected wave.</caption></image> 

<index>Incident wave</index>
<index>Reflected wave</index>

<para>
A signal propagating from the source-end of a transmission line to the load-end is called an <italic>incident wave</italic>.  The propagation of a signal from load-end to source-end (such as what happened in this example with current encountering the end of an open-circuited transmission line) is called a <italic>reflected wave</italic>.
</para>

<para>
When this electron ``pile-up'' propagates back to the battery, current at the battery ceases, and the line acts as a simple open circuit.  All this happens very quickly for transmission lines of reasonable length, and so an ohmmeter measurement of the line never reveals the brief time period where the line actually behaves as a resistor.  For a mile-long cable with a velocity factor of 0.66 (signal propagation velocity is 66% of light speed, or 122,760 miles per second), it takes only 1/122,760 of a second (8.146 microseconds) for a signal to travel from one end to the other.  For the current signal to reach the line's end and ``reflect'' back to the source, the round-trip time is twice this figure, or 16.292 <mu>s.
</para>

<index>Time-domain reflectometer</index>
<index>Reflectometer, time-domain</index>

<para>
High-speed measurement instruments are able to detect this transit time from source to line-end and back to source again, and may be used for the purpose of determining a cable's length.  This technique may also be used for determining the presence <italic>and</italic> location of a break in one or both of the cable's conductors, since a current will ``reflect'' off the wire break just as it will off the end of an open-circuited cable.  Instruments designed for such purposes are called <italic>time-domain reflectometers</italic> (TDRs).  The basic principle is identical to that of sonar range-finding: generating a sound pulse and measuring the time it takes for the echo to return.
</para>

<para>
A similar phenomenon takes place if the end of a transmission line is short-circuited: when the voltage wave-front reaches the end of the line, it is reflected back to the source, because voltage cannot exist between two electrically common points.  When this reflected wave reaches the source, the source sees the entire transmission line as a short-circuit.  Again, this happens as quickly as the signal can propagate round-trip down and up the transmission line at whatever velocity allowed by the dielectric material between the line's conductors.
</para>

<para>
A simple experiment illustrates the phenomenon of wave reflection in transmission lines.  Take a length of rope by one end and ``whip'' it with a rapid up-and-down motion of the wrist.  A wave may be seen traveling down the rope's length until it dissipates entirely due to friction: (Figure<ref>02365.png below</ref>)
</para>

<image>02365.png<caption>Lossy transmission line.</caption></image> 

<para>
This is analogous to a long transmission line with internal loss: the signal steadily grows weaker as it propagates down the line's length, never reflecting back to the source.  However, if the far end of the rope is secured to a solid object at a point prior to the incident wave's total dissipation, a second wave will be reflected back to your hand: (Figure<ref>02366.png below</ref>)
</para>

<image>02366.png<caption>Reflected wave.</caption></image> 

<para>
Usually, the purpose of a transmission line is to convey electrical energy from one point to another.  Even if the signals are intended for information only, and not to power some significant load device, the ideal situation would be for all of the original signal energy to travel from the source to the load, and then be completely absorbed or dissipated by the load for maximum signal-to-noise ratio.  Thus, ``loss'' along the length of a transmission line is undesirable, as are reflected waves, since reflected energy is energy not delivered to the end device.
</para>

<para>
Reflections may be eliminated from the transmission line if the load's impedance exactly equals the characteristic (``surge'') impedance of the line.  For example, a 50 <OMEGA> coaxial cable that is either open-circuited or short-circuited will reflect all of the incident energy back to the source.  However, if a 50 <OMEGA> resistor is connected at the end of the cable, there will be no reflected energy, all signal energy being dissipated by the resistor.
</para>

<para>
This makes perfect sense if we return to our hypothetical, infinite-length transmission line example.  A transmission line of 50 <OMEGA> characteristic impedance and infinite length behaves exactly like a 50 <OMEGA> resistance as measured from one end.  (Figure<ref>02367.png below</ref>)

<comment>split for 2-ref tags</comment>
If we cut this line to some finite length, it will behave as a 50 <OMEGA> resistor to a constant source of DC voltage for a brief time, but then behave like an open- or a short-circuit, depending on what condition we leave the cut end of the line: open (Figure<ref>02368.png below</ref>) 

<comment>split for 2-ref tags</comment>
or shorted. (Figure<ref>02369.png below</ref>) 

However, if we <italic>terminate</italic> the line with a 50 <OMEGA> resistor, the line will once again behave as a 50 <OMEGA> resistor, indefinitely: the same as if it were of infinite length again: (Figure<ref>02370.png below</ref>)
</para>

<image>02367.png<caption>Infinite transmission line looks like resistor.</caption></image> 

<para>

</para>


<image>02368.png<caption>One mile transmission.</caption></image> 

<para>

</para>


<image>02369.png<caption>Shorted transmission line.</caption></image> 

<para>

</para>


<image>02370.png<caption>Line terminated in characteristic impedance.</caption></image> 

<para>
In essence, a terminating resistor matching the natural impedance of the transmission line makes the line ``appear'' infinitely long from the perspective of the source, because a resistor has the ability to eternally dissipate energy in the same way a transmission line of infinite length is able to eternally absorb energy.
</para>

<para>
Reflected waves will also manifest if the terminating resistance isn't precisely equal to the characteristic impedance of the transmission line, not just if the line is left unconnected (open) or jumpered (shorted).  Though the energy reflection will not be total with a terminating impedance of slight mismatch, it will be partial.  This happens whether or not the terminating resistance is <italic>greater</italic> or <italic>less</italic> than the line's characteristic impedance.
</para>

<para>
Re-reflections of a reflected wave may also occur at the <italic>source end</italic> of a transmission line, if the source's internal impedance (Thevenin equivalent impedance) is not exactly equal to the line's characteristic impedance.  A reflected wave returning back to the source will be dissipated entirely if the source impedance matches the line's, but will be reflected back toward the line end like another incident wave, at least partially, if the source impedance does not match the line.  This type of reflection may be particularly troublesome, as it makes it appear that the source has transmitted another pulse.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Characteristic impedance is also known as <italic>surge impedance</italic>, due to the temporarily resistive behavior of any length transmission line.</item>
<item>A finite-length transmission line will appear to a DC voltage source as a constant resistance for some short time, then as whatever impedance the line is terminated with.  Therefore, an open-ended cable simply reads ``open'' when measured with an ohmmeter, and ``shorted'' when its end is short-circuited.</item>
<item>A transient (``surge'') signal applied to one end of an open-ended or short-circuited transmission line will ``reflect'' off the far end of the line as a secondary wave.  A signal traveling on a transmission line from source to load is called an <italic>incident wave</italic>; a signal ``bounced'' off the end of a transmission line, traveling from load to source, is called a <italic>reflected wave</italic>.</item>
<item>Reflected waves will also appear in transmission lines terminated by resistors not precisely matching the characteristic impedance.</item>
<item>A finite-length transmission line may be made to appear infinite in length if terminated by a resistor of equal value to the line's characteristic impedance.  This eliminates all signal reflections.</item>
<item>A reflected wave may become re-reflected off the source-end of a transmission line if the source's internal impedance does not match the line's characteristic impedance.  This re-reflected wave will appear, of course, like another pulse signal transmitted from the source.</item>
</itemize>

</section>





<section>
<sectiontitle>``Long'' and ``short'' transmission lines</sectiontitle>

<para>
In DC and low-frequency AC circuits, the characteristic impedance of parallel wires is usually ignored.  This includes the use of coaxial cables in instrument circuits, often employed to protect weak voltage signals from being corrupted by induced ``noise'' caused by stray electric and magnetic fields.  This is due to the relatively short timespans in which reflections take place in the line, as compared to the period of the waveforms or pulses of the significant signals in the circuit.  As we saw in the last section, if a transmission line is connected to a DC voltage source, it will behave as a resistor equal in value to the line's characteristic impedance only for as long as it takes the incident pulse to reach the end of the line and return as a reflected pulse, back to the source.  After that time (a brief 16.292 <mu>s for the mile-long coaxial cable of the last example), the source ``sees'' only the terminating impedance, whatever that may be.
</para>

<para>
If the circuit in question handles low-frequency AC power, such short time delays introduced by a transmission line between when the AC source outputs a voltage peak and when the source ``sees'' that peak loaded by the terminating impedance (round-trip time for the incident wave to reach the line's end and reflect back to the source) are of little consequence.  Even though we know that signal magnitudes along the line's length are not equal at any given time due to signal propagation at (nearly) the speed of light, the actual phase difference between start-of-line and end-of-line signals is negligible, because line-length propagations occur within a very small fraction of the AC waveform's period.  For all practical purposes, we can say that voltage along all respective points on a low-frequency, two-conductor line are equal and in-phase with each other at any given point in time.
</para>

<para>
In these cases, we can say that the transmission lines in question are <italic>electrically short</italic>, because their propagation effects are much quicker than the periods of the conducted signals.  By contrast, an <italic>electrically long</italic> line is one where the propagation time is a large fraction or even a multiple of the signal period.  A ``long'' line is generally considered to be one where the source's signal waveform completes at least a quarter-cycle (90<superscript>o</superscript> of ``rotation'') before the incident signal reaches line's end.  Up until this chapter in the <italic>Lessons In Electric Circuits</italic> book series, all connecting lines were assumed to be electrically short.
</para>

<index>Wavelength</index>

<para>
To put this into perspective, we need to express the distance traveled by a voltage or current signal along a transmission line in relation to its source frequency.  An AC waveform with a frequency of 60 Hz completes one cycle in 16.66 ms.  At light speed (186,000 mile/s), this equates to a distance of 3100 miles that a voltage or current signal will propagate in that time.  If the velocity factor of the transmission line is less than 1, the propagation velocity will be less than 186,000 miles per second, and the distance less by the same factor.  But even if we used the coaxial cable's velocity factor from the last example (0.66), the distance is still a very long 2046 miles!  Whatever distance we calculate for a given frequency is called the <italic>wavelength</italic> of the signal.
</para>

<para>
A simple formula for calculating wavelength is as follows:
</para>

<image>12147.png</image> 

<index><lambda>, symbol for wavelength</index>

<para>
The lower-case Greek letter ``lambda'' (<lambda>) represents wavelength, in whatever unit of length used in the velocity figure (if miles per second, then wavelength in miles; if meters per second, then wavelength in meters).  Velocity of propagation is usually the speed of light when calculating signal wavelength in open air or in a vacuum, but will be less if the transmission line has a velocity factor less than 1.
</para>

<para>
If a ``long'' line is considered to be one at least 1/4 wavelength in length, you can see why all connecting lines in the circuits discussed thusfar have been assumed ``short.''  For a 60 Hz AC power system, power lines would have to exceed 775 miles in length before the effects of propagation time became significant.  Cables connecting an audio amplifier to speakers would have to be over 4.65 miles in length before line reflections would significantly impact a 10 kHz audio signal!
</para>

<para>
When dealing with radio-frequency systems, though, transmission line length is far from trivial.  Consider a 100 MHz radio signal: its wavelength is a mere 9.8202 feet, even at the full propagation velocity of light (186,000 mile/s).  A transmission line carrying this signal would not have to be more than about 2-1/2 feet in length to be considered ``long!''  With a cable velocity factor of 0.66, this critical length shrinks to 1.62 feet.
</para>

<para>
When an electrical source is connected to a load via a ``short'' transmission line, the load's impedance dominates the circuit.  This is to say, when the line is short, its own characteristic impedance is of little consequence to the circuit's behavior.  We see this when testing a coaxial cable with an ohmmeter: the cable reads ``open'' from center conductor to outer conductor if the cable end is left unterminated.  Though the line acts as a resistor for a very brief period of time after the meter is connected (about 50 <OMEGA> for an RG-58/U cable), it immediately thereafter behaves as a simple ``open circuit:'' the impedance of the line's open end.  Since the combined response time of an ohmmeter and the human being using it <italic>greatly exceeds</italic> the round-trip propagation time up and down the cable, it is ``electrically short'' for this application, and we only register the terminating (load) impedance.  It is the extreme speed of the propagated signal that makes us unable to detect the cable's 50 <OMEGA> transient impedance with an ohmmeter.  
</para>

<para>
If we use a coaxial cable to conduct a DC voltage or current to a load, and no component in the circuit is capable of measuring or responding quickly enough to ``notice'' a reflected wave, the cable is considered ``electrically short'' and its impedance is irrelevant to circuit function.  Note how the electrical ``shortness'' of a cable is relative to the application: in a DC circuit where voltage and current values change slowly, nearly any physical length of cable would be considered ``short'' from the standpoint of characteristic impedance and reflected waves.  Taking the same length of cable, though, and using it to conduct a high-frequency AC signal could result in a vastly different assessment of that cable's ``shortness!''
</para>

<para>
When a source is connected to a load via a ``long'' transmission line, the line's own characteristic impedance dominates over load impedance in determining circuit behavior.  In other words, an electrically ``long'' line acts as the principal component in the circuit, its own characteristics overshadowing the load's.  With a source connected to one end of the cable and a load to the other, current drawn from the source is a function primarily of the line and not the load.  This is increasingly true the longer the transmission line is.  Consider our hypothetical 50 <OMEGA> cable of infinite length, surely the ultimate example of a ``long'' transmission line: no matter what kind of load we connect to one end of this line, the source (connected to the other end) will only see 50 <OMEGA> of impedance, because the line's infinite length prevents the signal from <italic>ever reaching</italic> the end where the load is connected.  In this scenario, line impedance exclusively defines circuit behavior, rendering the load completely irrelevant.
</para>

<para>
The most effective way to minimize the impact of transmission line length on circuit behavior is to match the line's characteristic impedance to the load impedance.  If the load impedance is equal to the line impedance, then <italic>any</italic> signal source connected to the other end of the line will ``see'' the exact same impedance, and will have the exact same amount of current drawn from it, regardless of line length.  In this condition of perfect impedance matching, line length only affects the amount of time delay from signal departure at the source to signal arrival at the load.  However, perfect matching of line and load impedances is not always practical or possible.
</para>

<para>
The next section discusses the effects of ``long'' transmission lines, especially when line length happens to match specific fractions or multiples of signal wavelength.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Coaxial cabling is sometimes used in DC and low-frequency AC circuits as well as in high-frequency circuits, for the excellent immunity to induced ``noise'' that it provides for signals.</item>
<item>When the period of a transmitted voltage or current signal greatly exceeds the propagation time for a transmission line, the line is considered <italic>electrically short</italic>.  Conversely, when the propagation time is a large fraction or multiple of the signal's period, the line is considered <italic>electrically long</italic>.</item>
<item>A signal's <italic>wavelength</italic> is the physical distance it will propagate in the timespan of one period.  Wavelength is calculated by the formula <lambda>=v/f, where ``<lambda>'' is the wavelength, ``v'' is the propagation velocity, and ``f'' is the signal frequency. </item>
<item>A rule-of-thumb for transmission line ``shortness'' is that the line must be at least 1/4 wavelength before it is considered ``long.''</item>
<item>In a circuit with a ``short'' line, the terminating (load) impedance dominates circuit behavior.  The source effectively sees nothing but the load's impedance, barring any resistive losses in the transmission line.</item>
<item>In a circuit with a ``long'' line, the line's own characteristic impedance dominates circuit behavior.  The ultimate example of this is a transmission line of infinite length: since the signal will <italic>never</italic> reach the load impedance, the source only ``sees'' the cable's characteristic impedance.</item>
<item>When a transmission line is terminated by a load precisely matching its impedance, there are no reflected waves and thus no problems with line length.</item>
</itemize>

</section>






<section>
<sectiontitle>Standing waves and resonance</sectiontitle>

<index>Standing waves</index>

<para>
Whenever there is a mismatch of impedance between transmission line and load, reflections will occur.  If the incident signal is a continuous AC waveform, these reflections will mix with more of the oncoming incident waveform to produce stationary waveforms called <italic>standing waves</italic>.
</para>

<para>
The following illustration shows how a triangle-shaped incident waveform turns into a mirror-image reflection upon reaching the line's unterminated end.  The transmission line in this illustrative sequence is shown as a single, thick line rather than a pair of wires, for simplicity's sake.  The incident wave is shown traveling from left to right, while the reflected wave travels from right to left: (Figure<ref>02372.png below</ref>)
</para>

<image>02372.png<caption>Incident wave reflects off end of unterminated transmission line.</caption></image> 

<para>
If we add the two waveforms together, we find that a third, stationary waveform is created along the line's length: (Figure<ref>02371.png below</ref>)
</para>

<image>02371.png<caption>The sum of the incident and reflected waves is a stationary wave.</caption></image> 

<para>
This third, ``standing'' wave, in fact, represents the only voltage along the line, being the representative sum of incident and reflected voltage waves.  It oscillates in instantaneous magnitude, but does not propagate down the cable's length like the incident or reflected waveforms causing it.  Note the dots along the line length marking the ``zero'' points of the standing wave (where the incident and reflected waves cancel each other), and how those points never change position: (Figure<ref>02376.png below</ref>)
</para>

<image>02376.png<caption>The standing wave does not propgate along the transmission line.</caption></image> 

<para>
Standing waves are quite abundant in the physical world.  Consider a string or rope, shaken at one end, and tied down at the other (only one half-cycle of hand motion shown, moving downward): (Figure<ref>02373.png below</ref>)
</para>

<image>02373.png<caption>Standing waves on a rope.</caption></image> 

<index>Node, vs. antinode</index>
<index>Antinode</index>

<para>
Both the nodes (points of little or no vibration) and the antinodes (points of maximum vibration) remain fixed along the length of the string or rope.  The effect is most pronounced when the free end is shaken at just the right frequency.  Plucked strings exhibit the same ``standing wave'' behavior, with ``nodes'' of maximum and minimum vibration along their length.  The major difference between a plucked string and a shaken string is that the plucked string supplies its own ``correct'' frequency of vibration to maximize the standing-wave effect: (Figure<ref>02374.png below</ref>)
</para>

<image>02374.png<caption>Standing waves on a plucked string.</caption></image> 

<para>
Wind blowing across an open-ended tube also produces standing waves; this time, the waves are vibrations of air molecules (sound) within the tube rather than vibrations of a solid object.  Whether the standing wave terminates in a node (minimum amplitude) or an antinode (maximum amplitude) depends on whether the other end of the tube is open or closed: (Figure<ref>02375.png below</ref>)
</para>

<image>02375.png<caption>Standing sound waves in open ended tubes.</caption></image> 

<para>
A closed tube end must be a wave node, while an open tube end must be an antinode.  By analogy, the anchored end of a vibrating string must be a node, while the free end (if there is any) must be an antinode.
</para>

<index>Resonance</index>

<para>
Note how there is more than one wavelength suitable for producing standing waves of vibrating air within a tube that precisely match the tube's end points.  This is true for all standing-wave systems: standing waves will resonate with the system for any frequency (wavelength) correlating to the node/antinode points of the system.  Another way of saying this is that there are multiple resonant frequencies for any system supporting standing waves.
</para>

<index>Harmonic</index>
<index>Fundamental frequency</index>
<index>Frequency, fundamental</index>
<index>Overtone</index>

<para>
All higher frequencies are integer-multiples of the lowest (fundamental) frequency for the system.  The sequential progression of harmonics from one resonant frequency to the next defines the <italic>overtone</italic> frequencies for the system: (Figure<ref>02377.png below</ref>)

</para>

<image>02377.png<caption>Harmonics (overtones) in open ended pipes</caption></image> 

<para>
The actual frequencies (measured in Hertz) for any of these harmonics or overtones depends on the physical length of the tube and the waves' propagation velocity, which is the speed of sound in air.
</para>

<para>
Because transmission lines support standing waves, and force these waves to possess nodes and antinodes according to the type of termination impedance at the load end, they also exhibit resonance at frequencies determined by physical length and propagation velocity.  Transmission line resonance, though, is a bit more complex than resonance of strings or of air in tubes, because we must consider both voltage waves and current waves. 
</para>

<para>
This complexity is made easier to understand by way of computer simulation.  To begin, let's examine a perfectly matched source, transmission line, and load.  All components have an impedance of 75 <OMEGA>: (Figure<ref>02378.png below</ref>)
</para>

<image>02378.png<caption>Perfectly matched transmission line.</caption></image> 

<para>
Using SPICE to simulate the circuit, we'll specify the transmission line (<typewriter>t1</typewriter>) with a 75 <OMEGA> characteristic impedance (<typewriter>z0=75</typewriter>) and a propagation delay of 1 microsecond (<typewriter>td=1u</typewriter>).  This is a convenient method for expressing the physical length of a transmission line: the amount of time it takes a wave to propagate down its entire length.  If this were a real 75 <OMEGA> cable -- perhaps a type ``RG-59B/U'' coaxial cable, the type commonly used for cable television distribution -- with a velocity factor of 0.66, it would be about 648 feet long.  Since 1 <mu>s is the period of a 1 MHz signal, I'll choose to sweep the frequency of the AC source from (nearly) zero to that figure, to see how the system reacts when exposed to signals ranging from DC to 1 wavelength.
</para>

<para>
Here is the SPICE netlist for the circuit shown above:
</para>

<bigspace>

<table>
<literal>
Transmission line
v1 1 0 ac 1 sin
rsource 1 2 75
t1 2 0 3 0 z0=75 td=1u
rload 3 0 75 
.ac lin 101 1m 1meg
* Using ``Nutmeg'' program to plot analysis
.end
</literal>
</table>

<bigspace>

<para>
Running this simulation and plotting the source impedance drop (as an indication of current), the source voltage, the line's source-end voltage, and the load voltage, we see that the source voltage -- shown as <typewriter>vm(1)</typewriter> (voltage magnitude between node 1 and the implied ground point of node 0) on the graphic plot -- registers a steady 1 volt, while every other voltage registers a steady 0.5 volts: (Figure<ref>22001.png below</ref>) 
</para>

<image>22001.png<caption>No resonances on a matched transmission line.</caption></image> 

<para>
In a system where all impedances are perfectly matched, there can be no standing waves, and therefore no resonant ``peaks'' or ``valleys'' in the Bode plot.
</para>

<para>
Now, let's change the load impedance to 999 M<OMEGA>, to simulate an open-ended transmission line.  (Figure<ref>02379.png below</ref>)
<comment>split for double ref</comment>
We should definitely see some reflections on the line now as the frequency is swept from 1 mHz to 1 MHz: (Figure<ref>22002.png below</ref>)
</para>

<image>02379.png<caption>Open ended transmission line.</caption></image> 


<table>
<literal>
Transmission line
v1 1 0 ac 1 sin
rsource 1 2 75
t1 2 0 3 0 z0=75 td=1u
rload 3 0 999meg 
.ac lin 101 1m 1meg
* Using ``Nutmeg'' program to plot analysis
.end
</literal>
</table>

<image>22002.png<caption>Resonances on open transmission line.</caption></image> 

<para>
Here, both the supply voltage <typewriter>vm(1)</typewriter> and the line's load-end voltage <typewriter>vm(3)</typewriter> remain steady at 1 volt.  The other voltages dip and peak at different frequencies along the sweep range of 1 mHz to 1 MHz.  There are five points of interest along the horizontal axis of the analysis: 0 Hz, 250 kHz, 500 kHz, 750 kHz, and 1 MHz.  We will investigate each one with regard to voltage and current at different points of the circuit.
</para>

<para>
At 0 Hz (actually 1 mHz), the signal is practically DC, and the circuit behaves much as it would given a 1-volt DC battery source.  There is no circuit current, as indicated by zero voltage drop across the source impedance (Z<subscript>source</subscript>: <typewriter>vm(1,2)</typewriter>), and full source voltage present at the source-end of the transmission line (voltage measured between node 2 and node 0: <typewriter>vm(2)</typewriter>). (Figure<ref>02381.png below</ref>)
</para>

<image>02381.png<caption>At f=0: input: V=1, I=0; end: V=1, I=0.</caption></image> 

<para>
At 250 kHz, we see zero voltage and maximum current at the source-end of the transmission line, yet still full voltage at the load-end: (Figure<ref>02382.png below</ref>)

</para>

<image>02382.png<caption>At f=250 KHz: input: V=0, I=13.33 mA; end: V=1 I=0.</caption></image> 

<para>
You might be wondering, how can this be?  How can we get full source voltage at the line's open end while there is zero voltage at its entrance?  The answer is found in the paradox of the standing wave.  With a source frequency of 250 kHz, the line's length is precisely right for 1/4 wavelength to fit from end to end.  With the line's load end open-circuited, there can be no current, but there will be voltage.  Therefore, the load-end of an open-circuited transmission line is a current node (zero point) and a voltage antinode (maximum amplitude): (Figure<ref>02383.png below</ref>)
</para>

<image>02383.png<caption>Open end of transmission line shows current node, voltage antinode at open end.</caption></image> 

<para>
At 500 kHz, exactly one-half of a standing wave rests on the transmission line, and here we see another point in the analysis where the source current drops off to nothing and the source-end voltage of the transmission line rises again to full voltage: (Figure<ref>02384.png below</ref>) 
</para>

<image>02384.png<caption> Full standing wave on half wave open transmission line.</caption></image> 

<para>
At 750 kHz, the plot looks a lot like it was at 250 kHz: zero source-end voltage (<typewriter>vm(2)</typewriter>) and maximum current (<typewriter>vm(1,2)</typewriter>).  This is due to 3/4 of a wave poised along the transmission line, resulting in the source ``seeing'' a short-circuit where it connects to the transmission line, even though the other end of the line is open-circuited: (Figure<ref>02385.png below</ref>)
</para>

<image>02385.png<caption>1 1/2 standing waves on 3/4 wave open transmission line.</caption></image> 

<para>
When the supply frequency sweeps up to 1 MHz, a full standing wave exists on the transmission line.  At this point, the source-end of the line experiences the same voltage and current amplitudes as the load-end: full voltage and zero current.  In essence, the source ``sees'' an open circuit at the point where it connects to the transmission line. (Figure<ref>02386.png below</ref>)
</para>

<image>02386.png<caption>Double standing waves on full wave open transmission line.</caption></image> 

<para>
In a similar fashion, a short-circuited transmission line generates standing waves, although the node and antinode assignments for voltage and current are reversed: at the shorted end of the line, there will be zero voltage (node) and maximum current (antinode).  What follows is the SPICE simulation (circuit Figure<ref>02380.png below</ref>
<comment>split for double ref</comment>
and illustrations of what happens (Figure<ref>22003.png 2nd-below</ref> at resonances) 
at all the interesting frequencies: 0 Hz (Figure<ref>02388.png below</ref>) ,
<comment>formerly, split for double ref</comment>
250 kHz (Figure<ref>02389.png below</ref>),
<comment>split for double ref below</comment>
500 kHz (Figure<ref>02390.png below</ref>),
<comment>split for double ref </comment>
750 kHz (Figure<ref>02391.png below</ref>),
<comment>split for double ref </comment>
and 1 MHz (Figure<ref>02392.png below</ref>).
<comment>formerly, split for double ref</comment>
The short-circuit jumper is simulated by a 1 <mu><OMEGA> load impedance: (Figure<ref>02380.png below</ref>)
</para>

<image>02380.png<caption>Shorted transmission line.</caption></image> 

<bigspace>

<table>
<literal>
Transmission line
v1 1 0 ac 1 sin
rsource 1 2 75
t1 2 0 3 0 z0=75 td=1u
rload 3 0 1u 
.ac lin 101 1m 1meg
* Using ``Nutmeg'' program to plot analysis
.end
</literal>
</table>

<bigspace>

<image>22003.png<caption>Resonances on shorted transmission line</caption></image> 

<para>

</para>


<image>02388.png<caption>At f=0 Hz: input: V=0, I=13.33 mA; end: V=0, I=13.33 mA.</caption></image> 

<para>

</para>


<image>02389.png<caption>Half wave  standing wave pattern on 1/4 wave shorted transmission line.</caption></image> 

<para>

</para>


<image>02390.png<caption>Full wave standing wave pattern  on half wave shorted transmission line.</caption></image> 

<para>

</para>


<image>02391.png<caption>1 1/2 standing wavepattern  on 3/4 wave shorted transmission line.</caption></image> 

<para>

</para>


<image>02392.png<caption>Double standing waves on full wave shorted transmission line.</caption></image> 

<para>
In both these circuit examples, an open-circuited line and a short-circuited line, the energy reflection is total: 100% of the incident wave reaching the line's end gets reflected back toward the source.  If, however, the transmission line is terminated in some impedance other than an open or a short, the reflections will be less intense, as will be the difference between minimum and maximum values of voltage and current along the line.
</para>

<para>
Suppose we were to terminate our example line with a 100 <OMEGA> resistor instead of a 75 <OMEGA> resistor. (Figure<ref>02387.png below</ref>) 
<comment>split for double ref</comment>
Examine the results of the corresponding SPICE analysis to see the effects of impedance mismatch at different source frequencies: (Figure<ref>22004.png below</ref>)

</para>

<image>02387.png<caption>Transmission line terminated in a mismatch</caption></image> 


<table>
<literal>
Transmission line
v1 1 0 ac 1 sin
rsource 1 2 75
t1 2 0 3 0 z0=75 td=1u
rload 3 0 100
.ac lin 101 1m 1meg
* Using ``Nutmeg'' program to plot analysis
.end
</literal>
</table>


<image>22004.png<caption>Weak resonances on a mismatched transmission line</caption></image> 

<para>
If we run another SPICE analysis, this time printing numerical results rather than plotting them, we can discover exactly what is happening at all the interesting frequencies: 
(DC, Figure<ref>02394.png below</ref>; 
250 kHz,  Figure<ref>02394.png below</ref>;
500 kHz,  Figure<ref>02395.png below</ref>;
750 kHz,  Figure<ref>02396.png below</ref>;
and 1 MHz,  Figure<ref>02397.png below</ref>).
</para>


<table>
<literal>
Transmission line
v1 1 0 ac 1 sin
rsource 1 2 75
t1 2 0 3 0 z0=75 td=1u
rload 3 0 100
.ac lin 5 1m 1meg
.print ac v(1,2) v(1) v(2) v(3)
.end
</literal>
</table>


<table>
<literal>
freq          v(1,2)      v(1)        v(2)        v(3)        
1.000E-03     4.286E-01   1.000E+00   5.714E-01   5.714E-01
2.500E+05     5.714E-01   1.000E+00   4.286E-01   5.714E-01
5.000E+05     4.286E-01   1.000E+00   5.714E-01   5.714E-01
7.500E+05     5.714E-01   1.000E+00   4.286E-01   5.714E-01
1.000E+06     4.286E-01   1.000E+00   5.714E-01   5.714E-01
</literal>
</table>


<para>
At all frequencies, the source voltage, <typewriter>v(1)</typewriter>, remains steady at 1 volt, as it should.  The load voltage, <typewriter>v(3)</typewriter>, also remains steady, but at a lesser voltage: 0.5714 volts.  However, both the line input voltage (<typewriter>v(2)</typewriter>) and the voltage dropped across the source's 75 <OMEGA> impedance (<typewriter>v(1,2)</typewriter>, indicating current drawn from the source) vary with frequency.
</para>

<image>02394.png<caption>At f=0 Hz: input: V=0.57.14, I=5.715 mA; end: V=0.5714, I=5.715 mA.</caption></image> 


<para>

</para>


<image>02395.png<caption>At f=250 KHz: input: V=0.4286, I=7.619 mA; end: V=0.5714, I=7.619 mA.</caption></image> 

<para>

</para>


<image>02396.png<caption>At f=500 KHz: input: V=0.5714, I=5.715 mA; end: V=5.714, I=5.715 mA.</caption></image> 

<para>

</para>


<image>02397.png<caption>At f=750 KHz: input: V=0.4286, I=7.619 mA; end: V=0.5714, I=7.619 mA.</caption></image> 

<para>

</para>


<image>02398.png<caption>At f=1 MHz: input: V=0.5714, I=5.715 mA; end: V=0.5714, I=0.5715 mA.</caption></image> 

<para>
At odd harmonics of the fundamental frequency (250 kHz, Figure<ref>02395.png 3rd-above</ref>
<comment>split for double ref</comment>
and 750 kHz, Figure<ref>02397.png above</ref>)
<comment>split for double ref</comment>
we see differing levels of voltage at each end of the transmission line, because at those frequencies the standing waves terminate at one end in a node and at the other end in an antinode.  Unlike the open-circuited and short-circuited transmission line examples, the maximum and minimum voltage levels along this transmission line do not reach the same extreme values of 0% and 100% source voltage, but we still have points of ``minimum'' and ``maximum'' voltage. (Figure<ref>22004.png 6th-above</ref>)  The same holds true for current: if the line's terminating impedance is mismatched to the line's characteristic impedance, we will have points of minimum and maximum current at certain fixed locations on the line, corresponding to the standing current wave's nodes and antinodes, respectively.
</para>

<index>Standing wave ratio</index>
<index>SWR</index>

<para>
One way of expressing the severity of standing waves is as a ratio of maximum amplitude (antinode) to minimum amplitude (node), for voltage or for current.  When a line is terminated by an open or a short, this <italic>standing wave ratio</italic>, or <italic>SWR</italic> is valued at infinity, since the minimum amplitude will be zero, and any finite value divided by zero results in an infinite (actually, ``undefined'') quotient.  In this example, with a 75 <OMEGA> line terminated by a 100 <OMEGA> impedance, the SWR will be finite: 1.333, calculated by taking the maximum line voltage at either 250 kHz or 750 kHz (0.5714 volts) and dividing by the minimum line voltage (0.4286 volts).
</para>

<para>
Standing wave ratio may also be calculated by taking the line's terminating impedance and the line's characteristic impedance, and dividing the larger of the two values by the smaller.  In this example, the terminating impedance of 100 <OMEGA> divided by the characteristic impedance of 75 <OMEGA> yields a quotient of exactly 1.333, matching the previous calculation very closely.
</para>

<image>12149.png</image> 

<para>
A perfectly terminated transmission line will have an SWR of 1, since voltage at any location along the line's length will be the same, and likewise for current.  Again, this is usually considered ideal, not only because reflected waves constitute energy not delivered to the load, but because the high values of voltage and current created by the antinodes of standing waves may over-stress the transmission line's insulation (high voltage) and conductors (high current), respectively.  
</para>

<para>
Also, a transmission line with a high SWR tends to act as an antenna, radiating electromagnetic energy away from the line, rather than channeling all of it to the load.  This is usually undesirable, as the radiated energy may ``couple'' with nearby conductors, producing signal interference.  An interesting footnote to this point is that antenna structures -- which typically resemble open- or short-circuited transmission lines -- are often designed to operate at <italic>high</italic> standing wave ratios, for the very reason of maximizing signal radiation and reception.
</para>

<para>
The following photograph (Figure<ref>52014.jpg below</ref>) shows a set of transmission lines at a junction point in a radio transmitter system.  The large, copper tubes with ceramic insulator caps at the ends are rigid coaxial transmission lines of 50 <OMEGA> characteristic impedance.  These lines carry RF power from the radio transmitter circuit to a small, wooden shelter at the base of an antenna structure, and from that shelter on to other shelters with other antenna structures:
</para>

<image>52014.jpg<caption>Flexible coaxial cables connected to rigid lines.</caption></image> 

<index>Skin effect</index>

<para>
Flexible coaxial cable connected to the rigid lines (also of 50 <OMEGA> characteristic impedance) conduct the RF power to capacitive and inductive ``phasing'' networks inside the shelter.  The white, plastic tube joining two of the rigid lines together carries ``filling'' gas from one sealed line to the other.  The lines are gas-filled to avoid collecting moisture inside them, which would be a definite problem for a coaxial line.  Note the flat, copper ``straps'' used as jumper wires to connect the conductors of the flexible coaxial cables to the conductors of the rigid lines.  Why flat straps of copper and not round wires?  Because of the skin effect, which renders most of the cross-sectional area of a round conductor useless at radio frequencies.
</para>

<para>
Like many transmission lines, these are operated at low SWR conditions.  As we will see in the next section, though, the phenomenon of standing waves in transmission lines is not always undesirable, as it may be exploited to perform a useful function: impedance transformation.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Standing waves</italic> are waves of voltage and current which do not propagate (i.e. they are stationary), but are the result of interference between incident and reflected waves along a transmission line.</item>
<item>A <italic>node</italic> is a point on a standing wave of <italic>minimum</italic> amplitude.</item>
<item>An <italic>antinode</italic> is a point on a standing wave of <italic>maximum</italic> amplitude.</item>
<item>Standing waves can only exist in a transmission line when the terminating impedance does not match the line's characteristic impedance.  In a perfectly terminated line, there are no reflected waves, and therefore no standing waves at all.</item>
<item>At certain frequencies, the nodes and antinodes of standing waves will correlate with the ends of a transmission line, resulting in <italic>resonance</italic>.</item>
<item>The lowest-frequency resonant point on a transmission line is where the line is one quarter-wavelength long.  Resonant points exist at every harmonic (integer-multiple) frequency of the fundamental (quarter-wavelength).</item>
<item><italic>Standing wave ratio</italic>, or <italic>SWR</italic>, is the ratio of maximum standing wave amplitude to minimum standing wave amplitude.  It may also be calculated by dividing termination impedance by characteristic impedance, or vice versa, which ever yields the greatest quotient.  A line with no standing waves (perfectly matched: Z<subscript>load</subscript> to Z<subscript>0</subscript>) has an SWR equal to 1.</item>
<item>Transmission lines may be damaged by the high maximum amplitudes of standing waves.  Voltage antinodes may break down insulation between conductors, and current antinodes may overheat conductors.</item>
</itemize>

</section>



<section>
<sectiontitle>Impedance transformation</sectiontitle>

<para>
Standing waves at the resonant frequency points of an open- or short-circuited transmission line produce unusual effects.  When the signal frequency is such that exactly 1/2 wave or some multiple thereof matches the line's length, the source ``sees'' the load impedance as it is.  The following pair of illustrations shows an open-circuited line operating at 1/2 (Figure<ref>02384a.png below</ref>)
<comment>split for double ref</comment>
and 1 wavelength (Figure<ref>02386a.png below</ref>)  frequencies: 
</para>

<image>02384.png<caption>Source sees open, same as end of half wavelength line.  </caption><label>02384a.png</label></image> 

<para>
</para>


<image>02386.png<caption>Source sees open, same as end of full wavelength (2x half wavelength line).</caption><label>02386a.png</label></image> 

<para>
In either case, the line has voltage antinodes at both ends, and current nodes at both ends.  That is to say, there is maximum voltage and minimum current at either end of the line, which corresponds to the condition of an open circuit.  The fact that this condition exists at <italic>both</italic> ends of the line tells us that the line faithfully reproduces its terminating impedance at the source end, so that the source ``sees'' an open circuit where it connects to the transmission line, just as if it were directly open-circuited.
</para>

<para>
The same is true if the transmission line is terminated by a short: at signal frequencies corresponding to 1/2 wavelength (Figure<ref>02390a.png below</ref>)
<comment>split for double ref</comment>
or some multiple (Figure<ref>02392a.png below</ref>) thereof, the source
``sees'' a short circuit, with minimum voltage and maximum current present at the connection points between source and transmission line:
</para>

<para>
<image>02390.png<caption>Source sees short, same as end of half wave length line.</caption><label>02390a.png</label></image>
</para>

<para>
<image>02392.png<caption>Source sees short, same as end of full wavelength line (2x half wavelength).</caption><label>02392a.png</label></image>
</para>

However, if the signal frequency is such that the line resonates at <italic>1/4</italic> wavelength or some multiple thereof, the source will ``see'' the exact opposite of the termination impedance.  That is, if the line is open-circuited, the source will ``see'' a short-circuit at the point where it connects to the line; and if the line is short-circuited, the source will ``see'' an open circuit: (Figure<ref>02383a.png below</ref>)
</para>


<para>
<bold>Line open-circuited; source ``sees'' a short circuit:</bold> at quarter wavelength line (Figure<ref>02383a.png below</ref>), 
<comment>split for double ref</comment>
at three-quarter wavelength line (Figure<ref>02385a.png below</ref>)
</para>

<image>02383.png<caption>Source sees short, reflected from open at end of quarter wavelength line.</caption><label>02383a.png</label></image> 

<para>
</para>

<image>02385.png<caption>Source sees short, reflected from open at end of  three-quarter wavelength line.</caption><label>02385a.png</label></image> 


<para>
<bold>Line short-circuited; source ``sees'' an open circuit:</bold>  at quarter wavelength line (Figure<ref>02389a.png below</ref>), 
<comment>split for double ref</comment>
at three-quarter wavelength line (Figure<ref>02391a.png below</ref>)
</para>

<image>02389.png<caption>Source sees open, reflected from short at end of quarter wavelength line.</caption><label>02389a.png</label></image> 

<para>
</para>

<image>02391.png<caption>Source sees open, reflected from short at end of three-quarter wavelength line.</caption><label>02391a.png</label></image> 

<para>
At these frequencies, the transmission line is actually functioning as an <italic>impedance transformer</italic>, transforming an infinite impedance into zero impedance, or vice versa.  Of course, this only occurs at resonant points resulting in a standing wave of 1/4 cycle (the line's fundamental, resonant frequency) or some odd multiple (3/4, 5/4, 7/4, 9/4 . . .), but if the signal frequency is known and unchanging, this phenomenon may be used to match otherwise unmatched impedances to each other.
</para>

<para>
Take for instance the example circuit from the last section where a 75 <OMEGA> source connects to a 75 <OMEGA> transmission line, terminating in a 100 <OMEGA>  load impedance.  From the numerical figures obtained via SPICE, let's determine what impedance the source ``sees'' at its end of the transmission line at the line's resonant frequencies: quarter wavelength (Figure<ref>02399.png below</ref>), 
<comment>split for double ref</comment>
halfwave length (Figure<ref>02400.png below</ref>), 
three-quarter wavelength (Figure<ref>02401.png below</ref>)
<comment>split for double ref</comment>
full wavelength (Figure<ref>02402.png below</ref>)

</para>

<image>02399.png<caption>Source sees 100 <OMEGA> reflected from 100 <OMEGA> load at end of quarter wavelength line.</caption></image> 

<para>
</para>

<image>02400.png<caption>Source sees 100 <OMEGA> reflected from 100 <OMEGA> load at end of half wavelength line.</caption></image> 

<para>
</para>

<image>02401.png<caption>Source sees 56.25 <OMEGA> reflected from 100 <OMEGA> load at end of three-quarter wavelength line (same as quarter wavelength).</caption></image> 

<para>
</para>

<pagebreak>

<image>02402.png<caption>Source sees 56.25 <OMEGA> reflected from 100 <OMEGA> load at end of full-wavelength line (same as half-wavelength).</caption></image> 

<para>
A simple equation relates line impedance (Z<subscript>0</subscript>), load impedance (Z<subscript>load</subscript>), and input impedance (Z<subscript>input</subscript>) for an unmatched transmission line operating at an odd harmonic of its fundamental frequency:
</para>

<image>12150.png</image> 

<para>
One practical application of this principle would be to match a 300 <OMEGA> load to a 75 <OMEGA> signal source at a frequency of 50 MHz.  All we need to do is calculate the proper transmission line impedance (Z<subscript>0</subscript>), and length so that exactly 1/4 of a wave will ``stand'' on the line at a frequency of 50 MHz.
</para>

<para>
First, calculating the line impedance: taking the 75 <OMEGA> we desire the source to ``see'' at the source-end of the transmission line, and multiplying by the 300 <OMEGA> load resistance, we obtain a figure of 22,500.  Taking the square root of 22,500 yields 150 <OMEGA> for a characteristic line impedance.
</para>

<para>
Now, to calculate the necessary line length: assuming that our cable has a velocity factor of 0.85, and using a speed-of-light figure of 186,000 miles per second, the velocity of propagation will be 158,100 miles per second.  Taking this velocity and dividing by the signal frequency gives us a wavelength of 0.003162 miles, or 16.695 feet.  Since we only need one-quarter of this length for the cable to support a quarter-wave, the requisite cable length is 4.1738 feet.
</para>

<para>
Here is a schematic diagram for the circuit, showing node numbers for the SPICE analysis we're about to run: (Figure<ref>02403.png below</ref>)
</para>

<image>02403.png<caption>Quarter wave section of 150 <OMEGA> transmission line matches 75 <OMEGA> source to 300 <OMEGA> load.</caption></image> 

<para>
We can specify the cable length in SPICE in terms of time delay from beginning to end.  Since the frequency is 50 MHz, the signal period will be the reciprocal of that, or 20 nano-seconds (20 ns).  One-quarter of that time (5 ns) will be the time delay of a transmission line one-quarter wavelength long:
</para>

<table>
<literal>
Transmission line
v1 1 0 ac 1 sin
rsource 1 2 75
t1 2 0 3 0 z0=150 td=5n
rload 3 0 300
.ac lin 1 50meg 50meg
.print ac v(1,2) v(1) v(2) v(3)
.end
</literal>
</table>


<table>
<literal>
freq          v(1,2)      v(1)        v(2)        v(3)        
5.000E+07     5.000E-01   1.000E+00   5.000E-01   1.000E+00
</literal>
</table>

<para>
At a frequency of 50 MHz, our 1-volt signal source drops half of its voltage across the series 75 <OMEGA> impedance (<typewriter>v(1,2)</typewriter>) and the other half of its voltage across the input terminals of the transmission line (<typewriter>v(2)</typewriter>).  This means the source ``thinks'' it is powering a 75 <OMEGA> load.  The actual load impedance, however, receives a full 1 volt, as indicated by the 1.000 figure at <typewriter>v(3)</typewriter>.  With 0.5 volt dropped across 75 <OMEGA>, the source is dissipating 3.333 mW of power: the same as dissipated by 1 volt across the 300 <OMEGA> load, indicating a perfect match of impedance, according to the Maximum Power Transfer Theorem.  The 1/4-wavelength, 150 <OMEGA>, transmission line segment has successfully matched the 300 <OMEGA> load to the 75 <OMEGA> source.
</para>

<para>
Bear in mind, of course, that this only works for 50 MHz and its odd-numbered harmonics.  For any other signal frequency to receive the same benefit of matched impedances, the 150 <OMEGA> line would have to lengthened or shortened accordingly so that it was exactly 1/4 wavelength long.
</para>

<para>
Strangely enough, the exact same line can also match a 75 <OMEGA> load to a 300 <OMEGA> source, demonstrating how this phenomenon of impedance transformation is fundamentally different in principle from that of a conventional, two-winding transformer:
</para>


<table>
<literal>
Transmission line
v1 1 0 ac 1 sin
rsource 1 2 300
t1 2 0 3 0 z0=150 td=5n
rload 3 0 75
.ac lin 1 50meg 50meg
.print ac v(1,2) v(1) v(2) v(3)
.end
</literal>
</table>


<literal>
freq          v(1,2)      v(1)        v(2)        v(3)        
5.000E+07     5.000E-01   1.000E+00   5.000E-01   2.500E-01
</literal>

<bigspace>

<para>
Here, we see the 1-volt source voltage equally split between the 300 <OMEGA> source impedance (<typewriter>v(1,2)</typewriter>) and the line's input (<typewriter>v(2)</typewriter>), indicating that the load ``appears'' as a 300 <OMEGA> impedance from the source's perspective where it connects to the transmission line.  This 0.5 volt drop across the source's 300 <OMEGA> internal impedance yields a power figure of 833.33 <mu>W, the same as the 0.25 volts across the 75 <OMEGA> load, as indicated by voltage figure <typewriter>v(3)</typewriter>.  Once again, the impedance values of source and load have been matched by the transmission line segment.
</para>

<para>
This technique of impedance matching is often used to match the differing impedance values of transmission line and antenna in radio transmitter systems, because the transmitter's frequency is generally well-known and unchanging.  The use of an impedance ``transformer'' 1/4 wavelength in length provides impedance matching using the shortest conductor length possible. (Figure<ref>02404.png below</ref>)
</para>

<image>02404.png<caption>Quarter wave 150 <OMEGA> transmission line section matches 75 <OMEGA> line to 300 <OMEGA> antenna.</caption></image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A transmission line with standing waves may be used to match different impedance values if operated at the correct frequency(ies).</item>
<item>When operated at a frequency corresponding to a standing wave of 1/4-wavelength along the transmission line, the line's characteristic impedance necessary for impedance transformation must be equal to the square root of the product of the source's impedance and the load's impedance.</item>
</itemize>

</section>



<section>
<sectiontitle>Waveguides</sectiontitle>

<index>Waveguide</index>

<para>
A <italic>waveguide</italic> is a special form of transmission line consisting of a hollow, metal tube.  The tube wall provides distributed inductance, while the empty space between the tube walls provide distributed capacitance: Figure<ref>02405.png below</ref>
</para>

<image>02405.png<caption>Wave guides conduct microwave energy at lower loss than coaxial cables.</caption></image> 

<para>
Waveguides are practical only for signals of extremely high frequency, where the wavelength approaches the cross-sectional dimensions of the waveguide.  Below such frequencies, waveguides are useless as electrical transmission lines.
</para>

<para>
When functioning as transmission lines, though, waveguides are considerably simpler than two-conductor cables -- especially coaxial cables -- in their manufacture and maintenance.  With only a single conductor (the waveguide's ``shell''), there are no concerns with proper conductor-to-conductor spacing, or of the consistency of the dielectric material, since the only dielectric in a waveguide is air.  Moisture is not as severe a problem in waveguides as it is within coaxial cables, either, and so waveguides are often spared the necessity of gas ``filling.''
</para>

<para>
Waveguides may be thought of as conduits for electromagnetic energy, the waveguide itself acting as nothing more than a ``director'' of the energy rather than as a signal conductor in the normal sense of the word.  In a sense, all transmission lines function as conduits of electromagnetic energy when transporting pulses or high-frequency waves, directing the waves as the banks of a river direct a tidal wave.  However, because waveguides are single-conductor elements, the propagation of electrical energy down a waveguide is of a very different nature than the propagation of electrical energy down a two-conductor transmission line.
</para>

<index>Principal mode</index>
<index>TEM mode</index>

<para>
All electromagnetic waves consist of electric and magnetic fields propagating in the same direction of travel, but perpendicular to each other.  Along the length of a normal transmission line, both electric and magnetic fields are perpendicular (transverse) to the direction of wave travel.  This is known as the <italic>principal mode</italic>, or <italic>TEM</italic> (<bold>T</bold>ransverse <bold>E</bold>lectric and <bold>M</bold>agnetic) mode.  This mode of wave propagation can exist only where there are two conductors, and it is the dominant mode of wave propagation where the cross-sectional dimensions of the transmission line are small compared to the wavelength of the signal. (Figure<ref>02406.png below</ref>)
</para>

<image>02406.png<caption>Twin lead transmission line propagation: TEM mode.</caption></image> 

<index>Microwaves</index>
<index>Skin effect</index>

<para>
At <italic>microwave</italic> signal frequencies (between 100 MHz and 300 GHz), two-conductor transmission lines of any substantial length operating in standard TEM mode become impractical.  Lines small enough in cross-sectional dimension to maintain TEM mode signal propagation for microwave signals tend to have low voltage ratings, and suffer from large, parasitic power losses due to conductor ``skin'' and dielectric effects.  Fortunately, though, at these short wavelengths there exist other modes of propagation that are not as ``lossy,'' if a conductive tube is used rather than two parallel conductors.  It is at these high frequencies that waveguides become practical.
</para>

<index>TE mode</index>
<index>TM mode</index>

<para>
When an electromagnetic wave propagates down a hollow tube, only one of the fields -- either electric or magnetic -- will actually be transverse to the wave's direction of travel.  The other field will ``loop'' longitudinally to the direction of travel, but still be perpendicular to the other field.  Whichever field remains transverse to the direction of travel determines whether the wave propagates in <italic>TE</italic> mode (<bold>T</bold>ransverse <bold>E</bold>lectric) or <italic>TM</italic> (<bold>T</bold>ransverse <bold>M</bold>agnetic) mode. (Figure<ref>02407.png below</ref>)
</para>

<image>02407.png<caption>Waveguide (TE) transverse electric and (TM) transverse magnetic modes.</caption></image> 

<para>
Many variations of each mode exist for a given waveguide, and a full discussion of this is subject well beyond the scope of this book.
</para>

<index>Klystron tube</index>

<para>
Signals are typically introduced to and extracted from waveguides by means of small antenna-like coupling devices inserted into the waveguide.  Sometimes these coupling elements take the form of a dipole, which is nothing more than two open-ended stub wires of appropriate length.  Other times, the coupler is a single stub (a half-dipole, similar in principle to a ``whip'' antenna, 1/4<lambda> in physical length), or a short loop of wire terminated on the inside surface of the waveguide: (Figure<ref>02409.png below</ref>)
</para>

<image>02409.png<caption>Stub and loop coupling to waveguide.</caption></image> 

<para>
In some cases, such as a class of vacuum tube devices called <italic>inductive output tubes</italic> (the so-called <italic>klystron</italic> tube falls into this category), a ``cavity'' formed of conductive material may intercept electromagnetic energy from a modulated beam of electrons, having no contact with the beam itself: (Figure<ref>02408.png below</ref> below) 
</para>

<image>02408.png<caption>Klystron inductive output tube.</caption></image> 

<para>
Just as transmission lines are able to function as resonant elements in a circuit, especially when terminated by a short-circuit or an open-circuit, a dead-ended waveguide may also resonate at particular frequencies.  When used as such, the device is called a <italic>cavity resonator</italic>.  Inductive output tubes use toroid-shaped cavity resonators to maximize the power transfer efficiency between the electron beam and the output cable.  
</para>

<para>
A cavity's resonant frequency may be altered by changing its physical dimensions.  To this end, cavities with movable plates, screws, and other mechanical elements for tuning are manufactured to provide coarse resonant frequency adjustment.
</para>

<para>
If a resonant cavity is made open on one end, it functions as a unidirectional antenna.  The following photograph shows a home-made waveguide formed from a tin can, used as an antenna for a 2.4 GHz signal in an ``802.11b'' computer communication network.  The coupling element is a quarter-wave stub: nothing more than a piece of solid copper wire about 1-1/4 inches in length extending from the center of a coaxial cable connector penetrating the side of the can: (Figure<ref>52015.jpg below</ref>)
</para>

<image>52015.jpg<caption>Can-tenna illustrates stub coupling to waveguide.</caption></image> 

<para>
A few more tin-can antennae may be seen in the background, one of them a ``Pringles'' potato chip can.  Although this can is of cardboard (paper) construction, its metallic inner lining provides the necessary conductivity to function as a waveguide.  Some of the cans in the background still have their plastic lids in place.  The plastic, being nonconductive, does not interfere with the RF signal, but functions as a physical barrier to prevent rain, snow, dust, and other physical contaminants from entering the waveguide.  ``Real'' waveguide antennae use similar barriers to physically enclose the tube, yet allow electromagnetic energy to pass unimpeded.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Waveguides</italic> are metal tubes functioning as ``conduits'' for carrying electromagnetic waves.  They are practical only for signals of extremely high frequency, where the signal wavelength approaches the cross-sectional dimensions of the waveguide.</item>
<item>Wave propagation through a waveguide may be classified into two broad categories: <italic>TE</italic> (Transverse Electric), or <italic>TM</italic> (Transverse Magnetic), depending on which field (electric or magnetic) is perpendicular (transverse) to the direction of wave travel.  Wave travel along a standard, two-conductor transmission line is of the <italic>TEM</italic> (Transverse Electric and Magnetic) mode, where both fields are oriented perpendicular to the direction of travel.  TEM mode is only possible with two conductors and cannot exist in a waveguide.</item>
<item>A dead-ended waveguide serving as a resonant element in a microwave circuit is called a <italic>cavity resonator</italic>.</item>
<item>A cavity resonator with an open end functions as a unidirectional antenna, sending or receiving RF energy to/from the direction of the open end.</item>
</itemize>

</section>

</chapter>

<pagebreak>

