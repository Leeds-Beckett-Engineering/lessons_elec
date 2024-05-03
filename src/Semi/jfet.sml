
<chapter>
<chaptertitle>JUNCTION FIELD-EFFECT TRANSISTORS</chaptertitle>

<para>
<bold>*** INCOMPLETE ***</bold>
</para>

<section>
<sectiontitle>Introduction</sectiontitle>

<para>
A <italic>transistor</italic> is a linear semiconductor device that controls current with the application of a lower-power electrical signal.  Transistors may be roughly grouped into two major divisions: <italic>bipolar</italic> and <italic>field-effect</italic>.  In the last chapter we studied bipolar transistors, which utilize a small current to control a large current.  In this chapter, we'll introduce the general concept of the field-effect transistor -- a device utilizing a small <italic>voltage</italic> to control current -- and then focus on one particular type: the <italic>junction</italic> field-effect transistor.  In the next chapter we'll explore another type of field-effect transistor, the <italic>insulated gate</italic> variety.
</para>

<para>
All field-effect transistors are <italic>unipolar</italic> rather than <italic>bipolar</italic> devices.  That is, the main current through them is comprised either of electrons through an N-type semiconductor or holes through a P-type semiconductor.  This becomes more evident when a physical diagram of the device is seen:
</para>

<image>03149.png</image> 

<para>
In a junction field-effect transistor, or JFET, the controlled current passes from source to drain, or from drain to source as the case may be.  The controlling voltage is applied between the gate and source.  Note how the current does not have to cross through a PN junction on its way between source and drain: the path (called a <italic>channel</italic>) is an uninterrupted block of semiconductor material.  In the image just shown, this channel is an N-type semiconductor.  P-type channel JFETs are also manufactured:
</para>

<image>03150.png</image> 

<para>
Generally, N-channel JFETs are more commonly used than P-channel.  The reasons for this have to do with obscure details of semiconductor theory, which I'd rather not discuss in this chapter.  As with bipolar transistors, I believe the best way to introduce field-effect transistor usage is to avoid theory whenever possible and concentrate instead on operational characteristics.  The only practical difference between N- and P-channel JFETs you need to concern yourself with now is biasing of the PN junction formed between the gate material and the channel.
</para>

<para>
With no voltage applied between gate and source, the channel is a wide-open path for electrons to flow.  However, if a voltage is applied between gate and source of such polarity that it reverse-biases the PN junction, the flow between source and drain connections becomes limited, or regulated, just as it was for bipolar transistors with a set amount of base current.  Maximum gate-source voltage "pinches off" all current through source and drain, thus forcing the JFET into cutoff mode.  This behavior is due to the depletion region of the PN junction expanding under the influence of a reverse-bias voltage, eventually occupying the entire width of the channel if the voltage is great enough.  This action may be likened to reducing the flow of a liquid through a flexible hose by squeezing it: with enough force, the hose will be constricted enough to completely block the flow.
</para>

<image>03158.png</image> 

<para>
Note how this operational behavior is exactly opposite of the bipolar junction transistor.  Bipolar transistors are <italic>normally-off</italic> devices: no current through the base, no current through the collector or the emitter.  JFETs, on the other hand, are <italic>normally-on</italic> devices: no voltage applied to the gate allows maximum current through the source and drain.  Also take note that the amount of current allowed through a JFET is determined by a <italic>voltage</italic> signal rather than a <italic>current</italic> signal as with bipolar transistors.  In fact, with the gate-source PN junction reverse-biased, there should be nearly zero current through the gate connection.  For this reason, we classify the JFET as a <italic>voltage-controlled device</italic>, and the bipolar transistor as a <italic>current-controlled device</italic>.
</para>

<para>
If the gate-source PN junction is forward-biased with a small voltage, the JFET channel will "open" a little more to allow greater currents through.  However, the PN junction of a JFET is not built to handle any substantial current itself, and thus it is not recommended to forward-bias the junction under any circumstances.
</para>

