
<chapter>
<chaptertitle>BIPOLAR JUNCTION TRANSISTORS</chaptertitle>
<proofread>

<section>
<sectiontitle>Introduction</sectiontitle>

<para>
The invention of the bipolar transistor in 1948 ushered in a revolution in electronics.  Technical feats previously requiring relatively large, mechanically fragile, power-hungry vacuum tubes were suddenly achievable with tiny, mechanically rugged, power-thrifty specks of crystalline silicon.  This revolution made possible the design and manufacture of lightweight, inexpensive electronic devices that we now take for granted.  Understanding how transistors function is of paramount importance to anyone interested in understanding modern electronics.
</para>

<para>
My intent here is to focus as exclusively as possible on the practical function and application of bipolar transistors, rather than to explore the quantum world of semiconductor theory.  Discussions of holes and electrons are better left to another chapter in my opinion.  Here I want to explore how to <italic>use</italic> these components, not analyze their intimate internal details.  I don't mean to downplay the importance of understanding semiconductor physics, but sometimes an intense focus on solid-state physics detracts from understanding these devices' functions on a component level.  In taking this approach, however, I assume that the reader possesses a certain minimum knowledge of semiconductors: the difference between ``P'' and ``N'' doped semiconductors, the functional characteristics of a PN (diode) junction, and the meanings of the terms ``reverse biased'' and ``forward biased.''  If these concepts are unclear to you, it is best to refer to earlier chapters in this book before proceeding with this one.
</para>

<para>
A bipolar transistor consists of a three-layer ``sandwich'' of doped (extrinsic) semiconductor materials, either P-N-P in Figure<ref>03071.png below</ref>(b) or N-P-N at (d).  Each layer forming the transistor has a specific name, and each layer is provided with a wire contact for connection to a circuit. The schematic symbols are shown in Figure<ref>03071.png below</ref>(a) and (d).
</para>

<image>03071.png<caption>BJT transistor: (a) PNP schematic symbol, (b) physical layout (c) NPN symbol, (d) layout.</caption></image> 


<para>
The functional difference between a PNP transistor and an NPN transistor is the proper biasing (polarity) of the junctions when operating.  For any given state of operation, the current directions and voltage polarities for each kind of transistor are exactly opposite each other.
</para>

<para>
Bipolar transistors work as current-controlled current <italic>regulators</italic>.  In other words, transistors restrict the amount of current passed according to a smaller, controlling current.  The main current that is <italic>controlled</italic> goes from collector to emitter, or from emitter to collector, depending on the type of transistor it is (PNP or NPN, respectively).  The small current that <italic>controls</italic> the main current goes from base to emitter, or from emitter to base, once again depending on the kind  of transistor it is (PNP or NPN, respectively).  According to the standards of semiconductor symbology, the arrow always points <italic>against</italic> the direction of electron flow.  (Figure<ref>03073.png below</ref>)
</para>

<image>03073.png<caption>Small Base-Emitter current controls large Collector-Emitter current flowing against emitter arrow.</caption></image> 

<para>
Bipolar transistors are called <italic>bi</italic>polar because the main flow of electrons through them takes place in <italic>two</italic> types of semiconductor material: P and N, as the main current goes from emitter to collector (or vice versa).  In other words, two types of charge carriers -- electrons and holes -- comprise this main current through the transistor.
</para>

<index>Kirchhoff's Current Law</index>

<para>
As you can see, the <italic>controlling</italic> current and the <italic>controlled</italic> current always mesh together through the emitter wire, and their electrons always flow <italic>against</italic> the direction of the transistor's arrow.  This is the first and foremost rule in the use of transistors: all currents must be going in the proper directions for the device to work as a current regulator.  The small, controlling current is usually referred to simply as the <italic>base current</italic> because it is the only current that goes through the base wire of the transistor.  Conversely, the large, controlled current is referred to as the <italic>collector current</italic> because it is the only current that goes through the collector wire.  The emitter current is the sum of the base and collector currents, in compliance with Kirchhoff's Current Law.
</para>

<para>
No current through the base of the transistor, shuts it off like an open switch and prevents current through the collector.  A base current, turns the transistor on like a closed switch and allows a proportional amount of current through the collector.  Collector current is primarily limited by the base current, regardless of the amount of voltage available to push it.  The next section will explore in more detail the use of bipolar transistors as switching elements.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Bipolar transistors are so named because the controlled current must go through <italic>two</italic> types of semiconductor material: P and N.  The current consists of both electron and hole flow, in different parts of the transistor.</item>
<item>Bipolar transistors consist of either a P-N-P or an N-P-N semiconductor ``sandwich'' structure.</item>
<item>The three leads of a bipolar transistor are called the <italic>Emitter</italic>, <italic>Base</italic>, and <italic>Collector</italic>.</item>
<item>Transistors function as current regulators by allowing a small current to <italic>control</italic> a larger current.  The amount of current allowed between collector and emitter is primarily determined by the amount of current moving between base and emitter.</item>
<item>In order for a transistor to properly function as a current regulator, the controlling (base) current and the controlled (collector) currents must be going in the proper directions: meshing additively at the emitter and going <italic>against</italic> the emitter arrow symbol.</item>
</itemize>

</section>



<section>
<sectiontitle>The transistor as a switch</sectiontitle>

<para>
Because a transistor's collector current is proportionally limited by its base current, it can be used as a sort of current-controlled switch.  A relatively small flow of electrons sent through the base of the transistor has the ability to exert control over a much larger flow of electrons through the collector.
</para>

<para>
Suppose we had a lamp that we wanted to turn on and off with a switch.  Such a circuit would be extremely simple as in Figure<ref>03075.png below</ref>(a).
</para>


<para>
For the sake of illustration, let's insert a transistor in place of the switch to show how it can control the flow of electrons through the lamp.  Remember that the controlled current through a transistor must go between collector and emitter.  Since it is the current through the lamp that we want to control, we must position the collector and emitter of our transistor where the two contacts of the switch were.  We must also make sure that the lamp's current will move <italic>against</italic> the direction of the emitter arrow symbol to ensure that the transistor's junction bias will be correct as in  Figure<ref>03075.png below</ref>(b).
</para>

<image>03075.png<caption>(a) mechanical switch, (b) NPN transistor switch, (c) PNP transistor switch.</caption></image> 

<para>
A PNP transistor could also have been chosen for the job. Its application is shown in Figure<ref>03075.png above</ref>(c).
</para>