<para>
This is a very condensed overview of JFET operation.  In the next section, we'll explore the use of the JFET as a switching device.
</para>

</section>






<section>
<sectiontitle>The transistor as a switch</sectiontitle>

<para>
Like its bipolar cousin, the field-effect transistor may be used as an on/off switch controlling electrical power to a load.  Let's begin our investigation of the JFET as a switch with our familiar switch/lamp circuit:
</para>

<image>03074.png</image> 

<para>
Remembering that the <italic>controlled</italic> current in a JFET flows between source and drain, we substitute the source and drain connections of a JFET for the two ends of the switch in the above circuit:
</para>

<image>03151.png</image> 

<para>
If you haven't noticed by now, the source and drain connections on a JFET look identical on the schematic symbol.  Unlike the bipolar junction transistor where the emitter is clearly distinguished from the collector by the arrowhead, a JFET's source and drain lines both run perpendicular into the bar representing the semiconductor channel.  This is no accident, as the source and drain lines of a JFET are often interchangeable in practice!  In other words, JFETs are usually able to handle channel current in either direction, from source to drain or from drain to source.
</para>

<para>
Now all we need in the circuit is a way to control the JFET's conduction.  With zero applied voltage between gate and source, the JFET's channel will be "open," allowing full current to the lamp.  In order to turn the lamp off, we will need to connect another source of DC voltage between the gate and source connections of the JFET like this:
</para>

<image>03152.png</image> 

<para>
Closing this switch will "pinch off" the JFET's channel, thus forcing it into cutoff and turning the lamp off:
</para>

<image>03153.png</image> 

<para>
Note that there is no current going through the gate.  As a reverse-biased PN junction, it firmly opposes the flow of any electrons through it.  As a voltage-controlled device, the JFET requires negligible input current.  This is an advantageous trait of the JFET over the bipolar transistor: there is virtually zero power required of the controlling signal.
</para>

<para>
Opening the control switch again should disconnect the reverse-biasing DC voltage from the gate, thus allowing the transistor to turn back on.  Ideally, anyway, this is how it works.  In practice this may not work at all:
</para>

<image>03154.png</image> 

<para>
Why is this?  Why doesn't the JFET's channel open up again and allow lamp current through like it did before with no voltage applied between gate and source?  The answer lies in the operation of the reverse-biased gate-source junction.  The depletion region within that junction acts as an insulating barrier separating gate from source.  As such, it possesses a certain amount of <italic>capacitance</italic> capable of storing an electric charge potential.  After this junction has been forcibly reverse-biased by the application of an external voltage, it will tend to hold that reverse-biasing voltage as a stored charge even after the source of that voltage has been disconnected.  What is needed to turn the JFET on again is to bleed off that stored charge between the gate and source through a resistor:
</para>

<image>03155.png</image> 

<para>
This resistor's value is not very important.  The capacitance of the JFET's gate-source junction is very small, and so even a rather high-value bleed resistor creates a fast RC time constant, allowing the transistor to resume conduction with little delay once the switch is opened.
</para>

<index>Pinch-off voltage</index>
<index>Cutoff voltage</index>

<para>
Like the bipolar transistor, it matters little where or what the controlling voltage comes from.  We could use a solar cell, thermocouple, or any other sort of voltage-generating device to supply the voltage controlling the JFET's conduction.  All that is required of a voltage source for JFET switch operation is <italic>sufficient</italic> voltage to achieve pinch-off of the JFET channel.  This level is usually in the realm of a few volts DC, and is termed the <italic>pinch-off</italic> or <italic>cutoff</italic> voltage.  The exact pinch-off voltage for any given JFET is a function of its unique design, and is not a universal figure like 0.7 volts is for a silicon BJT's base-emitter junction voltage.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Field-effect transistors control the current between source and drain connections by a voltage applied between the gate and source.  In a <italic>junction</italic> field-effect transistor (JFET), there is a PN junction between the gate and source which is normally reverse-biased for control of source-drain current.</item>
<item>JFETs are normally-on (normally-saturated) devices.  The application of a reverse-biasing voltage between gate and source causes the depletion region of that junction to expand, thereby "pinching off" the channel between source and drain through which the controlled current travels.</item>
<item>It may be necessary to attach a "bleed-off" resistor between gate and source to discharge the stored charge built up across the junction's natural capacitance when the controlling voltage is removed.  Otherwise, a charge may remain to keep the JFET in cutoff mode even after the voltage source has been disconnected.</item>
</itemize>

</section>





<section>
<sectiontitle>Meter check of a transistor</sectiontitle>

<para>
Testing a JFET with a multimeter might seem to be a relatively easy task, seeing as how it has only one PN junction to test: either measured between gate and source, or between gate and drain.
</para>

<image>03156.png</image> 

<para>

</para>

<bigspace>

<image>03157.png</image> 

<para>
Testing continuity through the drain-source channel is another matter, though.  Remember from the last section how a stored charge across the capacitance of the gate-channel PN junction could hold the JFET in a pinched-off state without any external voltage being applied across it?  This can occur even when you're holding the JFET in your hand to test it!  Consequently, any meter reading of continuity through that channel will be unpredictable, since you don't necessarily know if a charge is being stored by the gate-channel junction.  Of course, if you know beforehand which terminals on the device are the gate, source, and drain, you may connect a jumper wire between gate and source to eliminate any stored charge and then proceed to test source-drain continuity with no problem.  However, if you <italic>don't</italic> know which terminals are which, the unpredictability of the source-drain connection may confuse your determination of terminal identity.
</para>

<index>Anti-static foam</index>
<index>Foam, anti-static</index>

<para>
A good strategy to follow when testing a JFET is to insert the pins of the transistor into anti-static foam (the material used to ship and store static-sensitive electronic components) just prior to testing.  The conductivity of the foam will make a resistive connection between all terminals of the transistor when it is inserted.  This connection will ensure that all residual voltage built up across the gate-channel PN junction will be neutralized, thus "opening up" the channel for an accurate meter test of source-to-drain continuity.
</para>

<para>
Since the JFET channel is a single, uninterrupted piece of semiconductor material, there is usually no difference between the source and drain terminals.  A resistance check from source to drain should yield the same value as a check from drain to source.  This resistance should be relatively low (a few hundred ohms at most) when the gate-source PN junction voltage is zero.  By applying a reverse-bias voltage between gate and source, pinch-off of the channel should be apparent by an increased resistance reading on the meter.
</para>

</section>






<section>
<sectiontitle>Active-mode operation</sectiontitle>

<para>
JFETs, like bipolar transistors, are able to "throttle" current in a mode between cutoff and saturation called the <italic>active</italic> mode.  To better understand JFET operation, let's set up a SPICE simulation similar to the one used to explore basic bipolar transistor function:
</para>

<image>03159.png</image> 

<bigspace>

<literal>
jfet simulation                                                   
vin 0 1 dc 1   
j1 2 1 0 mod1   
vammeter 3 2 dc 0       
v1 3 0 dc       
.model mod1 njf 
.dc v1 0 2 0.05 
.plot dc i(vammeter)    
.end    
</literal>

<para>
Note that the transistor labeled "Q<subscript>1</subscript>" in the schematic is represented in the SPICE netlist as <typewriter>j1</typewriter>.  Although all transistor types are commonly referred to as "Q" devices in circuit schematics -- just as resistors are referred to by "R" designations, and capacitors by "C" -- SPICE needs to be told what type of transistor this is by means of a different letter designation: <typewriter>q</typewriter> for bipolar junction transistors, and <typewriter>j</typewriter> for junction field-effect transistors.
</para>

<bigspace>