<para>
The choice between NPN and PNP is really arbitrary.  All that matters is that the proper current directions are maintained for the sake of correct junction biasing (electron flow going <italic>against</italic> the transistor symbol's arrow).  
</para>

<para>
Going back to the NPN transistor in our example circuit, we are faced with the need to add something more so that we can have base current.  Without a connection to the base wire of the transistor, base current will be zero, and the transistor cannot turn on, resulting in a lamp that is always off.  Remember that for an NPN transistor, base current must consist of electrons flowing from emitter to base (against the emitter arrow symbol, just like the lamp current).  Perhaps the simplest thing to do would be to connect a switch between the base and collector wires of the transistor as in  Figure<ref>03078.png below</ref> (a).
</para>

<image>03078.png<caption>Transistor: (a) cutoff, lamp off; (b) saturated, lamp on.</caption></image> 

<index>Floating</index>
<index>Cutoff, transistor</index>
<index>Saturation, transistor</index>

<para>
If the switch is open as in  Figure<ref>03078.png above</ref> (a), the base
wire of the transistor will be left ``floating'' (not connected to anything)   and there will be no current through it.  In this state, the transistor is
  said to be <italic>cutoff</italic>.  If the switch is closed as in  Figure<ref>03078.png above</ref> (b), electrons will be able to flow from the emitter through to the base of the transistor, through the switch, up to the left side of the lamp, back to the positive side of the battery.  This base current will enable a much larger flow of electrons from the emitter through to the collector, thus lighting up the lamp.  In this state of maximum circuit current, the transistor is said to be <italic>saturated</italic>.
</para>


<para>
Of course, it may seem pointless to use a transistor in this capacity to control the lamp.  After all, we're still using a switch in the circuit, aren't we?  If we're still using a switch to control the lamp -- if only indirectly -- then what's the point of having a transistor to control the current?  Why not just go back to our original circuit and use the switch directly to control the lamp current?
</para>

<para>
Two points can be  made here, actually.  First is the fact that when used in
  this manner, the switch contacts need only handle what little base current is
  necessary to turn the transistor on; the transistor itself handles most of
       the lamp's current.  This may be an important advantage if the switch
       has a low current rating: a small switch may be used to control a
       relatively high-current load.  More importantly, the current-controlling behavior of the transistor enables us to use something completely different to turn the lamp on or off.  Consider  Figure<ref>03079.png below</ref>, where a pair of solar cells provides 1 V  to overcome the 0.7 V<subscript>BE</subscript> of the transistor to cause base current flow, which in turn controls the lamp.
</para>

<image>03079.png<caption>Solar cell serves as light sensor.</caption></image> 

<para>
Or, we could use a thermocouple (many connected in series) to provide the necessary base current to turn the transistor on in Figure<ref>03080.png below</ref>.
</para>

<image>03080.png<caption>A single thermocouple provides less than 40 mV.  Many in series could produce in excess  of the 0.7 V transistor  V<subscript>BE</subscript> to cause base current flow and consequent collector current to the lamp.</caption></image> 

<para>
Even a microphone (Figure<ref>03081.png below</ref>) with enough voltage and current (from an amplifier) output could  turn the transistor on, provided its output is rectified from AC to DC so that the emitter-base PN junction within the transistor will always be forward-biased:
</para>

<image>03081.png<caption> Amplified microphone signal is rectified to DC to bias the base of the transistor providing a larger collector current.</caption></image> 

<para>
The point should be quite apparent by now: <italic>any</italic> sufficient source of DC current may be used to turn the transistor on, and that source of current only need be a fraction of the current needed to energize the lamp.  Here we see the transistor functioning not only as a switch, but as a true <italic>amplifier</italic>: using a relatively low-power signal to <italic>control</italic> a relatively large amount of power.  Please note that the actual power for lighting up the lamp comes from the battery to the right of the schematic.  It is not as though the small signal current from the solar cell, thermocouple, or microphone is being magically transformed into a greater amount of power.  Rather, those small power sources are simply <italic>controlling</italic> the battery's power to light up the lamp.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Transistors may be used as switching elements to control DC power to a load.  The switched (controlled) current goes between emitter and collector; the controlling current goes between emitter and base.</item>
<item>When a transistor has zero current through it, it is said to be in a state of <italic>cutoff</italic> (fully nonconducting).</item>
<item>When a transistor has maximum current through it, it is said to be in a state of <italic>saturation</italic> (fully conducting).</item>
</itemize>

</section>



<section>
<sectiontitle>Meter check of a transistor</sectiontitle>


<para>
Bipolar transistors are constructed of a three-layer semiconductor “sandwich,” either PNP or NPN. As such, transistors register as two diodes connected back-to-back when tested with a multimeter's “resistance” or “diode check” function as illustrated in Figure below. Low resistance readings on the base with the black negative (-) leads correspond to an N-type material in the base of a PNP transistor. On the symbol, the N-type material is "pointed" to by the arrow of the base-emitter junction, which is the base for this example. The P-type emitter corresponds to the other end of the arrow of the base-emitter junction, the emitter. The collector is very similar to the emitter, and is also a P-type material of the PN junction.
</para>

<image>03077.png<caption>PNP transistor meter check: (a) forward B-E, B-C, resistance is low; (b) reverse B-E, B-C, resistance is <infinity>.</caption></image> 


<para>
Here I'm assuming the use of a multimeter with only a single continuity range (resistance) function to check the PN junctions.  Some multimeters are equipped with two separate continuity check functions: resistance and ``diode check,'' each with its own purpose.  If your meter has a designated ``diode check'' function, use that rather than the ``resistance'' range, and the meter will display the actual forward voltage of the PN junction and not just whether or not it conducts current.
</para>

<index>Diode check, meter function</index>

<para>
Meter readings will be exactly opposite, of course, for an NPN transistor, with both PN junctions facing the other way. Low resistance readings with the red (+) lead on the base is the ``opposite'' condition for the NPN transistor.
</para>

<para>
If a multimeter with a ``diode check'' function is used in this test, it will be found that the emitter-base junction possesses a slightly greater forward voltage drop than the collector-base junction.  This forward voltage difference is due to the disparity in doping concentration between the emitter and collector regions of the transistor: the emitter is a much more heavily doped piece of semiconductor material than the collector, causing its junction with the base to produce a higher forward voltage drop.
</para>

<para>
Knowing this, it becomes possible to determine which wire is which on an unmarked transistor.  This is important because transistor packaging, unfortunately, is not standardized.  All bipolar transistors have three wires, of course, but the positions of the three wires on the actual physical package are not arranged in any universal, standardized order. 
</para>

<para>
Suppose a technician finds a bipolar transistor and proceeds to measure continuity with a multimeter set in the ``diode check'' mode.  Measuring between pairs of wires and recording the values displayed by the meter, the technician obtains the  data in Figure<ref>03084.png below</ref>.
</para>


<figure>
<htmlo><label>03084.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03084.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{3.1in}</latexin>
<itemize>
<item>Meter touching wire 1 (+) and 2 (-): ``OL''</item>
<item>Meter touching wire 1 (-) and 2 (+): ``OL''</item>
<item>Meter touching wire 1 (+) and 3 (-): 0.655 V</item>
<item>Meter touching wire 1 (-) and 3 (+): ``OL''</item>
<item>Meter touching wire 2 (+) and 3 (-): 0.621 V</item>
<item>Meter touching wire 2 (-) and 3 (+): ``OL''</item>
</itemize>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Unknown bipolar transistor. Which terminals are emitter, base, and collector? <OMEGA>-meter readings between terminals. </caption>
<tex><label>03084.png</label></tex>
</figure>



<para>
The only combinations of test points giving conducting meter readings are wires 1 and 3 (red test lead on 1 and black test lead on 3), and wires 2 and 3 (red test lead on 2 and black test lead on 3).  These two readings <italic>must</italic> indicate forward biasing of the emitter-to-base junction (0.655 volts) and the collector-to-base junction (0.621 volts).  
</para>

<para>
Now we look for the one wire common to both sets of conductive readings.  It must be the base connection of the transistor, because the base is the only layer of the three-layer device common to both sets of PN junctions (emitter-base and collector-base).  In this example, that wire is number 3, being common to both the 1-3 and the 2-3 test point combinations.  In both those sets of meter readings, the <italic>black</italic> (-) meter test lead was touching wire 3, which tells us that the base of this transistor is made of N-type semiconductor material (black = negative).  Thus, the transistor is a PNP with base on wire 3, emitter on wire 1 and collector on wire 2 as described in  Figure<ref>03085.png below</ref>.
</para>


<figure>
<htmlo><label>03085.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03085.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{3in}</latexin>
<itemize>
<item>E and C high R: 1 (+) and 2 (-): ``OL''</item>
<item>C and E high R: 1 (-) and 2 (+): ``OL''</item>
<item>E and B forward: 1 (+) and 3 (-): 0.655 V</item>
<item>E and B reverse: 1 (-) and 3 (+): ``OL''</item>
<item>C and B forward: 2 (+) and 3 (-): 0.621 V</item>
<item>C and B reverse: 2 (-) and 3 (+): ``OL''</item>
</itemize>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>BJT terminals identified by <OMEGA>-meter.</caption>
<tex><label>03085.png</label></tex>
</figure>



<para>
Please note that the base wire in this example is <italic>not</italic> the middle lead of the transistor, as one might expect from the three-layer ``sandwich'' model of a bipolar transistor.  This is quite often the case, and tends to confuse new students of electronics.  The only way to be sure which lead is which is by a meter check, or by referencing the manufacturer's ``data sheet'' documentation on that particular part number of transistor.
</para>

<para>
Knowing that a bipolar transistor behaves as two back-to-back diodes when tested with a conductivity meter is helpful for identifying an unknown transistor purely by meter readings.  It is also helpful for a quick functional check of the transistor.  If the technician were to measure continuity in any more than two or any less than two of the six test lead combinations, he or she would immediately know that the transistor was defective (or else that it <italic>wasn't</italic> a bipolar transistor but rather something else -- a distinct possibility if no part numbers can be referenced for sure identification!).  However, the ``two diode'' model of the transistor fails to explain how or why it acts as an amplifying device.
</para>

<para>
To better illustrate this paradox, let's examine one of the transistor switch circuits using the physical diagram in Figure<ref>03086.png below</ref> rather than the schematic symbol to represent the transistor.  This way the two PN junctions will be easier to see.
</para>

<image>03086.png<caption>A small base current flowing in the forward biased base-emitter junction allows a large current flow through the reverse biased base-collector junction. </caption></image> 

<para>
A grey-colored diagonal arrow shows the direction of electron flow through the emitter-base junction.  This part makes sense, since the electrons are flowing from the N-type emitter to the P-type base: the junction is obviously forward-biased.  However, the base-collector junction is another matter entirely.  Notice how the grey-colored thick arrow is pointing in the direction of electron flow (up-wards) from base to collector.  With the base made of P-type material and the collector of N-type material, this direction of electron flow is clearly backwards to the direction normally associated with a PN junction!  A normal PN junction wouldn't permit this ``backward'' direction of flow, at least not without offering significant opposition.  However, a saturated transistor shows very little opposition to electrons, all the way from emitter to collector, as evidenced by the lamp's illumination!
</para>

<para>
Clearly then, something is going on here that defies the simple ``two-diode'' explanatory model of the bipolar transistor.  When I was first learning about transistor operation, I tried to construct my own transistor from two back-to-back diodes, as in Figure<ref>03087.png below</ref>.
</para>

<image>03087.png<caption>A pair of back-to-back diodes don't act like a transistor!</caption></image> 

<para>
My circuit didn't work, and I was mystified.  However useful the ``two diode'' description of a transistor might be for testing purposes, it doesn't explain how a transistor behaves as a controlled switch.
</para>

<para>
What happens in a transistor is this: the reverse bias of the base-collector junction prevents collector current when the transistor is in cutoff mode (that is, when there is no base current).  If the base-emitter junction is forward biased by the controlling signal, the normally-blocking action of the base-collector junction is overridden and current is permitted through the collector, despite the fact that electrons are going the ``wrong way'' through that PN junction.  This action is dependent on the quantum physics of semiconductor junctions, and can only take place when the two junctions are properly spaced and the doping concentrations of the three layers are properly proportioned.  Two diodes wired in series fail to meet these criteria; the top diode can never ``turn on'' when it is reversed biased, no matter how much current goes through the bottom diode in the base wire loop.
See <hyperlink>BJTtheory[Bipolar junction transistors, Ch 2][SEMI_2.html]</hyperlink> for more details.
</para>

<para>
That doping concentrations play a crucial part in the special abilities of the transistor is further evidenced by the fact that collector and emitter are not interchangeable.  If the transistor is merely viewed as two back-to-back PN junctions, or merely as a plain N-P-N or P-N-P sandwich of materials, it may seem as though either end of the transistor could serve as collector or emitter.  This, however, is not true.  If connected ``backwards'' in a circuit, a base-collector current will fail to control current between collector and emitter.  Despite the fact that both the emitter and collector layers of a bipolar transistor are of the same doping <italic>type</italic> (either N or P), collector and emitter are definitely not identical!
</para>

<para>
Current through the emitter-base junction allows current through the reverse-biased base-collector junction.  The action of base current can be thought of as ``opening a gate'' for current through the collector.  More specifically, any given amount of emitter-to-base current <italic>permits a limited amount</italic> of base-to-collector current.  For every electron that passes through the emitter-base junction and on through the base wire, a certain, number of electrons pass through the base-collector junction and no more.
</para>
 
<para>
In the next section, this current-limiting of the transistor will be investigated in more detail.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Tested with a multimeter in the ``resistance'' or ``diode check'' modes, a transistor behaves like two back-to-back PN (diode) junctions.</item>
<item>The emitter-base PN junction has a slightly greater forward voltage drop than the collector-base PN junction, because of heavier doping of the emitter semiconductor layer.</item>
<item>The reverse-biased base-collector junction normally blocks any current from going through the transistor between emitter and collector.  However, that junction begins to conduct if current is drawn through the base wire.  Base current may be thought of as ``opening a gate'' for a certain, limited amount of current through the collector.</item>
</itemize>

</section>






<section>
<sectiontitle>Active mode operation</sectiontitle>

<para>
When a transistor is in the fully-off state (like an open switch), it is said to be <italic>cutoff</italic>.  Conversely, when it is fully conductive between emitter and collector (passing as much current through the collector as the collector power supply and load will allow), it is said to be <italic>saturated</italic>.  These are the two modes of operation explored thus far in using the transistor as a switch.
</para>

<index>Cutoff, transistor</index>
<index>Saturation, transistor</index>
<index>Active mode, transistor</index>

<para>
However, bipolar transistors don't have to be restricted to these two extreme modes of operation.  As we learned in the previous section, base current ``opens a gate'' for a limited amount of current through the collector.  If this limit for the controlled current is greater than zero but less than the maximum allowed by the power supply and load circuit, the transistor will ``throttle'' the collector current in a mode somewhere between cutoff and saturation.  This mode of operation is called the <italic>active</italic> mode.
</para>

<para>
An automotive analogy for transistor operation is as follows: <italic>cutoff</italic> is the condition of no motive force generated by the mechanical parts of the car to make it move.  In cutoff mode, the brake is engaged (zero base current), preventing motion (collector current).  <italic>Active mode</italic> is the automobile cruising at a constant, controlled speed (constant, controlled collector current) as dictated by the driver.  <italic>Saturation</italic> the automobile  driving up a steep hill that prevents it from going as fast as the driver wishes.  In other words, a ``saturated'' automobile is one with the accelerator pedal pushed all the way down (base current calling for more collector current than can be provided by the power supply/load circuit).
</para>

<para>
Let's set up a circuit for SPICE simulation to demonstrate what happens when a transistor is in its active mode of operation.  (Figure<ref>03088.png below</ref>)
</para>

<figure>
<htmlo><label>03088.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03088.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
bipolar transistor simulation 
i1 0 1 dc 20u
q1 2 1 0 mod1
vammeter 3 2 dc 0
v1 3 0 dc
.model mod1 npn 
.dc v1 0 2 0.05 
.plot dc i(vammeter)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Circuit for ``active mode'' SPICE simulation, and netlist. </caption>
<tex><label>03088.png</label></tex>
</figure>



<index>Current source</index>

<para>
``Q'' is the standard letter designation for a transistor in a schematic diagram, just as ``R'' is for resistor and ``C'' is for capacitor.  In this circuit, we have an NPN transistor powered by a battery (V<subscript>1</subscript>) and controlled by current through a <italic>current source</italic> (I<subscript>1</subscript>).  A current source is a device that outputs a specific amount of current, generating as much or as little voltage across its terminals to ensure that exact amount of current through it.  Current sources are notoriously difficult to find in nature (unlike voltage sources, which by contrast attempt to maintain a constant voltage, outputting as much or as little current in the fulfillment of that task), but can be simulated with a small collection of electronic components.  As we are about to see, transistors themselves tend to mimic the constant-current behavior of a current source in their ability to <italic>regulate</italic> current at a fixed value.
</para>

<para>
In the SPICE simulation, we'll set the current source at a constant value of 20 <mu>A, then vary the voltage source (V<subscript>1</subscript>) over a range of 0 to 2 volts and monitor how much current goes through it.  The ``dummy'' battery (V<subscript>ammeter</subscript>)  in Figure<ref>03088.png above</ref>  with its output of 0 volts serves merely to provide SPICE with a circuit element for current measurement.
</para>

<comment>v1      i(ammeter) -1.000E-03   0.000E+00   1.000E-03    2.000E-03</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00 -1.980E-05 .             *             .             .</comment>
<comment>5.000E-02  9.188E-05 .             .*            .             .</comment>
<comment>1.000E-01  6.195E-04 .             .        *    .             .</comment>
<comment>1.500E-01  1.526E-03 .             .             .      *      .</comment>
<comment>2.000E-01  1.914E-03 .             .             .            *.</comment>
<comment>2.500E-01  1.987E-03 .             .             .             *</comment>
<comment>3.000E-01  1.998E-03 .             .             .             *</comment>
<comment>3.500E-01  2.000E-03 .             .             .             *</comment>
<comment>4.000E-01  2.000E-03 .             .             .             *</comment>
<comment>4.500E-01  2.000E-03 .             .             .             *</comment>
<comment>5.000E-01  2.000E-03 .             .             .             *</comment>
<comment>5.500E-01  2.000E-03 .             .             .             *</comment>
<comment>6.000E-01  2.000E-03 .             .             .             *</comment>
<comment>6.500E-01  2.000E-03 .             .             .             *</comment>
<comment>7.000E-01  2.000E-03 .             .             .             *</comment>
<comment>7.500E-01  2.000E-03 .             .             .             *</comment>
<comment>8.000E-01  2.000E-03 .             .             .             *</comment>
<comment>8.500E-01  2.000E-03 .             .             .             *</comment>
<comment>9.000E-01  2.000E-03 .             .             .             *</comment>
<comment>9.500E-01  2.000E-03 .             .             .             *</comment>
<comment>1.000E+00  2.000E-03 .             .             .             *</comment>
<comment>1.050E+00  2.000E-03 .             .             .             *</comment>
<comment>1.100E+00  2.000E-03 .             .             .             *</comment>
<comment>1.150E+00  2.000E-03 .             .             .             *</comment>
<comment>1.200E+00  2.000E-03 .             .             .             *</comment>
<comment>1.250E+00  2.000E-03 .             .             .             *</comment>
<comment>1.300E+00  2.000E-03 .             .             .             *</comment>
<comment>1.350E+00  2.000E-03 .             .             .             *</comment>
<comment>1.400E+00  2.000E-03 .             .             .             *</comment>
<comment>1.450E+00  2.000E-03 .             .             .             *</comment>
<comment>1.500E+00  2.000E-03 .             .             .             *</comment>
<comment>1.550E+00  2.000E-03 .             .             .             *</comment>
<comment>1.600E+00  2.000E-03 .             .             .             *</comment>
<comment>1.650E+00  2.000E-03 .             .             .             *</comment>
<comment>1.700E+00  2.000E-03 .             .             .             *</comment>
<comment>1.750E+00  2.000E-03 .             .             .             *</comment>
<comment>1.800E+00  2.000E-03 .             .             .             *</comment>
<comment>1.850E+00  2.000E-03 .             .             .             *</comment>
<comment>1.900E+00  2.000E-03 .             .             .             *</comment>
<comment>1.950E+00  2.000E-03 .             .             .             *</comment>
<comment>2.000E+00  2.000E-03 .             .             .             * </comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<bigspace>
<image>23000.png<caption>A  Sweeping collector voltage 0 to 2 V with base current constant at 20 <mu>A yields  constant 2 mA collector current in the saturation region. </caption></image> 
<bigspace>

<para>
The constant base current of 20 <mu>A sets a collector current limit of 2 mA, exactly 100 times as much.  Notice how flat the curve is in  (Figure<ref>23001.png above</ref>) for collector current over the range of battery voltage from 0 to 2 volts.  The only exception to this featureless plot is at the very beginning, where the battery increases from 0 volts to 0.25 volts.  There, the collector current increases rapidly from 0 amps to its limit of 2 mA.
</para>

<para>
Let's see what happens if we vary the battery voltage over a wider range, this time from 0 to 50 volts.  We'll keep the base current steady at 20 <mu>A.  (Figure<ref>23001.png below</ref>)
</para>



<comment>v1      i(ammeter) -1.000E-03   0.000E+00   1.000E-03    2.000E-03</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00 -1.980E-05 .             *             .             .</comment>
<comment>2.000E+00  2.000E-03 .             .             .             *</comment>
<comment>4.000E+00  2.000E-03 .             .             .             *</comment>
<comment>6.000E+00  2.000E-03 .             .             .             *</comment>
<comment>8.000E+00  2.000E-03 .             .             .             *</comment>
<comment>1.000E+01  2.000E-03 .             .             .             *</comment>
<comment>1.200E+01  2.000E-03 .             .             .             *</comment>
<comment>1.400E+01  2.000E-03 .             .             .             *</comment>
<comment>1.600E+01  2.000E-03 .             .             .             *</comment>
<comment>1.800E+01  2.000E-03 .             .             .             *</comment>
<comment>2.000E+01  2.000E-03 .             .             .             *</comment>
<comment>2.200E+01  2.000E-03 .             .             .             *</comment>
<comment>2.400E+01  2.000E-03 .             .             .             *</comment>
<comment>2.600E+01  2.000E-03 .             .             .             *</comment>
<comment>2.800E+01  2.000E-03 .             .             .             *</comment>
<comment>3.000E+01  2.000E-03 .             .             .             *</comment>
<comment>3.200E+01  2.000E-03 .             .             .             *</comment>
<comment>3.400E+01  2.000E-03 .             .             .             *</comment>
<comment>3.600E+01  2.000E-03 .             .             .             *</comment>
<comment>3.800E+01  2.000E-03 .             .             .             *</comment>
<comment>4.000E+01  2.000E-03 .             .             .             *</comment>
<comment>4.200E+01  2.000E-03 .             .             .             *</comment>
<comment>4.400E+01  2.000E-03 .             .             .             *</comment>
<comment>4.600E+01  2.000E-03 .             .             .             *</comment>
<comment>4.800E+01  2.000E-03 .             .             .             *</comment>
<comment>5.000E+01  2.000E-03 .             .             .             *</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<figure>
<htmlo><label>23001.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23001.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
bipolar transistor simulation 
i1 0 1 dc 20u
q1 2 1 0 mod1
vammeter 3 2 dc 0
v1 3 0 dc
.model mod1 npn
.dc v1 0 50 2
.plot dc i(vammeter)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Sweeping collector voltage 0 to 50 V with base current constant at 20 <mu>A yields constant 2 mA collector current.</caption>
<tex><label>23001.png</label></tex>
</figure>

<para>
Same result!  The collector current in Figure<ref>23001.png above</ref>  holds absolutely steady at 2 mA, although the battery (v1) voltage varies all the way from 0 to 50 volts.  It would appear from our simulation that collector-to-emitter voltage has little effect over collector current, except at very low levels (just above 0 volts).  The transistor is acting as a current regulator, allowing exactly 2 mA through the collector and no more.
</para>

<para>
Now let's see what happens if we increase the controlling (I<subscript>1</subscript>) current from 20 <mu>A to 75 <mu>A, once again sweeping the battery (V<subscript>1</subscript>) voltage from 0 to 50 volts and graphing the collector current in Figure<ref>23002.png below</ref>.
</para>

<comment>v1      i(ammeter) -5.000E-03   0.000E+00    5.000E-03    1.000E-02</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00 -7.426E-05 .             *             .             .</comment>
<comment>2.000E+00  7.500E-03 .             .             .      *      .</comment>
<comment>4.000E+00  7.500E-03 .             .             .      *      .</comment>
<comment>6.000E+00  7.500E-03 .             .             .      *      .</comment>
<comment>8.000E+00  7.500E-03 .             .             .      *      .</comment>
<comment>1.000E+01  7.500E-03 .             .             .      *      .</comment>
<comment>1.200E+01  7.500E-03 .             .             .      *      .</comment>
<comment>1.400E+01  7.500E-03 .             .             .      *      .</comment>
<comment>1.600E+01  7.500E-03 .             .             .      *      .</comment>
<comment>1.800E+01  7.500E-03 .             .             .      *      .</comment>
<comment>2.000E+01  7.500E-03 .             .             .      *      .</comment>
<comment>2.200E+01  7.500E-03 .             .             .      *      .</comment>
<comment>2.400E+01  7.500E-03 .             .             .      *      .</comment>
<comment>2.600E+01  7.500E-03 .             .             .      *      .</comment>
<comment>2.800E+01  7.500E-03 .             .             .      *      .</comment>
<comment>3.000E+01  7.500E-03 .             .             .      *      .</comment>
<comment>3.200E+01  7.500E-03 .             .             .      *      .</comment>
<comment>3.400E+01  7.500E-03 .             .             .      *      .</comment>
<comment>3.600E+01  7.500E-03 .             .             .      *      .</comment>
<comment>3.800E+01  7.500E-03 .             .             .      *      .</comment>
<comment>4.000E+01  7.500E-03 .             .             .      *      .</comment>
<comment>4.200E+01  7.500E-03 .             .             .      *      .</comment>
<comment>4.400E+01  7.500E-03 .             .             .      *      .</comment>
<comment>4.600E+01  7.500E-03 .             .             .      *      .</comment>
<comment>4.800E+01  7.500E-03 .             .             .      *      .</comment>
<comment>5.000E+01  7.500E-03 .             .             .      *      .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>



<figure>
<htmlo><label>23002.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23002.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
bipolar transistor simulation 
i1 0 1 dc 75u
q1 2 1 0 mod1
vammeter 3 2 dc 0
v1 3 0 dc
.model mod1 npn
.dc v1 0 50 2 i1 15u 75u 15u
.plot dc i(vammeter)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Sweeping collector voltage 0 to 50 V (.dc v1 0 50 2)  with base current constant at 75 <mu>A yields constant 7.5 mA collector current. Other curves are generated by current sweep (i1 15u 75u 15u) in DC analysis statement (.dc v1 0 50 2 i1 15u 75u 15u).</caption>
<tex><label>23002.png</label></tex>
</figure>

<para>
Not surprisingly, SPICE gives us a similar plot: a flat line, holding steady this time at 7.5 mA -- exactly 100 times the base current -- over the range of battery voltages from just above 0 volts to 50 volts.  It appears that the base current is the deciding factor for collector current, the V<subscript>1</subscript> battery voltage being irrelevant as long as it is above a certain minimum level.
</para>

<para>
This voltage/current relationship is entirely different from what we're used to seeing across a resistor.  With a resistor, current increases linearly as the voltage across it increases.  Here, with a transistor, current from emitter to collector stays limited at a fixed, maximum value no matter how high the voltage across emitter and collector increases.
</para>

<index>Curve, characteristic</index>
<index>Characteristic curves, transistor</index>

<para>
Often it is useful to superimpose several collector current/voltage graphs for different base currents on the same graph as in Figure<ref>03089.png below</ref>.  A collection of curves like this -- one curve plotted for each distinct level of base current -- for a particular transistor is called the transistor's <italic>characteristic curves</italic>:
</para>

<image>03089.png<caption>Voltage collector to emitter vs collector current for various base currents.</caption></image> 

<index>Beta ratio</index>
<index><beta> ratio</index>

<para>
Each curve on the graph reflects the collector current of the transistor, plotted over a range of collector-to-emitter voltages, for a given amount of base current.  Since a transistor tends to act as a current regulator, limiting collector current to a proportion set by the base current, it is useful to express this proportion as a standard transistor performance measure.  Specifically, the ratio of collector current to base current is known as the <italic>Beta</italic> ratio (symbolized by the Greek letter <beta>):
</para>

<image>13016.png</image> 

<index>Hybrid parameters</index>
<index>hfe</index>

<para>
Sometimes the <beta> ratio is designated as ``h<subscript>fe</subscript>,'' a label used in a branch of mathematical semiconductor analysis known as ``hybrid parameters'' which strives to achieve precise predictions of transistor performance with detailed equations.  Hybrid parameter variables are many, but each is labeled with the general letter ``h'' and a specific subscript.  The variable ``h<subscript>fe</subscript>'' is just another (standardized) way of expressing the ratio of collector current to base current, and is interchangeable with ``<beta>.''  The  <beta> ratio is unitless.

</para>

<para>
<beta> for any transistor is determined by its design: it cannot be altered after manufacture. It is rare to have two transistors of the same design exactly match  because of the physical variables afecting <beta> .  If a circuit design relies on equal <beta> ratios between multiple transistors, ``matched sets'' of transistors may be purchased at extra cost.  However, it is generally considered bad design practice to engineer circuits with such dependencies.
</para>

<index>Beta variations</index>

<para>
The <beta> of a transistor does not  remain stable for all operating conditions.  For an actual transistor, the <beta> ratio may vary by a factor of over 3 within its operating current limits.  For example, a transistor with advertised <beta> of 50 may actually test with I<subscript>c</subscript>/I<subscript>b</subscript> ratios as low as 30 and as high as 100, depending on the amount of collector current, the transistor's temperature, and frequency of amplified signal, among other factors.  For tutorial purposes it is adequate to assume a constant <beta> for any given transistor; realize that real life is not that simple!
</para>

<para>
Sometimes it is helpful for comprehension to ``model'' complex electronic components with a collection of simpler, better-understood components.  The model in Figure<ref>03090.png below</ref> is used in many introductory electronics texts.
</para>

<image>03090.png<caption>Elementary diode resistor transistor model.</caption></image> 

<index>Rheostat</index>

<para>
This model casts the transistor as a combination of diode and rheostat (variable resistor).  Current through the base-emitter diode controls the resistance of the collector-emitter rheostat (as implied by the dashed line connecting the two components), thus controlling collector current.  An NPN transistor is modeled in the figure shown, but a PNP transistor would be only slightly different (only the base-emitter diode would be reversed).  This model succeeds in illustrating the basic concept of transistor amplification: how the base current signal can exert control over the collector current.  However, I don't like this model because it miscommunicates the notion of a set amount of collector-emitter resistance for a given amount of base current.  If this were true, the transistor wouldn't <italic>regulate</italic> collector current at all like the characteristic curves show.  Instead of the collector current curves flattening out after their brief rise as the collector-emitter voltage increases, the collector current would be directly proportional to collector-emitter voltage, rising steadily in a straight line on the graph.
</para>

<para>
A better transistor model, often seen in more advanced textbooks, is shown in  Figure<ref>03091.png below</ref>.
</para>

<image>03091.png<caption>Current source model of transistor.</caption></image> 

<para>
It casts the transistor as a combination of diode and current source, the output of the current source being set at a multiple (<beta> ratio) of the base current.  This model is far more accurate in depicting the true input/output characteristics of a transistor: base current establishes a certain amount of collector <italic>current</italic>, rather than a certain amount of collector-emitter <italic>resistance</italic> as the first model implies.  Also, this model is favored when performing network analysis on transistor circuits, the current source being a well-understood theoretical component.  Unfortunately, using a current source to model the transistor's current-controlling behavior can be misleading: in no way will the transistor ever act as a <italic>source</italic> of electrical energy. The current source does not model the fact that its source of energy is a external power supply, similar to  an amplifier.
</para>


<comment>following deleted</comment>
<htmlo>
<tex>
<index>Constant-current diode</index>
<index>Diode, constant-current</index>

<para>
My own personal suggestion for a transistor model substitutes a constant-current diode for the current source:
</para>

<image>03092.png<caption></caption></image> 

<para>
Since no diode ever acts as a <italic>source</italic> of electrical energy, this analogy escapes the false implication of the current source model as a source of power, while depicting the transistor's constant-current behavior better than the rheostat model.  Another way to describe the constant-current diode's action would be to refer to it as a <italic>current regulator</italic>; this transistor illustration of mine may also be described as a <italic>diode-current regulator</italic> model.  The greatest disadvantage I see to this model is the relative obscurity of constant-current diodes.  Many people may be unfamiliar with their symbology or even of their existence, unlike either rheostats or current sources, which are commonly known.
</para>


<comment>(DC) 07/29/2007 my objection to the following is that a bjt is a current controlled current source not a constant (diode) current source.</comment>
</tex>
</htmlo>
<comment>preceding deleted</comment>


<itemize>
<item><bold>REVIEW:</bold></item>
<item>A transistor is said to be in its <italic>active</italic> mode if it is operating somewhere between fully on (saturated) and fully off (cutoff).</item>
<item>Base current regulates collector current.  By <italic>regulate</italic>, we mean that no more collector current can exist than what is allowed by the base current.</item>
<item>The ratio between collector current and base current is called ``Beta'' (<beta>) or ``h<subscript>fe</subscript>''.</item>
<item><beta> ratios are different for every transistor, and <item><beta> changes for different operating conditions.</item>
</itemize>

</section>





<section>
<sectiontitle>The common-emitter amplifier</sectiontitle>

<para>
At the beginning of this chapter we saw how transistors could be used as switches, operating in either their ``saturation'' or ``cutoff'' modes.  In the last section we saw how transistors behave within their ``active'' modes, between the far limits of saturation and cutoff.  Because transistors are able to control current in an analog (infinitely divisible) fashion, they find use as amplifiers for analog signals.
</para>

<para>
One of the simpler transistor amplifier circuits to study  previously illustrated the transistor's switching ability.  (Figure<ref>03079a.png below</ref>)
</para>

<image>03079.png<caption>NPN transistor as a simple switch.</caption><label>03079a.png</label></image> 

<index>Common-emitter amplifier</index>

<para>
It is called the <italic>common-emitter</italic> configuration because (ignoring the power supply battery) both the signal source and the load share the emitter lead as a common connection point shown in Figure<ref>03102.png below</ref>. This is not the only way in which a transistor may be used as an amplifier, as we will see in later sections of this chapter.
</para>

<image>03102.png<caption>Common-emitter amplifier: The input and output signals both share a connection to the emitter.</caption></image> 

<para>
Before, a small solar cell current saturated a transistor, illuminating a lamp.  Knowing now that transistors are able to ``throttle'' their collector currents according to the amount of base current supplied by an input signal source, we should see that the brightness of the lamp in this circuit is controllable by the solar cell's light exposure.  When there is just a little light shone on the solar cell, the lamp will glow dimly.  The lamp's brightness will steadily increase as more light falls on the solar cell.
</para>

<para>
Suppose that we were interested in using the solar cell as a light intensity instrument.  We want to measure the intensity of incident light with the solar cell by using its output current to drive a meter movement.  It is possible to directly connect a meter movement to a solar cell (Figure<ref>03093.png below</ref>) for this purpose.  In fact, the simplest light-exposure meters for photography work are designed like this.
</para>

<image>03093.png<caption>High intensity light directly drives light meter.</caption></image> 

<para>
Although this approach might work for moderate light intensity measurements, it would not work as well for low light intensity measurements.  Because the solar cell has to supply the meter movement's power needs, the system is necessarily limited in its sensitivity.  Supposing that our need here is to measure very low-level light intensities, we are pressed to find another solution.
</para>

<para>
Perhaps the most direct solution to this measurement problem is to use a transistor  (Figure<ref>03094.png below</ref>) to <italic>amplify</italic> the solar cell's current so that more meter deflection may be obtained for less incident light.
</para>

<image>03094.png<caption>Cell current must be amplified for low intensity light.</caption></image> 

<para>
Current through the meter movement in this circuit will be <beta> times the solar cell current.  With a transistor <beta> of 100, this represents a substantial increase in measurement sensitivity.  It is prudent to point out that the additional power to move the meter needle comes from the battery on the far right of the circuit, not the solar cell itself.  All the solar cell's current does is <italic>control</italic> battery current to the meter to provide a greater meter reading than the solar cell could provide unaided.
</para>

<para>
Because the transistor is a current-regulating device, and because meter movement indications are based on the  current through the movement coil, meter indication in this circuit should depend only on the current from the solar cell, not on the amount of voltage provided by the battery.  This means the accuracy of the circuit will be independent of battery condition, a significant feature!  All that is required of the battery is a certain minimum voltage and current output ability to drive the meter full-scale.
</para>

<para>
Another way in which the common-emitter configuration may be used is to produce an output <italic>voltage</italic> derived from the input signal, rather than a specific output <italic>current</italic>.  Let's replace the meter movement with a plain resistor and measure voltage between collector and emitter in  Figure<ref>03095.png below</ref>
</para>

<image>03095.png<caption>Common emitter amplifier develops voltage output due to current through load resistor.</caption></image> 

<para>
With the solar cell darkened (no current), the transistor will be in cutoff mode and behave as an open switch between collector and emitter.  This will produce maximum voltage drop between collector and emitter for maximum V<subscript>output</subscript>, equal to the full voltage of the battery.
</para>

<para>
At full power (maximum light exposure), the solar cell will drive the transistor into saturation mode, making it behave like a closed switch between collector and emitter.  The result will be minimum voltage drop between collector and emitter, or almost zero output voltage.  In actuality, a saturated transistor can never achieve zero voltage drop between collector and emitter because of the two PN junctions through which collector current must travel.  However, this ``collector-emitter saturation voltage'' will be fairly low, around several tenths of a volt, depending on the specific transistor used.
</para>

<index>Inverting amplifier</index>

<para>
For light exposure levels somewhere between zero and maximum solar cell output, the transistor will be in its active mode, and the output voltage will be somewhere between zero and full battery voltage.  An important quality to note here about the common-emitter configuration is that the output voltage is <italic>inverted</italic> with respect to the input signal.  That is, the output voltage decreases as the input signal increases.  For this reason, the common-emitter amplifier configuration is referred to as an <italic>inverting</italic> amplifier.
</para>

<para>
A quick SPICE simulation (Figure<ref>23003.png below</ref>) of the circuit in  Figure<ref>03096.png below</ref> will verify our qualitative conclusions about this amplifier circuit.
</para>

<figure>
<htmlo><label>03096.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03096.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
*common-emitter amplifier 
i1 0 1 dc
q1 2 1 0 mod1
r 3 2 5000
v1 3 0 dc 15
.model mod1 npn
.dc i1 0 50u 2u
.plot dc v(2,0)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Common emitter schematic with node numbers and corresponding SPICE netlist.</caption>
<tex><label>03096.png</label></tex>
</figure>



<comment>i1         v(2)   0.000E+00    5.000E+00    1.000E+01    1.500E+01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  1.500E+01 .             .             .             *</comment>
<comment>2.000E-06  1.400E+01 .             .             .          *  .</comment>
<comment>4.000E-06  1.300E+01 .             .             .       *     .</comment>
<comment>6.000E-06  1.200E+01 .             .             .     *       .</comment>
<comment>8.000E-06  1.100E+01 .             .             .  *          .</comment>
<comment>1.000E-05  1.000E+01 .             .             *             .</comment>
<comment>1.200E-05  9.000E+00 .             .          *  .             .</comment>
<comment>1.400E-05  8.000E+00 .             .       *     .             .</comment>
<comment>1.600E-05  7.000E+00 .             .     *       .             .</comment>
<comment>1.800E-05  6.000E+00 .             .  *          .             .</comment>
<comment>2.000E-05  5.000E+00 .             *             .             .</comment>
<comment>2.200E-05  4.000E+00 .          *  .             .             .</comment>
<comment>2.400E-05  3.000E+00 .       *     .             .             .</comment>
<comment>2.600E-05  2.000E+00 .     *       .             .             .</comment>
<comment>2.800E-05  1.000E+00 .  *          .             .             .</comment>
<comment>3.000E-05  2.261E-01 .*            .             .             .</comment>
<comment>3.200E-05  1.850E-01 .*            .             .             .</comment>
<comment>3.400E-05  1.694E-01 *             .             .             .</comment>
<comment>3.600E-05  1.597E-01 *             .             .             .</comment>
<comment>3.800E-05  1.527E-01 *             .             .             .</comment>
<comment>4.000E-05  1.472E-01 *             .             .             .</comment>
<comment>4.200E-05  1.427E-01 *             .             .             .</comment>
<comment>4.400E-05  1.388E-01 *             .             .             .</comment>
<comment>4.600E-05  1.355E-01 *             .             .             .</comment>
<comment>4.800E-05  1.325E-01 *             .             .             .</comment>
<comment>5.000E-05  1.299E-01 *             .             .             .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<image>23003.png<caption>Common emitter: collector voltage output vs base current input.</caption></image> 

<para>
At the beginning of the simulation in Figure<ref>23003.png above</ref> where the current source (solar cell) is outputting zero current, the transistor is in cutoff mode and the full 15 volts from the battery is shown at the amplifier output (between nodes 2 and 0).  As the solar cell's current begins to increase, the output voltage proportionally decreases, until the transistor reaches saturation at 30 <mu>A of base current (3 mA of collector current).  Notice how the output voltage trace on the graph is perfectly linear (1 volt steps from 15 volts to 1 volt) until the point of saturation, where it never quite reaches zero.  This is the effect mentioned earlier, where a saturated transistor can never achieve exactly zero voltage drop between collector and emitter due to internal junction effects.  What we do see is a sharp output voltage decrease from 1 volt to 0.2261 volts as the input current increases from 28 <mu>A to 30 <mu>A, and then a continuing decrease in output voltage from then on (albeit in progressively smaller steps).  The lowest the output voltage ever gets in this simulation is 0.1299 volts, asymptotically approaching zero.
</para>

<para>
So far, we've seen the transistor used as an amplifier for DC signals.  In the solar cell light meter example, we were interested in amplifying the DC output of the solar cell to drive a DC meter movement, or to produce a DC output voltage.  However, this is not the only way in which a transistor may be employed as an amplifier.  Often an <italic>AC</italic> amplifier for amplifying <italic>alternating</italic> current and voltage signals is desired.  One common application of this is in audio electronics (radios, televisions, and public-address systems).  Earlier, we saw an example of the audio output of a tuning fork activating a transistor switch. (Figure<ref>03081a.png below</ref>)  Let's see if we can modify that circuit to send power to a speaker rather than to a lamp in Figure<ref>03097.png below</ref>.
</para>

<image>03081.png<caption>Transistor switch activated by audio.</caption><label>03081a.png</label></image> 

<para>
In the original circuit, a full-wave bridge rectifier was used to convert the microphone's AC output signal into a DC voltage to drive the input of the transistor.  All we cared about here was turning the lamp on with a sound signal from the microphone, and this arrangement sufficed for that purpose.  But now we want to actually reproduce the AC signal and drive a speaker.  This means we cannot rectify the microphone's output anymore, because we need undistorted AC signal to drive the transistor!  Let's remove the bridge rectifier and replace the lamp with a speaker:
</para>

<image>03097.png<caption>Common emitter amplifier drives speaker with audio  frequency signal.</caption></image> 

<para>
Since the microphone may produce voltages exceeding the forward voltage drop of the base-emitter PN (diode) junction, I've placed a resistor in series with the microphone.  Let's simulate the circuit in  Figure<ref>03098.png below</ref> with SPICE. The netlist is included in  (Figure<ref>23004.png below</ref>)
</para>

<image>03098.png<caption>SPICE version of common emitter audio amplifier.</caption></image> 


<comment>legend:</comment>
<comment> *: v(1)</comment>    
<comment> +: i(v1)   </comment>
<comment>v(1)    </comment>
<comment>( *)-- -2.000E+00   -1.000E+00    0.000E+00    1.000E+00  2.000E+00</comment>
<comment>(+)--- -8.000E-02   -6.000E-02   -4.000E-02   -2.000E-02  0.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment> 0.000E+00 .             .             *             .           +</comment>
<comment> 3.725E-01 .             .             .    *        .           +</comment>
<comment> 7.195E-01 .             .             .         *   .          +.</comment>
<comment> 1.024E+00 .             .             .             *+          .</comment>
<comment> 1.264E+00 .             .             +             .   *       .</comment>
<comment> 1.420E+00 .             .   +         .             .     *     .</comment>
<comment> 1.493E+00 .            +.             .             .      *    .</comment>
<comment> 1.470E+00 .             .+            .             .      *    .</comment>
<comment> 1.351E+00 .             .        +    .             .    *      .</comment>
<comment> 1.154E+00 .             .             .       +     . *         .</comment>
<comment> 8.791E-01 .             .             .           * .        +  .</comment>
<comment> 5.498E-01 .             .             .       *     .           +</comment>
<comment> 1.877E-01 .             .             .  *          .           +</comment>
<comment>-1.872E-01 .             .          *  .             .           +</comment>
<comment>-5.501E-01 .             .     *       .             .           +</comment>
<comment>-8.815E-01 .             . *           .             .           +</comment>
<comment>-1.151E+00 .           * .             .             .           +</comment>
<comment>-1.352E+00 .        *    .             .             .           +</comment>
<comment>-1.472E+00 .      *      .             .             .           +</comment>
<comment>-1.491E+00 .      *      .             .             .           +</comment>
<comment>-1.422E+00 .       *     .             .             .           +</comment>
<comment>-1.265E+00 .         *   .             .             .           +</comment>
<comment>-1.022E+00 .             *             .             .           +</comment>
<comment>-7.205E-01 .             .   *         .             .           +</comment>
<comment>-3.723E-01 .             .        *    .             .           +</comment>
<comment> 3.040E-06 .             .             *             .           +</comment>
<comment> 3.724E-01 .             .             .    *        .           +</comment>
<comment> 7.205E-01 .             .             .         *   .          +.</comment>
<comment> 1.022E+00 .             .             .             * +         .</comment>
<comment> 1.265E+00 .             .             +             .   *       .</comment>
<comment> 1.422E+00 .             .   +         .             .     *     .</comment>
<comment> 1.491E+00 .            +.             .             .      *    .</comment>
<comment> 1.473E+00 .             .+            .             .      *    .</comment>
<comment> 1.352E+00 .             .        +    .             .    *      .</comment>
<comment> 1.151E+00 .             .             .       +     . *         .</comment>
<comment> 8.814E-01 .             .             .           * .         + .</comment>
<comment> 5.501E-01 .             .             .       *     .           +</comment>
<comment> 1.880E-01 .             .             .  *          .           +</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>



<figure>
<htmlo><label>23004.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23004.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-emitter amplifier 
vinput 1 0 sin (0 1.5 2000 0 0)
r1 1 2 1k
q1 3 2 0 mod1
rspkr 3 4 8 
v1 4 0 dc 15
.model mod1 npn
.tran 0.02m 0.74m
.plot tran v(1,0) i(v1)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Signal clipped at collector due to lack of DC base bias.</caption>
<tex><label>23004.png</label></tex>
</figure>

<para>
The simulation plots  (Figure<ref>23004.png above</ref>) both the input voltage (an AC signal of 1.5 volt peak amplitude and 2000 Hz frequency) and the current through the 15 volt battery, which is the same as the current through the speaker.  What we see here is a full AC sine wave alternating in both positive and negative directions, and a half-wave output current waveform that only pulses in one direction.  If we were actually driving a speaker with this waveform, the sound produced would be horribly distorted.
</para>

<para>
What's wrong with the circuit?  Why won't it faithfully reproduce the entire AC waveform from the microphone?  The answer to this question is found by close inspection of the transistor diode current source model in Figure<ref>03091a.png below</ref>.
</para>

<image>03091.png<caption>The model shows that base current flow in on direction.</caption><label>03091a.png</label></image> 

<para>
Collector current is controlled, or regulated, through the constant-current mechanism according to the pace set by the current through the base-emitter diode.  Note that both current paths through the transistor are monodirectional: <italic>one way only!</italic>  Despite our intent to use the transistor to amplify an <italic>AC</italic> signal, it is essentially a <italic>DC</italic> device, capable of handling currents in a single direction.  We may apply an AC voltage input signal between the base and emitter, but electrons cannot flow in that circuit during the part of the cycle that reverse-biases the base-emitter diode junction.  Therefore, the transistor will remain in cutoff mode throughout that portion of the cycle.  It will ``turn on'' in its active mode only when the input voltage is of the correct polarity to forward-bias the base-emitter diode, and only when that voltage is sufficiently high to overcome the diode's forward voltage drop.  Remember that bipolar transistors are <italic>current-controlled devices</italic>: they regulate collector current based on the existence of base-to-emitter <italic>current</italic>, not base-to-emitter <italic>voltage</italic>.
</para>

<index>Bias, transistor</index>
<index>Voltage, bias</index>

<para>
The only way we can get the transistor to reproduce the entire waveform as current through the speaker is to keep the transistor in its active mode the entire time.  This means we must maintain current through the base during the entire input waveform cycle.  Consequently, the base-emitter diode junction must be kept forward-biased at all times.  Fortunately, this can be accomplished with  a DC <italic>bias voltage</italic> added to the input signal.  By connecting a sufficient DC voltage in series with the AC signal source, forward-bias can be maintained at all points throughout the wave cycle. (Figure<ref>03099.png below</ref>)
</para>

<image>03099.png<caption>V<subscript>bias</subscript> keeps transistor in the active region.</caption></image> 


<figure>
<htmlo><label>23005.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23005.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-emitter amplifier 
vinput 1 5 sin (0 1.5 2000 0 0)
vbias 5 0 dc 2.3
r1 1 2 1k
q1 3 2 0 mod1
rspkr 3 4 8
v1 4 0 dc 15
.model mod1 npn
.tran 0.02m 0.78m
.plot tran v(1,0) i(v1)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Undistorted output current I(v(1) due to Vbias</caption>
<tex><label>23005.png</label></tex>
</figure>


<comment>legend:</comment>
<comment>*: v(1)</comment>    
<comment>+: i(v1)</comment>  
<comment>v(1)    </comment>
<comment>( *)--  0.000E+00   1.000E+00    2.000E+00    3.000E+00  4.000E+00</comment>
<comment>(+)--- -3.000E-01  -2.000E-01   -1.000E-01    0.000E+00  1.000E-01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>2.300E+00 .             .       +     .   *         .           .</comment>
<comment>2.673E+00 .             .  +          .        *    .           .</comment>
<comment>3.020E+00 .            +.             .             *           .</comment>
<comment>3.322E+00 .       +     .             .             .    *      .</comment>
<comment>3.563E+00 .    +        .             .             .       *   .</comment>
<comment>3.723E+00 .  +          .             .             .         * .</comment>
<comment>3.790E+00 . +           .             .             .          *.</comment>
<comment>3.767E+00 . +           .             .             .          *.</comment>
<comment>3.657E+00 .   +         .             .             .        *  .</comment>
<comment>3.452E+00 .      +      .             .             .     *     .</comment>
<comment>3.177E+00 .         +   .             .             . *         .</comment>
<comment>2.850E+00 .             .+            .           * .           .</comment>
<comment>2.488E+00 .             .     +       .      *      .           .</comment>
<comment>2.113E+00 .             .          +  . *           .           .</comment>
<comment>1.750E+00 .             .          *  . +           .           .</comment>
<comment>1.419E+00 .             .     *       .     +       .           .</comment>
<comment>1.148E+00 .             . *           .         +   .           .</comment>
<comment>9.493E-01 .            *.             .           + .           .</comment>
<comment>8.311E-01 .           * .             .             +           .</comment>
<comment>8.050E-01 .          *  .             .             +           .</comment>
<comment>8.797E-01 .           * .             .            +.           .</comment>
<comment>1.039E+00 .             .*            .          +  .           .</comment>
<comment>1.275E+00 .             .   *         .       +     .           .</comment>
<comment>1.579E+00 .             .       *     .   +         .           .</comment>
<comment>1.929E+00 .             .            *+             .           .</comment>
<comment>2.300E+00 .             .       +     .   *         .           .</comment>
<comment>2.673E+00 .             .  +          .        *    .           .</comment>
<comment>3.019E+00 .            +.             .             *           .</comment>
<comment>3.322E+00 .       +     .             .             .    *      .</comment>
<comment>3.564E+00 .    +        .             .             .       *   .</comment>
<comment>3.722E+00 .  +          .             .             .         * .</comment>
<comment>3.790E+00 . +           .             .             .          *.</comment>
<comment>3.768E+00 . +           .             .             .          *.</comment>
<comment>3.657E+00 .   +         .             .             .        *  .</comment>
<comment>3.451E+00 .      +      .             .             .     *     .</comment>
<comment>3.178E+00 .         +   .             .             . *         .</comment>
<comment>2.851E+00 .             .+            .           * .           .</comment>
<comment>2.488E+00 .             .     +       .      *      .           .</comment>
<comment>2.113E+00 .             .          +  . *           .           .</comment>
<comment>1.748E+00 .             .         *   . +           .           .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<para>
With the bias voltage source of 2.3 volts in place, the transistor remains in its active mode throughout the entire cycle of the wave, faithfully reproducing the waveform at the speaker. (Figure<ref>23005.png above</ref>)  Notice that the input voltage (measured between nodes 1 and 0) fluctuates between about 0.8 volts and 3.8 volts, a peak-to-peak voltage of 3 volts just as expected (source voltage = 1.5 volts peak).  The output (speaker) current varies between zero and almost 300 mA, 180<superscript>o</superscript> out of phase with the input (microphone) signal.
</para>

<para>
The illustration in Figure<ref>03110.png below</ref> is another view of the same circuit, this time with a few oscilloscopes (``scopemeters'') connected at crucial points to display all the pertinent signals.
</para>

<image>03110.png<caption>Input is biased upward at base. Output is inverted.</caption></image> 

<para>
The need for biasing a transistor amplifier circuit to obtain full waveform reproduction is an important consideration.  A separate section of this chapter will be devoted entirely to the subject biasing and biasing techniques.  For now, it is enough to understand that biasing may be necessary for proper voltage and current output from the amplifier.
</para>

<para>
Now that we have a functioning amplifier circuit, we can investigate its voltage, current, and power gains.  The generic transistor used in these SPICE analyses has a <beta> of 100, as indicated by the short transistor statistics printout included in the text output in Table <ref>bjt1.tbl below</ref> (these statistics were cut from the last two analyses for brevity's sake).
</para>


<table>bjt1.tbl<caption>BJT SPICE model parameters.</caption>
<literal>
type        npn   
is        1.00E-16
bf         100.000
nf           1.000
br           1.000
nr           1.000
</literal>
</table>


<para>
<beta> is listed under the abbreviation ``bf,'' which actually stands for ``<bold>b</bold>eta, <bold>f</bold>orward''.  If we wanted to insert our own <beta> ratio for an analysis, we could have done so on the <typewriter>.model</typewriter> line of the SPICE netlist.
</para>

<para>
Since <beta> is the ratio of collector current to base current, and we have our load connected in series with the collector terminal of the transistor and our source connected in series with the base, the ratio of output current to input current is equal to beta.  Thus, our current gain for this example amplifier is 100, or 40 dB.
</para>

<para>
Voltage gain is a little more complicated to figure than current gain for this circuit.  As always, voltage gain is defined as the ratio of output voltage divided by input voltage.  In order to experimentally determine this, we modify our last SPICE analysis to plot output voltage rather than output current so we have two voltage plots to compare in Figure<ref>23006.png below</ref>.
</para>


<comment>legend:</comment>
<comment>*: v(1)    </comment>
<comment>+: v(4,3)  </comment>
<comment>v( *1)    </comment>
<comment>(+)-  0.000E+00    1.000E+00    2.000E+00    3.000E+00  4.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>2.300E+00 .             . +           .   *         .            .</comment>
<comment>2.673E+00 .             .     +       .        *    .            .</comment>
<comment>3.020E+00 .             .         +   .             *            .</comment>
<comment>3.322E+00 .             .            +.             .    *       .</comment>
<comment>3.563E+00 .             .             . +           .       *    .</comment>
<comment>3.723E+00 .             .             .  +          .         *  .</comment>
<comment>3.790E+00 .             .             .   +         .          * .</comment>
<comment>3.767E+00 .             .             .   +         .          * .</comment>
<comment>3.657E+00 .             .             .  +          .        *   .</comment>
<comment>3.452E+00 .             .             +             .     *      .</comment>
<comment>3.177E+00 .             .          +  .             . *          .</comment>
<comment>2.850E+00 .             .       +     .           * .            .</comment>
<comment>2.488E+00 .             .   +         .      *      .            .</comment>
<comment>2.113E+00 .             +             . *           .            .</comment>
<comment>1.750E+00 .         +   .          *  .             .            .</comment>
<comment>1.419E+00 .     +       .     *       .             .            .</comment>
<comment>1.148E+00 .  +          . *           .             .            .</comment>
<comment>9.493E-01 .+           *.             .             .            .</comment>
<comment>8.311E-01 +           * .             .             .            .</comment>
<comment>8.050E-01 +          *  .             .             .            .</comment>
<comment>8.797E-01 .+          * .             .             .            .</comment>
<comment>1.039E+00 . +           .*            .             .            .</comment>
<comment>1.275E+00 .    +        .   *         .             .            .</comment>
<comment>1.579E+00 .       +     .       *     .             .            .</comment>
<comment>1.929E+00 .           + .            *.             .            .</comment>
<comment>2.300E+00 .             . +           .   *         .            .</comment>
<comment>2.673E+00 .             .     +       .        *    .            .</comment>
<comment>3.019E+00 .             .         +   .             *            .</comment>
<comment>3.322E+00 .             .            +.             .    *       .</comment>
<comment>3.564E+00 .             .             . +           .       *    .</comment>
<comment>3.722E+00 .             .             .  +          .         *  .</comment>
<comment>3.790E+00 .             .             .   +         .          * .</comment>
<comment>3.768E+00 .             .             .   +         .          * .</comment>
<comment>3.657E+00 .             .             .  +          .        *   .</comment>
<comment>3.451E+00 .             .             +             .     *      .</comment>
<comment>3.178E+00 .             .          +  .             . *          .</comment>
<comment>2.851E+00 .             .       +     .           * .            .</comment>
<comment>2.488E+00 .             .   +         .      *      .            .</comment>
<comment>2.113E+00 .             +             . *           .            .</comment>
<comment>1.748E+00 .         +   .         *   .             .            .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>

<figure>
<htmlo><label>23006.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23006.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-emitter amplifier
vinput 1 5 sin (0 1.5 2000 0 0)
vbias 5 0 dc 2.3
r1 1 2 1k
q1 3 2 0 mod1
rspkr 3 4 8
v1 4 0 dc 15
.model mod1 npn
.tran 0.02m 0.78m
.plot tran v(1,0) v(3)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>V(3), the output voltage across r<subscript>spkr</subscript>, compared to the input. </caption>
<tex><label>23006.png</label></tex>
</figure>

<para>
Plotted on the same scale (from 0 to 4 volts), we see that the output waveform  in Figure<ref>23006.png above</ref> <comment>(``+'')</comment> has a smaller peak-to-peak amplitude than the input waveform <comment>(``*'')</comment>, in addition to being at a lower bias voltage, not elevated up from 0 volts like the input.  Since voltage gain for an AC amplifier is defined by the ratio of AC amplitudes, we can ignore any DC bias separating the two waveforms.  Even so, the input waveform is still larger than the output, which tells us that the voltage gain is less than 1 (a negative dB figure).
</para>

<para>
To be honest, this low voltage gain is not characteristic to <italic>all</italic> common-emitter amplifiers.  It is a consequence of the great disparity between the input and load resistances.  Our input resistance (R<subscript>1</subscript>) here is 1000 <OMEGA>, while the load (speaker) is only 8 <OMEGA>.  Because the current gain of this amplifier is determined solely by the <beta> of the transistor, and because that <beta> figure is fixed, the current gain for this amplifier won't change with variations in either of these resistances.  However, voltage gain <italic>is</italic> dependent on these resistances.  If we alter the load resistance, making it a larger value, it will drop a proportionately greater voltage for its range of load currents, resulting in a larger output waveform.  Let's try another simulation, only this time with a 30 <OMEGA> in Figure<ref>23007.png below</ref> load instead of an 8 <OMEGA> load.
</para>



<comment>legend:</comment>
<comment> *: v(1)</comment>
<comment> +: v(4,3) </comment> 
<comment>v(1)</comment>    
<comment>( *)--  0.000E+00    1.000E+00    2.000E+00    3.000E+00  4.000E+00</comment>
<comment>(+)-- -5.000E+00    0.000E+00    5.000E+00    1.000E+01  1.500E+01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>2.300E+00 .             .           + .   *         .            .</comment>
<comment>2.673E+00 .             .             .+       *    .            .</comment>
<comment>3.020E+00 .             .             .   +         *            .</comment>
<comment>3.322E+00 .             .             .     +       .    *       .</comment>
<comment>3.563E+00 .             .             .       +     .       *    .</comment>
<comment>3.723E+00 .             .             .         +   .         *  .</comment>
<comment>3.790E+00 .             .             .         +   .          * .</comment>
<comment>3.767E+00 .             .             .         +   .          * .</comment>
<comment>3.657E+00 .             .             .        +    .        *   .</comment>
<comment>3.452E+00 .             .             .      +      .     *      .</comment>
<comment>3.177E+00 .             .             .    +        . *          .</comment>
<comment>2.850E+00 .             .             . +         * .            .</comment>
<comment>2.488E+00 .             .            +.      *      .            .</comment>
<comment>2.113E+00 .             .         +   . *           .            .</comment>
<comment>1.750E+00 .             .      +   *  .             .            .</comment>
<comment>1.419E+00 .             .    +*       .             .            .</comment>
<comment>1.148E+00 .             . x           .             .            .</comment>
<comment>9.493E-01 .            *.+            .             .            .</comment>
<comment>8.311E-01 .           * +             .             .            .</comment>
<comment>8.050E-01 .          *  +             .             .            .</comment>
<comment>8.797E-01 .           * .+            .             .            .</comment>
<comment>1.039E+00 .             .*+           .             .            .</comment>
<comment>1.275E+00 .             .  +*         .             .            .</comment>
<comment>1.579E+00 .             .     + *     .             .            .</comment>
<comment>1.929E+00 .             .        +   *.             .            .</comment>
<comment>2.300E+00 .             .           + .   *         .            .</comment>
<comment>2.673E+00 .             .             .+       *    .            .</comment>
<comment>3.019E+00 .             .             .   +         *            .</comment>
<comment>3.322E+00 .             .             .     +       .    *       .</comment>
<comment>3.564E+00 .             .             .       +     .       *    .</comment>
<comment>3.722E+00 .             .             .         +   .         *  .</comment>
<comment>3.790E+00 .             .             .         +   .          * .</comment>
<comment>3.768E+00 .             .             .         +   .          * .</comment>
<comment>3.657E+00 .             .             .        +    .        *   .</comment>
<comment>3.451E+00 .             .             .      +      .     *      .</comment>
<comment>3.178E+00 .             .             .    +        . *          .</comment>
<comment>2.851E+00 .             .             . +         * .            .</comment>
<comment>2.488E+00 .             .            +.      *      .            .</comment>
<comment>2.113E+00 .             .         +   . *           .            .</comment>
<comment>1.748E+00 .             .      +  *   .             .            .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<figure>
<htmlo><label>23007.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23007.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-emitter amplifier
vinput 1 5 sin (0 1.5 2000 0 0)
vbias 5 0 dc 2.3
r1 1 2 1k
q1 3 2 0 mod1
rspkr 3 4 30
v1 4 0 dc 15
.model mod1 npn
.tran 0.02m 0.78m
.plot tran v(1,0) v(3)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Increasing r<subscript>spkr</subscript> to 30 <OMEGA> increases the output voltage.</caption>
<tex><label>23007.png</label></tex>
</figure>

<para>
This time the output voltage waveform in Figure<ref>23007.png above</ref> is significantly greater in amplitude than the input waveform.    Looking closely, we can see that the output waveform crests between 0 and about 9 volts: approximately 3 times the amplitude of the input voltage.
</para>
<comment>removed following due to addition of nutmeg plot(DC)</comment>
<comment>This may not be obvious at first, since the two waveforms are plotted on different scales: the input on a scale of 0 to 4 volts and the output on a scale of -5 to 15 volts.</comment>

<para>
We can do another computer analysis of this circuit, this time instructing SPICE to analyze it from an AC point of view, giving us peak voltage figures for input and output instead of a time-based plot of the waveforms.  (Table<ref>bjt2.tbl below</ref>)
</para>

<table>bjt2.tbl<caption>SPICE netlist for printing AC input and output voltages.</caption>
<literal>
common-emitter amplifier                                                        
vinput 1 5 ac 1.5       
vbias 5 0 dc 2.3
r1 1 2 1k       
q1 3 2 0 mod1   
rspkr 3 4 30    
v1 4 0 dc 15    
.model mod1 npn 
.ac lin 1 2000 2000     
.print ac v(1,0) v(4,3) 
.end    

freq          v(1)        v(4,3)      
2.000E+03     1.500E+00   4.418E+00
</literal>
</table>

<para>
Peak voltage measurements of input and output show an input of 1.5 volts and an output of 4.418 volts.  This gives us a voltage gain ratio of 2.9453 (4.418 V / 1.5 V), or 9.3827 dB.
</para>

<image>13018.png</image> 

<para>
Because the current gain of the common-emitter amplifier is fixed by <beta>, and since the input and output voltages will be equal to the input and output currents multiplied by their respective resistors, we can derive an equation for approximate voltage gain:
</para>

<image>13017.png</image> 

<para>
As you can see, the predicted results for voltage gain are quite close to the simulated results.  With perfectly linear transistor behavior, the two sets of figures would exactly match.  SPICE does a reasonable job of accounting for the many ``quirks'' of bipolar transistor function in its analysis, hence the slight mismatch in voltage gain based on SPICE's output.
</para>

<para>
These voltage gains remain the same regardless of where we measure output voltage in the circuit: across collector and emitter, or across the series load resistor as we did in the last analysis.  The amount of output voltage <italic>change</italic> for any given amount of input voltage will remain the same.  Consider the two following SPICE analyses as proof of this.  The first simulation in Figure<ref>23008.png below</ref> is time-based, to provide a plot of input and output voltages.  You will notice that the two signals are 180<superscript>o</superscript> out of phase with each other.  The second simulation in Table<ref>bjt3.tbl below</ref> is an AC analysis, to provide simple, peak voltage readings for input and output.
</para>

<figure>
<htmlo><label>23008.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23008.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-emitter amplifier
vinput 1 5 sin (0 1.5 2000 0 0)
vbias 5 0 dc 2.3
r1 1 2 1k
q1 3 2 0 mod1
rspkr 3 4 30
v1 4 0 dc 15
.model mod1 npn
.tran 0.02m 0.74m
.plot tran v(1,0) v(3,0)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Common-emitter amplifier shows a voltage gain with R<subscript>spkr</subscript>=30<OMEGA></caption>
<tex><label>23008.png</label></tex>
</figure>

<comment>legend:</comment>
<comment>*: v(1)</comment>    
<comment>+: v(3)</comment>    
<comment>v(1)   </comment> 
<comment>( *)-  0.000E+00     1.000E+00     2.000E+00     3.000E+00  4.000E+00</comment>
<comment>(+)--  0.000E+00     5.000E+00     1.000E+01     1.500E+01  2.000E+01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment> 2.300E+00 .           .             . + *         .             .</comment>
<comment> 2.673E+00 .           .            +.        *    .             .</comment>
<comment> 3.020E+00 .           .         +   .             *             .</comment>
<comment> 3.324E+00 .           .       +     .             .    *        .</comment>
<comment> 3.564E+00 .           .     +       .             .       *     .</comment>
<comment> 3.720E+00 .           .   +         .             .         *   .</comment>
<comment> 3.793E+00 .           .   +         .             .          *  .</comment>
<comment> 3.770E+00 .           .   +         .             .          *  .</comment>
<comment> 3.651E+00 .           .    +        .             .        *    .</comment>
<comment> 3.454E+00 .           .      +      .             .     *       .</comment>
<comment> 3.179E+00 .           .        +    .             .  *          .</comment>
<comment> 2.850E+00 .           .           + .           * .             .</comment>
<comment> 2.488E+00 .           .             .+     *      .             .</comment>
<comment> 2.113E+00 .           .             . * +         .             .</comment>
<comment> 1.750E+00 .           .         *   .      +      .             .</comment>
<comment> 1.418E+00 .           .     *       .        +    .             .</comment>
<comment> 1.149E+00 .           . *           .           + .             .</comment>
<comment> 9.477E-01 .          *.             .            +.             .</comment>
<comment> 8.277E-01 .         * .             .             +             .</comment>
<comment> 8.091E-01 .        *  .             .             +             .</comment>
<comment> 8.781E-01 .         * .             .            +.             .</comment>
<comment> 1.035E+00 .           *             .           + .             .</comment>
<comment> 1.278E+00 .           .   *         .          +  .             .</comment>
<comment> 1.579E+00 .           .       *     .       +     .             .</comment>
<comment> 1.928E+00 .           .            *.    +        .             .</comment>
<comment> 2.300E+00 .           .             . + *         .             .</comment>
<comment> 2.672E+00 .           .            +.        *    .             .</comment>
<comment> 3.020E+00 .           .         +   .             *             .</comment>
<comment> 3.322E+00 .           .       +     .             .    *        .</comment>
<comment> 3.565E+00 .           .     +       .             .       *     .</comment>
<comment> 3.722E+00 .           .   +         .             .         *   .</comment>
<comment> 3.791E+00 .           .   +         .             .          *  .</comment>
<comment> 3.773E+00 .           .   +         .             .          *  .</comment>
<comment> 3.652E+00 .           .    +        .             .        *    .</comment>
<comment> 3.451E+00 .           .      +      .             .     *       .</comment>
<comment> 3.181E+00 .           .        +    .             .  *          .</comment>
<comment> 2.850E+00 .           .           + .           * .             .</comment>
<comment> 2.488E+00 .           .             .+     *      .             .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>



<table>bjt3.tbl<caption>SPICE netlist for AC analysis</caption>
<literal>
common-emitter amplifier                                                        
vinput 1 5 ac 1.5       
vbias 5 0 dc 2.3
r1 1 2 1k       
q1 3 2 0 mod1   
rspkr 3 4 30    
v1 4 0 dc 15    
.model mod1 npn 
.ac lin 1 2000 2000     
.print ac v(1,0) v(3,0) 
.end    

freq          v(1)        v(3)        
2.000E+03     1.500E+00   4.418E+00
</literal>
</table>

<para>
We still have a peak output voltage of 4.418 volts with a peak input voltage of 1.5 volts.  The only difference from the last set of simulations is the <italic>phase</italic> of the output voltage.
</para>

<para>
So far, the example circuits shown in this section have all used NPN transistors.  PNP transistors are just as valid to use as NPN in <italic>any</italic> amplifier configuration, as long as the proper polarity and current directions are maintained, and the common-emitter amplifier is no exception.  The output invertion and gain of a PNP transistor amplifier are the same as its NPN counterpart, just the battery polarities are different.  (Figure<ref>03112.png below</ref>)
</para>

<image>03112.png<caption>PNP version of common emitter amplifier.</caption></image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Common-emitter</italic> transistor amplifiers are so-called because the input and output voltage points share the emitter lead of the transistor in common with each other, not considering any power supplies.</item>
<item>Transistors are essentially DC devices: they cannot directly handle voltages or currents that reverse direction.  To make them work for amplifying AC signals, the input signal must be offset with a DC voltage to keep the transistor in its active mode throughout the entire cycle of the wave.  This is called <italic>biasing</italic>.</item>
<item>If the output voltage is measured between emitter and collector on a common-emitter amplifier, it will be 180<superscript>o</superscript> out of phase with the input voltage waveform.  Thus, the common-emitter amplifier is called an <italic>inverting</italic> amplifier circuit.</item>
<item>The current gain of a common-emitter transistor amplifier with the load connected in series with the collector is equal to <beta>.  The voltage gain of a common-emitter transistor amplifier is approximately given here:</item>
<item>
<image>13019.png</image> 
</item>
<item>Where ``R<subscript>out</subscript>'' is the resistor connected in series with the collector and ``R<subscript>in</subscript>'' is the resistor connected in series with the base.</item>
</itemize>

</section>






<section>
<sectiontitle>The common-collector amplifier</sectiontitle>

<index>Common-collector amplifier</index>
<index>Emitter-follower amplifier</index>

<para>
Our next transistor configuration to study is a bit simpler for gain calculations.  Called the <italic>common-collector</italic> configuration, its schematic diagram is shown in Figure<ref>03100.png below</ref>.
</para>

<image>03100.png<caption>Common collector amplifier has collector common to both input and output.</caption></image> 

<para>
It is called the <italic>common-collector</italic> configuration because (ignoring the power supply battery) both the signal source and the load share the collector lead as a common connection point as in Figure<ref>03101.png below</ref>.
</para>
 
<image>03101.png<caption>Common collector: Input is applied to base and collector. Output is from emitter-collector circuit.</caption></image> 

<para>
It should be apparent that the load resistor in the common-collector amplifier circuit receives both the base and collector currents, being placed in series with the emitter.  Since the emitter lead of a transistor is the one handling the most current (the sum of base and collector currents, since base and collector currents always mesh together to form the emitter current), it would be reasonable to presume that this amplifier will have a very large current gain.  This presumption is indeed correct: the current gain for a common-collector amplifier is quite large, larger than any other transistor amplifier configuration.  However, this is not necessarily what sets it apart from other amplifier designs.
</para>

<para>
Let's proceed immediately to a SPICE analysis of this amplifier circuit, and you will be able to immediately see what is unique about this amplifier. The circuit is in Figure<ref>03103.png below</ref>. The netlist is in  Figure<ref>23009.png below</ref>.
</para>

<image>03103.png<caption>Common collector amplifier for SPICE.</caption></image> 


<figure>
<htmlo><label>23009.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23009.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-collector amplifier 
vin 1 0 
q1 2 1 3 mod1   
v1 2 0 dc 15    
rload 3 0 5k    
.model mod1 npn 
.dc vin 0 5 0.2 
.plot dc v(3,0) 
.end    
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Common collector: Output equals input less a 0.7 V V<subscript>BE</subscript> drop. </caption>
<tex><label>23009.png</label></tex>
</figure>


<comment>vin        v(3)  0.000E+00     2.000E+00    4.000E+00    6.000E+00</comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  7.500E-08 *             .             .             .</comment> 
<comment>2.000E-01  7.501E-08 *             .             .             .</comment>  
<comment>4.000E-01  2.704E-06 *             .             .             .</comment>  
<comment>6.000E-01  4.954E-03 *             .             .             .</comment>  
<comment>8.000E-01  1.221E-01 .*            .             .             .</comment>    
<comment>1.000E+00  2.989E-01 . *           .             .             .</comment>  
<comment>1.200E+00  4.863E-01 .  *          .             .             .</comment> 
<comment>1.400E+00  6.777E-01 .    *        .             .             .</comment>  
<comment>1.600E+00  8.712E-01 .     *       .             .             .</comment>  
<comment>1.800E+00  1.066E+00 .      *      .             .             .</comment>  
<comment>2.000E+00  1.262E+00 .        *    .             .             .</comment>  
<comment>2.200E+00  1.458E+00 .         *   .             .             .</comment>  
<comment>2.400E+00  1.655E+00 .           * .             .             .</comment>   
<comment>2.600E+00  1.852E+00 .            *.             .             .</comment>   
<comment>2.800E+00  2.049E+00 .             *             .             .</comment>   
<comment>3.000E+00  2.247E+00 .             . *           .             .</comment>   
<comment>3.200E+00  2.445E+00 .             .  *          .             .</comment>  
<comment>3.400E+00  2.643E+00 .             .   *         .             .</comment>  
<comment>3.600E+00  2.841E+00 .             .     *       .             .</comment>  
<comment>3.800E+00  3.039E+00 .             .      *      .             .</comment>
<comment>4.000E+00  3.237E+00 .             .        *    .             .</comment>  
<comment>4.200E+00  3.436E+00 .             .         *   .             .</comment>  
<comment>4.400E+00  3.634E+00 .             .          *  .             .</comment>   
<comment>4.600E+00  3.833E+00 .             .            *.             .</comment>  
<comment>4.800E+00  4.032E+00 .             .             *             .</comment>  
<comment>5.000E+00  4.230E+00 .             .             . *           .</comment>  
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>

<para>
Unlike the common-emitter amplifier from the previous section, the common-collector produces an output voltage in <italic>direct</italic> rather than <italic>inverse</italic> proportion to the rising input voltage. See Figure<ref>23009.png above</ref>.  As the input voltage increases, so does the output voltage.  Moreover, a close examination reveals that the output voltage is nearly <italic>identical</italic> to the input voltage, lagging behind by about 0.7 volts.
</para>

<para>
This is the unique quality of the common-collector amplifier: an output voltage that is nearly equal to the input voltage.  Examined from the perspective of output voltage <italic>change</italic> for a given amount of input voltage <italic>change</italic>, this amplifier has a voltage gain of almost exactly unity (1), or 0 dB.  This holds true for transistors of any <beta> value, and for load resistors of any resistance value.
</para>

<para>
It is simple to understand why the output voltage of a common-collector amplifier is always nearly equal to the input voltage.  Referring to the diode current source transistor model in Figure<ref>03104.png below</ref>, we see that the base current must go through the base-emitter PN junction, which is equivalent to a normal rectifying diode.  If this junction is forward-biased (the transistor conducting current in either its active or saturated modes), it will have a voltage drop of approximately 0.7 volts, assuming silicon construction.  This 0.7 volt drop is largely irrespective of the actual magnitude of base current; thus, we can regard it as being constant:
</para>

<image>03104.png<caption>Emitter follower: Emitter voltage follows base voltage (less a 0.7 V V<subscript>BE</subscript> drop.)</caption></image> 

<index>Kirchhoff's Voltage Law</index>

<para>
Given the voltage polarities across the base-emitter PN junction and the load resistor, we see that these <italic>must</italic> add together to equal the input voltage, in accordance with Kirchhoff's Voltage Law.  In other words, the load voltage will always be about 0.7 volts less than the input voltage for all conditions where the transistor is conducting.  Cutoff occurs at input voltages below 0.7 volts, and saturation at input voltages in excess of battery (supply) voltage plus 0.7 volts.
</para>

<index>Voltage follower</index>
<index>Emitter follower</index>

<para>
Because of this behavior, the common-collector amplifier circuit is also known as the <italic>voltage-follower</italic> or <italic>emitter-follower</italic> amplifier, because the emitter load voltages follow the input so closely.
</para>

<para>
Applying the common-collector circuit to the amplification of AC signals requires the same input ``biasing'' used in the common-emitter circuit: a DC voltage must be added to the AC input signal to keep the transistor in its active mode during the entire cycle.  When this is done, the result is the non-inverting amplifier in Figure<ref>03105.png below</ref>.
</para>

<figure>
<htmlo><label>03105.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03105.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-collector amplifier
vin 1 4 sin(0 1.5 2000 0 0)
vbias 4 0 dc 2.3
q1 2 1 3 mod1
v1 2 0 dc 15
rload 3 0 5k
.model mod1 npn
.tran .02m .78m
.plot tran v(1,0) v(3,0)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Common collector (emitter-follower) amplifier.</caption>
<tex><label>03105.png</label></tex>
</figure>


<comment>legend:</comment>
<comment>*: v(1)</comment>    
<comment>+: v(3) </comment>   
<comment>v(1)   0.000E+00   1.000E+00     2.000E+00    3.000E+00  4.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>2.300E+00 .            .       +     .   *         .            .</comment>
<comment>2.673E+00 .            .            +.        *    .            .</comment>
<comment>3.020E+00 .            .             .   +         *            .</comment>
<comment>3.322E+00 .            .             .       +     .    *       .</comment>
<comment>3.563E+00 .            .             .          +  .       *    .</comment>
<comment>3.723E+00 .            .             .            +.         *  .</comment>
<comment>3.790E+00 .            .             .             +          * .</comment>
<comment>3.767E+00 .            .             .             +          * .</comment>
<comment>3.657E+00 .            .             .            +.        *   .</comment>
<comment>3.452E+00 .            .             .         +   .     *      .</comment>
<comment>3.177E+00 .            .             .     +       . *          .</comment>
<comment>2.850E+00 .            .             .+          * .            .</comment>
<comment>2.488E+00 .            .         +   .      *      .            .</comment>
<comment>2.113E+00 .            .    +        . *           .            .</comment>
<comment>1.750E+00 .            +          *  .             .            .</comment>
<comment>1.419E+00 .        +   .     *       .             .            .</comment>
<comment>1.148E+00 .    +       . *           .             .            .</comment>
<comment>9.493E-01 .  +        *.             .             .            .</comment>
<comment>8.311E-01 .+         * .             .             .            .</comment>
<comment>8.050E-01 .+        *  .             .             .            .</comment>
<comment>8.797E-01 . +        * .             .             .            .</comment>
<comment>1.039E+00 .   +        .*            .             .            .</comment>
<comment>1.275E+00 .      +     .   *         .             .            .</comment>
<comment>1.579E+00 .          + .       *     .             .            .</comment>
<comment>1.929E+00 .            .  +         *.             .            .</comment>
<comment>2.300E+00 .            .       +     .   *         .            .</comment>
<comment>2.673E+00 .            .            +.        *    .            .</comment>
<comment>3.019E+00 .            .             .   +         *            .</comment>
<comment>3.322E+00 .            .             .       +     .    *       .</comment>
<comment>3.564E+00 .            .             .          +  .       *    .</comment>
<comment>3.722E+00 .            .             .            +.         *  .</comment>
<comment>3.790E+00 .            .             .             +          * .</comment>
<comment>3.768E+00 .            .             .             +          * .</comment>
<comment>3.657E+00 .            .             .            +.        *   .</comment>
<comment>3.451E+00 .            .             .         +   .     *      .</comment>
<comment>3.178E+00 .            .             .     +       . *          .</comment>
<comment>2.851E+00 .            .             .+          * .            .</comment>
<comment>2.488E+00 .            .         +   .      *      .            .</comment>
<comment>2.113E+00 .            .    +        . *           .            .</comment>
<comment>1.748E+00 .            +         *   .             .            .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<para>
The results of the SPICE simulation in Figure<ref>23010.png below</ref>  show that the output follows the input. The output is the same peak-to-peak amplitude as the input. Though, the DC level is shifted downward by one V<subscript>BE</subscript> diode drop.
</para>

<image>23010.png<caption>Common collector (emitter-follower): Output V3 follows input V1 less a 0.7 V V<subscript></subscript>BE drop.</caption></image> 
<bigspace>

<para>
Here's another view of the circuit  (Figure<ref>03111.png below</ref>) with oscilloscopes connected to several points of interest.
</para>

<image>03111.png<caption>Common collector non-inverting voltage gain is 1.</caption></image> 

<para>
Since this amplifier configuration doesn't provide any voltage gain (in fact, in practice it actually has a voltage gain of slightly <italic>less</italic> than 1), its only amplifying factor is current.  The common-emitter amplifier configuration examined in the previous section had a current gain equal to the <beta> of the transistor, being that the input current went through the base and the output (load) current went through the collector, and <beta> by definition is the ratio between the collector and base currents.  In the common-collector configuration, though, the load is situated in series with the emitter, and thus its current is equal to the emitter current.  With the emitter carrying collector current <italic>and</italic> base current, the load in this type of amplifier has all the current of the collector running through it <italic>plus</italic> the input current of the base.  This yields a current gain of <beta> plus 1:
</para>

<image>13020.png</image> 

<para>
Once again, PNP transistors are just as valid to use in the common-collector configuration as NPN transistors.  The gain calculations are all the same, as is the non-inverting of the amplified signal.  The only difference is in voltage polarities and current directions shown in Figure<ref>03113.png below</ref>.
</para>

<image>03113.png<caption>PNP version of the common-collector amplifier.</caption></image> 

<index>Voltage regulator</index>
<index>Regulator, voltage</index>

<para>
A popular application of the common-collector amplifier is for regulated DC power supplies, where an unregulated (varying) source of DC voltage is clipped at a specified level to supply regulated (steady) voltage to a load.  Of course, zener diodes already provide this function of voltage regulation shown in Figure<ref>03106.png below</ref>.
</para>

<image>03106.png<caption>Zener diode voltage regulator.</caption></image> 

<para>
However, when used in this direct fashion, the amount of current that may be supplied to the load is usually quite limited.  In essence, this circuit regulates voltage across the load by keeping current through the series resistor at a high enough level to drop all the excess power source voltage across it, the zener diode drawing more or less current as necessary to keep the voltage across itself steady.  For high-current loads, a plain zener diode voltage regulator would have to shunt a heavy current through the diode to be effective at regulating load voltage in the event of large load resistance or voltage source changes.
</para>

<para>
One popular way to increase the current-handling ability of a regulator circuit like this is to use a common-collector transistor to amplify current to the load, so that the zener diode circuit only has to handle the amount of current necessary to drive the base of the transistor.  (Figure<ref>03107.png below</ref>)
</para>

<image>03107.png<caption>Common collector application: voltage regulator.</caption></image> 

<para>
There's really only one caveat to this approach: the load voltage will be approximately 0.7 volts less than the zener diode voltage, due to the transistor's 0.7 volt base-emitter drop.  Since this 0.7 volt difference is fairly constant over a wide range of load currents, a zener diode with a 0.7 volt higher rating can be chosen for the application.
</para>

<index>Darlington pair</index>

<para>
Sometimes the high current gain of a single-transistor, common-collector configuration isn't enough for a particular application.  If this is the case, multiple transistors may be staged together in a popular configuration known as a <italic>Darlington pair</italic>, just an extension of the common-collector concept shown in Figure<ref>03108.png below</ref>.
</para>

<image>03108.png<caption>An NPN darlington pair.</caption></image> 

<para>
Darlington pairs essentially place one transistor as the common-collector load for another transistor, thus multiplying their individual current gains.  Base current through the upper-left transistor is amplified through that transistor's emitter, which is directly connected to the base of the lower-right transistor, where the current is again amplified.  The overall current gain is as follows:
</para>

<image>13021.png</image> 

<para>
Voltage gain is still nearly equal to 1 if the entire assembly is connected to a load in common-collector fashion, although the load voltage will be a full 1.4 volts less than the input voltage shown in Figure<ref>03109.png below</ref>.
</para>

<image>03109.png<caption>Darlington pair based common-collector amplifier loses two V<subscript>BE</subscript> diode drops.</caption></image> 

<para>
Darlington pairs may be purchased as discrete units (two transistors in the same package), or may be built up from a pair of individual transistors.  Of course, if even more current gain is desired than what may be obtained with a pair, Darlington triplet or quadruplet assemblies may be constructed.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Common-collector</italic> transistor amplifiers are so-called because the input and output voltage points share the collector lead of the transistor in common with each other, not considering any power supplies.</item>
<item>The common-collector amplifier is also known as an emitter-follower.</item>
<item>The output voltage on a common-collector amplifier will be in phase with the input voltage, making the common-collector a <italic>non-inverting</italic> amplifier circuit.</item>
<item>The current gain of a common-collector amplifier is equal to <beta> plus 1.  The voltage gain is approximately equal to 1 (in practice, just a little bit less).</item>
<item>A <italic>Darlington pair</italic> is a pair of transistors ``piggybacked'' on one another so that the emitter of one feeds current to the base of the other in common-collector form.  The result is an overall current gain equal to the product (multiplication) of their individual common-collector current gains (<beta> plus 1).</item>
</itemize>

</section>





<section>
<sectiontitle>The common-base amplifier</sectiontitle>

<index>Common-base amplifier</index>

<para>
The final transistor amplifier configuration (Figure<ref>03114.png below</ref>) we need to study is the <italic>common-base</italic>.  This configuration is more complex than the other two, and is less common due to its strange operating characteristics.
</para>

<image>03114.png<caption>Common-base amplifier</caption></image> 

<para>
It is called the <italic>common-base</italic> configuration because (DC power source aside), the signal source and the load share the base of the transistor as a common connection point shown in Figure<ref>03115.png below</ref>.
</para>

<image>03115.png<caption>Common-base amplifier: Input between emitter and base, output between collector and base.</caption></image> 

<para>
Perhaps the most striking characteristic of this configuration is that the input signal source must carry the full emitter current of the transistor, as indicated by the heavy arrows in the first illustration.  As we know, the emitter current is greater than any other current in the transistor, being the sum of base and collector currents.  In the last two amplifier configurations, the signal source was connected to the base lead of the transistor, thus handling the <italic>least</italic> current possible.
</para>

<index>Alpha ratio</index>
<index><alpha> ratio</index>

<para>
Because the input current exceeds all other currents in the circuit, including the output current, the current gain of this amplifier is actually <italic>less than 1</italic> (notice how R<subscript>load</subscript> is connected to the collector, thus carrying slightly less current than the signal source).  In other words, it <italic>attenuates</italic> current rather than <italic>amplifying</italic> it.  With common-emitter and common-collector amplifier configurations, the transistor parameter most closely associated with gain was <beta>.  In the common-base circuit, we follow another basic transistor parameter: the ratio between collector current and emitter current, which is a fraction always less than 1.  This fractional value for any transistor is called the <italic>alpha</italic> ratio, or <alpha> ratio.
</para>

<para>
Since it obviously can't boost signal current, it only seems reasonable to expect it to boost signal voltage.  A SPICE simulation of the circuit in  Figure<ref>03116.png below</ref> will vindicate that assumption.
</para>

<image>03116.png<caption>Common-base circuit for DC SPICE analysis.</caption></image> 

<comment>v(3,4)  0.000E+00   5.000E+00     1.000E+01    1.500E+01  2.000E+01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>5.913E-03 *             .             .             .            .</comment>
<comment>1.274E-02 *             .             .             .            .</comment>
<comment>2.730E-02 *             .             .             .            .</comment>
<comment>5.776E-02 *             .             .             .            .</comment>
<comment>1.193E-01 *             .             .             .            .</comment>
<comment>2.358E-01 .*            .             .             .            .</comment>
<comment>4.370E-01 .*            .             .             .            .</comment>
<comment>7.447E-01 . *           .             .             .            .</comment>
<comment>1.163E+00 .  *          .             .             .            .</comment>
<comment>1.682E+00 .    *        .             .             .            .</comment>
<comment>2.281E+00 .     *       .             .             .            .</comment>
<comment>2.945E+00 .       *     .             .             .            .</comment>
<comment>3.657E+00 .         *   .             .             .            .</comment>
<comment>4.408E+00 .           * .             .             .            .</comment>
<comment>5.189E+00 .             .*            .             .            .</comment>
<comment>5.995E+00 .             .  *          .             .            .</comment>
<comment>6.820E+00 .             .    *        .             .            .</comment>
<comment>7.661E+00 .             .      *      .             .            .</comment>
<comment>8.516E+00 .             .         *   .             .            .</comment>
<comment>9.382E+00 .             .           * .             .            .</comment>
<comment>1.026E+01 .             .             .*            .            .</comment>
<comment>1.114E+01 .             .             .  *          .            .</comment>
<comment>1.203E+01 .             .             .     *       .            .</comment>
<comment>1.293E+01 .             .             .       *     .            .</comment>
<comment>1.384E+01 .             .             .          *  .            .</comment>
<comment>1.474E+01 .             .             .            *.            .</comment>
<comment>1.563E+01 .             .             .             . *          .</comment>
<comment>1.573E+01 .             .             .             . *          .</comment>
<comment>1.575E+01 .             .             .             . *          .</comment>
<comment>1.576E+01 .             .             .             . *          .</comment>
<comment>1.576E+01 .             .             .             . *          .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<figure>
<htmlo><label>23011.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23011.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-base amplifier
vin 0 1
r1 1 2 100
q1 4 0 2 mod1
v1 3 0 dc 15
rload 3 4 5k
.model mod1 npn
.dc vin 0.6 1.2 .02
.plot dc v(3,4)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>Common-base amplifier DC transfer function.</caption>
<tex><label>23011.png</label></tex>
</figure>



<para>
Notice in Figure<ref>23011.png above</ref> that the output voltage goes from practically nothing (cutoff) to 15.75 volts (saturation) with the input voltage being swept over a range of 0.6 volts to 1.2 volts.  In fact, the output voltage plot doesn't show a rise until about 0.7 volts at the input, and cuts off (flattens) at about 1.12 volts input.  This represents a rather large voltage gain with an output voltage span of 15.75 volts and an input voltage span of only 0.42 volts: a gain ratio of 37.5, or 31.48 dB.  Notice also how the output voltage (measured across R<subscript>load</subscript>) actually exceeds the power supply (15 volts) at saturation, due to the series-aiding effect of the input voltage source.  
</para>

<para>
A second set of SPICE analyses (circuit in Figure<ref>03117.png below</ref>) with an AC signal source (and DC bias voltage) tells the same story: a high voltage gain
</para>

<image>03117.png<caption>Common-base circuit for SPICE AC analysis.</caption></image> 

<comment>legend:</comment>
<comment> *: v(1)</comment>    
<comment> +: v(5,2) </comment> 

<comment>v(1)</comment>    
<comment>( *)- -2.000E-01    -1.000E-01     0.000E+00     1.000E-01  2.000E-01</comment>
<comment>(+)-- -1.500E+01    -1.000E+01    -5.000E+00     0.000E+00  5.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  .             .    +        *             .           .</comment>
<comment>-2.984E-02 .             . +       *   .             .           .</comment>
<comment>-5.757E-02 .           + .     *       .             .           .</comment>
<comment>-8.176E-02 .        +    .  *          .             .           .</comment>
<comment>-1.011E-01 .      +      *             .             .           .</comment>
<comment>-1.139E-01 .    +      * .             .             .           .</comment>
<comment>-1.192E-01 .    +     *  .             .             .           .</comment>
<comment>-1.174E-01 .    +      * .             .             .           .</comment>
<comment>-1.085E-01 .     +      *.             .             .           .</comment>
<comment>-9.213E-02 .       +     .*            .             .           .</comment>
<comment>-7.020E-02 .          +  .   *         .             .           .</comment>
<comment>-4.404E-02 .             +       *     .             .           .</comment>
<comment>-1.502E-02 .             .   +       * .             .           .</comment>
<comment>1.496E-02  .             .      +      . *           .           .</comment>
<comment>4.400E-02  .             .          +  .     *       .           .</comment>
<comment>7.048E-02  .             .             +         *   .           .</comment>
<comment>9.214E-02  .             .             . +          *.           .</comment>
<comment>1.081E-01  .             .             .   +         .*          .</comment>
<comment>1.175E-01  .             .             .    +        . *         .</comment>
<comment>1.196E-01  .             .             .    +        .  *        .</comment>
<comment>1.136E-01  .             .             .   +         . *         .</comment>
<comment>1.009E-01  .             .             .  +          *           .</comment>
<comment>8.203E-02  .             .             .+         *  .           .</comment>
<comment>5.764E-02  .             .           + .       *     .           .</comment>
<comment>2.970E-02  .             .        +    .   *         .           .</comment>
<comment>-1.440E-05 .             .    +        *             .           .</comment>
<comment>-2.981E-02 .             . +       *   .             .           .</comment>
<comment>-5.755E-02 .           + .     *       .             .           .</comment>
<comment>-8.178E-02 .        +    .  *          .             .           .</comment>
<comment>-1.011E-01 .      +      *             .             .           .</comment>
<comment>-1.138E-01 .    +      * .             .             .           .</comment>
<comment>-1.192E-01 .    +     *  .             .             .           .</comment>
<comment>-1.174E-01 .    +      * .             .             .           .</comment>
<comment>-1.085E-01 .     +      *.             .             .           .</comment>
<comment>-9.209E-02 .       +     .*            .             .           .</comment>
<comment>-7.020E-02 .          +  .   *         .             .           .</comment>
<comment>-4.407E-02 .             +       *     .             .           .</comment>
<comment>-1.502E-02 .             .   +       * .             .           .</comment>
<comment>1.496E-02  .             .      +      . *           .           .</comment>
<comment>4.417E-02  .             .          +  .     *       .           .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>



<para>
As you can see, the input and output waveforms in Figure<ref>23012.png below</ref> are in phase with each other.  This tells us that the common-base amplifier is non-inverting.
</para>

<figure>
<htmlo><label>23012.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23012.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
common-base amplifier
vin 5 2 sin (0 0.12 2000 0 0)
vbias 0 1  dc 0.95
r1 2 1 100
q1 4 0 5 mod1
v1 3 0 dc 15
rload 3 4 5k
.model mod1 npn
.tran 0.02m 0.78m
.plot tran v(5,2) v(4)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption></caption>
<tex><label>23012.png</label></tex>
</figure>



<para>
The AC SPICE analysis in Table<ref>bjt4.tbl below</ref> at a single frequency of 2 kHz provides input and output voltages for gain calculation.
</para>


<table>bjt4.tbl<caption>Common-base AC analysis at 2 kHz-- netlist followed by output.</caption>
<literal>
common-base amplifier                                                           
vin 5 2  ac 0.1 sin
vbias 0 1  dc 0.95       
r1 2 1 100      
q1 4 0 5 mod1   
v1 3 0 dc 15    
rload 3 4 5k    
.model mod1 npn 
.ac dec 1 2000 2000     
.print ac vm(5,2) vm(4,3) 
.end    

frequency       mag(v(5,2))     mag(v(4,3))
--------------------------------------------
0.000000e+00    1.000000e-01    4.273864e+00
</literal>
</table>


<para>
Voltage figures from the second analysis (Table<ref>bjt4.tbl above</ref>) show a voltage gain of 42.74 (4.274 V / 0.1 V), or 32.617 dB:
</para>

<image>13022.png</image> 

<para>
Here's another view of the circuit in Figure<ref>03118.png below</ref>, summarizing the phase relations and DC offsets of various signals in the circuit just simulated.
</para>

<image>03118.png<caption>Phase relationships and offsets for NPN common base amplifier.</caption></image> 

<para>
. . . and for a PNP transistor: Figure<ref>03119.png below</ref>.
</para>

<image>03119.png<caption>Phase relationships and offsets for PNP common base amplifier.</caption></image> 

<para>
Predicting voltage gain for the common-base amplifier configuration is quite difficult, and involves approximations of transistor behavior that are difficult to measure directly.  Unlike the other amplifier configurations, where voltage gain was either set by the ratio of two resistors (common-emitter), or fixed at an unchangeable value (common-collector), the voltage gain of the common-base amplifier depends largely on the amount of DC bias on the input signal.  As it turns out, the internal transistor resistance between emitter and base plays a major role in determining voltage gain, and this resistance changes with different levels of current through the emitter.
</para>

<para>
While this phenomenon is difficult to explain, it is rather easy to demonstrate through the use of computer simulation.  What I'm going to do here is run several SPICE simulations on a common-base amplifier circuit (Figure<ref>03117.png previous</ref>), changing the DC bias voltage slightly (vbias in Figure<ref>bjt5.tbl below</ref> ) while keeping the AC signal amplitude and all other circuit parameters constant.  As the voltage gain changes from one simulation to another, different output voltage amplitudes will be noted.
</para>

<para>
Although these analyses will all be conducted in the ``transfer function'' mode, each was first ``proofed'' in the transient analysis mode (voltage plotted over time) to ensure that the entire wave was being faithfully reproduced and not ``clipped'' due to improper biasing. See "*.tran 0.02m 0.78m" in Figure<ref>bjt5.tbl below</ref>, the ``commented out'' transient analysis statement.  Gain calculations cannot be based on waveforms that are distorted. SPICE can calculate the small signal DC gain for us with the ``.tf v(4) vin'' statement. The output is <bold>v(4)</bold>  and the input as <bold>vin</bold>.
</para>


<figure>
<htmlo><label>bjt5.tbl</label></htmlo>
<tabular>{lll}
<tr>
<td>
<latexin>\begin{minipage}[b]{2.2in}</latexin>
<literal>
common-base amp vbias=0.85V
vin 5 2  sin (0 0.12 2000 0 0)
vbias 0 1  dc 0.85
r1 2 1 100      
q1 4 0 5 mod1   
v1 3 0 dc 15    
rload 3 4 5k    
.model mod1 npn 
*.tran 0.02m 0.78m
.tf v(4) vin
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
<td></td>
<td>
<latexin>\begin{minipage}[b]{2.4in}</latexin>
<literal>
common-base amp current gain
Iin 55 5 0A
vin 55 2  sin (0 0.12 2000 0 0)
vbias 0 1  dc 0.8753
r1 2 1 100      
q1 4 0 5 mod1   
v1 3 0 dc 15    
rload 3 4 5k    
.model mod1 npn 
*.tran 0.02m 0.78m
.tf I(v1) Iin
.end
Transfer function information:
transfer function = 9.900990e-01
iin input impedance = 9.900923e+11
v1 output impedance = 1.000000e+20
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>SPICE net list: Common-base, transfer function (voltage gain) for various DC bias voltages. SPICE net list: Common-base amp current gain; Note .tf v(4) vin statement. Transfer function for DC current gain I(vin)/Iin; Note .tf I(vin) Iin statement.</caption>
<tex><label>bjt5.tbl</label></tex>
</figure>



<para>
At the command line, <bold>spice -b filename.cir</bold> produces a printed output due to the <bold>.tf</bold> statement: transfer_function, output_impedance, and input_impedance. The abbreviated output listing is from runs with <bold>vbias</bold> at 0.85, 0.90, 0.95, 1.00 V as recorded in Table <ref>bjt6.tbl below</ref>.   
</para>


<table>bjt6.tbl<caption>SPICE output: Common-base transfer function.</caption>
<literal>
Circuit: common-base amp vbias=0.85V
transfer_function = 3.756565e+01
output_impedance_at_v(4) = 5.000000e+03
vin#input_impedance = 1.317825e+02
<sp>
Circuit: common-base amp vbias=0.8753V Ic=1 mA
Transfer function information:
transfer_function = 3.942567e+01
output_impedance_at_v(4) = 5.000000e+03
vin#input_impedance = 1.255653e+02
<sp>
Circuit: common-base amp vbias=0.9V
transfer_function = 4.079542e+01
output_impedance_at_v(4) = 5.000000e+03
vin#input_impedance = 1.213493e+02
<sp>
Circuit: common-base amp vbias=0.95V
transfer_function = 4.273864e+01
output_impedance_at_v(4) = 5.000000e+03
vin#input_impedance = 1.158318e+02
<sp>
Circuit: common-base amp vbias=1.00V
transfer_function = 4.401137e+01
output_impedance_at_v(4) = 5.000000e+03
vin#input_impedance = 1.124822e+02
<sp>
</literal>
</table>



<para>
A trend should be evident in  Table <ref>bjt6.tbl above</ref>.  With increases in DC bias voltage, voltage gain (transfer_function) increases as well.  We can see that the voltage gain is increasing because each subsequent simulation (vbias= 0.85, 0.8753, 0.90, 0.95, 1.00 V)  produces greater gain (transfer_function= 37.6, 39.4  40.8, 42.7, 44.0),  respectively.  The changes are largely due to minuscule variations in bias voltage.
</para>

<para>
The last three lines of Table <ref>bjt6.tbl above</ref>(right) show the <bold>I(v1)/Iin</bold>  current gain of 0.99. (The last two lines look invalid.)  This makes sense for <beta>=100; <alpha>= <beta>/(<beta>+1), <alpha>=0.99=100/(100-1).   The combination of low current gain (always less than 1) and somewhat unpredictable voltage gain conspire against the common-base design, relegating it to few practical applications.
</para>

<para>
Those few applications include radio frequency amplifiers. The grounded base helps shield the input at the emitter from the collector output, preventing instability in RF amplifiers. The common base configuration is usable at higher frequencies than common emitter or common collector.  See ``Class C common-base 750 mW RF power amplifier''  <pageref>03478.png[Ch 9 ][SEMI_9.html]</pageref>.
For a more elaborate circuit see ``Class A common-base small-signal high gain amplifier''<pageref>03479.png[Ch 9 ][SEMI_9.html]</pageref>.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Common-base</italic> transistor amplifiers are so-called because the input and output voltage points share the base lead of the transistor in common with each other, not considering any power supplies.</item>
<item>The current gain of a common-base amplifier is always less than 1.  The voltage gain is a function of input and output resistances, and also the internal resistance of the emitter-base junction, which is subject to change with variations in DC bias voltage.  Suffice to say that the voltage gain of a common-base amplifier can be very high.</item>
<item>The ratio of a transistor's collector current to emitter current is called <alpha>.  The <alpha> value for any transistor is always less than unity, or in other words, less than 1.</item>
</itemize>

</section>



<section>
<sectiontitle>The cascode amplifier</sectiontitle>
<index>Cascode amplifier</index>

<para>
While the C-B (common-base) amplifier is known for wider bandwidth than the C-E (common-emitter) configuration, the low input impedance (10s of <OMEGA>) of C-B is a limitation for many applications. The solution is to precede the C-B stage by a low gain C-E stage which has moderately high input impedance (k<OMEGA>s). See Figure<ref>03500.png below</ref>. The stages are in a <italic>cascode</italic> configuration,  stacked in series,  as opposed to cascaded for a standard amplifier chain. See ``Capacitor coupled three stage common-emitter amplifier'' <pageref>03142L[Capacitor coupled]</pageref> for a cascade example. The cascode amplifier configuration has both wide bandwidth and a moderately high input impedance.
</para>

<image>03500.png<caption>The cascode amplifier is combined common-emitter and common-base. This is an AC circuit equivalent with batteries and capacitors replaced by short circuits.</caption></image>

<para>
The key to understanding the wide bandwidth of the cascode configuration is the <italic>Miller effect</italic>. The <pageref>MILLER[Miller effect]</pageref> is the multiplication of the bandwidth robbing collector-base capacitance by voltage gain A<subscript>v</subscript>. This C-B capacitance is smaller than the E-B capacitance. Thus, one would think that the C-B capacitance would have little effect. However, in the C-E configuration, the collector output signal is out of phase with the input at the base. The collector signal capacitively coupled back opposes the base signal. Moreover, the collector feedback is (1-A<subscript>v</subscript>) times larger than the base signal. Keep in mind that A<subscript>v</subscript> is a negative number for the inverting C-E amplifier. Thus, the small C-B capacitance appears (1+A|<subscript>v</subscript>|) times larger than its actual value. This capacitive gain reducing feedback increases with frequency, reducing the high frequency response of a C-E amplifier. 
</para>

<para>
The approximate voltage gain of the C-E amplifier in Figure<ref>03502.png below</ref> is -R<subscript>L</subscript>/r<subscript>EE</subscript>. The emitter current is set to 1.0 mA by biasing. R<subscript>EE</subscript>= 26mV/I<subscript>E</subscript> = 26mV/1.0ma = 26 <OMEGA>. Thus, A<subscript>v</subscript> = -R<subscript>L</subscript>/R<subscript>EE</subscript> = -4700/26 = -181. The pn2222 datasheet list C<subscript>cbo</subscript> =  8 pF.<cite>FAR</cite> The miller capacitance is C<subscript>cbo</subscript>(1-A<subscript>v</subscript>). Gain A<subscript>v</subscript> = -181, negative since it is inverting gain. C<subscript>miller</subscript> = C<subscript>cbo</subscript>(1-A<subscript>v</subscript>) = 8pF(1-(-181)=1456pF
</para>



<para>
A common-base configuration is not subject to the Miller effect because the grounded base shields the collector signal from being fed back to the emitter input. Thus, a C-B amplifier has better high frequency response. To have a moderately high input impedance, the C-E stage is still desirable. The key is to reduce the gain (to about 1) of the C-E stage which  reduces the Miller effect C-B feedback to 1<cdot>C<subscript>CBO</subscript>. The total C-B feedback is the feedback capacitance 1<cdot>C<subscript>CB</subscript> plus the actual capacitance C<subscript>CB</subscript> for a total of 2<cdot>C<subscript>CBO</subscript>. This is a considerable reduction from 181<cdot>C<subscript>CBO</subscript>. The miller capacitance for a gain of -2 C-E stage is   C<subscript>miller</subscript> = C<subscript>cbo</subscript>(1-A<subscript>v</subscript>)=  C<subscript>miller</subscript> = C<subscript>cbo</subscript>(1-(-1)) = C<subscript>cbo</subscript><cdot>2.
</para>

<para>
The way to reduce the common-emitter gain is to reduce the load resistance.  The gain of a C-E amplifier is approximately R<subscript>C</subscript>/R<subscript>E</subscript>. The internal emitter resistance r<subscript>EE</subscript> at 1mA emitter current is 26<OMEGA>. For details on the 26<OMEGA>, see ``Derivation of R<subscript>EE</subscript>'', see <pageref>emb5.tbl[REE]</pageref>.  The collector load R<subscript>C</subscript> is the resistance of the emitter of the C-B stage loading the C-E stage, 26<OMEGA> again. CE gain amplifier gain is approximately A<subscript>v</subscript> = R<subscript>C</subscript>/R<subscript>E</subscript>=26/26=1. This Miller capacitance is C<subscript>miller</subscript> = C<subscript>cbo</subscript>(1-A<subscript>v</subscript>) = 8pF(1-(-1)=16pF.  We now have a moderately high input impedance C-E stage without suffering the Miller effect, but no C-E dB voltage gain. The C-B stage provides a high voltage gain, A<subscript>V</subscript> = -181. Current gain of cascode is <beta> of the C-E stage, 1 for the C-B, <beta> overall. Thus, the cascode has moderately high input impedance of the C-E, good gain, and good bandwidth of the C-B.
</para>

<label>CASCODES</label>
<image>03502.png<caption>SPICE: Cascode and common-emitter for comparison.</caption></image>
<para>
The SPICE version of both a cascode amplifier, and for comparison, a common-emitter amplifier is shown in Figure<ref>03502.png above</ref>. The netlist is in Table<ref>cascode.tbl below</ref>. The AC source V3 drives both amplifiers via node 4. The bias resistors for this circuit are calculated in an example problem <pageref>CASCODEB[cascode]</pageref>.
</para>


<image>23044.png<caption>SPICE waveforms. Note that Input is multiplied by 10 for visibility.</caption></image>

<table>cascode.tbl<caption>SPICE netlist for printing AC input and output voltages.</caption>
<literal>
*SPICE circuit <03502.eps> from XCircuit v3.20
V1 19 0 10
Q1 13 15 0 q2n2222
Q2 3 2 A q2n2222
R1 19 13 4.7k
V2 16 0 1.5
C1 4 15 10n
R2 15 16 80k
Q3 A 5 0 q2n2222
V3 4 6 SIN(0 0.1 1k)  ac 1
R3 1 2 80k
R4 3 9 4.7k
C2 2 0 10n
C3 4 5 10n
R5 5 6 80k
V4 1 0 11.5
V5 9 0 20
V6 6 0 1.5
.model q2n2222 npn (is=19f bf=150
+ vaf=100 ikf=0.18 ise=50p ne=2.5 br=7.5
+ var=6.4 ikr=12m isc=8.7p nc=1.2 rb=50
+ re=0.4 rc=0.3 cje=26p tf=0.5n
+ cjc=11p tr=7n xtb=1.5 kf=0.032f af=1)
.tran 1u 5m
.AC DEC 10 1k 100Meg
.end
</literal>
</table>





<para>
The waveforms in Figure<ref>23044.png above</ref> show the operation of the cascode stage. The input signal is displayed multiplied by 10 so that it may be shown with the outputs. Note that both the Cascode, Common-emitter, and Va (intermediate point) outputs are inverted from the input. Both the Cascode and Common emitter have large amplitude outputs. The Va point has a DC level of about 10V, about half way between 20V and ground. The signal is larger than can be accounted for by a C-E gain of 1, It is three times larger than expected.
</para>


<image>23043.png<caption>Cascode vs common-emitter banwidth.</caption></image>

<para>
Figure<ref>23043.png above</ref> shows the frequency response to both the cascode and common-emitter amplifiers. The SPICE statements responsible for the AC analysis, extracted from the listing: 
</para>

<bigspace>
<literal>
V3 4 6 SIN(0 0.1 1k)  ac 1
.AC DEC 10 1k 100Meg
</literal>
<bigspace>

<para>
Note the ``ac 1'' is necessary at the end of the V3 statement. The cascode has marginally better mid-band gain. However, we are primarily looking for the bandwidth measured at the -3dB points, down from the midband gain for each amplifier. This is shown by the vertical solid lines in Figure<ref>23043.png above</ref>. It is also possible to print the data of interest from nutmeg to the screen, the SPICE graphical viewer (command, first line):
</para>


<hypertarget>CASCODElnk[]</hypertarget>
<literal>
nutmeg 6 -> print frequency db(vm(3)) db(vm(13))

Index   frequency     db(vm(3))  db(vm(13)) 
22      0.158MHz      47.54      45.41
33      1.995MHz      46.95      42.06
37      5.012MHz      44.63      36.17
</literal>

<para>
Index 22 gives the midband dB gain for Cascode vm(3)=47.5dB  and Common-emitter vm(13)=45.4dB. Out of many printed lines, Index 33 was the closest to being 3dB down from 45.4dB at 42.0dB for the Common-emitter circuit. The corresponding Index 33 frequency is approximately 2Mhz, the common-emitter bandwidth. Index 37 vm(3)=44.6db is approximately 3db down from 47.5db. The corresponding Index37 frequency is 5Mhz, the cascode bandwidth. Thus, the cascode amplifier has a wider bandwidth. We are not concerned with the low frequency degradation of gain. It is due to the capacitors, which could be remedied with larger ones.
</para>

<para>
The 5MHz bandwith of our cascode example, while better than the common-emitter example, is not exemplary for an RF (radio frequency) amplifier. A pair of RF or microwave transistors with lower interelectrode capacitances should be used for higher bandwidth. Before the invention of the RF dual gate MOSFET, the BJT cascode amplifier could have been found in UHF (ultra high frequency) TV tuners.
</para>


<itemize>
<item>REVIEW</item>
<item>A <italic>cascode</italic> amplifier consists of a common-emitter stage loaded by the emitter of a common-base stage.</item>
<item>The heavily loaded C-E stage has a low gain of 1, overcoming the <italic>Miller effect</italic></item>
<item>A cascode amplifier has a high gain, moderately high input impedance, a high output impedance, and a high bandwidth.</item>
</itemize>





</section>



<section>
<sectiontitle>Biasing techniques</sectiontitle>

<index>Bias, transistor</index>
<index>Voltage, bias</index>

<para>
In the common-emitter section of this chapter, we saw a SPICE analysis where the output waveform resembled a half-wave rectified shape: only half of the input waveform was reproduced, with the other half being completely cut off.  Since our purpose at that time was to reproduce the entire waveshape, this constituted a problem.  The solution to this problem was to add a small bias voltage to the amplifier input so that the transistor stayed in active mode throughout the entire wave cycle.  This addition was called a <italic>bias voltage</italic>.
</para>

<index>Class, amplifier operation</index>

<para>
A half-wave output is not problematic for some applications.  In fact, some applications may <italic>necessitate</italic> this very kind of amplification.  Because it is possible to operate an amplifier in modes other than full-wave reproduction and specific applications require different ranges of reproduction, it is useful to describe the degree to which an amplifier reproduces the input waveform by designating it according to <italic>class</italic>.  Amplifier class operation is categorized with alphabetical letters: A, B, C, and AB.
</para>

<index>Class A amplifier operation</index>

<para>
<italic>For Class A</italic> operation, the entire input waveform is faithfully reproduced.  Although I didn't introduce this concept back in the common-emitter section, this is what we were hoping to attain in our simulations.  Class A operation can only be obtained when the transistor spends its entire time in the active mode, never reaching either cutoff or saturation.  To achieve this, sufficient DC bias voltage is usually set at the level necessary to drive the transistor exactly halfway between cutoff and saturation.  This way, the AC input signal will be perfectly ``centered'' between the amplifier's high and low signal limit levels.
</para>

<image>03124.png<caption>Class A: The amplifier output is a faithful reproduction of the input.</caption></image> 

<index>Class B amplifier operation</index>

<para>
<italic>Class B</italic> operation is what we had the first time an AC signal was applied to the common-emitter amplifier with no DC bias voltage.  The transistor spent half its time in active mode and the other half in cutoff with the input voltage too low (or even of the wrong polarity!) to forward-bias its base-emitter junction.
</para>

<image>03125.png<caption>Class B: Bias is such that half (180<superscript>o</superscript>) of the waveform is reproduced.</caption></image> 

<index>Push-pull amplifier</index>

<para>
By itself, an amplifier operating in class B mode is not very useful.  In most circumstances, the severe distortion introduced into the waveshape by eliminating half of it would be unacceptable.  However, class B operation is a useful mode of biasing if two amplifiers are operated as a <italic>push-pull</italic> pair, each amplifier handling only half of the waveform at a time:
</para>

<image>03126.png<caption> Class B push pull amplifier: Each transistor reproduces half of the waveform. Combining the  halves produces a faithful reproduction of the whole wave.</caption></image> 

<para>
Transistor Q<subscript>1</subscript> ``pushes'' (drives the output voltage in a positive direction with respect to ground), while transistor Q<subscript>2</subscript> ``pulls'' the output voltage (in a negative direction, toward 0 volts with respect to ground).  Individually, each of these transistors is operating in class B mode, active only for one-half of the input waveform cycle.  Together, however, both function as a team to produce an output waveform identical in shape to the input waveform.
</para>

<para>
A decided advantage of the class B (push-pull) amplifier design over the class A design is greater output power capability.  With a class A design, the transistor dissipates considerable energy in the form of heat because it never stops conducting current.  At all points in the wave cycle it is in the active (conducting) mode, conducting substantial current and dropping substantial voltage.  There is substantial power dissipated by the transistor throughout the cycle.  In a class B design, each transistor spends half the time in cutoff mode, where it dissipates zero power (zero current = zero power dissipation).  This gives each transistor a time to ``rest'' and cool while the other transistor carries the burden of the load.  Class A amplifiers are simpler in design, but tend to be limited to low-power signal applications for the simple reason of transistor heat dissipation.
</para>

<index>Class AB amplifier operation</index>

<para>
Another class of amplifier operation known as <italic>class AB</italic>, is somewhere between class A and class B: the transistor spends more than 50% but less than 100% of the time conducting current.
</para>

<para>
If the input signal bias for an amplifier is slightly negative (opposite of the bias polarity for class A operation), the output waveform will be further ``clipped'' than it was with class B biasing, resulting in an operation where the transistor spends most of the time in cutoff mode:
</para>

<image>03127.png<caption>Class C: Conduction is for less than a half cycle (<lt> 180<superscript>o</superscript>).</caption></image> 

<para>
At first, this scheme may seem utterly pointless.  After all, how useful could an amplifier be if it clips the waveform as badly as this?  If the output is used directly with no conditioning of any kind, it would indeed be of questionable utility.  However, with the application of a tank circuit (parallel resonant inductor-capacitor combination) to the output, the occasional output surge produced by the amplifier can set in motion a higher-frequency oscillation maintained by the tank circuit.  This may be likened to a machine where a heavy flywheel is given an occasional ``kick'' to keep it spinning:
</para>

<image>03128.png<caption>Class C amplifier driving a resonant circuit.</caption></image> 

<index>Class C amplifier operation</index>

<para>
Called <italic>class C</italic> operation, this scheme also enjoys high power efficiency due to the fact that the transistor(s) spend the vast majority of time in the cutoff mode, where they dissipate zero power.  The rate of output waveform decay (decreasing oscillation amplitude between ``kicks'' from the amplifier) is exaggerated here for the benefit of illustration.  Because of the tuned tank circuit on the output, this circuit is usable only for amplifying signals of definite, fixed amplitude. A class C amplifier may used in an FM (frequency modulation) radio transmitter. However, the class C amplifier may not directly amplify an AM (amplitude modulated) signal due to distortion.
</para>

<index>Class D amplifier operation</index>

<para>
Another kind of amplifier operation, significantly different from Class A, B, AB, or C, is called <italic>Class D</italic>.  It is not obtained by applying a specific measure of bias voltage as are the other classes of operation, but requires a radical re-design of the amplifier circuit itself.  It is a little too early in this chapter to investigate exactly how a class D amplifier is built, but not too early to discuss its basic principle of operation.
</para>

<index>Duty cycle, squarewave</index>

<para>
A class D amplifier reproduces the profile of the input voltage waveform by generating a rapidly-pulsing squarewave output.  The duty cycle of this output waveform (time ``on'' versus total cycle time) varies with the instantaneous amplitude of the input signal.  The  plots in  (Figure<ref>03230.png below</ref>  demonstrate this principle.
</para>

<image>03230.png<caption>Class D amplifier: Input signal and unfiltered output.</caption></image> 

<para>
The greater the instantaneous voltage of the input signal, the greater the duty cycle of the output squarewave pulse.  If there can be any goal stated of the class D design, it is to avoid active-mode transistor operation.  Since the output transistor of a class D amplifier is never in the active mode, only cutoff or saturated, there will be little heat energy dissipated by it.  This results in very high power efficiency for the amplifier.  Of course, the disadvantage of this strategy is the overwhelming presence of harmonics on the output.  Fortunately, since these harmonic frequencies are typically much greater than the frequency of the input signal, these can be filtered out by a low-pass filter with relative ease, resulting in an output more closely resembling the original input signal waveform.  Class D technology is typically seen where extremely high power levels and relatively low frequencies are encountered, such as in industrial inverters (devices converting DC into AC power to run motors and other large devices) and high-performance audio amplifiers.
</para>

<index>Quiescent</index>

<para>
A term you will likely come across in your studies of electronics is something called <italic>quiescent</italic>, which is a modifier designating the  zero input condition of a circuit.  Quiescent current, for example, is the amount of current in a circuit with zero input signal voltage applied.  Bias voltage in a transistor circuit forces the transistor to operate at a different level of collector current with zero input signal voltage than it would without that bias voltage.  Therefore, the amount of bias in an amplifier circuit determines its quiescent values. 
</para>

<index>Load line</index>

<para>
In a class A amplifier, the quiescent current should be exactly half of its saturation value (halfway between saturation and cutoff, cutoff by definition being zero).  Class B and class C amplifiers have quiescent current values of zero, since these are supposed to be cutoff with no signal applied.  Class AB amplifiers have very low quiescent current values, just above cutoff.  To illustrate this graphically, a ``load line'' is sometimes plotted over a transistor's characteristic curves to illustrate its range of operation while connected to a load resistance of specific value shown in  Figure<ref>03144.png below</ref>.
</para>

<image>03144.png<caption>Example load line drawn over transistor characteristic curves from V<subscript>supply</subscript> to saturation current.</caption></image> 

<para>
A load line is a plot of collector-to-emitter voltage over a range of collector currents.  At the lower-right corner of the load line, voltage is at maximum and current is at zero, representing a condition of cutoff.  At the upper-left corner of the line, voltage is at zero while current is at a maximum, representing a condition of saturation.  Dots marking where the load line intersects the various transistor curves represent realistic operating conditions for those base currents given.
</para>

<para>
Quiescent operating conditions may be shown on this graph in the form of a single dot along the load line.  For a class A amplifier, the quiescent point will be in the middle of the load line as in  (Figure<ref>03145.png below</ref>.
</para>

<image>03145.png<caption>Quiescent point (dot) for class A.</caption></image> 

<para>
In this illustration, the quiescent point happens to fall on the curve representing a base current of 40 <mu>A.  If we were to change the load resistance in this circuit to a greater value, it would affect the slope of the load line, since a greater load resistance would limit the maximum collector current at saturation, but would not change the collector-emitter voltage at cutoff.  Graphically, the result is a load line with a different upper-left point and the same lower-right point as in  (Figure<ref>03146.png below</ref>)
</para>

<image>03146.png<caption>Load line resulting from increased load resistance.</caption></image> 

<para>
Note how the new load line doesn't intercept the 75 <mu>A curve along its flat portion as before.  This is very important to realize because the non-horizontal portion of a characteristic curve represents a condition of saturation.  Having the load line intercept the 75 <mu>A curve outside of the curve's horizontal range means that the amplifier will be saturated at that amount of base current.  Increasing the load resistor value is what caused the load line to intercept the 75 <mu>A curve at this new point, and it indicates that saturation will occur at a lesser value of base current than before.
</para>

<para>
With the old, lower-value load resistor in the circuit, a base current of 75 <mu>A would yield a proportional collector current (base current multiplied by <beta>).  In the first load line graph, a base current of 75 <mu>A gave a collector current almost twice what was obtained at 40 <mu>A, as the <beta> ratio would predict.  However,  collector current increases marginally between base currents 75 <mu>A and 40 <mu>A, because the transistor begins to lose sufficient collector-emitter voltage to continue to regulate collector current. 
</para>

<para>
To maintain linear (no-distortion) operation, transistor amplifiers shouldn't be operated at points where the transistor will saturate; that is, where the load line will not potentially fall on the horizontal portion of a collector current curve.   We'd have to add a few more curves to the graph in  Figure<ref>03147.png below</ref> before we could tell just how far we could ``push'' this transistor with increased base currents before it saturates.
</para>

<image>03147.png<caption>More base current curves shows saturation detail.</caption></image> 

<para>
It appears in this graph that the highest-current point on the load line falling on the straight portion of a curve is the point on the 50 <mu>A curve.  This new point should be considered the maximum allowable input signal level for class A operation.  Also for class A operation, the bias should be set so that the quiescent point is halfway between this new maximum point and cutoff shown in Figure<ref>03148.png below</ref>.
</para>

<image>03148.png<caption>New quiescent point avoids saturation region.</caption></image> 

<para>
Now that we know a little more about the consequences of different DC bias voltage levels, it is time to investigate practical biasing techniques.  So far, I've shown a small DC voltage source (battery) connected in series with the AC input signal to bias the amplifier for whatever desired class of operation.  In real life, the connection of a precisely-calibrated battery to the input of an amplifier is simply not practical.  Even if it were possible to customize a battery to produce just the right amount of voltage for any given bias requirement, that battery would not remain at its manufactured voltage indefinitely.  Once it started to discharge and its output voltage drooped, the amplifier would begin to drift toward class B operation.
</para>

<para>
Take this circuit, illustrated in the common-emitter section for a SPICE simulation, for instance, in Figure<ref>03099a.png below</ref>.
</para>

<image>03099.png<caption>Impractical base battery bias.</caption><label>03099a.png</label></image> 

<para>
That 2.3 volt ``V<subscript>bias</subscript>'' battery would not be practical to include in a real amplifier circuit.  A far more practical method of obtaining bias voltage for this amplifier would be to develop the necessary 2.3 volts using a voltage divider network connected across the 15 volt battery.  After all, the 15 volt battery is already there by necessity, and voltage divider circuits are easy to design and build.  Let's see how this might look in Figure<ref>03130.png below</ref>.
</para>

<image>03130.png<caption>Voltage divider bias.</caption></image> 

<para>
If we choose a pair of resistor values for R<subscript>2</subscript> and R<subscript>3</subscript> that will produce 2.3 volts across R<subscript>3</subscript> from a total of 15 volts (such as 8466 <OMEGA> for R<subscript>2</subscript> and 1533 <OMEGA> for R<subscript>3</subscript>), we should have our desired value of 2.3 volts between base and emitter for biasing with no signal input.  The only problem is, this circuit configuration places the AC input signal source directly in parallel with R<subscript>3</subscript> of our voltage divider.  This is not acceptable, as the AC source will tend to overpower any DC voltage dropped across R<subscript>3</subscript>.  Parallel components <italic>must</italic> have the same voltage, so if an AC voltage source is directly connected across one resistor of a DC voltage divider, the AC source will ``win'' and there will be no DC bias voltage added to the signal.
</para>

<index>Coupling capacitor</index>
<index>Capacitor, coupling</index>

<para>
One way to make this scheme work, although it may not be obvious <italic>why</italic> it will work, is to place a <italic>coupling capacitor</italic> between the AC voltage source and the voltage divider as in Figure<ref>03131.png below</ref>.
</para>

<image>03131.png<caption>Coupling capacitor prevents voltage divider bias from flowing into signal generator.</caption></image> 

<index>Theorem, Superposition</index>
<index>Superposition theorem</index>

<para>
The capacitor forms a high-pass filter between the AC source and the DC voltage divider, passing almost all of the AC signal voltage on to the transistor while blocking all DC voltage from being shorted through the AC signal source.  This makes much more sense if you understand the superposition theorem and how it works.  According to superposition, any linear, bilateral circuit can be analyzed in a piecemeal fashion by only considering one power source at a time, then algebraically adding the effects of all power sources to find the final result.  If we were to separate the capacitor and R<subscript>2</subscript><doubledash>R<subscript>3</subscript> voltage divider circuit from the rest of the amplifier, it might be easier to understand how this superposition of AC and DC would work.
</para>

<para>
With only the AC signal source in effect, and a capacitor with an arbitrarily low impedance at signal frequency, almost all the AC voltage appears across R<subscript>3</subscript>:
</para>

<image>03133.png<caption>Due to the coupling capacitor's very low impedance at the signal frequency, it behaves much like a piece of wire, thus can be omitted for this step in superposition analysis.</caption></image> 

<para>
With only the DC source in effect, the capacitor appears to be an open circuit, and thus neither it nor the shorted AC signal source will have any effect on the operation of the R<subscript>2</subscript><doubledash>R<subscript>3</subscript> voltage divider in  Figure<ref>03134.png below</ref>.
</para>

<image>03134.png<caption>The capacitor appears to be an open circuit as far at the DC analysis is concerned</caption></image> 

<para>
Combining these two separate analyses in Figure<ref>03132.png below</ref>, we get a superposition of (almost) 1.5 volts AC and 2.3 volts DC, ready to be connected to the base of the transistor.
</para>

<image>03132.png<caption>Combined AC and DC circuit.</caption></image> 

<para>
Enough talk -- its about time for a SPICE simulation of the whole amplifier circuit in Figure<ref>23013.png below</ref>.  We will use a capacitor value of 100 <mu>F to obtain an arbitrarily low (0.796 <OMEGA>) impedance at 2000 Hz:
</para>


<figure>
<htmlo><label>23013.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23013.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
voltage divider biasing
vinput 1 0 sin (0 1.5 2000 0 0)
c1 1 5 100u
r1 5 2 1k
r2 4 5 8466
r3 5 0 1533
q1 3 2 0 mod1
rspkr 3 4 8
v1 4 0 dc 15 
.model mod1 npn
.tran 0.02m 0.78m
.plot tran v(1,0) i(v1)
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>SPICE simulation of voltage divider bias.</caption>
<tex><label>23013.png</label></tex>
</figure>

<comment>legend:</comment>
<comment>*: v(1)</comment>    
<comment>+: i(v1)</comment>   
<comment>v(1)</comment>    
<comment>( *)- -2.000E+00   -1.000E+00    0.000E+00    1.000E+00   2.000E+00</comment>
<comment>(+)-- -3.000E-01   -2.000E-01   -1.000E-01    0.000E+00   1.000E-01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  .            .             *    +        .            .</comment>
<comment>3.730E-01  .            .             +    *        .            .</comment>
<comment>7.197E-01  .            .        +    .         *   .            .</comment>
<comment>1.022E+00  .            .    +        .             *            .</comment>
<comment>1.263E+00  .            . +           .             .   *        .</comment>
<comment>1.423E+00  .            +             .             .     *      .</comment>
<comment>1.490E+00  .           +.             .             .      *     .</comment>
<comment>1.467E+00  .           +.             .             .      *     .</comment>
<comment>1.357E+00  .            .+            .             .    *       .</comment>
<comment>1.152E+00  .            .  +          .             . *          .</comment>
<comment>8.774E-01  .            .      +      .           * .            .</comment>
<comment>5.505E-01  .            .           + .       *     .            .</comment>
<comment>1.878E-01  .            .             .  x          .            .</comment>
<comment>-1.870E-01 .            .          *  .       +     .            .</comment>
<comment>-5.500E-01 .            .     *       .           + .            .</comment>
<comment>-8.810E-01 .            . *           .             +            .</comment>
<comment>-1.152E+00 .          * .             .             +            .</comment>
<comment>-1.351E+00 .       *    .             .             +            .</comment>
<comment>-1.469E+00 .     *      .             .             +            .</comment>
<comment>-1.495E+00 .     *      .             .             +            .</comment>
<comment>-1.420E+00 .      *     .             .             +            .</comment>
<comment>-1.261E+00 .        *   .             .             +            .</comment>
<comment>-1.025E+00 .            *             .             +            .</comment>
<comment>-7.205E-01 .            .   *         .            +.            .</comment>
<comment>-3.713E-01 .            .        *    .         +   .            .</comment>
<comment>1.800E-04  .            .             *    +        .            .</comment>
<comment>3.726E-01  .            .             +    *        .            .</comment>
<comment>7.194E-01  .            .        +    .         *   .            .</comment>
<comment>1.022E+00  .            .    +        .             *            .</comment>
<comment>1.264E+00  .            . +           .             .   *        .</comment>
<comment>1.422E+00  .            +             .             .     *      .</comment>
<comment>1.490E+00  .           +.             .             .      *     .</comment>
<comment>1.468E+00  .           +.             .             .      *     .</comment>
<comment>1.357E+00  .            .+            .             .    *       .</comment>
<comment>1.151E+00  .            .  +          .             . *          .</comment>
<comment>8.775E-01  .            .      +      .           * .            .</comment>
<comment>5.509E-01  .            .           + .       *     .            .</comment>
<comment>1.877E-01  .            .             .  x          .            .</comment>
<comment>-1.871E-01 .            .          *  .       +     .            .</comment>
<comment>-5.522E-01 .            .     *       .           + .            .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>



<para>
Note the substantial distortion in the output waveform in Figure<ref>23013.png above</ref>. The sine wave is being clipped during most of the input signal's negative half-cycle.  This tells us the transistor is entering into cutoff mode when it shouldn't (I'm assuming a goal of class A operation as before).  Why is this?  This new biasing technique should give us exactly the same amount of DC bias voltage as before, right?
</para>

<para>
With the capacitor and R<subscript>2</subscript><doubledash>R<subscript>3</subscript> resistor network unloaded, it will provide exactly 2.3 volts worth of DC bias.  However, once we connect this network to the transistor, it is no longer unloaded.  Current drawn through the base of the transistor will load the voltage divider, thus reducing the DC bias voltage available for the transistor.  Using the diode current source transistor model in Figure<ref>03135.png below</ref> to illustrate, the bias problem becomes evident.
</para>

<image>03135.png<caption>Diode transistor model shows loading of voltage divider.</caption></image> 

<para>
A voltage divider's output depends not only on the size of its constituent resistors, but also on how much current is being divided away from it through a load.  The base-emitter PN junction of the transistor is a load that decreases the DC voltage dropped across R<subscript>3</subscript>, due to the fact that the bias current joins with R<subscript>3</subscript>'s current to go through R<subscript>2</subscript>, upsetting the divider ratio formerly set by the resistance values of R<subscript>2</subscript> and R<subscript>3</subscript>.  To obtain a DC bias voltage of 2.3 volts, the values of R<subscript>2</subscript> and/or R<subscript>3</subscript> must be adjusted to compensate for the effect of base current loading. To <italic>increase</italic> the DC voltage dropped across R<subscript>3</subscript>, lower the value of R<subscript>2</subscript>, raise the value of R<subscript>3</subscript>, or both.
</para>



<figure>
<htmlo><label>23014.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>23014.png</imagenf></td><td></td>
<td>
<latexin>\begin{minipage}[b]{1.5in}</latexin>
<literal>
voltage divider biasing
vinput 1 0 sin (0 1.5 2000 0 0)
c1 1 5 100u
r1 5 2 1k
r2 4 5 6k  <--- R2 decreased to 6 k
r3 5 0 4k  <--- R3 increased to 4 k
q1 3 2 0 mod1
rspkr 3 4 8
v1 4 0 dc 15
.model mod1 npn
.tran 0.02m 0.78m
.plot tran v(1,0) i(v1) 
.end 
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>No distortion of the output after adjusting R2 and R3.</caption>
<tex><label>23014.png</label></tex>
</figure>


<comment>legend:</comment>
<comment>*: v(1)</comment>    
<comment>+: i(v1)</comment>   
<comment>v(1)</comment>    
<comment>( *)- -2.000E+00   -1.000E+00    0.000E+00     1.000E+00  2.000E+00</comment>
<comment>(+)-- -3.000E-01   -2.000E-01   -1.000E-01     0.000E+00  1.000E-01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  .             .      +      *             .           .</comment>
<comment>3.730E-01  .             . +           .    *        .           .</comment>
<comment>7.197E-01  .          +  .             .         *   .           .</comment>
<comment>1.022E+00  .      +      .             .             *           .</comment>
<comment>1.263E+00  .  +          .             .             .   *       .</comment>
<comment>1.423E+00  .+            .             .             .     *     .</comment>
<comment>1.490E+00  +             .             .             .      *    .</comment>
<comment>1.467E+00  +             .             .             .      *    .</comment>
<comment>1.357E+00  . +           .             .             .    *      .</comment>
<comment>1.152E+00  .    +        .             .             . *         .</comment>
<comment>8.774E-01  .        +    .             .           * .           .</comment>
<comment>5.505E-01  .            +.             .       *     .           .</comment>
<comment>1.878E-01  .             .   +         .  *          .           .</comment>
<comment>-1.870E-01 .             .        + *  .             .           .</comment>
<comment>-5.500E-01 .             .     *       +             .           .</comment>
<comment>-8.810E-01 .             . *           .    +        .           .</comment>
<comment>-1.152E+00 .           * .             .       +     .           .</comment>
<comment>-1.351E+00 .        *    .             .          +  .           .</comment>
<comment>-1.469E+00 .      *      .             .           + .           .</comment>
<comment>-1.495E+00 .      *      .             .            +.           .</comment>
<comment>-1.420E+00 .       *     .             .           + .           .</comment>
<comment>-1.261E+00 .         *   .             .         +   .           .</comment>
<comment>-1.025E+00 .             *             .      +      .           .</comment>
<comment>-7.205E-01 .             .   *         .  +          .           .</comment>
<comment>-3.713E-01 .             .        *  + .             .           .</comment>
<comment>1.800E-04  .             .      +      *             .           .</comment>
<comment>3.726E-01  .             . +           .    *        .           .</comment>
<comment>7.194E-01  .          +  .             .         *   .           .</comment>
<comment>1.022E+00  .      +      .             .             *           .</comment>
<comment>1.264E+00  .  +          .             .             .   *       .</comment>
<comment>1.422E+00  .+            .             .             .     *     .</comment>
<comment>1.490E+00  +             .             .             .      *    .</comment>
<comment>1.468E+00  +             .             .             .      *    .</comment>
<comment>1.357E+00  . +           .             .             .    *      .</comment>
<comment>1.151E+00  .    +        .             .             . *         .</comment>
<comment>8.775E-01  .        +    .             .           * .           .</comment>
<comment>5.509E-01  .            +.             .       *     .           .</comment>
<comment>1.877E-01  .             .   +         .  *          .           .</comment>
<comment>-1.871E-01 .             .        + *  .             .           .</comment>
<comment>-5.522E-01 .             .     *       +             .           .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<para>
The new resistor values of 6 k<OMEGA> and 4 k<OMEGA> (R<subscript>2</subscript> and R<subscript>3</subscript>, respectively) in Figure<ref>23014.png above</ref> results in class A waveform reproduction, just the way we wanted.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Class A</italic> operation is  an amplifier biased  to be in the active mode throughout the entire waveform cycle, thus faithfully reproducing the whole waveform.</item>
<item><italic>Class B</italic> operation is an amplifier  biased so that only half of the input waveform gets reproduced: either the positive half or the negative half.  The transistor spends half its time in the active mode and half its time cutoff.  Complementary pairs of transistors running in class B operation are often used to deliver high power amplification in audio signal systems, each transistor of the pair handling a separate half of the waveform cycle.  Class B operation delivers better power efficiency than a class A amplifier of similar output power.</item>
<item><italic>Class AB</italic> operation is an amplifier is biased at a point somewhere between class A and class B.</item>
<item><italic>Class C</italic>  is an amplifier biased to amplify only a small portion of the waveform.  Most of the transistor's time is spent in cutoff mode.  In order for there to be a complete waveform at the output, a resonant tank circuit is often used as a ``flywheel'' to maintain oscillations for a few cycles after each ``kick'' from the amplifier.  Because the transistor is not conducting most of the time, power efficiencies are high for a class C amplifier.</item>
<item><italic>Class D</italic> operation requires an advanced circuit design, and functions on the principle of representing instantaneous input signal amplitude by the duty cycle of a high-frequency squarewave.  The output transistor(s) never operate in active mode, only cutoff and saturation.   Little heat energy dissipated makes energy efficiency high.</item>
<item>DC bias voltage on the input signal, necessary for certain classes of operation (especially class A and class C), may be obtained through the use of a voltage divider and <italic>coupling capacitor</italic> rather than a battery connected in series with the AC signal source.</item>
</itemize>

</section>



<section>
<sectiontitle>Biasing calculations</sectiontitle>

<index>Bias, BJT, calculations</index>

<para>
Although transistor switching circuits operate without bias, it is unusual for analog circuits to operate without bias. One of the few examples is ``TR One, one transistor radio''  <pageref>TRone[TR One, Ch 9 ][SEMI_9.html]</pageref> with an amplified AM (amplitude modulation) detector. Note the lack of a bias resistor at the base in that circuit. In this section we look at a few basic bias circuits which can set a selected emitter current I<subscript>E</subscript>.  Given a desired emitter current I<subscript>E</subscript>, what values of bias resistors are required, R<subscript>B</subscript>, R<subscript>E</subscript>, etc?
</para>



<subsection>
<subsectiontitle>Base Bias</subsectiontitle>

<index>Bias, BJT, base</index>
<index></index>

<para>
The simplest biasing applies a <italic>base-bias</italic> resistor between the base and a base battery V<subscript>BB</subscript>. It is convenient to use the existing V<subscript>CC</subscript> supply instead of a new bias supply. An example of an audio amplifier stage using base-biasing is ``Crystal radio with one transistor . . . '' <pageref>TRtwo[crystal radio, Ch 9 ][SEMI_9.html]</pageref>.  Note the resistor from the base to the battery terminal. A similar circuit is shown in  Figure<ref>03487.png below</ref>.
</para>


<para>
Write a KVL (Krichhoff's voltage law) equation about the loop containing the battery, R<subscript>B</subscript>, and the V<subscript>BE</subscript> diode drop on the transistor in Figure<ref>03487.png below</ref>. Note that we use V<subscript>BB</subscript> for the base supply, even though it is actually V<subscript>CC</subscript>. If <beta> is large we can make the approximation that I<subscript>C</subscript> =I<subscript>E</subscript>. For silicon transistors V<subscript>BE</subscript><approxequal>0.7V.   
</para>

<image>03487.png<caption>Base-bias</caption></image> 

<para>
Silicon small signal transistors typically have a <beta> in the range of 100-300. Assuming that we have a <beta>=100 transistor, what value of base-bias resistor is required to yield an emitter current of 1mA? 
</para>

<para>
Solving the IE base-bias equation for R<subscript>B</subscript> and substituting <beta>, V<subscript>BB</subscript>, V<subscript>BE</subscript>, and I<subscript>E</subscript> yields 930k<OMEGA>. The closest standard value is 910k<OMEGA>.
</para>



<image>13060.png</image>


<para>
What is the emitter current with a 910k<OMEGA> resistor? What is the emitter current if we randomly get a <beta>=300 transistor?
</para>

<image>13065.png</image>

<para>
The emitter current is little changed in using the standard value 910k<OMEGA> resistor.  However, with a change in <beta> from 100 to 300, the emitter current has tripled. This is not acceptable in a power amplifier if we expect the collector voltage to swing from near V<subscript>CC</subscript> to near ground. However, for low level signals from micro-volts to a about a volt, the bias point can be centered for a <beta> of square root of (100<cdot>300)=173. The bias point will still drift by a considerable amount . However, low level signals will not be clipped.
</para>

<para>
Base-bias by its self is not suitable for high emitter currents, as used in power amplifiers. The base-biased emitter current is not temperature stable. <italic>Thermal run away</italic> is the result of high emitter current causing a temperature increase which causes an increase in emitter current, which further increases temperature.
</para>

</subsection>


<subsection>
<subsectiontitle>Collector-feedback bias</subsectiontitle>

<index>Bias, BJT, collector-feedback</index>

<para>
Variations in bias due to temperature and beta may be  reduced by moving the V<subscript>BB</subscript> end of the base-bias resistor to the collector as in  Figure<ref>03490.png below</ref>. If the emitter current were to increase, the voltage drop across R<subscript>C</subscript> increases, decreasing V<subscript>C</subscript>, decreasing I<subscript>B</subscript> fed back to the base. This, in turn, decreases the emitter current, correcting the original increase.
</para>

<para>
Write a KVL equation about the loop containing the battery, R<subscript>C</subscript> , R<subscript>B</subscript> , and the V<subscript>BE</subscript> drop. Substitute I<subscript>C</subscript><approxequal>I<subscript>E</subscript> and I<subscript>B</subscript><approxequal>I<subscript>E</subscript>/<beta>. Solving for I<subscript>E</subscript> yields the IE CFB-bias equation.  Solving for I<subscript>B</subscript> yields the IB CFB-bias equation.  
</para>

<image>03490.png<caption>Collector-feedback bias.</caption></image> 

<para>
Find the required collector feedback bias resistor for an emitter current of 1 mA, a 4.7K collector load resistor, and a transistor with <beta>=100 .  Find the collector voltage V<subscript>C</subscript>. It should be approximately midway between V<subscript>CC</subscript> and ground.
</para>

<image>13063.png</image>

<para>
The closest standard value to the 460k	collector feedback bias resistor is 470k. Find the emitter current I<subscript>E</subscript> with the 470 K resistor. Recalculate the emitter current for a transistor with  <beta>=100 and <beta>=300.
</para>

<image>13064.png</image>

<para>
We see that as beta changes from 100 to 300, the emitter current increases from 0.989mA to 1.48mA. This is an improvement over the previous base-bias circuit which had an increase from 1.02mA to 3.07mA. Collector feedback bias is twice as stable as base-bias with respect to beta variation.
</para>

</subsection>


<subsection>
<subsectiontitle>Emitter-bias</subsectiontitle>

<index>Bias, BJT, emitter</index>


<para>
Inserting a resistor R<subscript>E</subscript> in the emitter circuit as in  Figure<ref>03488.png below</ref> causes <italic>degeneration</italic>, also known as negative feedback. This opposes a change in emitter current I<subscript>E</subscript> due to temperature changes, resistor tolerances, beta variation, or power supply tolerance. Typical tolerances are as follows: resistor--- 5%, beta--- 100-300, power supply--- 5%.  Why might the emitter resistor stabilize a change in current? The polarity of the voltage drop across R<subscript>E</subscript> is due to the collector battery V<subscript>CC</subscript>. The end of the resistor closest to the (-) battery terminal is (-), the end closest to the (+) terminal it (+).  Note that the (-) end of R<subscript>E</subscript> is connected via V<subscript>BB</subscript> battery and R<subscript>B</subscript> to the base. Any increase in current flow through R<subscript>E</subscript>  will increase the magnitude of negative voltage applied to the base circuit, decreasing the base current, decreasing the emitter current. This decreasing emitter current partially compensates the original increase.
</para>

<image>03488.png<caption>Emitter-bias</caption></image> 

<para>
Note that base-bias battery V<subscript>BB</subscript> is used instead of V<subscript>CC</subscript> to bias the base in Figure<ref>03488.png above</ref>. Later we will show that the emitter-bias is more effective with a lower base bias battery. Meanwhile, we write the KVL equation for the loop through the base-emitter circuit, paying attention to the polarities on the components. We substitute I<subscript>B</subscript><approxequal>I<subscript>E</subscript>/<beta> and solve for emitter current I<subscript>E</subscript>. This equation can be solved for R<subscript>B</subscript> , equation: RB emitter-bias, Figure<ref>03488.png above</ref>.
</para>

<para>
Before applying the equations:  RB emitter-bias and IE emitter-bias, Figure<ref>03488.png above</ref>, we need to choose values for R<subscript>C</subscript> and R<subscript>E</subscript> .   R<subscript>C</subscript> is related to the collector supply V<subscript>CC</subscript> and the desired collector current I<subscript>C</subscript> which we assume is approximately the emitter current  I<subscript>E</subscript>. Normally the bias point for V<subscript>C</subscript> is set to half of V<subscript>CC</subscript>. Though, it could be set higher to compensate for the voltage drop across the emitter resistor R<subscript>E</subscript>. The collector current is whatever we require or choose. It could range from micro-Amps to Amps depending on the application and transistor rating. We choose  I<subscript>C</subscript> = 1mA, typical of a small-signal transistor circuit. We calculate a value for  R<subscript>C</subscript> and choose a close standard value. An emitter resistor which is 10-50% of the collector load resistor usually works well.
</para>

<image>13069.png</image>

<para>
Our first example sets the base-bias supply to high at V<subscript>BB</subscript> = V<subscript>CC</subscript> = 10V to show why a lower voltage is desirable. Determine the  required value of base-bias resistor R<subscript>B</subscript>. Choose a standard value resistor. Calculate the emitter current for <beta>=100 and <beta>=300. Compare the stabilization of the current to prior bias circuits.  
</para>


<image>13061.png</image>

<para>
An 883k resistor was calculated for R<subscript>B</subscript>, an 870k chosen. At <beta>=100, I<subscript>E</subscript> is 1.01mA. </para>

<image>13066.png</image>

<para>
For <beta>=300 the emitter currents are shown in Table<ref>emb1.tbl below</ref>.
</para>

<table>emb1.tbl<caption>Emitter current comparison for <beta>=100, <beta>=300.</caption>
<tabular>{|l|l|l|}
<hr>

<tr>
<th>Bias circuit</th><th>IC <beta>=100</th><th>IC <beta>=300</th>
</tr>
<hr>

<tr>
<td>base-bias</td><td>1.02mA</td><td>3.07mA</td>
</tr>

<tr>
<td>collector feedback bias</td><td>0.989mA</td><td>1.48mA</td>

</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=10V</td><td>1.01mA</td><td>2.76mA</td>
</tr>

<hr>
</tabular>
</table>

<para>
Table<ref>emb1.tbl above</ref> shows that for V<subscript>BB</subscript> = 10V, emitter-bias does not do a very good job of stabilizing the emitter current. The emitter-bias example is better than the previous base-bias example, but, not by much. The key to effective emitter bias is lowering the base supply V<subscript>BB</subscript> nearer to the amount of emitter bias.
</para>

<para>
How much emitter bias do we Have? Rounding, that is emitter current times emitter resistor: I<subscript>E</subscript>R<subscript>E</subscript> = (1mA)(470) = 0.47V. In addition, we need to overcome the V<subscript>BE</subscript> = 0.7V. Thus, we need a V<subscript>BB</subscript> <gt>(0.47 + 0.7)V or <gt>1.17V. If emitter current deviates, this number will change compared with the fixed base supply V<subscript>BB</subscript>,causing a correction to base current I<subscript>B</subscript> and emitter current I<subscript>E</subscript>. A good value for V<subscript>B</subscript> <gt>1.17V is 2V.
</para>

<label>13067L</label>

<image>13067.png</image>

<para>
The calculated base resistor of 83k is much lower than the previous 883k. We choose 82k from the list of standard values. The emitter currents with the 82k R<subscript>B</subscript> for <beta>=100 and <beta>=300 are:
</para>

<image>13068.png</image>


<para>
Comparing the emitter currents for emitter-bias with V<subscript>BB</subscript> = 2V at <beta>=100 and <beta>=300 to the previous bias circuit examples in Table<ref>emb2.tbl below</ref>, we see considerable improvement at 1.75mA, though, not as good as the 1.48mA of collector feedback.
</para>



<table>emb2.tbl<caption>Emitter current comparison for <beta>=100, <beta>=300.</caption>
<tabular>{|l|l|l|}
<hr>

<tr>
<th>Bias circuit</th><th>IC <beta>=100</th><th>IC <beta>=300</th>
</tr>
<hr>

<tr>
<td>base-bias</td><td>1.02mA</td><td>3.07mA</td>
</tr>

<tr>
<td>collector feedback bias</td><td>0.989mA</td><td>1.48mA</td>

</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=10V</td><td>1.01mA</td><td>2.76mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=2V</td><td>1.01mA</td><td>1.75mA</td>
</tr>

<hr>
</tabular>
</table>


<para>
How can we improve the performance of emitter-bias? Either increase the emitter resistor R<subscript>E</subscript> or decrease the base-bias supply V<subscript>BB</subscript> or both. As an example, we double the emitter resistor to the nearest standard value of 910<OMEGA>.
</para>


<image>13071.png</image>

<para>
The calculated R<subscript>B</subscript> = 39k is a standard value resistor. No need to recalculate I<subscript>E</subscript> for <beta> = 100. For <beta> = 300, it is:
</para>

<image>13072.png</image>

<para>
The performance of the emitter-bias circuit with a 910<Onega> emitter resistor is much improved. See Table <ref>emb3.tbl below</ref>.
</para>


<table>emb3.tbl<caption>Emitter current comparison for <beta>=100, <beta>=300.</caption>
<tabular>{|l|l|l|}
<hr>

<tr>
<th>Bias circuit</th><th>IC <beta>=100</th><th>IC <beta>=300</th>
</tr>
<hr>

<tr>
<td>base-bias</td><td>1.02mA</td><td>3.07mA</td>
</tr>

<tr>
<td>collector feedback bias</td><td>0.989mA</td><td>1.48mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=10V</td><td>1.01mA</td><td>2.76mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=2V, R<subscript>E</subscript>=470</td><td>1.01mA</td><td>1.75mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=2V, R<subscript>E</subscript>=910</td><td>1.00mA</td><td>1.25mA</td>
</tr>

<hr>
</tabular>
</table>

<para>
As an exercise, rework the emitter-bias example with the emitter resistor reverted back to 470<OMEGA>, and the base-bias supply reduced to 1.5V.
<bigspace>
</para>

<image>13073.png</image> 

<para>
The 33k base resistor is a standard value, emitter current at <beta> = 100 is OK. The emitter current at <beta> = 300 is:
</para>

<image>13074.png</image> 

<para>
Table <ref>emb4.tbl below</ref> below compares the exercise results 1mA and 1.38mA to the previous examples.
</para>


<table>emb4.tbl<caption>Emitter current comparison for <beta>=100, <beta>=300.</caption>
<tabular>{|l|l|l|}
<hr>

<tr>
<th>Bias circuit</th><th>IC <beta>=100</th><th>IC <beta>=300</th>
</tr>
<hr>

<tr>
<td>base-bias</td><td>1.02mA</td><td>3.07mA</td>
</tr>

<tr>
<td>collector feedback bias</td><td>0.989mA</td><td>1.48mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=10V</td><td>1.01mA</td><td>2.76mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=2V, R<subscript>B</subscript>=470</td><td>1.01mA</td><td>1.75mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=2V, R<subscript>B</subscript>=910</td><td>1.00mA</td><td>1.25mA</td>
</tr>

<tr>
<td>emitter-bias, V<subscript>BB</subscript>=1.5V, R<subscript>B</subscript>=470</td><td>1.00mA</td><td>1.38mA</td>
</tr>

<hr>
</tabular>
</table>

<para>
The emitter-bias equations have been repeated in Figure<ref>03489.png below</ref> with the internal emitter resistance included for better accuracy. The <italic>internal emitter resistance</italic> is the resistance in the emitter circuit contained within the transistor package. This internal resistance r<subscript>EE</subscript> is significant when the (external) emitter resistor R<subscript>E</subscript> is small, or even zero. The value of internal resistance R<subscript>EE</subscript> is a function of emitter current I<subscript>E</subscript>, Table<ref>emb5.tbl below</ref>.
</para>

<table>emb5.tbl<caption>Derivation of r<subscript>EE</subscript></caption>
<literal>
<sp>        r<subscript>EE</subscript> = KT/I<subscript>E</subscript>m
<sp>        where:
<sp>                K=1.38<times>10<superscript>-23</superscript> watt-sec/<superscript>o</superscript>C, Boltzman's constant
<sp>                T= temperature in Kelvins <approxequal>300.
<sp>                I<subscript>E</subscript> = emitter current
<sp>                m = varies from 1 to 2 for Silicon
<sp>        r<subscript>EE</subscript> <approxequal> 0.026V/I<subscript>E</subscript> = 26mV/I<subscript>E</subscript>               
</literal>
</table>


<para>
For reference the 26mV approximation is listed as equation r<subscript>EE</subscript> in  Figure<ref>03489.png below</ref>.
</para>

<image>03489.png<caption>Emitter-bias equations with internal emitter resistance r<subscript>EE</subscript> included..</caption></image> 

<para>
The more accurate emitter-bias equations in Figure<ref>03489.png above</ref> may be derived by writing a KVL equation. Alternatively, start with equations IE emitter-bias and R<subscript>B</subscript> emitter-bias in Figure<ref>03488.png previous</ref>, substituting R<subscript>E</subscript> with r<subscript>EE</subscript>+R<subscript>E</subscript>. The result is equations IE EB and RB EB, respectively in  Figure<ref>03489.png above</ref>. 
</para>

<para>
Redo the R<subscript>B</subscript> calculation in the  previous example <pageref>13067L[emitter-bias]</pageref> with the inclusion of r<subscript>EE</subscript> and compare the results.
</para>

<image>13062.png</image>

<para>
The inclusion of r<subscript>EE</subscript> in the calculation results in a lower value of the base resistor R<subscript>B</subscript> a shown in Table<ref>emb6.tbl below</ref>. It falls below the standard value 82k resistor instead of above it.
</para>

<table>emb6.tbl<caption>Effect of inclusion of r<subscript>EE</subscript> on calculated R<subscript>B</subscript></caption>
<tabular>{|l|l|}
<hr>

<tr>
<th>r<subscript>EE</subscript>?</th><th>r<subscript>EE</subscript> Value</th>
</tr>
<hr>


<tr>
<td>Without r<subscript>EE</subscript></td><td>83k</td>
</tr>
<hr>

<tr>
<td>With r<subscript>EE</subscript></td><td>80.4k</td>
</tr>
<hr>

</tabular>
</table>

<bigspace>

<bold>Bypass Capacitor for R<subscript>E</subscript></bold>

<para>
One problem with emitter bias is that a considerable part of the output signal is dropped across the emitter resistor R<subscript>E</subscript> (Figure<ref>03499.png below</ref>).  This voltage drop across the emitter resistor is in series with the base and of opposite polarity compared with the input signal. (This is similar to a common collector configuration having <lt>1 gain.) This degeneration severely reduces the gain from base to collector. The solution for AC signal amplifiers is to bypass the emitter resistor with a capacitor. This restores the AC gain since the capacitor is a  short for AC signals.  The DC emitter current still experiences degeneration in the emitter resistor, thus, stabilizing the DC current.
</para>

<image>03499.png<caption>Cbypass is required to prevent AC gain reduction.</caption></image>


<para>
What value should the bypass capacitor be? That depends on the lowest frequency to be amplified. For radio frequencies Cbpass would be small. For an audio amplifier extending down to 20Hz it will be large. A ``rule of thumb'' for the bypass capacitor is that the reactance should be 1/10 of the emitter resistance or less. The capacitor should be designed to accommodate the lowest frequency being amplified.  The capacitor for an audio amplifier covering 20Hz to 20kHz would be:
</para>

<image>13077.png</image>


<para>
Note that the internal emitter resistance r<subscript>EE</subscript> is not bypassed by the bypass capacitor. 
</para>


</subsection>




<subsection>
<subsectiontitle>Voltage divider bias </subsectiontitle>

<index>Bias, BJT, voltage divider</index>

<para>
Stable emitter bias requires a low voltage base bias supply, Figure<ref>03494.png below</ref>. The alternative to a base supply V<subscript>BB</subscript> is a voltage divider based on the collector supply V<subscript>CC</subscript>. 
</para>



<image>03494.png<caption>Voltage Divider bias replaces base battery with voltage divider.</caption></image>

<para>
The design technique is to first work out an emitter-bias design, Then convert it to the voltage divider bias configuration by using Thevenin's Theorem. <cite>TK1</cite>  The steps are shown graphically in Figure<ref>03495.png below</ref>. Draw the voltage divider without assigning values. Break the divider loose from the base. (The base of the transistor is the load.) Apply Thevenin's Theorem to yield a single Thevenin equivalent resistance Rth  and  voltage source Vth.
</para>

<image>03495.png<caption>Thevenin's Theorem converts voltage divider to single supply Vth and resistance Rth.</caption></image>

<para>
The Thevenin equivalent resistance is the resistance from load point (arrow) with the battery (V<subscript>CC</subscript>) reduced to 0 (ground).  In other words, R1||R2.The Thevenin equivalent voltage is the open circuit voltage (load removed). This calculation is by the voltage divider ratio method. R1 is obtained by eliminating R2 from the pair of equations for Rth and Vth. The equation of R1 is in terms of known quantities Rth, Vth, Vcc. Note that Rth is R<subscript>B</subscript> , the bias resistor from the emitter-bias design. The equation for R2 is in terms of R1 and Rth.
</para>


<image>13075.png</image>

<para>
Convert this previous emitter-bias example to voltage divider bias.
</para>


<para>

</para>

<image>03496.png<caption>Emitter-bias example converted to voltage divider bias.</caption></image>

<para>
These values were previously selected or calculated for an emitter-bias example
</para>

<image>13073.png</image>

<para>
Substituting V<subscript>CC</subscript> , V<subscript>BB</subscript> , R<subscript>B</subscript> yields R1 and R2 for the voltage divider bias configuration.
</para>

<image>13076.png</image>


<para>
R1 is a standard value of 220K. The closest standard value for R2 corresponding to 38.8k is 39k. This does not change I<subscript>E</subscript> enough for us to calculate it.
</para>

<label>CASCODEB</label>
<para>
<bold>Problem:</bold> Calculate the bias resistors for the cascode amplifier in Figure<ref>03501.png below</ref>. V<subscript>B2</subscript> is the  bias voltage for the common emitter stage. V<subscript>B1</subscript> is a fairly high voltage at 11.5 because we want the common-base stage to hold the emitter at 11.5-0.7=10.8V, about 11V.  (It will be 10V after accounting for the voltage drop across R<subscript>B1</subscript> .) That is, the common-base stage is the load, substitute for a resistor, for the common-emitter stage's collector. We desire a 1mA emitter current.
</para>

<image>03501.png<caption>Bias for a cascode amplifier.</caption></image>

<para>
<bold>Problem:</bold> Convert the base bias resistors for the cascode amplifier to voltage divider bias resistors driven by the V<subscript>CC</subscript> of 20V.
</para>

<image>13078.png</image>
<para>
</para>

<image>13079.png</image>

<para>
The final circuit diagram is shown in the ``Practical Analog Circuits'' chapter, ``Class A cascode amplifier . . . '' <pageref>CASCODEA[cascode, Ch 9 ][SEMI_9.html]</pageref>.
</para>


<itemize>
<item><bold>REVIEW:</bold></item>
<htmlo>
<item>See  Figure<ref>03497.png below</ref>.</item>
</htmlo>
<tex>
<item>See  Figure<ref>03498.png below</ref>.</item>
</tex>
<item>Select bias circuit configuration</item>
<item>Select R<subscript>C</subscript> and I<subscript>E</subscript> for the intended application. The values for R<subscript>C</subscript> and I<subscript>E</subscript> should normally set collector voltage V<subscript>C</subscript> to 1/2 of V<subscript>CC</subscript>.</item>
<item>Calculate base resistor R<subscript>B</subscript> to achieve desired emitter current.</item>
<item>Recalculate emitter current I<subscript>E</subscript> for standard value resistors if necessary.</item>
<item>For voltage divider bias, perform emitter-bias calculations first, then determine R1 and R2.</item>
<item>For AC amplifiers, a bypass capacitor in parallel with R<subscript>E</subscript> improves AC gain. Set X<subscript>C</subscript><leq>0.10R<subscript>E</subscript> for lowest frequency.</item>
</itemize>


<htmlo>
<image>03497.png<caption>Biasing equations summary.</caption></image>
</htmlo>
<tex>
<image>03498.png<caption>Biasing equations summary.</caption></image>
</tex>

</subsection>


</section>




<section>
<sectiontitle>Input and output coupling</sectiontitle>

<para>
To overcome the challenge of creating necessary DC bias voltage for an amplifier's input signal without resorting to the insertion of a battery in series with the AC signal source, we used a voltage divider connected across the DC power source.  To make this work in conjunction with an AC input signal, we ``coupled'' the signal source to the divider through a capacitor, which acted as a high-pass filter.  With that filtering in place, the low impedance of the AC signal source couldn't ``short out'' the DC voltage dropped across the bottom resistor of the voltage divider.  A simple solution, but not without any disadvantages.
</para>

<para>
Most obvious is the fact that using a high-pass filter capacitor to couple the signal source to the amplifier means that the amplifier can only amplify AC signals.  A steady, DC voltage applied to the input would be blocked by the coupling capacitor just as much as the voltage divider bias voltage is blocked from the input source.  Furthermore, since capacitive reactance is frequency-dependent, lower-frequency AC signals will not be amplified as much as higher-frequency signals.  Non-sinusoidal signals will tend to be distorted, as the capacitor responds differently to each of the signal's constituent harmonics.  An extreme example of this would be a low-frequency square-wave signal in Figure<ref>03136.png below</ref>.
</para>

<image>03136.png<caption>Capacitively coupled low frequency square-wave shows distortion.</caption></image> 

<para>
Incidentally, this same problem occurs when oscilloscope inputs are set to the ``AC coupling'' mode as in Figure<ref>03137.png below</ref>. In this mode, a coupling capacitor is inserted in series with the measured voltage signal to eliminate any vertical offset of the displayed waveform due to DC voltage combined with the signal.  This works fine   when the AC component of the measured signal is of a fairly high frequency, and the capacitor offers little impedance to the signal.  However, if the signal is of a low frequency, or contains considerable levels of harmonics over a wide frequency range, the oscilloscope's display of the waveform will not be accurate. (Figure<ref>03137.png below</ref>) Low frequency signals may be viewed by setting the oscilloscope to ``DC coupling'' in Figure<ref>03139.png below</ref>.
</para>

<image>03139.png<caption>With DC coupling, the oscilloscope properly indicates the shape of the square wave coming from the signal generator.</caption></image> 

<para>
</para>


<image>03137.png<caption>Low frequency: With AC coupling, the high-pass filtering of the coupling capacitor distorts the square wave's shape so that what is seen is not an accurate representation of the real signal.</caption></image> 

<para>
In applications where the limitations of capacitive coupling (Figure<ref>03136.png above</ref>) would be intolerable, another solution may be used: <italic>direct coupling</italic>.  Direct coupling avoids the use of capacitors or any other frequency-dependent coupling component in favor of resistors.  A direct-coupled amplifier circuit is shown in Figure<ref>03138.png below</ref>.
</para>

<image>03138.png<caption>Direct coupled amplifier: direct coupling to speaker.</caption></image> 

<para>
With no capacitor to filter the input signal, this form of coupling exhibits no frequency dependence.  DC and AC signals alike will be amplified by the transistor with the same gain (the transistor itself may tend to amplify some frequencies better than others, but that is another subject entirely!).
</para>

<para>
If direct coupling works for DC as well as for AC signals, then why use capacitive coupling for <italic>any</italic> application?  One reason might be to avoid any <italic>unwanted</italic> DC bias voltage naturally present in the signal to be amplified.  Some AC signals may be superimposed on an uncontrolled DC voltage right from the source, and an uncontrolled DC voltage would make reliable transistor biasing impossible.  The high-pass filtering offered by a coupling capacitor would work well here to avoid biasing problems.
</para>

<para>
Another reason to use capacitive coupling rather than direct is its relative lack of signal attenuation.  Direct coupling through a resistor has the disadvantage of diminishing, or attenuating, the input signal so that only a fraction of it reaches the base of the transistor.  In many applications, some attenuation is necessary anyway to prevent signal levels from ``overdriving'' the transistor into cutoff and saturation, so any attenuation inherent to the coupling network is useful anyway.  However, some applications require that there be <italic>no</italic> signal loss from the input connection to the transistor's base for maximum voltage gain, and a direct coupling scheme with a voltage divider for bias simply won't suffice.
</para>

<para>
So far, we've discussed a couple of methods for coupling an <italic>input</italic> signal to an amplifier, but haven't addressed the issue of coupling an amplifier's <italic>output</italic> to a load.  The example circuit used to illustrate input coupling will serve well to illustrate the issues involved with output coupling.
</para>

<para>
In our example circuit, the load is a speaker.  Most speakers are electromagnetic in design: that is, they use the force generated by an lightweight electromagnet coil suspended within a strong permanent-magnet field to move a thin paper or plastic cone, producing vibrations in the air which our ears interpret as sound.  An applied voltage of one polarity moves the cone outward, while a voltage of the opposite polarity will move the cone inward.  To exploit cone's full freedom of motion, the speaker must receive true (unbiased) AC voltage.  DC bias applied to the speaker coil offsets the cone from its natural center position, and this limits the back-and-forth motion it can sustain from the applied AC voltage without overtraveling.  However, our example circuit (Figure<ref>03138.png above</ref>) applies a varying voltage of only <italic>one</italic> polarity across the speaker, because the speaker is connected in series with the transistor which can only conduct current one way.   This  would be unacceptable for any high-power audio amplifier. 
</para>

<para>
Somehow we need to isolate the speaker from the DC bias of the collector current so that it only receives AC voltage.  One way to achieve this goal is to couple the transistor collector circuit to the speaker through a transformer in Figure<ref>03140.png below</ref>)
</para>

<image>03140.png<caption>Transformer coupling isolates DC from the load (speaker).</caption></image> 

<para>
Voltage induced in the secondary (speaker-side) of the transformer will be strictly due to <italic>variations</italic> in collector current, because the mutual inductance of a transformer only works on <italic>changes</italic> in winding current.  In other words, only the AC portion of the collector current signal will be coupled to the secondary side for powering the speaker.  The speaker will ``see'' true alternating current at its terminals, without any DC bias.
</para>

<para>
Transformer output coupling works, and has the added benefit of being able to provide impedance matching between the transistor circuit and the speaker coil with custom winding ratios.  However, transformers tend to be large and heavy, especially for high-power applications.  Also, it is difficult to engineer a transformer to handle signals over a wide range of frequencies, which is almost always required for audio applications.  To make matters worse, DC current through the primary winding adds to the magnetization of the core in one polarity only, which tends to make the transformer core saturate more easily in one AC polarity cycle than the other.  This problem is reminiscent of having the speaker directly connected in series with the transistor: a DC bias current tends to limit how much output signal amplitude the system can handle without distortion.  Generally, though, a transformer can be designed to handle a lot more DC bias current than a speaker without running into trouble, so transformer coupling is still a viable solution in most cases. See the coupling transformer between Q4 and the speaker, <pageref>RegencyTr1[Regency TR1, Ch 9 ][SEMI_9.html]</pageref> as an example of transformer coupling.

</para>

<para>
Another method to isolate the speaker from DC bias in the output signal is to alter the circuit a bit and use a coupling capacitor in a manner similar to coupling the input signal (Figure<ref>03141.png below</ref>) to the amplifier.
</para>

<image>03141.png<caption>Capacitor coupling isolates DC from the load.</caption></image> 

<para>
This circuit in Figure<ref>03141.png above</ref> resembles the more conventional form of common-emitter amplifier, with the transistor collector connected to the battery through a resistor.  The capacitor acts as a high-pass filter, passing most of the AC voltage to the speaker while blocking all DC voltage.  Again, the value of this coupling capacitor is chosen so that its impedance at the expected signal frequency will be arbitrarily low.
</para>

<para>
The blocking of DC voltage from an amplifier's output, be it via a transformer or a capacitor, is useful not only in coupling an amplifier to a load, but also in coupling one amplifier to another amplifier.  ``Staged'' amplifiers are often used to achieve higher power gains than what would be possible using a single transistor as in  Figure<ref>03142.png below</ref>.
</para>

<label>03142L</label>
<image>03142.png<caption>Capacitor coupled three stage common-emitter amplifier.</caption></image> 


<para>
While it is possible to directly couple each stage to the next (via a resistor rather than a capacitor), this makes the whole amplifier <italic>very</italic> sensitive to variations in the DC bias voltage of the first stage, since that DC voltage will be amplified along with the AC signal until the last stage.  In other words, the biasing of the first stage will affect the biasing of the second stage, and so on.  However, if the stages are capacitively coupled shown in the above illustration, the biasing of one stage has no effect on the biasing of the next, because DC voltage is blocked from passing on to the next stage.  
</para>

<para>
Transformer coupling between amplifier stages is also a possibility, but less often seen due to some of the problems inherent to transformers mentioned previously.  One notable exception to this rule is in radio-frequency amplifiers (Figure<ref>03143.png below</ref>) with small coupling transformers, having air cores (making them immune to saturation effects), that are part of a resonant circuit to block unwanted harmonic frequencies from passing on to subsequent stages.  The use of resonant circuits assumes that the signal frequency remains constant, which is typical of  radio circuitry.  Also, the ``flywheel'' effect of LC tank circuits allows for class C operation for high efficiency.
</para>

<image>03143.png<caption>Three stage tuned RF amplifier illustrates transformer coupling.</caption></image> 

<para>
Note the  transformer coupling between transistors Q1, Q2, Q3, and Q4, <pageref>RegencyTr1[Regency TR1, Ch 9 ][SEMI_9.html]</pageref>. The three intermediate frequency (IF) transformers within the dashed boxes couple the IF signal from collector to base of following transistor IF amplifiers. The <italic>intermediate freqency</italic> ampliers are RF amplifiers, though, at a different frequency than the antenna RF input.  
</para>

<para>
Having said all this, it must be mentioned that it <italic>is</italic> possible to use direct coupling within a multi-stage transistor amplifier circuit.  In cases where the amplifier is expected to handle DC signals, this is the only alternative.
</para>


<para>
The trend of electronics to more widespread use of integrated circuits has encouraged the use of direct coupling over transformer or capacitor coupling. The only easily manufactured integrated circuit component is the transistor. Moderate quality resistors can also be produced. Though, transistors are favored. Integrated capacitors to only a few 10's of pF are possible. Large capacitors are not integrable. If necessary, these can be external components. The same is true of transformers.  Since integrated transistors are inexpensive, as many transistors as possible are substituted for the offending capacitors and transformers. As much direct coupled gain as possible is designed into ICs between the external coupling components. While external capacitors and transformers are used, these are even being designed out if possible.  The result is that a modern IC radio (See ``IC radio'', <pageref>03476.png[Ch 9 ][SEMI_9.html]</pageref>)
<comment>split for double ref</comment>
looks nothing like the original 4-transistor radio <pageref>RegencyTr1[Regency TR1, Ch 9 ][SEMI_9.html]</pageref>.


</para>

<para>
Even discrete transistors are inexpensive compared with transformers. Bulky audio transformers can be replaced by transistors. For example, a common-collector (emitter follower) configuration can impedance match a low output impedance like a speaker. It is also possible to replace large coupling capacitors with transistor circuitry. 
</para>

<para>
We still like to illustrate texts with transformer coupled audio amplifiers. The circuits are simple. The component count is low. And, these are good introductory circuits--- easy to understand.
</para>


<para>
The circuit in Figure<ref>03474.png below</ref> (a) is a simplified transformer coupled <italic>push-pull</italic> audio amplifier. In push-pull,  pair of transistors alternately  amplify the positive and negative portions of the input signal. Neither transistor nor the other conducts for no signal input. A positive input signal  will be positive at the top of the transformer secondary causing the top transistor to conduct. A negative input will yield a positive signal at the bottom of the secondary, driving the bottom transistor into conduction. Thus the transistors amplify alternate halves of a signal.  As drawn, neither transistor in Figure<ref>03474.png below</ref> (a) will conduct for an input below 0.7 Vpeak. A practical circuit connects the secondary center tap to a 0.7 V (or greater) resistor divider instead of ground to bias both transistor for true class B. 
</para>

<image>03474.png<caption>(a) Transformer coupled push-pull amplifier. (b) Direct coupled <italic>complementary-pair</italic> amplifier replaces transformers with transistors.</caption></image>


<para>
The circuit in Figure<ref>03474.png above</ref> (b) is the modern version which replaces the transformer functions with transistors. Transistors  Q<subscript>1</subscript> and Q<subscript>2</subscript> are common emitter amplifiers, inverting the signal with gain from base to collector. Transistors  Q<subscript>3</subscript> and Q<subscript>4</subscript> are known as a <italic>complementary pair</italic> because these NPN and PNP transistors amplify alternate halves (positive and negative, respectively) of the waveform. The parallel connection the bases allows phase splitting without an input transformer at (a). The speaker is the emitter load for Q<subscript>3</subscript> and Q<subscript>4</subscript>. Parallel connection of the emitters of the NPN and PNP transistors eliminates the center-tapped output transformer at (a) The low output impedance of the emitter follower serves to match the low 8 <OMEGA> impedance of the speaker to the preceding common emitter stage. Thus, inexpensive transistors replace transformers. For the complete circuit see`` Direct coupled complementary symmetry 3 w audio amplifier,''<pageref>03475.png[Ch 9 ][SEMI_9.html]</pageref>
</para>


<itemize>
<item><bold>REVIEW:</bold></item>
<item>Capacitive coupling acts like a high-pass filter on the input of an amplifier.  This tends to make the amplifier's voltage gain decrease at lower signal frequencies.  Capacitive-coupled amplifiers are all but unresponsive to DC input signals.</item>
<item>Direct coupling with a series resistor instead of a series capacitor avoids the problem of frequency-dependent gain, but has the disadvantage of reducing amplifier gain for all signal frequencies by attenuating the input signal.</item>
<item>Transformers and capacitors may be used to couple the output of an amplifier to a load, to eliminate DC voltage from getting to the load.</item>
<item>Multi-stage amplifiers often make use of capacitive coupling between stages to eliminate problems with the bias from one stage affecting the bias of another.</item>
</itemize>

</section>





<label>FBtheory</label>
<section>
<sectiontitle>Feedback</sectiontitle>

<index>Feedback, amplifier</index>
<index>Negative feedback</index>
<index>Positive feedback</index>
<index>Regenerative feedback</index>
<index>Degenerative feedback</index>

<para>
If some percentage of an amplifier's output signal is connected to the input, so that the amplifier amplifies part of its own output signal, we have what is known as <italic>feedback</italic>.  Feedback comes in two varieties: <italic>positive</italic> (also called <italic>regenerative</italic>), and <italic>negative</italic> (also called <italic>degenerative</italic>).  Positive feedback reinforces the direction of an amplifier's output voltage change, while negative feedback does just the opposite.
</para>

<para>
A familiar example of feedback happens in public-address (``PA'') systems where someone holds the microphone too close to a speaker: a high-pitched ``whine'' or ``howl'' ensues, because the audio amplifier system is detecting and amplifying its own noise.  Specifically, this is an example of <italic>positive</italic> or <italic>regenerative</italic> feedback, as any sound detected by the microphone is amplified and turned into a louder sound by the speaker, which is then detected by the microphone again, and so on . . . the result being a noise of steadily increasing volume until the system becomes ``saturated'' and cannot produce any more volume.
</para>

<index>Oscillator</index>

<para>
One might wonder what possible benefit feedback is to an amplifier circuit, given such an annoying example as PA system ``howl.''  If we introduce positive, or regenerative, feedback into an amplifier circuit, it has the tendency of creating and sustaining oscillations, the frequency of which determined by the values of components handling the feedback signal from output to input.  This is one way to make an <italic>oscillator</italic> circuit to produce AC from a DC power supply.  Oscillators are very useful circuits, and so feedback has a definite, practical application for us. See ``Phase shift oscillator'' <pageref>03473.png[, Ch 9 ][SEMI_9.html]</pageref> for a practical application of positive feedback.
</para>

<para>
Negative feedback, on the other hand, has a ``dampening'' effect on an amplifier: if the output signal happens to increase in magnitude, the feedback signal introduces a decreasing influence into the input of the amplifier, thus opposing the change in output signal.  While positive feedback drives an amplifier circuit toward a point of instability (oscillations), negative feedback drives it the opposite direction: toward a point of stability.
</para>

<index>Bandwidth, amplifier</index>
<index>Distortion, amplifier</index>

<para>
An amplifier circuit equipped with some amount of negative feedback is not only more stable, but it distorts the input waveform less and is generally capable of amplifying a wider range of frequencies.  The tradeoff for these advantages (there just <italic>has</italic> to be a disadvantage to negative feedback, right?) is decreased gain.  If a portion of an amplifier's output signal is ``fed back'' to the input to oppose any changes in the output, it will require a greater input signal amplitude to drive the amplifier's output to the same amplitude as before.  This constitutes a decreased gain.  However, the advantages of stability, lower distortion, and greater bandwidth are worth the tradeoff in reduced gain for many applications.
</para>

<para>
Let's examine a simple amplifier circuit and see how we might introduce negative feedback into it, starting with Figure<ref>03311.png below</ref>.
</para>

<image>03311.png<caption>Common-emitter amplifier without feedback.</caption></image> 

<para>
The amplifier configuration shown here is a common-emitter, with a resistor bias network formed by R<subscript>1</subscript> and R<subscript>2</subscript>.  The capacitor couples V<subscript>input</subscript> to the amplifier so that the signal source doesn't have a DC voltage imposed on it by the R<subscript>1</subscript>/R<subscript>2</subscript> divider network.  Resistor R<subscript>3</subscript> serves the purpose of controlling voltage gain.  We could omit it for maximum voltage gain, but since base resistors like this are common in common-emitter amplifier circuits, we'll keep it in this schematic.
</para>

<para>
Like all common-emitter amplifiers, this one <italic>inverts</italic> the input signal as it is amplified.  In other words, a positive-going input voltage causes the output voltage to decrease, or move toward  negative, and vice versa.  The oscilloscope waveforms are shown in Figure<ref>03312.png below</ref>.
</para>

<image>03312.png<caption>Common-emitter amplifier, no feedback, with reference waveforms for comparison.</caption></image> 

<para>
Because the output is an inverted, or mirror-image, reproduction of the input signal, any connection between the output (collector) wire and the input (base) wire of the transistor in Figure<ref>03313.png below</ref> will result in <italic>negative</italic> feedback.
</para>

<image>03313.png<caption>Negative feedback, collector feedback, decreases the output signal.</caption></image> 

<para>
The resistances of R<subscript>1</subscript>, R<subscript>2</subscript>, R<subscript>3</subscript>, and R<subscript>feedback</subscript> function together as a signal-mixing network so that the voltage seen at the base of the transistor (with respect to ground) is a weighted average of the input voltage and the feedback voltage, resulting in signal of reduced amplitude going into the transistor.  So, the amplifier circuit in Figure<ref>03313.png above</ref> will have reduced voltage gain, but improved linearity (reduced distortion) and increased bandwidth.
</para>

<para>
A resistor connecting collector to base is not the only way to introduce negative feedback into this amplifier circuit, though.  Another method, although more difficult to understand at first, involves the placement of a resistor between the transistor's emitter terminal and circuit ground in Figure<ref>03314.png below</ref>.
</para>

<image>03314.png<caption>Emitter feedback: A different method of introducing negative feedback into a circuit.</caption></image> 

<para>
This new feedback resistor drops voltage proportional to the emitter current through the transistor, and it does so in such a way as to oppose the input signal's influence on the base-emitter junction of the transistor.  Let's take a closer look at the emitter-base junction and see what difference this new resistor makes in  Figure<ref>03315.png below</ref>.
</para>


<para>
With no feedback resistor connecting the emitter to ground in Figure<ref>03315.png below</ref> (a) , whatever level of input signal (V<subscript>input</subscript>) makes it through the coupling capacitor and R<subscript>1</subscript>/R<subscript>2</subscript>/R<subscript>3</subscript> resistor network will be impressed directly across the base-emitter junction as the transistor's input voltage (V<subscript>B-E</subscript>).  In other words, with no feedback resistor, V<subscript>B-E</subscript> equals V<subscript>input</subscript>.  Therefore, if V<subscript>input</subscript> increases by 100 mV, then V<subscript>B-E</subscript>  increases by 100 mV: a change in one is the same as a change in the other, since the two voltages are equal to each other.
</para>

<para>
Now let's consider the effects of inserting a resistor (R<subscript>feedback</subscript>) between the transistor's emitter lead and ground in  Figure<ref>03315.png below</ref> (b).
</para>



<figure>
<htmlo><label>03315.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03315.png</imagenf></td><td></td>
<td>
<imagenf>03316.png</imagenf>
</td>
</tr>
</tabular>
<caption>(a) No feedback vs (b) emitter feedback. A waveform at the collector is inverted with respect to the base. At (b) the emitter waveform is in-phase (emitter follower) with base, out of phase with collector. Therefore, the emitter signal subtracts from the collector output signal.</caption>
<tex><label>03315.png</label></tex>
</figure>




<para>
Note how the voltage dropped across R<subscript>feedback</subscript> adds with V<subscript>B-E</subscript> to equal V<subscript>input</subscript>.  With R<subscript>feedback</subscript> in the V<subscript>input</subscript> <doubledash> V<subscript>B-E</subscript> loop, V<subscript>B-E</subscript> will no longer be equal to V<subscript>input</subscript>.  We know that R<subscript>feedback</subscript> will drop a voltage proportional to emitter current, which is in turn controlled by the base current, which is in turn controlled by the voltage dropped across the base-emitter junction of the transistor (V<subscript>B-E</subscript>).  Thus, if V<subscript>input</subscript> were to increase in a positive direction, it would increase V<subscript>B-E</subscript>, causing more base current, causing more collector (load) current, causing more emitter current, and causing more feedback voltage to be dropped across R<subscript>feedback</subscript>.  This increase of voltage drop across the feedback resistor, though, <italic>subtracts</italic> from V<subscript>input</subscript> to reduce the V<subscript>B-E</subscript>, so that the actual voltage increase for V<subscript>B-E</subscript> will be less than the voltage increase of V<subscript>input</subscript>.  No longer will a 100 mV increase in V<subscript>input</subscript> result in a full 100 mV increase for V<subscript>B-E</subscript>, because the two voltages are <italic>not</italic> equal to each other.
</para>

<para>
Consequently, the input voltage has less control over the transistor than before, and the voltage gain for the amplifier is reduced: just what we expected from negative feedback.
</para>

<index>Thermal runaway, BJT</index>
<index>Runaway, thermal</index>

<para>
In practical common-emitter circuits, negative feedback isn't just a luxury; its a necessity for stable operation.  In a perfect world, we could build and operate a common-emitter transistor amplifier with no negative feedback, and have the full amplitude of V<subscript>input</subscript> impressed across the transistor's base-emitter junction.  This would give us a large voltage gain.  Unfortunately, though, the relationship between base-emitter voltage and base-emitter current changes with temperature, as predicted by the ``diode equation.''  As the transistor heats up, there will be less of a forward voltage drop across the base-emitter junction for any given current.  This causes a problem for us, as the R<subscript>1</subscript>/R<subscript>2</subscript> voltage divider network is designed to provide the correct quiescent current through the base of the transistor so that it will operate in whatever class of operation we desire (in this example, I've shown the amplifier working in class-A mode).  If the transistor's voltage/current relationship changes with temperature, the amount of DC bias voltage necessary for the desired class of operation will change.  A hot transistor will draw more bias current for the same amount of bias voltage, making it heat up even more, drawing even more bias current.  The result, if unchecked, is called <italic>thermal runaway</italic>.
</para>

<para>
Common-collector amplifiers, (Figure<ref>03317.png below</ref>) however, do not suffer from thermal runaway.  Why is this?  The answer has everything to do with negative feedback.
</para>

<image>03317.png<caption>Common collector (emitter follower) amplifier.</caption></image> 

<para>
Note that the common-collector amplifier (Figure<ref>03317.png above</ref>) has its load resistor placed in exactly the same spot as we had the R<subscript>feedback</subscript> resistor in the last circuit in  Figure<ref>03315.png above</ref> (b): between emitter and ground.  This means that the only voltage impressed across the transistor's base-emitter junction is the <italic>difference</italic> between V<subscript>input</subscript> and V<subscript>output</subscript>, resulting in a very low voltage gain (usually close to 1 for a common-collector amplifier).  Thermal runaway is impossible for this amplifier: if base current happens to increase due to transistor heating, emitter current will likewise increase, dropping more voltage across the load, which in turn <italic>subtracts</italic> from V<subscript>input</subscript> to reduce the amount of voltage dropped between base and emitter.  In other words, the negative feedback afforded by placement of the load resistor makes the problem of thermal runaway <italic>self-correcting</italic>.  In exchange for a greatly reduced voltage gain, we get superb stability and immunity from thermal runaway.
</para>

<para>
By adding a ``feedback'' resistor between emitter and ground in a common-emitter amplifier, we make the amplifier behave a little less like an ``ideal'' common-emitter and a little more like a common-collector.  The feedback resistor value is typically quite a bit less than the load, minimizing the amount of negative feedback and keeping the voltage gain fairly high.
</para>

<para>
Another benefit of negative feedback, seen clearly in the common-collector circuit, is that it tends to make the voltage gain of the amplifier less dependent on the characteristics of the transistor.  Note that in a common-collector amplifier, voltage gain is nearly equal to unity (1), regardless of the transistor's <beta>.  This means, among other things, that we could replace the transistor in a common-collector amplifier with one having a different <beta> and not see any significant changes in voltage gain.  In a common-emitter circuit, the voltage gain is highly dependent on <beta>.  If we were to replace the transistor in a common-emitter circuit with another of differing <beta>, the voltage gain for the amplifier would change significantly.  In a common-emitter amplifier equipped with negative feedback, the voltage gain will still be dependent upon transistor <beta> to some degree, but not as much as before, making the circuit more predictable despite variations in transistor <beta>.
</para>

<para>
The fact that we have to introduce negative feedback into a common-emitter amplifier to avoid thermal runaway is an unsatisfying solution.  Is it possibe to avoid thermal runaway without having to suppress the amplifier's inherently high voltage gain?  A best-of-both-worlds solution to this dilemma is available to us if we closely examine the problem: the voltage gain that we have to minimize in order to avoid thermal runaway is the <italic>DC</italic> voltage gain, not the <italic>AC</italic> voltage gain.  After all, it isn't the AC input signal that fuels thermal runaway: its the DC bias voltage required for a certain class of operation: that quiescent DC signal that we use to ``trick'' the transistor (fundamentally a DC device) into amplifying an AC signal.  We can suppress DC voltage gain in a common-emitter amplifier circuit without suppressing AC voltage gain if we figure out a way to make the negative feedback only function with  DC.  That is, if we only feed back an inverted DC signal from output to input, but not an inverted AC signal.
</para>

<para>
The R<subscript>feedback</subscript> emitter resistor provides negative feedback by dropping a voltage proportional to load current.  In other words, negative feedback is accomplished by inserting an impedance into the emitter current path.  If we want to feed back DC but not AC, we need an impedance that is high for DC but low for AC.  What kind of circuit presents a high impedance to DC but a low impedance to AC?  A high-pass filter, of course!
</para>

<para>
By connecting a capacitor in parallel with the feedback resistor in Figure<ref>03318.png below</ref>, we create the very situation we need: a path from emitter to ground that is easier for AC than it is for DC.
</para>

<index>Bypass capacitor</index>
<index>Capacitor, bypass</index>

<image>03318.png<caption>High AC voltage gain reestablished by adding C<subscript>bypass</subscript> in parallel with R<subscript>feedback</subscript></caption></image> 

<para>
The new capacitor ``bypasses'' AC from the transistor's emitter to ground, so that no appreciable AC voltage will be dropped from emitter to ground to ``feed back'' to the input and suppress voltage gain.  Direct current, on the other hand, cannot go through the bypass capacitor, and so must travel through the feedback resistor, dropping a DC voltage between emitter and ground which lowers the DC voltage gain and stabilizes the amplifier's DC response, preventing thermal runaway.  Because we want the reactance of this capacitor (X<subscript>C</subscript>) to be as low as possible, C<subscript>bypass</subscript> should be sized relatively large.  Because the polarity across this capacitor will never change, it is safe to use a polarized (electrolytic) capacitor for the task.
</para>

<para>
Another approach to the problem of negative feedback reducing voltage gain is to use multi-stage amplifiers rather than single-transistor amplifiers.  If the attenuated gain of a single transistor is insufficient for the task at hand, we can use more than one transistor to make up for the reduction caused by feedback.   An example circuit showing negative feedback in a three-stage common-emitter amplifier is Figure<ref>03321.png below</ref>.
</para>

<image>03321.png<caption>Feedback around an ``odd'' number of direct coupled stages produce negative feedback.</caption></image> 

<para>
The feedback path from the final output to the input is through a single resistor, R<subscript>feedback</subscript>.  Since each stage is a common-emitter amplifier (thus inverting), the odd number of stages from input to output will invert the output signal; the feedback will be negative (degenerative).  Relatively large amounts of feedback may be used without sacrificing voltage gain, because the three amplifier stages provide much gain to begin with.  
</para>

<para>
At first, this design philosophy may seem inelegant and perhaps even counter-productive.  Isn't this a rather crude way to overcome the loss in gain incurred through the use of negative feedback, to simply recover gain by adding stage after stage?  What is the point of creating a huge voltage gain using three transistor stages if we're just going to attenuate all that gain anyway with negative feedback?  The point, though perhaps not apparent at first, is increased predictability and stability from the circuit as a whole.  If the three transistor stages are designed to provide an arbitrarily high voltage gain (in the tens of thousands, or greater) with no feedback, it will be found that the addition of negative feedback causes the overall voltage gain to become less dependent of the individual stage gains, and approximately equal to the simple ratio R<subscript>feedback</subscript>/R<subscript>in</subscript>.  The more voltage gain the circuit has (without feedback), the more closely the voltage gain will approximate R<subscript>feedback</subscript>/R<subscript>in</subscript> once feedback is established.  In other words, voltage gain in this circuit is fixed by the values of two resistors, and nothing more.  
</para>

<index>Operational amplifier</index>
<index>Op-amp</index>


<para>
This is an advantage for mass-production of electronic circuitry: if amplifiers of predictable gain may be constructed using transistors of widely varied <beta> values, it eases the selection and replacement of components.  It also means the amplifier's gain varies little with changes in temperature.  This principle of stable gain control through a high-gain amplifier ``tamed'' by negative feedback is elevated almost to an art form in electronic circuits called <italic>operational amplifiers</italic>, or <italic>op-amps</italic>.  You may read much more about these circuits in a later chapter of this book!
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Feedback</italic> is the coupling of an amplifier's output to its input.</item>
<item><italic>Positive</italic>, or <italic>regenerative</italic> feedback has the tendency of making an amplifier circuit unstable, so that it produces oscillations (AC).  The frequency of these oscillations is largely determined by the components in the feedback network.</item>
<item><italic>Negative</italic>, or <italic>degenerative</italic> feedback has the tendency of making an amplifier circuit more stable, so that its output changes <italic>less</italic> for a given input signal than without feedback.  This reduces the gain of the amplifier, but has the advantage of decreasing distortion and increasing bandwidth (the range of frequencies the amplifier can handle).</item>
<item>Negative feedback may be introduced into a common-emitter circuit by coupling collector to base, or by inserting a resistor between emitter and ground.</item>
<item>An emitter-to-ground ``feedback'' resistor is usually found in common-emitter circuits as a preventative measure against <italic>thermal runaway</italic>.</item>
<item>Negative feedback also has the advantage of making amplifier voltage gain more dependent on resistor values and less dependent on the transistor's characteristics.</item>
<item>Common-collector amplifiers have much negative feedback, due to the placement of the load resistor between emitter and ground.  This feedback accounts for the extremely stable voltage gain of the amplifier, as well as its immunity against thermal runaway.</item>
<item>Voltage gain for a common-emitter circuit may be re-established without sacrificing immunity to thermal runaway, by connecting a <italic>bypass capacitor</italic> in parallel with the emitter ``feedback resistor.''</item>
<item>If the voltage gain of an amplifier is arbitrarily high (tens of thousands, or greater), and negative feedback is used to reduce the gain to reasonable levels, it will be found that the gain will approximately equal R<subscript>feedback</subscript>/R<subscript>in</subscript>.  Changes in transistor <beta> or other internal component values will have little effect on voltage gain with feedback in operation, resulting in an amplifier that is stable and easy to design.</item>
</itemize>

</section>





<section>
<sectiontitle>Amplifier impedances</sectiontitle>

<para>
Input impedance varies considerably with the circuit configuration shown in Figure<ref>03486.png below</ref>. It also varies with biasing. Not considered here, the input impedance is complex and varies with frequency. For the common-emitter and common-collector it is base resistance times <beta>. The base resistance can be both internal and external to the transistor. For the common-collector:

<literal>
<sp>        R<subscript>in</subscript> = <beta>R<subscript>E</subscript>
</literal>

It is a bit more complicated for the common-emitter circuit. We need to know the internal emitter resistance r<subscript>EE</subscript>. This is given by:

<literal>
<sp>        r<subscript>EE</subscript> = KT/I<subscript>E</subscript>m
<sp>        where:
<sp>                K=1.38<times>10<superscript>-23</superscript> watt-sec/<superscript>o</superscript>C, Boltzman's constant
<sp>                T= temperature in Kelvins <approxequal>300.
<sp>                I<subscript>E</subscript> = emitter current
<sp>                m = varies from 1 to 2 for Silicon
<sp>        R<subscript>E</subscript> <approxequal> 0.026V/I<subscript>E</subscript> = 26mV/I<subscript>E</subscript>               
</literal>

Thus, for the common-emitter circuit Rin is

<literal>
<sp>        Rin = <beta>r<subscript>EE</subscript>
</literal>
As an example the input resistance of a, <beta> = 100, CE configuration biased at 1 mA is:

<literal>
<sp>       <bold>r<subscript>EE</subscript> = 26mV/1mA = 26<OMEGA></bold>
<sp>        Rin = <beta>r<subscript>EE</subscript> = 100(26) = 2600<OMEGA>
</literal>



Moreover, a more accurate Rin for the common-collector should have included r<subscript>EE</subscript>

<literal>
<sp>        Rin = <beta>(R<subscript>E</subscript> + r<subscript>EE</subscript>) 
</literal>
This equation (above) is also applicable to a common-emitter configuration with an emitter resistor.
</para>

<para>
Input impedance for the common-base configuration is Rin = r<subscript>EE</subscript>.
</para>


<para>
The high input impedance of the common-collector configuration matches high impedance sources. A crystal or ceramic microphone is one such high impedance source. The common-base arrangement is sometimes used in RF (radio frequency) circuits to match a low impedance source, for example, a 50 <OMEGA> coaxial cable feed. For moderate impedance sources, the common-emitter is a good match. An example is a dynamic microphone.
</para>

<para>
The output impedances of the three basic configurations are listed in Figure<ref>03486.png below</ref>. The moderate output impedance of the common-emitter configuration helps make it a popular choice for general use. The Low output impedance of the common-collector is put to good use in impedance matching, for example, tranformerless matching to a 4 Ohm speaker. There do not appear to be any simple formulas for the output impedances. However, R. Victor Jones develops expressions for output resistance. <cite>RVJ</cite>
</para>

<image>03486.png<caption>Amplifier characteristics, adapted from GE Transistor Manual, Figure 1.21.<cite>GET</cite></caption></image>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>See Figure<ref>03486.png above</ref>.</item>
</itemize>

</section>





<section>
<sectiontitle>Current mirrors</sectiontitle>

<index>Current mirror</index>

<para>
An often-used circuit applying the bipolar junction transistor is the so-called <italic>current mirror</italic>, which serves as a simple current regulator, supplying nearly constant current to a load over a wide range of load resistances.
</para>

<index>Alpha ratio</index>
<index><alpha> ratio</index>
<index>Beta ratio</index>
<index><beta> ratio</index>

<para>
We know that in a transistor operating in its active mode, collector current is equal to base current multiplied by the ratio <beta>.  We also know that the ratio between collector current and emitter current is called <alpha>.  Because collector current is equal to base current multiplied by <beta>, and emitter current is the sum of the base and collector currents, <alpha> should be mathematically derivable from <beta>.  If you do the algebra, you'll find that <alpha> = <beta>/(<beta>+1) for any transistor.
</para>

<para>
We've seen already how maintaining a constant base current through an active transistor results in the regulation of collector current, according to the <beta> ratio.  Well, the <alpha> ratio works similarly: if emitter current is held constant, collector current will remain at a stable, regulated value so long as the transistor has enough collector-to-emitter voltage drop to maintain it in its active mode.  Therefore, if we have a way of holding emitter current constant through a transistor, the transistor will work to regulate collector current at a constant value.
</para>

<para>
Remember that the base-emitter junction of a BJT is nothing more than a PN junction, just like a diode, and that the ``diode equation'' specifies how much current will go through a PN junction given forward voltage drop and junction temperature:
</para>

<image>13047.png</image> 

<para>
If both junction voltage and temperature are held constant, then the PN junction current will be constant.  Following this rationale, if we were to hold the base-emitter voltage of a transistor constant, then its emitter current will be constant, given a constant temperature.  (Figure<ref>03279.png below</ref>)
</para>

<image>03279.png<caption>Constant V<subscript>BE</subscript> gives constant I<subscript>B</subscript>, constant I<subscript>E</subscript>, and constant I<subscript>C</subscript>.</caption></image> 

<para>
This constant emitter current, multiplied by a constant <alpha> ratio, gives a constant collector current through R<subscript>load</subscript>, if enough battery voltage is available to keep the transistor in its active mode for any change in R<subscript>load</subscript>'s resistance.
</para>

<para>
To maintain a constant voltage across the transistor's base-emitter junction use a forward-biased diode to establish a constant voltage of approximately 0.7 volts, and connect it in parallel with the base-emitter junction as in Figure<ref>03280.png below</ref>.
</para>

<image>03280.png<caption>Diode junction 0.7 V maintains constant base voltage, and constant base current.</caption></image> 

<para>
The voltage dropped across the diode probably won't be 0.7 volts exactly.  The exact amount of forward voltage dropped across it depends on the current through the diode, and the diode's temperature, all in accordance with the diode equation.  If diode current is increased (say, by reducing the resistance of R<subscript>bias</subscript>), its voltage drop will increase slightly, increasing the voltage drop across the transistor's base-emitter junction, which will increase the emitter current by the same proportion, assuming the diode's PN junction and the transistor's base-emitter junction are well-matched to each other.  In other words, transistor emitter current will closely equal diode current at any given time.  If you change the diode current by changing the resistance value of R<subscript>bias</subscript>, then the transistor's emitter current will follow suit, because the emitter current is described by the same equation as the diode's, and both PN junctions experience the same voltage drop.
</para>

<para>
Remember, the transistor's collector current is almost equal to its emitter current, as the <alpha> ratio of a typical transistor is almost unity (1).  If we have control over the transistor's emitter current by setting diode current with a simple resistor adjustment, then we likewise have control over the transistor's collector current.  In other words, collector current mimics, or <italic>mirrors</italic>, diode current.
</para>

<para>
Current through resistor R<subscript>load</subscript> is therefore a function of current set by the bias resistor, the two being nearly equal.  This is the function of the current mirror circuit: to regulate current through the load resistor by conveniently adjusting the value of R<subscript>bias</subscript>.  Current through the diode is described by a simple equation: power supply voltage minus diode voltage (almost a constant value), divided by the resistance of R<subscript>bias</subscript>.
</para>

<para>
To better match the characteristics of the two PN junctions (the diode junction and the transistor base-emitter junction), a transistor may be used in place of a regular diode, as in  Figure<ref>03281.png below</ref> (a).
</para>


<figure>
<htmlo><label>03281.png</label></htmlo>
<tabular>{lll}
<tr>
<td><imagenf>03281.png</imagenf></td><td></td>
<td>
<imagenf>03282.png</imagenf>
</td>
</tr>
</tabular>
<caption>Current mirror circuits.</caption>
<tex><label>03281.png</label></tex>
</figure>


<index>Integrated circuit</index>
<index>IC</index>

<para>
Because temperature is a factor in the ``diode equation,'' and we want the two PN junctions to behave identically under all operating conditions, we should maintain the two transistors at exactly the same temperature.  This is easily done using discrete components by gluing the two transistor cases back-to-back.  If the transistors are manufactured together on a single chip of silicon (as a so-called <italic>integrated circuit</italic>, or <italic>IC</italic>), the designers should locate the two transistors close to one another to facilitate heat transfer between them.
</para>

<index>Sink, current</index>
<index>Current sourcing vs. sinking</index>

<para>
The current mirror circuit shown with two NPN transistors in Figure<ref>03281.png above</ref> (a) is sometimes called a <italic>current-sinking</italic> type, because the regulating transistor conducts current to the load <italic>from ground</italic> (``sinking'' current), rather than <italic>from the positive side of the battery</italic> (``sourcing'' current).  If we wish to have a grounded load, and a <italic>current sourcing</italic> mirror circuit, we may use PNP transistors like  Figure<ref>03281.png above</ref> (b).
</para>

<para>
While resistors can be manufactured in ICs, it is easier to fabricate transistors.  IC designers avoid some resistors by replacing load resistors with current sources. A circuit like an operational amplifier built from discrete components will have a few transistors and many resistors. An integrated circuit version will have many transistors and a few resistors. In  Figure<ref>03129.png below</ref> One voltage reference, Q1, drives multiple current sources: Q2, Q3, and Q4.  If Q2 and Q3 are equal area transistors the load currents I<subscript>load</subscript> will be equal. If we need a 2<cdot>I<subscript>load</subscript>, parallel Q2 and Q3. Better yet fabricate one transistor, say Q3 with twice the area of Q2. Current I3 will then be twice I2. In other words, load current scales with transistor area. 
</para>

<image>03129.png<caption>Multiple current mirrors may be slaved from a single (Q1 - R<subscript>bias</subscript>) voltage source.</caption></image>

<para>
Note that it is customary to draw the base voltage line right through the transistor symbols for multiple current mirrors! Or in the case of Q4 in Figure<ref>03129.png above</ref>, two current sources are associated with a single transistor symbol. The load resistors are drawn almost invisible to emphasize the fact that these do not exist in most cases.  The load is often  another (multiple) transistor circuit, say a pair of emitters of a differential amplifier, for example  Q3 and Q4 in "A simple operational amplifier"<pageref>03322.png[, Ch 8 ][SEMI_8.html]</pageref>. Often, the collector load of a transistor is not a resistor but a current mirror. 
<comment>split for double pageref</comment>
For example the collector load of Q4 collector <pageref>03322.png[, Ch 8 ][SEMI_8.html]</pageref> is a current mirror (Q2).
</para>

<para>
For an example of a current mirror with multiple collector outputs see Q13 in the model 741 op-amp <pageref>03323.png[, Ch 8 ][SEMI_8.html]</pageref>. The Q13 current mirror outputs substitute for resistors as collector loads for Q15 and Q17. We see from these examples that current mirrors are preferred as loads over resistors in integrated circuitry.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>current mirror</italic> is a transistor circuit that regulates current through a load resistance, the regulation point being set by a simple resistor adjustment.</item>
<item>Transistors in a current mirror circuit must be maintained at the same temperature for precise operation.  When using discrete transistors, you may glue their cases together to do this.</item>
<item>Current mirror circuits may be found in two basic varieties: the current <italic>sinking</italic> configuration, where the regulating transistor connects the load to ground; and the current <italic>sourcing</italic> configuration, where the regulating transistor connects the load to the positive terminal of the DC power supply.</item>
</itemize>

</section>






<section>
<sectiontitle>Transistor ratings and packages</sectiontitle>


<para>
Like all electrical and electronic components, transistors are limited in the amounts of voltage and current each one can handle without sustaining damage.  Since transistors are more complex than some of the other components you're used to seeing at this point, these tend to have more kinds of ratings.  What follows is an itemized description of some typical transistor ratings.
</para>

<para>
<italic>Power dissipation</italic>: When a transistor conducts current between collector and emitter, it also drops voltage between those two points.  At any given time, the power dissipated by a transistor is equal to the product (multiplication) of collector current and collector-emitter voltage.  Just like resistors, transistors are rated  for how many watts each can safely dissipate without sustaining damage.  High temperature is the mortal enemy of all semiconductor devices, and bipolar transistors tend to be more susceptible to thermal damage than most.  Power ratings are always  referenced to the temperature of ambient (surrounding) air.  When transistors are to be used in hotter environments (<gt>25<subscript>o</subscript>, their power ratings must be <italic>derated</italic> to avoid a shortened service life.
</para>

<para>
<italic>Reverse voltages</italic>: As with diodes, bipolar transistors are rated for maximum allowable reverse-bias voltage across their PN junctions.  This includes voltage ratings for the emitter-base junction V<subscript>EB</subscript> , collector-base junction V<subscript>CB</subscript> , and also from collector to emitter V<subscript>CE</subscript> .
</para>

<para>
V<subscript>EB</subscript> , the maximum reverse voltage from emitter to base is approximately 7 V  for some small signal transistors. Some circuit designers use discrete BJTs as 7 V zener diodes with a series current limiting resistor. Transistor inputs to analog integrated circuits also have a V<subscript>EB</subscript> rating, which if exceeded will cause damage, no zenering of the inputs is allowed.   
</para>

<para>
The rating for maximum collector-emitter voltage V<subscript>CE</subscript> can be thought of as the maximum voltage it can withstand while in full-cutoff mode (no base current).  This rating is of particular importance when using a bipolar transistor as a switch. A typical value for a small signal transistor is 60 to 80 V. In power transistors, this could range to 1000 V, for example, a horizontal deflection transistor in a cathode ray tube display.
</para>

<para>
<italic>Collector current</italic>: A maximum value for collector current I<subscript>C</subscript> will be given by the manufacturer in amps. Typical values for small signal transistors are 10s to 100s of mA, 10s of A for power transistors.  Understand that this maximum figure assumes a saturated state (minimum collector-emitter voltage drop).  If the transistor is <italic>not</italic> saturated, and in fact is dropping substantial voltage between collector and emitter, the maximum power dissipation rating will probably be exceeded before the maximum collector current rating.  Just something to keep in mind when designing a transistor circuit!
</para>


<para>
<italic>Saturation voltages</italic>: Ideally, a saturated transistor acts as a closed switch contact between collector and emitter, dropping zero voltage at full collector current.  In reality this is <italic>never</italic> true.  Manufacturers will specify the maximum voltage drop of a transistor at saturation, both between the collector and emitter, and also between base and emitter (forward voltage drop of that PN junction).  Collector-emitter voltage drop at saturation is generally expected to be 0.3 volts or less, but this figure is of course dependent on the specific type of transistor. Low voltage transistors, low V<subscript>CE</subscript> , show lower saturation voltages. The saturation voltage is also lower for higher base drive current. 
</para>

<para>
Base-emitter forward voltage drop, kV<subscript>BE</subscript> , is similar to that of an equivalent diode, <approxequal>0.7 V, which should come as no surprise.
</para>

<para>
<italic>Beta</italic>: The ratio of collector current to base current, <beta> is the fundamental parameter characterizing the amplifying ability of a bipolar transistor.  <beta> is usually assumed to be a constant figure in circuit calculations, but unfortunately this is far from true in practice.  As such, manufacturers provide a set of <beta> (or ``h<subscript>fe</subscript>'') figures for a given transistor over a wide range of operating conditions, usually in the form of maximum/minimum/typical ratings.  It may surprise you to see just how widely <beta> can be expected to vary within normal operating limits.  One popular small-signal transistor, the 2N3903, is advertised as having a <beta> ranging from 15 to 150 depending on the amount of collector current.  Generally, <beta> is highest for medium collector currents, decreasing for very low and very high collector currents. h<subscript>fe</subscript> is small signal AC  gain; h<subscript>FE</subscript> is large AC signal gain or DC gain.

</para>

<para>
<italic>Alpha</italic>: the ratio of collector current to emitter current,  <alpha>=I<subscript>C</subscript>/I<subscript>E</subscript> .<sp><sp> <alpha> may be derived from <beta>, being <alpha>=<beta>/(<beta>+1) .
</para>

<para>
Bipolar transistors come in a wide variety of physical packages.  Package type is primarily dependent upon the required power dissipation of the transistor, much like resistors: the greater the maximum power dissipation, the larger the device has to be to stay cool.  Figure<ref>03485.png below</ref> shows several standardized package types for three-terminal semiconductor devices, any of which may be used to house a bipolar transistor.  There are many other semiconductor devices other than bipolar transistors which have three connection points. Note that the pin-outs of plastic transistors can vary within a single package type, e.g. TO-92 in Figure<ref>03485.png below</ref>.  It is <italic>impossible</italic> to positively identify a three-terminal semiconductor device without referencing the part number printed on it, or subjecting it to a set of electrical tests.
</para>


<image>03485.png<caption>Transistor packages, dimensions in mm.</caption></image>

<para>
Small plastic transistor packages like the TO-92 can dissipate a few hundred milliwatts. The metal cans, TO-18 and TO-39 can dissipate more power, several hundred milliwatts. Plastic power transistor packages like the TO-220 and TO-247 dissipate well over 100 watts, approaching the dissipation of the all metal TO-3. The dissipation ratings listed in Figure<ref>03485.png above</ref> are the maximum ever encountered by the author for high powered devices.  Most power transistors are rated at half or less than the listed wattage. Consult specific device datasheets for actual ratings. The semiconductor die in the TO-220 and TO-247 plastic packages is mounted to a  heat conductive metal slug which transfers heat from the back of the package to a metal <italic>heatsink</italic>, not shown. A thin coating of thermally conductive grease is applied to the metal before mounting the transistor to the heatsink. Since the TO-220 and TO-247 slugs, and the TO-3 case are connected to the collector, it is sometimes necessary to electrically isolate these from a grounded heatsink by an interposed mica or polymer washer.   The datasheet ratings for the power packages are only valid when mounted to a heatsink. Without a heatsink, a TO-220 dissipates approximately 1 watt safely in free air.
</para>

<para>
Datasheet maximum power disipation ratings are difficult to acheive in practice. The maximum power dissipation is based on a heatsink maintaining the transistor case at no more than 25<superscript>o</superscript>C. This is difficult with an air cooled heatsink. The allowable power dissipation decreases with increasing temperature. This is known as derating. Many power device datasheets include a dissipation versus case termperaure graph.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Power dissipation</italic>: maximum allowable power dissipation on a sustained basis.</item>
<item><italic>Reverse voltages</italic>: maximum allowable V<subscript>CE</subscript> , V<subscript>CB</subscript> , V<subscript>EB</subscript> .</item>
<item><italic>Collector current</italic>: the maximum allowable collector current. </item>
<item><italic>Saturation voltage</italic> is the V<subscript>CE</subscript> voltage drop in a saturated (fully conducting) transistor.</item>
<item><italic>Beta</italic>: <beta>=I<subscript>C</subscript>/I<subscript>B</subscript></item>
<item><italic>Alpha</italic>: <alpha>=I<subscript>C</subscript>/I<subscript>E</subscript><sp><sp><sp> <alpha>= <beta>/(<beta>+1)</item>
<item>Transistor<italic>Packages</italic> are a major factor in power dissipation. Larger packages dissipate more power.</item>
</itemize>

</section>



<section>
<sectiontitle>BJT quirks</sectiontitle>


<para>
An ideal transistor would show 0% distortion in amplifying a signal. Its gain would extend to all frequencies. It would control hundreds of amperes of current, at hundreds of degrees C. In practice, available devices show distortion. Amplification is limited at the high frequency end of the spectrum. Real parts only handle tens of amperes with precautions. Care must be taken when paralleling transistors for higher current. Operation at elevated temperatures can destroy transistors if precautions are not taken.
</para>


<subsection>
<subsectiontitle>Nonlinearity</subsectiontitle>

<para>
The class A common-emitter amplifier (similar to Figure<ref>03110.png previous</ref>)is driven almost to clipping  in Figure<ref>23039.png below</ref> . Note that the positive peak is flatter than the negative peaks. This distortion is unacceptable in many applications like high-fidelity audio.
</para>

<image>23039.png<caption>Distortion in large signal common-emitter amplifier.</caption></image>

<para>
Small signal amplifiers are relatively linear because they use a small linear section of the transistor characteristics. Large signal amplifiers are not 100% linear because transistor characteristics like <beta> are not constant, but vary with collector current. <beta> is high at low collector current, and low at very low current or high current. Though, we primarily encounter decreasing <beta> with increasing collector current.
</para>


<figure>
<htmlo><label>bjt7.tbl</label></htmlo>
<tabular>{lll}
<tr>
<td>
<latexin>\begin{minipage}[b]{3.0in}</latexin>
<literal>
common-emitter amplifier 
Vbias 4 0 0.74
Vsig  5 4 sin (0 125m 2000 0 0)
rbias 6 5 2k
q1 2 6 0 q2n2222
r 3 2 1000
v1 3 0 dc 10
.model q2n2222 npn (is=19f bf=150
+ vaf=100 ikf=0.18 ise=50p ne=2.5
+ br=7.5
+ var=6.4 ikr=12m isc=8.7p nc=1.2
+ rb=50
+ re=0.4 rc=0.3 cje=26p tf=0.5n
+ cjc=11p tr=7n xtb=1.5 kf=0.032f
+ af=1)
.fourier 2000 v(2)
.tran 0.02m 0.74m
.end
</literal>
<latexin>\end{minipage}</latexin>
</td>
<td></td>
<td>
<latexin>\begin{minipage}[b]{1.8in}</latexin>
<literal>
spice -b ce.cir
Fourier analysis v(2):
THD: 10.4688 %
  
Har Freq  Norm Mag
--- ----  --------
0   0     0         
1   2000  1         
2   4000  0.097992 
3   6000  0.036541 
4   8000  0.004387
5  10000  0.001158
6  12000  0.000893
7  14000  0.000211
8  16000  3.81e-05
9  18000  3.37e-05
</literal>
<latexin>\end{minipage}</latexin>
</td>
</tr>
</tabular>
<caption>SPICE net list: for transient and fourier analyses. Fourier analysis shows 10% total harmonic distortion (THD).</caption>
<tex><label>bjt7.tbl</label></tex>
</figure>


<para>
The SPICE listing in Table<ref>bjt7.tbl above</ref> illustrates how to quantify the amount of distortion. The ".fourier 2000 v(2)" command tells SPICE to perm a fourier analysis at 2000 Hz on the output v(2). At the command line  "spice -b circuitname.cir" produces the Fourier analysis output in Table<ref>bjt7.tbl above</ref>. It shows THD (total harmonic distortion) of over 10%, and the contribution of the individual harmonics.  
</para>


<para>
A partial solution to this distortion is to decrease the collector current or operate the amplifier over a smaller portion of the load line. The ultimate solution is to apply negative feedback. See <pageref>FBtheory[Feedback]</pageref>. 
</para>


</subsection>




<subsection>
<subsectiontitle>Temperature drift</subsectiontitle>

<para>
Temperature affects the AC and DC characteristics of transistors. The two aspects to this problem are environmental temperature variation and self-heating. Some applications, like military and automotive, require operation over an extended temperature range. Circuits in a benign environment are subject to self-heating,  in particular high power circuits.
</para>


<para>
Leakage current I<subscript>CO</subscript> and <beta> increase with temperature. The DC <beta> h<subscript>FE</subscript> increases exponentially. The AC <beta> h<subscript>fe</subscript> increases, but not as rapidly. It doubles over the range of -55<superscript>o</superscript> to 85<superscript>o</superscript> C. As temperature increases, the increase in h<subscript>fe</subscript>  will yield a larger  common-emitter  output, which could be clipped in extreme cases. The increase in  h<subscript>FE</subscript> shifts the bias point, possibly clipping one peak. The shift in bias point is amplified in multi-stage  direct-coupled amplifiers. The solution is some form of negative feedback to stabilize the bias point. This also stabilizes AC gain.
</para>

<para>
Increasing temperature in  Figure<ref>03484.png below</ref> (a)  will decrease V<subscript>BE</subscript> from the nominal 0.7V for silicon transistors. Decreasing  V<subscript>BE</subscript> increases collector current in a common-emitter amplifier, further shifting the bias point. The cure for shifting V<subscript>BE</subscript> is a pair of transistors configured as a differential amplifier. If both transistors in  Figure<ref>03484.png below</ref> (b) are at the same temperature, the V<subscript>BE</subscript> will track with changing temperature and cancel.
</para>

<image>03484.png<caption>(a) single ended CE amplifier vs (b) differential amplifier with V<subscript>BE</subscript> cancellation.</caption></image>

<para>
The maximum recommended junction temperature for silicon devices is frequently 125<superscript>o</superscript> C. Though, this should be derated for higher reliability.  Transistor action ceases beyond 150<superscript>o</superscript> C.  Silicon carbide and diamond transistors will operate considerably higher.
</para>



</subsection>


<subsection>
<subsectiontitle>Thermal runaway</subsectiontitle>

<para>
The problem with increasing temperature causing increasing collector current is that more current increase the power dissipated by the transistor which, in turn, increases its temperature. This self-reinforcing cycle is known as <italic>thermal run away</italic>, which may destroy the transistor. Again, the solution is a bias scheme with some form of negative feedback to stabilize the bias point.
</para>

</subsection>




<subsection>
<subsectiontitle>Junction capacitance</subsectiontitle>

<para>
Capacitance exists between the terminals of a transistor. The collector-base capacitance C<subscript>CB</subscript> and emitter-base capacitance C<subscript>EB</subscript> decrease the gain of a common emitter circuit at higher frequencies. 

<para>
In a common emitter amplifier, the capacitive feedback from collector to base effectively multiplies C<subscript>CB</subscript> by <beta>. The amount of negative gain-reducing feedback is related to both current gain, and amount of collector-base capacitance. This is known as the <italic>Miller effect</italic>, <pageref>MILLER[Miller effect]</pageref>.
</para> 
</para>

</subsection>



<subsection>
<subsectiontitle>Noise</subsectiontitle>

<para>
The ultimate sensitivity of small signal amplifiers is limited by noise due to random variations in current flow. The two major sources of noise in transistors are  <italic>shot noise</italic> due to current flow of carriers in the base and <italic>thermal noise</italic>. The source of thermal noise is device  resistance and increases with temperature:
</para>

<image>13059.png</image>

<para>
Noise in a transistor amplifier  is defined in terms of <italic>excess noise</italic> generated by the amplifier, not that noise amplified from input to output, but that generated within the amplifier. This is determined by measuring the <italic>signal to noise ratio</italic> (S/N) at the amplifier input and output. The AC voltage output of an amplifier with a small signal input corresponds to S+N, signal plus noise. The AC voltage with no signal in corresponds to noise N. The <italic>noise figure</italic> F is defined in terms of S/N of amplifier input and output:
</para>

<image>13058.png</image>

<para>
The noise figure F for RF (radio frequency) transistors is usually listed on transistor data sheets in decibels, F<subscript>dB</subscript>. A good VHF (very high frequency, 30 MHz to 300 Mhz) noise figure is <lt> 1 dB. The noise figure above VHF increases considerable, 20 dB per decade as shown in Figure<ref>03482.png below</ref>.
</para>

<image>03482.png<caption>Small signal transistor noise figure vs Frequency.  After Thiele, Figure 11.147 <cite>AGT</cite></caption></image> 

<para>
Figure<ref>03482.png above</ref> also shows that noise at low frequencies increases at 10 dB per decade with decreasing frequency. This noise is known as <italic>1/f noise</italic>. 
</para>

<para>
Noise figure varies with the transistor type (part number). Small signal RF transistors used  at the antenna  input of a radio receiver are specifically designed for low noise figure. Noise figure varies with bias current and impedance matching. The best noise figure for a  transistor is  achieved at lower bias current, and possibly with an impedance mismatch. 
</para>

</subsection>



<subsection>
<subsectiontitle>Thermal mismatch (problem with paralleling transistors)</subsectiontitle>

<para>
If two identical power transistors were paralleled for higher current, one would expect them to share current equally. Because of differences in characteristerics, transistors do not share current equally. 
</para>

<image>03481.png<caption>Transistors paralleled for increased power require emitter ballast resistors</caption></image>

<para>
It is not practical to select identical transistors. The <beta> for small signal transistors typically has a range of 100-300, power transistors: 20-50. If each one could be matched, one still might run hotter than the other due to environmental conditions.  The hotter transistor draws more current resulting in thermal runaway. The solution when paralleling bipolar transistors is to insert emitter resistors known as <italic>ballast resistors</italic> of less than an ohm. If the hotter transistor draws more current, the voltage drop across the ballast resistor increases--- negative feedback. This decreases the current. Mounting all transistors on the same heatsink helps  equalize current too.
</para>

</subsection>


<subsection>
<subsectiontitle>High frequency effects</subsectiontitle>

<para>
The performance of a transistor amplifier is relatively constant, up to a point, as shown by the small signal common-emitter current gain with increasing frequency in Figure<ref>03483.png below</ref>. Beyond that  point the  performance of a transistor degrades as frequency increases. 
</para>

<para>
<bold>Beta cutoff frequency</bold>, f<subscript>T</subscript> is the frequency at which common-emitter small signal  current gain (h<subscript>fe</subscript>) falls to unity.  (Figure<ref>03483.png below</ref>) A practical amplifier must have a gain <gt>1. Thus, a transistor cannot be used in a practical amplifier at   f<subscript>T</subscript>.  A more usable limit for a transistor is 0.1<cdot>f<subscript>T</subscript>. 
</para>

<image>03483.png<caption>Common-emitter small signal current gain (h<subscript>fe</subscript>) vs frequency.</caption></image>

<para>
Some RF silicon bipolar transistors are usable as amplifers up to a few GHz. Silicon-germanium devices extend the upper range to 10 GHz.
</para>

<para>
<bold>Alpha cutoff frequency</bold>, f<subscript>alpha</subscript> is the frequency at which the <alpha> falls to 0.707 of low frequency <alpha>,<subscript>0</subscript> <alpha>=0.707<alpha><subscript>0</subscript>. Alpha cutoff and beta cutoff are nearly equal:  f<subscript>alpha</subscript><approxequal>f<subscript>T</subscript> Beta cutoff f<subscript>T</subscript>  is the preferred figure of merit of high frequency performance.
</para>



<para>
<bold>f<subscript>max</subscript></bold> is the highest frequency of oscillation possible under the most favorable conditions of bias and impedance matching. It is the frequency at which the power gain is unity. All of the output is fed back to the input to sustain oscillations. f<subscript>max</subscript> is an upper limit for frequency of operation of a transistor as an active device. Though, a practical amplifier would not be usable at f<subscript>max</subscript>.
</para>

<index>Miller effect</index>
<label>MILLER</label>

<para>
<bold>Miller effect:</bold>  The high frequency limit for a transistor is related to the junction capacitances. For example a PN2222A has an input capacitance C<subscript>obo</subscript>=9pF and an output capacitance C<subscript>ibo</subscript>=25pF from C-B and E-B respectively. <cite>FAR</cite> Although the C-E capacitance of 25 pF seems large, it is less of a factor than the C-B (9pF) capacitance. because of the <italic>Miller effect</italic>, the C-B capacitance has an effect on the base equivalent to beta times the capacitance in the common-emitter amplifier. Why might this be? A common-emitter amplifier inverts the signal from base to collector. The inverted collector signal fed back to the base opposes the input on the base. The collector signal is beta times larger than the input. For the PN2222A, <beta>=50--300. Thus, the 9pF C-E capacitance looks like 9<cdot>50=450pF to 9<cdot>300=2700pF.
</para>

<para>
The solution to the junction capacitance problem is to select a high frequency transistor for wide bandwidth applications--- RF (radio frequency) or microwave transistor. The bandwidth can be extended further by using the common-base instead of the common-emitter configuration. The grounded base shields the emitter input from capacitive collector feedback. A two-transistor cascode arrangement will yield the same bandwidth as the common-base, with the higher input impedance of the common-emitter.
</para>


</subsection>


<itemize>
<item><bold>REVIEW:</bold></item>
<item>Transistor amplifiers exhibit distortion because of <beta> variation with collector current. </item>
<item>I<subscript>c</subscript>, V<subscript>BE</subscript>, <beta> and junction capacitance vary with temperature.</item>
<item>An increase in temperature can cause an increase in I<subscript>C</subscript>, causing an increase in temperature, a vicious cycle known as <italic>thermal runaway.</italic></item>
<item>Junction capacitance limits high frequency gain of a transistor. The  <italic>Miller effect</italic> makes C<subscript>cb</subscript> look <beta> times larger at the base of a CE amplifier.</item>
<item>Transistor  noise limits the ability to amplify small signals. <italic>Noise figure</italic> is a figure of merit concerning transistor noise.</item>
<item>When paralleling power transistors for increased current, insert <italic>ballast resistors</italic> in series with the emitters to equalize current.</item>
<item>F<subscript>T</subscript> is the absolute upper frequency limit for a CE amplifier, small signal current gain falls to unity, h<subscript>fe</subscript>=1.</item>
<item>F<subscript>max</subscript> is the  upper frequency limit for an oscillator under the most ideal conditions.</item>
</itemize>

</section>



<thebibliography>

<bibitem>[AGT]  A. G. Thiele in Loyd P. Hunter, ``Handbook of Semiconductor Electronics,'' Low Frequency Amplifiers, ISBN -07-031305-9, 1970</bibitem> 

<bibitem>[GET]  ``GE Transistor Manual'', General Electric, 1964.</bibitem> 

<bibitem>[RVJ]  R. Victor Jones, ``Basic BJT Amplifier Configurations'', November 7,  2001. at <url>http://people.seas.harvard.edu/~jones/es154/lectures/lecture_3/bjt_amps/bjt_amps.html[http://people.seas.harvard.edu/<allowbreak>~jones/es154/lectures/lecture_3/<allowbreak>bjt_amps/bjt_amps.html]</url></bibitem> 

<bibitem>[TK1]  Tony Kuphaldt,``Lessons in Electric Circuits'', Vol. 1, DC, DC Network Analysis, Thevenin's Theorem, at <url>http://www.openbookproject.net/electricCircuits/DC/DC_10.html#xtocid102679[http://www.openbookproject.net/<allowbreak>electricCircuits/<allowbreak>DC/DC_10.html<allowbreak>#xtocid102679]</url></bibitem> 

<bibitem>[FAR] ``PN2222 Datasheet'',Fairchild Semiconductor Corporation, 2007 at <url>http://www.fairchildsemi.com/ds/PN/PN2222A.pdf[http://www.fairchildsemi.com/ds/PN/PN2222A.pdf]</url></bibitem> 

</thebibliography>



<comment>80 pg, originally</comment>
<comment>common emitter voltage Vc needs inverting</comment>
<comment>ACinput out voltage and current yields Zin Zout, do for cascode also</comment>

</chapter>

<pagebreak>