<comment>i(vammeter)</comment>    
<comment>|     0.000E+00     5.000E-05     1.000E-04    1.500E-04  2.000E-04</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>1.010E-12 *             .             .             .            .</comment>
<comment>9.750E-06 .  *          .             .             .            .</comment>
<comment>1.900E-05 .    *        .             .             .            .</comment>
<comment>2.775E-05 .       *     .             .             .            .</comment>
<comment>3.600E-05 .         *   .             .             .            .</comment>
<comment>4.375E-05 .           * .             .             .            .</comment>
<comment>5.100E-05 .             *             .             .            .</comment>
<comment>5.775E-05 .             . *           .             .            .</comment>
<comment>6.400E-05 .             .   *         .             .            .</comment>
<comment>6.975E-05 .             .     *       .             .            .</comment>
<comment>7.500E-05 .             .      *      .             .            .</comment>
<comment>7.975E-05 .             .       *     .             .            .</comment>
<comment>8.400E-05 .             .         *   .             .            .</comment>
<comment>8.775E-05 .             .          *  .             .            .</comment>
<comment>9.100E-05 .             .          *  .             .            .</comment>
<comment>9.375E-05 .             .           * .             .            .</comment>
<comment>9.600E-05 .             .            *.             .            .</comment>
<comment>9.775E-05 .             .            *.             .            .</comment>
<comment>9.900E-05 .             .             *             .            .</comment>
<comment>9.975E-05 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<bigspace>
<image>23015.png</image> 
<bigspace>

<para>
Here, the controlling signal is a steady voltage of 1 volt, applied with negative towards the JFET gate and positive toward the JFET source, to reverse-bias the PN junction.  In the first BJT simulation of chapter 4, a constant-current source of 20 <mu>A was used for the controlling signal, but remember that a JFET is a <italic>voltage-controlled</italic> device, not a current-controlled device like the bipolar junction transistor.
</para>

<para>
Like the BJT, the JFET tends to regulate the controlled current at a fixed level above a certain power supply voltage, no matter how high that voltage may climb.  Of course, this current regulation has limits in real life -- no transistor can withstand infinite voltage from a power source -- and with enough drain-to-source voltage the transistor will "break down" and drain current will surge.  But within normal operating limits the JFET keeps the drain current at a steady level independent of power supply voltage.  To verify this, we'll run another computer simulation, this time sweeping the power supply voltage (V<subscript>1</subscript>) all the way to 50 volts:
</para>

<bigspace>

<literal>
jfet simulation                                                                 
vin 0 1 dc 1    
j1 2 1 0 mod1   
vammeter 3 2 dc 0       
v1 3 0 dc       
.model mod1 njf 
.dc v1 0 50 2   
.plot dc i(vammeter)    
.end    
</literal>

<bigspace>


<comment>i(vammeter)</comment>     
<comment>|     0.000E+00     5.000E-05     1.000E-04     1.500E-04  2.000E-04</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>1.010E-12 *             .             .             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>1.000E-04 .             .             *             .            .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<bigspace>
<image>23016.png</image> 
<bigspace>

<para>
Sure enough, the drain current remains steady at a value of 100 <mu>A (1.000E-04 amps) no matter how high the power supply voltage is adjusted.
</para>

<para>
Because the input voltage has control over the constriction of the JFET's channel, it makes sense that changing this voltage should be the only action capable of altering the current regulation point for the JFET, just like changing the base current on a BJT is the only action capable of altering collector current regulation.  Let's decrease the input voltage from 1 volt to 0.5 volts and see what happens:
</para>

<bigspace>

<literal>
jfet simulation                                                                 
vin 0 1 dc 0.5  
j1 2 1 0 mod1   
vammeter 3 2 dc 0       
v1 3 0 dc       
.model mod1 njf 
.dc v1 0 50 2   
.plot dc i(vammeter)    
.end    
</literal>

<bigspace>


<comment>i(vammeter)</comment>     
<comment>|     0.000E+00    1.000E-04     2.000E-04     3.000E-04  4.000E-04</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>5.100E-13 *             .             .             .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>2.250E-04 .             .             .   *         .            .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<bigspace>
<image>23017.png</image> 
<bigspace>
<para>
As expected, the drain current is greater now than it was in the previous simulation.  With less reverse-bias voltage impressed across the gate-source junction, the depletion region is not as wide as it was before, thus "opening" the channel for charge carriers and increasing the drain current figure.
</para>

<para>
Please note, however, the actual value of this new current figure: 225 <mu>A (2.250E-04 amps).  The last simulation showed a drain current of 100 <mu>A, and that was with a gate-source voltage of 1 volt.  Now that we've reduced the controlling voltage by a factor of 2 (from 1 volt down to 0.5 volts), the drain current increased, but not by the same 2:1 proportion!  Let's reduce our gate-source voltage once more by another factor of 2 (down to 0.25 volts) and see what happens:
</para>

<bigspace>

<literal>
jfet simulation                                                                 
vin 0 1 dc 0.25 
j1 2 1 0 mod1   
vammeter 3 2 dc 0       
v1 3 0 dc       
.model mod1 njf 
.dc v1 0 50 2   
.plot dc i(vammeter)    
.end    
</literal>

<bigspace>


<comment>i(vammeter)</comment>     
<comment>|      0.000E+00     1.000E-04     2.000E-04     3.000E-04  4.000E-04</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment> 2.600E-13 *             .             .             .           .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment> 3.063E-04 .             .             .             .*          .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>


<bigspace>
<image>23018.png</image> 
<bigspace>

<para>
With the gate-source voltage set to 0.25 volts, one-half what it was before, the drain current is 306.3 <mu>A.  Although this is still an increase over the 225 <mu>A from the prior simulation, it isn't <italic>proportional</italic> to the change of the controlling voltage.
</para>

<para>
To obtain a better understanding of what is going on here, we should run a different kind of simulation: one that keeps the power supply voltage constant and instead varies the controlling (voltage) signal.  When this kind of simulation was run on a BJT, the result was a straight-line graph, showing how the input current / output current relationship of a BJT is linear.  Let's see what kind of relationship a JFET exhibits:
</para>

<bigspace>

<literal>
jfet simulation                                                                 
vin 0 1 dc      
j1 2 1 0 mod1   
vammeter 3 2 dc 0       
v1 3 0 dc 25    
.model mod1 njf 
.dc vin 0 2 0.1 
.plot dc i(vammeter)    
.end    
</literal>

<bigspace>


<comment>vin     i(vammeter) 0.000E+00   2.000E-04     4.000E-04   6.000E-04</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment> 0.000E+00  4.000E-04 .             .             *             .</comment> 
<comment> 1.000E-01  3.610E-04 .             .          *  .             .</comment> 
<comment> 2.000E-01  3.240E-04 .             .        *    .             .</comment> 
<comment> 3.000E-01  2.890E-04 .             .     *       .             .</comment> 
<comment> 4.000E-01  2.560E-04 .             .   *         .             .</comment> 
<comment> 5.000E-01  2.250E-04 .             . *           .             .</comment>  
<comment> 6.000E-01  1.960E-04 .             *             .             .</comment> 
<comment> 7.000E-01  1.690E-04 .           * .             .             .</comment>
<comment> 8.000E-01  1.440E-04 .         *   .             .             .</comment> 
<comment> 9.000E-01  1.210E-04 .       *     .             .             .</comment> 
<comment> 1.000E+00  1.000E-04 .      *      .             .             .</comment>
<comment> 1.100E+00  8.100E-05 .     *       .             .             .</comment>
<comment> 1.200E+00  6.400E-05 .   *         .             .             .</comment>
<comment> 1.300E+00  4.900E-05 .  *          .             .             .</comment>
<comment> 1.400E+00  3.600E-05 .  *          .             .             .</comment>
<comment> 1.500E+00  2.500E-05 . *           .             .             .</comment>
<comment> 1.600E+00  1.600E-05 .*            .             .             .</comment> 
<comment> 1.700E+00  9.000E-06 .*            .             .             .</comment> 
<comment> 1.800E+00  4.000E-06 *             .             .             .</comment> 
<comment> 1.900E+00  1.000E-06 *             .             .             .</comment> 
<comment> 2.000E+00  2.701E-11 *             .             .             .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<bigspace>
<image>23019.png</image> 
<bigspace>

<para>
This simulation directly reveals an important characteristic of the junction field-effect transistor: the control effect of gate voltage over drain current is <italic>nonlinear</italic>.  Notice how the drain current does not decrease linearly as the gate-source voltage is increased.  With the bipolar junction transistor, collector current was directly proportional to base current: output signal proportionately followed input signal.  Not so with the JFET!  The controlling signal (gate-source voltage) has less and less effect over the drain current as it approaches cutoff.  In this simulation, most of the controlling action (75 percent of drain current decrease -- from 400 <mu>A to 100 <mu>A) takes place within the first volt of gate-source voltage (from 0 to 1 volt), while the remaining 25 percent of drain current reduction takes another whole volt worth of input signal.  Cutoff occurs at 2 volts input.
</para>

<para>
Linearity is generally important for a transistor because it allows it to faithfully amplify a waveform without distorting it.  If a transistor is nonlinear in its input/output amplification, the shape of the input waveform will become corrupted in some way, leading to the production of harmonics in the output signal.  The only time linearity is <italic>not</italic> important in a transistor circuit is when its being operated at the extreme limits of cutoff and saturation (off and on, respectively, like a switch).
</para>

<index>Curve, characteristic</index>
<index>Characteristic curves, transistor</index>

<para>
A JFET's characteristic curves display the same current-regulating behavior as for a BJT, and the nonlinearity between gate-to-source voltage and drain current is evident in the disproportionate vertical spacings between the curves:
</para>

<image>03160.png</image> 

<para>
To better comprehend the current-regulating behavior of the JFET, it might be helpful to draw a model made up of simpler, more common components, just as we did for the BJT:
</para>

<image>03161.png</image> 

<index>Bilateral</index>

<para>
In the case of the JFET, it is the <italic>voltage</italic> across the reverse-biased gate-source diode which sets the current regulation point for the pair of constant-current diodes.  A pair of opposing constant-current diodes is included in the model to facilitate current in either direction between source and drain, a trait made possible by the unipolar nature of the channel.  With no PN junctions for the source-drain current to traverse, there is no polarity sensitivity in the controlled current.  For this reason, JFETs are often referred to as <italic>bilateral</italic> devices.
</para>

<para>
A contrast of the JFET's characteristic curves against the curves for a bipolar transistor reveals a notable difference: the linear (straight) portion of each curve's non-horizontal area is surprisingly long compared to the respective portions of a BJT's characteristic curves: 
</para>

<image>03162.png</image> 

<para>

</para>

<bigspace>

<image>03163.png</image> 

<index>Ohmic region, JFET</index>

<para>
A JFET transistor operated in the <italic>triode region</italic> tends to act very much like a plain resistor as measured from drain to source.  Like all simple resistances, its current/voltage graph is a straight line.  For this reason, the triode region (non-horizontal) portion of a JFET's characteristic curve is sometimes referred to as the <italic>ohmic region</italic>.  In this mode of operation where there isn't enough drain-to-source voltage to bring drain current up to the regulated point, the drain current is directly proportional to the drain-to-source voltage.  In a carefully designed circuit, this phenomenon can be used to an advantage.  Operated in this region of the curve, the JFET acts like a voltage-controlled <italic>resistance</italic> rather than a voltage-controlled <italic>current regulator</italic>, and the appropriate model for the transistor is different:
</para>

<image>03164.png</image> 

<index>Rheostat</index>

<para>
Here and here alone the rheostat (variable resistor) model of a transistor is accurate.  It must be remembered, however, that this model of the transistor holds true only for a narrow range of its operation: when it is extremely saturated (far less voltage applied between drain and source than what is needed to achieve full regulated current through the drain).  The amount of resistance (measured in ohms) between drain and source in this mode is controlled by how much reverse-bias voltage is applied between gate and source.  The less gate-to-source voltage, the less resistance (steeper line on graph).
</para>

<index>Transconductance</index>
<index>Unit, siemens</index>
<index>Unit, mho</index>
<index>Mho</index>
<index>Siemens</index>

<para>
Because JFETs are <italic>voltage</italic>-controlled current regulators (at least when they're allowed to operate in their active), their inherent amplification factor cannot be expressed as a unitless ratio as with BJTs.  In other words, there is no <beta> ratio for a JFET.  This is true for all voltage-controlled active devices, including other types of field-effect transistors and even electron tubes.  There is, however, an expression of controlled (drain) current to controlling (gate-source) voltage, and it is called <italic>transconductance</italic>.  Its unit is Siemens, the same unit for conductance (formerly known as the <italic>mho</italic>).  
</para>

<para>
Why this choice of units?  Because the equation takes on the general form of current (output signal) divided by voltage (input signal).  
</para>

<image>13024.png</image> 

<para>
Unfortunately, the transconductance value for any JFET is not a stable quantity: it varies significantly with the amount of gate-to-source control voltage applied to the transistor.  As we saw in the SPICE simulations, the drain current does not change proportionally with changes in gate-source voltage.  To calculate drain current for any given gate-source voltage, there is another equation that may be used.  It is obviously nonlinear upon inspection (note the power of 2), reflecting the nonlinear behavior we've already experienced in simulation:
</para>

<image>13023.png</image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item>In their active modes, JFETs regulate drain current according to the amount of reverse-bias voltage applied between gate and source, much like a BJT regulates collector current according to base current.  The mathematical ratio between drain current (output) and gate-to-source voltage (input) is called <italic>transconductance</italic>, and it is measured in units of Siemens.</item>
<item>The relationship between gate-source (control) voltage and drain (controlled) current is nonlinear: as gate-source voltage is decreased, drain current increases exponentially.  That is to say, the transconductance of a JFET is not constant over its range of operation.</item>
<item>In their triode region, JFETs regulate drain-to-source <italic>resistance</italic> according to the amount of reverse-bias voltage applied between gate and source.  In other words, they act like voltage-controlled resistances.</item>
</itemize>

</section>






<section>
<sectiontitle>The common-source amplifier -- PENDING</sectiontitle>

<para>
<bold>*** PENDING ***</bold>
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item></item>
<item></item>
<item></item>
</itemize>

</section>






<section>
<sectiontitle>The common-drain amplifier -- PENDING</sectiontitle>

<para>
<bold>*** PENDING ***</bold>
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item></item>
<item></item>
<item></item>
</itemize>

</section>






<section>
<sectiontitle>The common-gate amplifier -- PENDING</sectiontitle>

<para>
<bold>*** PENDING ***</bold>
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item></item>
<item></item>
<item></item>
</itemize>

</section>







<section>
<sectiontitle>Biasing techniques -- PENDING</sectiontitle>

<para>
<bold>*** PENDING ***</bold>
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item></item>
<item></item>
<item></item>
</itemize>

</section>







<section>
<sectiontitle>Transistor ratings and packages -- PENDING</sectiontitle>

<para>
<bold>*** PENDING ***</bold>
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item></item>
<item></item>
<item></item>
</itemize>

</section>





<section>
<sectiontitle>JFET quirks -- PENDING</sectiontitle>

<para>
<bold>*** PENDING ***</bold>
</para>

<comment>Unpredictable with floating gate</comment>

<itemize>
<item><bold>REVIEW:</bold></item>
<item></item>
<item></item>
<item></item>
</itemize>

</section>

</chapter>

<pagebreak>

