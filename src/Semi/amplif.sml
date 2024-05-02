
<chapter>
<chaptertitle>AMPLIFIERS AND ACTIVE DEVICES</chaptertitle>

<section>
<sectiontitle>From electric to electronic</sectiontitle>

<para>
This third volume of the book series <italic>Lessons In Electric Circuits</italic> makes a departure from the former two in that the transition between <italic>electric</italic> circuits and <italic>electronic</italic> circuits is formally crossed.  Electric circuits are connections of conductive wires and other devices whereby the uniform flow of electrons occurs.  Electronic circuits add a new dimension to electric circuits in that some means of <italic>control</italic> is exerted over the flow of electrons by another electrical signal, either a voltage or a current.
</para>
 
<para>
In and of itself, the control of electron flow is nothing new to the student of electric circuits.  Switches control the flow of electrons, as do potentiometers, especially when connected as variable resistors (rheostats).  Neither the switch nor the potentiometer should be new to your experience by this point in your study.  The threshold marking the transition from electric to electronic, then, is defined by <italic>how</italic> the flow of electrons is controlled rather than whether or not any form of control exists in a circuit.  Switches and rheostats control the flow of electrons according to the positioning of a mechanical device, which is actuated by some physical force external to the circuit.  In electronics, however, we are dealing with special devices able to control the flow of electrons according to another flow of electrons, or by the application of a static voltage.  In other words, in an electronic circuit, <italic>electricity is able to control electricity</italic>.
</para>
 
<para>
The historic precursor to the modern electronics era was invented by Thomas Edison in 1880 while developing the electric incandescent lamp. Edison found that a small current passed from the heated lamp filament to a metal plate mounted inside the vacuum envelop.  (Figure<ref>03375.png below</ref> (a))  Today this is known as the ``Edison effect''. Note that the battery is only necessary to heat the filament. Electrons would still flow if a non-electrical heat source was used.
</para>


<image>03375.png<caption>(a) Edison effect, (b) Fleming valve or vacuum diode, (c) DeForest audion triode vacuum tube amplifier.</caption></image>

<para>
By 1904 Marconi Wireless Company adviser John Flemming found that an externally applied current (plate battery) only passed in one direction from filament to plate (Figure<ref>03375.png above</ref> (b)), but not the reverse direction (not shown).
<comment>Split for multiple references cannot have two without cr at end</comment>
This invention was the vacuum diode, used to convert alternating currents to DC. The addition of a third  electrode by Lee DeForest (Figure<ref>03375.png above</ref> (c))  allowed a small signal to control  the larger electron flow from filament to plate. 
</para>

<para>
Historically, the era of electronics began with the invention of the <italic>Audion tube</italic>, a device controlling the flow of an electron stream through a vacuum by the application of a small voltage between two metal structures within the tube.  A more detailed summary of so-called <italic>electron tube</italic> or <italic>vacuum tube</italic> technology is available in the last chapter of this volume for those who are interested.
</para>
 
<index>Solid-state</index>

<para>
Electronics technology experienced a revolution in 1948 with the invention of the <italic>transistor</italic>.  This tiny device achieved approximately the same effect as the Audion tube, but in a vastly smaller amount of space and with less material.  Transistors control the flow of electrons through solid <italic>semiconductor</italic> substances rather than through a vacuum, and so transistor technology is often referred to as <italic>solid-state</italic> electronics.
</para>

</section>




<section>
<sectiontitle>Active versus passive devices</sectiontitle>

<index>Active device</index>
<index>Passive device</index>
<index>Saturable reactor</index>

<para>
An <italic>active</italic> device is any type of circuit component with the ability to electrically control electron flow (electricity controlling electricity).  In order for a circuit to be properly called <italic>electronic</italic>, it must contain at least one active device.  Components incapable of controlling current by means of another electrical signal are called <italic>passive</italic> devices.  Resistors, capacitors, inductors, transformers, and even diodes are all considered passive devices.  Active devices include, but are not limited to, vacuum tubes, transistors, silicon-controlled rectifiers (SCRs), and TRIACs.  A case might be made for the saturable reactor to be defined as an active device, since it is able to control an AC current with a DC current, but I've never heard it referred to as such.  The operation of each of these active devices will be explored in later chapters of this volume.
</para>
 
<para>
All active devices control the flow of electrons through them.  Some active devices allow a voltage to control this current while other active devices allow another current to do the job.  Devices utilizing a static voltage as the controlling signal are, not surprisingly, called <italic>voltage-controlled</italic> devices.  Devices working on the principle of one current controlling another current are known as <italic>current-controlled</italic> devices.  For the record, vacuum tubes are voltage-controlled devices while transistors are made as either voltage-controlled or current controlled types.  The first type of transistor successfully demonstrated was a current-controlled device.
</para>

</section>





<section>
<sectiontitle>Amplifiers</sectiontitle>

<para>
The practical benefit of active devices is their <italic>amplifying</italic> ability.  Whether the device in question be voltage-controlled or current-controlled, the amount of power required of the controlling signal is typically far less than the amount of power available in the controlled current.  In other words, an active device doesn't just allow electricity to control electricity; it allows a <italic>small</italic> amount of electricity to control a <italic>large</italic> amount of electricity.  
</para>

<index>Amplification, definition</index>

<para>
Because of this disparity between <italic>controlling</italic> and <italic>controlled</italic> powers, active devices may be employed to govern a large amount of power (controlled) by the application of a small amount of power (controlling).  This behavior is known as <italic>amplification</italic>.
</para>

<para>
It is a fundamental rule of physics that energy can neither be created nor destroyed.  Stated formally, this rule is known as the Law of Conservation of Energy, and no exceptions to it have been discovered to date.  If this Law is true -- and an overwhelming mass of experimental data suggests that it is -- then it is impossible to build a device capable of taking a small amount of energy and magically transforming it into a large amount of energy.  All machines, electric and electronic circuits included, have an upper efficiency limit of 100 percent.  At best, power out equals power in as in Figure<ref>03165.png below</ref>.
</para>
 
<image>03165.png<caption>The power output of a machine can approach, but never exceed,  the power input for 100% efficiency as an upper limit.</caption></image> 

<para>
Usually, machines fail even to meet this limit, losing some of their input energy in the form of heat which is radiated into surrounding space and therefore not part of the output energy stream.  (Figure<ref>03166.png below</ref>)
</para>

<image>03166.png<caption>A realistic machine most often loses some of its input energy as heat in transforming it into the output energy stream.</caption></image> 

<index>Perpetual motion machine</index>

<para>
Many people have attempted, without success, to design and build machines that output more power than they take in.  Not only would such a <italic>perpetual motion</italic> machine prove that the Law of Conservation of Energy was not a Law after all, but it would usher in a technological revolution such as the world has never seen, for it could power itself in a circular loop and generate excess power for ``free''. (Figure<ref>03167.png below</ref>)
</para>
 
<image>03167.png<caption>Hypothetical ``perpetual motion machine'' powers itself?</caption></image> 

<index>Over-unity machine</index>

<para>
Despite much effort and many unscrupulous claims of ``free energy'' or <italic>over-unity</italic> machines, not one has ever passed the simple test of powering itself with its own energy output and generating energy to spare.
</para>
 
<para>
There does exist, however, a class of machines known as <italic>amplifiers</italic>, which are able to take in small-power signals and output signals of much greater power.  The key to understanding how amplifiers can exist without violating the Law of Conservation of Energy lies in the behavior of active devices.

</para>
 
<para>
 
Because active devices have the ability to <italic>control</italic> a large amount of electrical power with a small amount of electrical power, they may be arranged in circuit so as to duplicate the form of the input signal power from a larger amount of power supplied by an external power source.  The result is a device that appears to magically magnify the power of a small electrical signal (usually an AC voltage waveform) into an identically-shaped waveform of larger magnitude.  The Law of Conservation of Energy is not violated because the additional power is supplied by an external source, usually a DC battery or equivalent.  The amplifier neither creates nor destroys energy, but merely reshapes it into the waveform desired as shown in  Figure<ref>03168.png below</ref>.
</para>

<image>03168.png<caption>While an amplifier can scale a small input signal to large output, its energy source is an external power supply.</caption></image> 

<para>
In other words, the current-controlling behavior of active devices is employed to <italic>shape</italic> DC power from the external power source into the same waveform as the input signal, producing an output signal of like shape but different (greater) power magnitude.  The transistor or other active device within an amplifier merely forms a larger <italic>copy</italic> of the input signal waveform out of the ``raw'' DC power provided by a battery or other power source.
</para>
 
<para>
Amplifiers, like all machines, are limited in efficiency to a maximum of 100 percent.  Usually, electronic amplifiers are far less efficient than that, dissipating considerable amounts of energy in the form of waste heat.  Because the efficiency of an amplifier is always 100 percent or less, one can never be made to function as a ``perpetual motion'' device.
</para>
 
<para>
The requirement of an external source of power is common to all types of amplifiers, electrical and non-electrical.  A common example of a non-electrical amplification system would be power steering in an automobile, amplifying the power of the driver's arms in turning the steering wheel to move the front wheels of the car.  The source of power necessary for the amplification comes from the engine.  The active device controlling the driver's ``input signal'' is a hydraulic valve shuttling fluid power from a pump attached to the engine to a hydraulic piston assisting wheel motion.  If the engine stops running, the amplification system fails to amplify the driver's arm power and the car becomes very difficult to turn.
</para>

</section>






<section>
<sectiontitle>Amplifier gain</sectiontitle>

<index>Gain</index>

<para>
Because amplifiers have the ability to increase the magnitude of an input signal, it is useful to be able to rate an amplifier's amplifying ability in terms of an output/input ratio.  The technical term for an amplifier's output/input magnitude ratio is <italic>gain</italic>.  As a ratio of equal units (power out / power in, voltage out / voltage in, or current out / current in), gain is naturally a unitless measurement.  Mathematically, gain is symbolized by the capital letter ``A''.
</para>
 
<para>
For example, if an amplifier takes in an AC voltage signal measuring 2 volts RMS and outputs an AC voltage of 30 volts RMS, it has an AC voltage gain of 30 divided by 2, or 15:
</para>
 
<image>13025.png</image> 
 
<para>
Correspondingly, if we know the gain of an amplifier and the magnitude of the input signal, we can calculate the magnitude of the output.  For example, if an amplifier with an AC current gain of 3.5 is given an AC input signal of 28 mA RMS, the output will be 3.5 times 28 mA, or 98 mA:
</para>
 
<image>13026.png</image> 

<index>Gain, AC versus DC</index>

<para>
In the last two examples I specifically identified the gains and signal magnitudes in terms of ``AC.''  This was intentional, and illustrates an important concept: electronic amplifiers often respond differently to AC and DC input signals, and may amplify them to different extents.  Another way of saying this is that amplifiers often amplify <italic>changes</italic> or <italic>variations</italic> in input signal magnitude (AC) at a different ratio than <italic>steady</italic> input signal magnitudes (DC).  The specific reasons for this are too complex to explain at this time, but the fact of the matter is worth mentioning.  If gain calculations are to be carried out, it must first be understood what type of signals and gains are being dealt with, AC or DC.
</para>
 
<para>
Electrical amplifier gains may be expressed in terms of voltage, current, and/or power, in both AC and DC.  A summary of gain definitions is as follows.  The triangle-shaped ``delta'' symbol (<DELTA>) represents <italic>change</italic> in mathematics, so ``<DELTA>V<subscript>output</subscript> / <DELTA>V<subscript>input</subscript>'' means ``change in output voltage divided by change in input voltage,'' or more simply, ``AC output voltage divided by AC input voltage'':
</para>
 
<image>13027.png</image> 

<para>
If multiple amplifiers are staged, their respective gains form an overall gain equal to the product (multiplication) of the individual gains.  (Figure<ref>03169.png below</ref>) 
If a 1 V signal were applied to the input  of the gain of 3 amplifier in Figure<ref>03169.png below</ref> a 3 V signal out of the first amplifier would be further amplified by a gain of 5 at the second stage yielding 15 V at the final output. 
</para>
 
<image>03169.png<caption>The gain of a chain of cascaded amplifiers is the product of the individual gains.</caption></image> 

</section>






<section>
<sectiontitle>Decibels</sectiontitle>

<index>Bel</index>
<index>Unit, bel</index>

<para>
In its simplest form, an amplifier's <italic>gain</italic> is a ratio of output over input.  Like all ratios, this form of gain is unitless.  However, there is an actual unit intended to represent gain, and it is called the <italic>bel</italic>.
</para>
 
<para>
As a unit, the bel was actually devised as a convenient way to represent power <italic>loss</italic> in telephone system wiring rather than <italic>gain</italic> in amplifiers.  The unit's name is derived from Alexander Graham Bell, the famous Scottish inventor whose work was instrumental in developing telephone systems.  Originally, the bel represented the amount of signal power loss due to resistance over a standard length of electrical cable.  Now, it is defined in terms of the common (base 10) logarithm of a power ratio (output power divided by input power):
</para>
 
<image>13028.png</image> 

<para>
Because the bel is a logarithmic unit, it is nonlinear.  To give you an idea of how this works, consider the following table of figures, comparing power losses and gains in bels versus simple ratios:
</para>
 
<image>13029.png</image> 
 
<index>Decibel</index>
<index>dB</index>

<para>
It was later decided that the bel was too large of a unit to be used directly, and so it became customary to apply the metric prefix <italic>deci</italic> (meaning 1/10) to it, making it <italic>deci</italic>bels, or dB.  Now, the expression ``dB'' is so common that many people do not realize it is a combination of ``deci-'' and ``-bel,'' or that there even is such a unit as the ``bel.''  To put this into perspective, here is another table contrasting power gain/loss ratios against decibels:
</para>
 
<image>13030.png</image> 

<index>Richter scale</index>

<para>
As a logarithmic unit, this mode of power gain expression covers a wide range of ratios with a minimal span in figures.  It is reasonable to ask, ``why did anyone feel the need to invent a <italic>logarithmic</italic> unit for electrical signal power loss in a telephone system?''  The answer is related to the dynamics of human hearing, the perceptive intensity of which is logarithmic in nature.  
</para>

<para>
Human hearing is highly nonlinear: in order to double the perceived intensity of a sound, the actual sound power must be multiplied by a factor of ten.  Relating telephone signal power loss in terms of the logarithmic ``bel'' scale makes perfect sense in this context: a power loss of 1 bel translates to a perceived sound loss of 50 percent, or 1/2.  A power gain of 1 bel translates to a doubling in the perceived intensity of the sound.  
</para>

<para>
An almost perfect analogy to the bel scale is the Richter scale used to describe earthquake intensity: a 6.0 Richter earthquake is 10 times more powerful than a 5.0 Richter earthquake; a 7.0 Richter earthquake 100 times more powerful than a 5.0 Richter earthquake; a 4.0 Richter earthquake is 1/10 as powerful as a 5.0 Richter earthquake, and so on.  The measurement scale for chemical pH is likewise logarithmic, a difference of 1 on the scale is equivalent to a tenfold difference in hydrogen ion concentration of a chemical solution.  An advantage of using a logarithmic measurement scale is the tremendous range of expression afforded by a relatively small span of numerical values, and it is this advantage which secures the use of Richter numbers for earthquakes and pH for hydrogen ion activity.
</para>
 
<para>
Another reason for the adoption of the bel as a unit for gain is for simple expression of system gains and losses.  Consider the last system example (Figure<ref>03169.png above</ref>) where two amplifiers were connected tandem to amplify a signal.  The respective gain for each amplifier was expressed as a ratio, and the overall gain for the system was the product (multiplication) of those two ratios:
</para>
 

<bigspace>
<literal>

<sp>          Overall gain = (3)(5) = 15

</literal>
<bigspace>


<para>

If these figures represented <italic>power</italic> gains, we could directly apply the unit of bels to the task of representing the gain of each amplifier, and of the system altogether.  (Figure<ref>03170.png below</ref>)
</para>

<image>03170.png<caption>Power gain in bels is additive: 0.477 B + 0.699 B = 1.176 B.</caption></image> 
 
<para>
Close inspection of these gain figures in the unit of ``bel'' yields a discovery: they're additive.  Ratio gain figures are multiplicative for staged amplifiers, but gains expressed in bels <italic>add</italic> rather than <italic>multiply</italic> to equal the overall system gain.  The first amplifier with its power gain of 0.477 B adds to the second amplifier's power gain of 0.699 B to make a system with an overall power gain of 1.176 B.
</para>
 
<para>
Recalculating for decibels rather than bels, we notice the same phenomenon. (Figure<ref>03171.png below</ref>)
</para>
 
<image>03171.png<caption>Gain of amplifier stages in decibels is additive: 4.77 dB + 6.99 dB = 11.76 dB.</caption></image> 

<index>Logarithm</index>
<index>Antilogarithm</index>
<index>Slide rule</index>
 
<para>
To those already familiar with the arithmetic properties of logarithms, this is no surprise.  It is an elementary rule of algebra that the antilogarithm of the sum of two numbers' logarithm values equals the product of the two original numbers.  In other words, if we take two numbers and determine the logarithm of each, then add those two logarithm figures together, then determine the ``antilogarithm'' of that sum (elevate the base number of the logarithm -- in this case, 10 -- to the power of that sum), the result will be the same as if we had simply multiplied the two original numbers together.  This algebraic rule forms the heart of a device called a <italic>slide rule</italic>, an analog computer which could, among other things, determine the products and quotients of numbers by addition (adding together physical lengths marked on sliding wood, metal, or plastic scales).  Given a table of logarithm figures, the same mathematical trick could be used to perform otherwise complex multiplications and divisions by only having to do additions and subtractions, respectively.  With the advent of high-speed, handheld, digital calculator devices, this elegant calculation technique virtually disappeared from popular use.  However, it is still important to understand when working with measurement scales that are logarithmic in nature, such as the bel (decibel) and Richter scales.
</para>
 
<para>
When converting a power gain from units of bels or decibels to a unitless ratio, the mathematical inverse function of common logarithms is used: powers of 10, or the <italic>antilog</italic>.
</para>
 
<image>13042.png</image> 

<para>
Converting decibels into unitless ratios for power gain is much the same, only a division factor of 10 is included in the exponent term:
</para>

<image>13043.png</image> 
 
<bold>
Example:
</bold>
Power into an amplifier is 1 Watt, the power out is 10 Watts. Find the power gain in dB.
<quotation>
A<subscript>P(dB)</subscript> = 10 log<subscript>10</subscript>(P<subscript>O</subscript> /  P<subscript>I</subscript>) = 10 log<subscript>10</subscript> (10 /1) = 10 log<subscript>10</subscript> (10) = 10 (1) = 10 dB
</quotation>
<bold>
Example:
</bold>
Find the power gain  ratio A<subscript>P(ratio)</subscript> =  (P<subscript>O</subscript> /  P<subscript>I</subscript>) for a 20 dB Power gain.

<quotation>
A<subscript>P(dB)</subscript> = 20 = 10 log<subscript>10</subscript>  A<subscript>P(ratio)</subscript>
</quotation>

<quotation>
20/10 = log<subscript>10</subscript> A<subscript>P(ratio)</subscript>
</quotation> 

<quotation>
10<superscript>20/10</superscript> = <math>10<superscript2>log<subscript2>10</subscript2> (A<subscript2>P(ratio)</subscript2>)</superscript2></math>
</quotation>

<quotation>
100 = A<subscript>P(ratio)</subscript> = (P<subscript>O</subscript> / P<subscript>I</subscript>)
</quotation>


<index>Joule's Law</index>

<para>
Because the bel is fundamentally a unit of <italic>power</italic> gain or loss in a system, voltage or current gains and losses don't convert to bels or dB in quite the same way.  When using bels or decibels to express a gain other than power, be it voltage or current, we must perform the calculation in terms of how much power gain there would be for that amount of voltage or current gain.  For a constant load impedance, a voltage or current gain of 2 equates to a power gain of 4 (2<superscript>2</superscript>); a voltage or current gain of 3 equates to a power gain of 9 (3<superscript>2</superscript>).  If we multiply either voltage or current by a given factor, then the power gain incurred by that multiplication will be the square of that factor.  This relates back to the forms of Joule's Law where power was calculated from either voltage or current, and resistance:
</para>
 
<image>13031.png</image> 

<para>
Thus, when translating a voltage or current gain <italic>ratio</italic> into a respective gain in terms of the bel unit, we must include this exponent in the equation(s):
</para>

<image>13032.png</image> 

<para>
The same exponent requirement holds true when expressing voltage or current gains in terms of decibels:
</para>
 
<image>13033.png</image> 

<para>
However, thanks to another interesting property of logarithms, we can simplify these equations to eliminate the exponent by including the ``2'' as a <italic>multiplying factor</italic> for the logarithm function.  In other words, instead of taking the logarithm of the <italic>square</italic> of the voltage or current gain, we just multiply the voltage or current gain's logarithm figure by 2 and the final result in bels or decibels will be the same:
</para>
 
<image>13034.png</image> 

<para>
The process of converting voltage or current gains from bels or decibels into unitless ratios is much the same as it is for power gains:
</para>
 
<image>13044.png</image> 

<para>
Here are the equations used for converting voltage or current gains in decibels into unitless ratios:
</para>
 
<image>13045.png</image> 

<index>Neper</index>
<index>Unit, neper</index>

<para>
While the bel is a unit naturally scaled for power, another logarithmic unit has been invented to directly express voltage or current gains/losses, and it is based on the <italic>natural</italic> logarithm rather than the <italic>common</italic> logarithm as bels and decibels are.  Called the <italic>neper</italic>, its unit symbol is ``N<subscript>p</subscript>; though, lower-case ``n'' may be encountered.
</para>
 
<image>13035.png</image> 

<index>Decineper</index>
<index>Unit, decineper</index>
<index>dn</index>

<para>
For better or for worse, neither the neper nor its attenuated cousin, the <italic>decineper</italic>, is popularly used as a unit in American engineering applications.
</para>


<para>
<bold>
Example:
</bold>
The voltage into a 600 <OMEGA> audio line  amplifier is 10 mV, the voltage across a 600 <OMEGA> load  is 1 V. Find the power gain in dB.
</para>

<quotation>
A<subscript>(dB)</subscript> = 20 log<subscript>10</subscript>(V<subscript>O</subscript> /  V<subscript>I</subscript>) = 20 log<subscript>10</subscript> (1 /0.01) = 20 log<subscript>10</subscript> (100) = 20 (2) = 40 dB
</quotation>

<para>
<bold>
Example:
</bold>

Find the voltage gain  ratio A<subscript>V(ratio)</subscript> =  (V<subscript>O</subscript> /  V<subscript>I</subscript>) for a 20 dB gain amplifier having a 50 <OMEGA> input and out impedance.
</para>
<quotation>
A<subscript>V(dB)</subscript> = 20 log<subscript>10</subscript>  A<subscript>V(ratio)</subscript>
</quotation>

<quotation>
 20 = 20 log<subscript>10</subscript>  A<subscript>V(ratio)</subscript>
</quotation>

<quotation>
20/20 = log<subscript>10</subscript> A<subscript>P(ratio)</subscript>
</quotation> 

<quotation>
10<superscript>20/20</superscript> = <math>10<superscript2>log<subscript2>10</subscript2> (A<subscript2>V(ratio)</subscript2>)</superscript2></math>
</quotation>

<quotation>
10 = A<subscript>V(ratio)</subscript> = (V<subscript>O</subscript> / V<subscript>I</subscript>)
</quotation>







<itemize>
<item><bold>REVIEW:</bold></item>
<item>Gains and losses may be expressed in terms of a unitless ratio, or in the unit of bels (B) or decibels (dB).  A decibel is literally a <italic>deci</italic>-bel: one-tenth of a bel.</item>
<item>The bel is fundamentally a unit for expressing <italic>power</italic> gain or loss.  To convert a power ratio to either bels or decibels, use one of these equations:</item>
<item><image>13036.png</image></item>
<item>When using the unit of the bel or decibel to express a <italic>voltage</italic> or <italic>current</italic> ratio, it must be cast in terms of an equivalent <italic>power</italic> ratio.  Practically, this means the use of different equations, with a multiplication factor of 2 for the logarithm value corresponding to an exponent of 2 for the voltage or current gain ratio:</item>
<item><image>13037.png</image></item>
<item>To convert a decibel gain into a unitless ratio gain, use one of these equations:</item>
<item><image>13046.png</image></item>
<item>A gain (amplification) is expressed as a positive bel or decibel figure.  A loss (attenuation) is expressed as a negative bel or decibel figure.  Unity gain (no gain or loss; ratio = 1) is expressed as zero bels or zero decibels.</item>
<item>When calculating overall gain for an amplifier system composed of multiple amplifier stages, individual gain ratios are <italic>multiplied</italic> to find the overall gain ratio.  Bel or decibel figures for each amplifier stage, on the other hand, are <italic>added</italic> together to determine overall gain.</item>
</itemize>

</section>





<section>
<sectiontitle>Absolute dB scales</sectiontitle>

<index>dB, sound measurements</index>
<index>Sound intensity measurement</index>

<para>
It is also possible to use the decibel as a unit of absolute power, in addition to using it as an expression of power gain or loss.  A common example of this is the use of decibels as a measurement of sound pressure intensity.  In cases like these, the measurement is made in reference to some standardized power level defined as 0 dB.  For measurements of sound pressure, 0 dB is loosely defined as the lower threshold of human hearing, objectively quantified as 1 picowatt of sound power per square meter of area.
</para>
 
<para>
A sound measuring 40 dB on the decibel sound scale would be 10<superscript>4</superscript> times greater than the threshold of hearing.  A 100 dB sound would be 10<superscript>10</superscript> (ten billion) times greater than the threshold of hearing.
</para>

<index>A-weighted dB scale</index>
<index>dBA</index>

<para>
Because the human ear is not equally sensitive to all frequencies of sound, variations of the decibel sound-power scale have been developed to represent physiologically equivalent sound intensities at different frequencies.  Some sound intensity instruments were equipped with filter networks to give disproportionate indications across the frequency scale, the intent of which to better represent the effects of sound on the human body.  Three filtered scales became commonly known as the ``A,'' ``B,'' and ``C'' weighted scales.  Decibel sound intensity indications measured through these respective filtering networks were given in units of dBA, dBB, and dBC.  Today, the ``A-weighted scale'' is most commonly used for expressing the equivalent physiological impact on the human body, and is especially useful for rating dangerously loud noise sources.
</para>
 
<index>dB, absolute power measurements</index>
<index>dBm</index>

<para>
Another standard-referenced system of power measurement in the unit of decibels has been established for use in telecommunications systems.  This is called the <italic>dBm</italic> scale. (Figure<ref>13057.png below</ref>)  The reference point, 0 dBm, is defined as 1 milliwatt of electrical power dissipated by a 600 <OMEGA> load.  According to this scale, 10 dBm is equal to 10 times the reference power, or 10 milliwatts; 20 dBm is equal to 100 times the reference power, or 100 milliwatts.  Some AC voltmeters come equipped with a dBm range or scale (sometimes labeled ``DB'') intended for use in measuring AC signal power across a 600 <OMEGA> load.  0 dBm on this scale is, of course, elevated above zero because it represents something greater than 0 (actually, it represents 0.7746 volts across a 600 <OMEGA> load, voltage being equal to the square root of power times resistance; the square root of 0.001 multiplied by 600).  When viewed on the face of an analog meter movement, this dBm scale appears compressed on the left side and expanded on the right in a manner not unlike a resistance scale, owing to its logarithmic nature.
</para>
 
<para>
Radio frequency power measurements for low level signals encountered in radio receivers use dBm measurements referenced to a  50 <OMEGA> load.  Signal generators for the evaluation of radio receivers may output an adjustable dBm rated signal. The signal level is selected by a device called an attenuator, described in the next section.
</para>



<image>13057.png<caption>Absolute power levels in dBm (decibels referenced to 1 milliwatt).</caption></image> 

<index>VU scale</index>
<index>Volume units</index>

<para>
An adaptation of the dBm scale for audio signal strength is used in studio recording and broadcast engineering for standardizing volume levels, and is called the <italic>VU</italic> scale.  VU meters are frequently seen on electronic recording instruments to indicate whether or not the recorded signal exceeds the maximum signal level limit of the device, where significant distortion will occur.  This ``volume indicator'' scale is calibrated in according to the dBm scale, but does not directly indicate dBm for any signal other than steady sine-wave tones.  The proper unit of measurement for a VU meter is <italic>volume units</italic>.
</para>

<index>dB, absolute power measurements</index>
<index>dBW</index>
<index>dBk</index>

<para>
When relatively large signals are dealt with, and an absolute dB scale would be useful for representing signal level, specialized decibel scales are sometimes used with reference points greater than the 1 mW used in dBm.  Such is the case for the <italic>dBW</italic> scale, with a reference point of 0 dBW established at 1 Watt.  Another absolute measure of power called the <italic>dBk</italic> scale references 0 dBk at 1 kW, or 1000 Watts.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>The unit of the bel or decibel may also be used to represent an absolute measurement of power rather than just a relative gain or loss.  For sound power measurements, 0 dB is defined as a standardized reference point of power equal to 1 picowatt per square meter.  Another dB scale suited for sound intensity measurements is normalized to the same physiological effects as a 1000 Hz tone, and is called the <italic>dBA</italic> scale.  In this system, 0 dBA is defined as any frequency sound having the same physiological equivalence as a 1 picowatt-per-square-meter tone at 1000 Hz.</item>
<item>An electrical dB scale with an absolute reference point has been made for use in telecommunications systems.  Called the <italic>dBm</italic> scale, its reference point of 0 dBm is defined as 1 milliwatt of AC signal power dissipated by a 600 <OMEGA> load.</item>
<item>A <italic>VU</italic> meter reads audio signal level according to the dBm for sine-wave signals.  Because its response to signals other than steady sine waves is not the same as true dBm, its unit of measurement is <italic>volume units</italic>.</item>
<item>dB scales with greater absolute reference points than the dBm scale have been invented for high-power signals.  The <italic>dBW</italic> scale has its reference point of 0 dBW defined as 1 Watt of power.  The <italic>dBk</italic> scale sets 1 kW (1000 Watts) as the zero-point reference.</item>
</itemize>

</section>





<section>
<sectiontitle>Attenuators</sectiontitle>
<index>Attenuator</index>


<para>
Attenuators are passive devices. It is convenient to discuss them along with decibels. Attenuators weaken or <italic>attenuate</italic> the high level output of a signal generator, for example, to provide a lower level signal for something like the antenna input of a sensitive radio receiver.  (Figure<ref>03376.png below</ref>) The attenuator could be built into the signal generator, or be a stand-alone device. It could provide a fixed or adjustable amount of attenuation. An attenuator section can also provide isolation between a source and a troublesome load.
</para>

<image>03376.png<caption>Constant impedance attenuator is matched to source impedance Z<subscript>I</subscript> and load impedance Z<subscript>O</subscript>. For radio frequency equipment Z is 50 <OMEGA>.</caption></image>

<para>
In the case of a stand-alone attenuator, it must be placed in series between the signal source and the load by breaking  open the signal path as shown in Figure<ref>03376.png above</ref>. In addition, it must match both the source impedance <bold>Z<subscript>I</subscript></bold> and the load impedance <bold>Z<subscript>O</subscript></bold>, while providing a specified amount of attenuation. In this section we will only consider the special, and most common, case where the source and load impedances are equal. Not considered in this section, unequal source and load impedances may be matched by an attenuator section. However, the formulation is more complex.
</para>

<image>03377.png<caption>T section and <PI> section attenuators are common forms.</caption></image>

<index>T-network </index>
<index>PI-network </index>
<para>
Common configurations are the <bold>T</bold> and <bold><PI></bold> networks shown in Figure<ref>03377.png above</ref>
<comment>Split for multiple ref'f in one paragraph.</comment>
Multiple attenuator sections may be cascaded when even weaker signals are needed as in Figure<ref>03385.png below</ref>.
</para>

<subsection>
<subsectiontitle>Decibels</subsectiontitle>

<index>Decibels, attenuator</index>


<para>
Voltage ratios, as used in the design of attenuators are often expressed in terms of decibels. The voltage ratio (K below) must be derived from the attenuation in decibels. Power ratios expressed as decibels are additive. For example, a 10 dB attenuator followed by a 6 dB attenuator provides 16dB of attenuation overall.
</para>
<quotation>
10 dB + 6 db = 16 dB
</quotation>

<para>
Changing sound levels are perceptible roughly proportional to the logarithm of the power ratio (P<subscript>I</subscript> / P<subscript>O</subscript>).
</para>

<quotation>
sound level = log<subscript>10</subscript>(P<subscript>I</subscript> / P<subscript>O</subscript>)
</quotation>

<para>
A change  of 1 dB in sound level is barely perceptible to a listener, while 2 db is readily perceptible. An attenuation of 3 dB corresponds to cutting power in half, while a gain of 3 db corresponds to a doubling of the power level. A gain of -3 dB is the same as an attenuation of +3 dB, corresponding to half the original power level.
</para>

The power change in decibels in terms of power ratio is:
<quotation>
dB = 10 log<subscript>10</subscript>(P<subscript>I</subscript> / P<subscript>O</subscript>)
</quotation>
Assuming that the load R<subscript>I</subscript> at P<subscript>I</subscript> is the same as the load resistor R<subscript>O</subscript> at P<subscript>O</subscript> (R<subscript>I</subscript> = R<subscript>O</subscript>), the decibels may be derived from the voltage ratio  (V<subscript>I</subscript> /  V<subscript>O</subscript>) or current ratio (I<subscript>I</subscript> / I<subscript>O</subscript>):
<quotation>
P<subscript>O</subscript> = V <subscript>O</subscript>  I<subscript>O</subscript> = V<subscript>O</subscript><superscript>2</superscript> / R = I<subscript>O</subscript><superscript>2</superscript> R
</quotation>

<quotation>
P<subscript>I</subscript> = V<subscript> I</subscript> I<subscript>I</subscript> = V<subscript>I</subscript><superscript>2</superscript> / R  = I<subscript>I</subscript><superscript>2</superscript> R
</quotation>



<quotation>
dB = 10 log<subscript>10</subscript>(P<subscript>I</subscript> /  P<subscript>O</subscript>) = 10 log<subscript>10</subscript>(V<subscript>I</subscript><superscript>2</superscript> / V<subscript>O</subscript><superscript>2</superscript>) = 20 log<subscript>10</subscript>(V<subscript>I</subscript>/V<subscript>O</subscript>)
</quotation>

<quotation>dB = 10 log<subscript>10</subscript>(P<subscript>I</subscript> /  P<subscript>O</subscript>) = 10 log<subscript>10</subscript>(I<subscript>I</subscript><superscript>2</superscript> / I<subscript>O</subscript><superscript>2</superscript>) = 20 log<subscript>10</subscript>(I<subscript>I</subscript>/I<subscript>O</subscript>)
</quotation>
<para>
The two most often used forms of the decibel equation are:
</para>

<quotation>
dB = 10 log<subscript>10</subscript>(P<subscript>I</subscript> /  P<subscript>O</subscript>) <sp>  <sp>  <sp>or  <sp>  <sp> <sp><sp><sp><sp>dB = 20 log<subscript>10</subscript>(V<subscript>I</subscript> /  V<subscript>O</subscript>)
</quotation>

<para>
We will use the latter form, since we need the voltage ratio. Once again, the voltage ratio form of equation is only applicable where the two corresponding resistors are equal. That is, the source and load resistance need to be equal.
</para>

<para>
<bold>
Example:
</bold>
Power into an attenuator is 10 Watts, the power out is 1 Watt. Find the attenuation in dB.
</para>
<quotation>
dB = 10 log<subscript>10</subscript>(P<subscript>I</subscript> /  P<subscript>O</subscript>) = 10 log<subscript>10</subscript> (10 /1) = 10 log<subscript>10</subscript> (10) = 10 (1) = 10 dB
</quotation>

<para>
<bold>
Example:
</bold>
 Find the voltage attenuation ratio (K=  (V<subscript>I</subscript> /  V<subscript>O</subscript>)) for a 10 dB attenuator.
</para>

<quotation>
dB = 10= 20 log<subscript>10</subscript>(V<subscript>I</subscript> /  V<subscript>O</subscript>)
</quotation>


<quotation>
10/20 = log<subscript>10</subscript>(V<subscript>I</subscript> /  V<subscript>O</subscript>)
</quotation>


<quotation>10<superscript>10/20</superscript> = <math>10<superscript2>log<subscript2>10</subscript2>(V<subscript2>I</subscript2> / V<subscript2>O</subscript2>)</superscript2></math></quotation>


<quotation>
3.16 = (V<subscript>I</subscript> / V<subscript>O</subscript>) = A<subscript>P(ratio)</subscript>
</quotation>

<para>
<bold>
Example:
</bold>
Power into an attenuator is 100 milliwatts, the power out is 1 milliwatt. Find the attenuation in dB.
</para>
<quotation>
dB = 10 log<subscript>10</subscript>(P<subscript>I</subscript> / P<subscript>O</subscript>) = 10 log<subscript>10</subscript> (100 /1) = 10 log<subscript>10</subscript> (100) = 10 (2) = 20 dB
</quotation>

<para>
<bold>
Example:
</bold>
 Find the voltage attenuation ratio (K=  (V<subscript>I</subscript> / V<subscript>O</subscript>)) for a 20 dB attenuator.
</para>


<quotation>
dB = 20= 20 log<subscript>10</subscript>(V<subscript>I</subscript> / V<subscript>O</subscript> )
</quotation>


<quotation>10<superscript>20/20</superscript> = <math>10<superscript2> log<subscript2>10</subscript2>(V<subscript2>I</subscript2> / V<subscript2>O</subscript2> )</superscript2></math></quotation>


<quotation>
10 = (V<subscript>I</subscript> / V<subscript>O</subscript> ) = K
</quotation>

</subsection>

<subsection>
<subsectiontitle>T-section attenuator</subsectiontitle>

<index>Attenuator, T</index>

<para>
The T and <PI> attenuators must be connected to a <bold>Z</bold> source and  <bold>Z</bold> load impedance. The  <bold>Z</bold>-(arrows) pointing away from the attenuator in the figure below indicate this. The <bold>Z</bold>-(arrows) pointing toward the attenuator indicates that the impedance seen looking into the attenuator with a load Z on the opposite end is  Z,  Z=50 <OMEGA> for our case. This impedance is a constant (50 <OMEGA>) with respect to attenuation-- impedance does not change when attenuation is changed.
</para>

<para>
The  table in  Figure<ref>03378.png below</ref> lists resistor values for the <bold>T</bold> and <bold><PI></bold> attenuators to match a 50 <OMEGA> source/ load, as is the usual requirement in radio frequency work.
</para>

<para>
Telephone utility and other audio work often requires matching to 600 <OMEGA>. Multiply all <bold>R</bold> values by the ratio (600/50) to correct for 600 <OMEGA>  matching. Multiplying by 75/50 would convert table values to match a 75 <OMEGA> source and load.
</para>

<image>03378.png<caption>Formulas for T-section attenuator resistors, given K, the voltage attenuation ratio, and Z<subscript>I</subscript> = Z<subscript>O</subscript> = 50 <OMEGA>.</caption></image>

<para>
The amount of attenuation is customarily specified in dB (decibels). Though, we need the voltage (or current) ratio <bold>K</bold> to find the resistor values from equations. See the <bold>dB/20</bold> term in the power of <bold>10</bold> term for computing the voltage ratio <bold>K</bold> from dB, above.
</para>


<para>
The <bold>T</bold> (and below <bold><PI></bold>) configurations are most commonly used as they provide bidirectional matching. That is, the attenuator input and output may be swapped end for end and still match the source and load impedances while supplying the same attenuation.
</para>

<para>
Disconnecting the source and  looking in to the right at <bold>V<subscript>I</subscript></bold>, we need to see a series parallel combination of <bold>R<subscript>1</subscript></bold>, <bold>R<subscript>2</subscript></bold>,  <bold>R<subscript>1</subscript></bold>, and <bold>Z</bold>  looking like an equivalent resistance of <bold>Z<subscript>IN</subscript></bold>, the same as the source/load impedance Z: (a load of Z is connected to the output.)
</para>

<quotation>
Z<subscript>IN</subscript> = R<subscript>1</subscript> + (R<subscript>2</subscript> ||(R<subscript>1</subscript> + Z))
</quotation>

<para>
For example, substitute the 10 dB values from the 50 <OMEGA> attenuator table for <bold>R<subscript>1</subscript></bold>  and <bold>R<subscript>2</subscript></bold> as shown in Figure<ref>03379.png below</ref>.
</para>

<quotation>
Z<subscript>IN</subscript> = 25.97 + (35.14 ||(25.97 + 50))
</quotation>
<quotation>
Z<subscript>IN</subscript> = 25.97 + (35.14 || 75.97 )
</quotation>
<quotation>
Z<subscript>IN</subscript> = 25.97 +  24.03  = 50
</quotation>

<para>
This shows us that we see 50 <OMEGA> looking right into the example attenuator (Figure<ref>03379.png below</ref>) with a 50 <OMEGA> load.
</para>

<para>
Replacing the source generator, disconnecting load <bold>Z</bold> at <bold>V<subscript>O</subscript></bold>, and  looking in to the left, should give us the same equation as above for the impedance at <bold>V<subscript>O</subscript></bold>, due to symmetry.  Moreover, the three resistors must be  values  which supply the required attenuation from input to output. This is accomplished by the equations for <bold>R<subscript>1</subscript></bold> and  <bold>R<subscript>2</subscript></bold> above as applied to the <bold>T</bold>-attenuator below.
</para>

<image>03379.png<caption>10 dB T-section attenuator for insertion between a 50 <OMEGA> source and load.</caption></image>

<para>
</para>

<bigspace>
</subsection>

<subsection>
<subsectiontitle>PI-section attenuator</subsectiontitle>

<index>Attenuator, PI</index>

<para>
The table in Figure<ref>03380.png below</ref> lists resistor values for the <bold><PI></bold> attenuator matching a 50 <OMEGA> source/ load at some common attenuation levels. The resistors corresponding to other attenuation levels may be calculated from the equations.
</para>

<image>03380.png<caption>Formulas for <PI>-section attenuator resistors, given K, the voltage attenuation ratio, and Z<subscript>I</subscript> = Z<subscript>O</subscript> = 50 <OMEGA>.</caption></image>

<para>
The above apply to the <pi>-attenuator below.
</para>
<para>
What resistor values would be required for both the <bold><PI></bold> attenuators for 10 dB of attenuation matching a  50  <OMEGA> source and load?
</para>



<image>03381.png<caption>10 dB <PI>-section attenuator example for matching a 50 <OMEGA> source and load.</caption></image>


<para>
The <bold>10 dB</bold> corresponds to a voltage attenuation ratio of <bold>K=3.16</bold> in the next to last line of the above table. Transfer the resistor values in that line to the resistors on the schematic diagram  in Figure<ref>03381.png above</ref>.
</para>



</subsection>

<subsection>
<subsectiontitle>L-section attenuator</subsectiontitle>

<index>Attenuator, L</index>

<para>
The table in Figure<ref>03382.png below</ref> lists resistor values for the <bold>L</bold> attenuators to match a 50 <OMEGA> source/ load.
<comment>Split for multiple references cannot have two without cr at end</comment>
The table in Figure<ref>03383.png below</ref> lists resistor values for an alternate form. Note that the resistor values are not the same.

</para>

<image>03382.png<caption>L-section attenuator table for 50 <OMEGA> source and load impedance.</caption></image>

<para>
The  above apply to the <bold>L</bold> attenuator below.
</para>

<image>03383.png<caption>Alternate form L-section attenuator table for 50 <OMEGA> source and load impedance.</caption></image>


</subsection>






<subsection>
<subsectiontitle>Bridged T attenuator</subsectiontitle>

<index>Attenuator, bridged T</index>

<para>
The table in Figure<ref>03384.png below</ref> lists resistor values for the bridged <bold>T</bold> attenuators to match a 50 <OMEGA> source and load. The bridged-T attenuator is not often used. Why not?
</para>

<image>03384.png<caption>Formulas and abbreviated table for bridged-T attenuator section, Z = 50 <OMEGA>.</caption></image>


</subsection>

<subsection>

<subsectiontitle>Cascaded sections </subsectiontitle>

<para>
Attenuator sections can be cascaded as in Figure<ref>03385.png below</ref> for more attenuation than may be available from a single section. For example two 10 db attenuators may be cascaded to provide 20 dB of attenuation, the dB values being additive. The voltage attenuation ratio <bold>K</bold> or <bold>V<subscript>I</subscript>/V<subscript>O</subscript></bold> for a 10 dB attenuator section is 3.16. The voltage attenuation ratio for the two cascaded sections is the product of the two <bold>K</bold>s or 3.16x3.16=10 for the two cascaded sections.
</para>

<image>03385.png<caption>Cascaded attenuator sections: dB attenuation is additive.</caption></image>


<para>
Variable attenuation can be provided in discrete steps by a switched attenuator. The example  Figure<ref>03386.png below</ref>, shown in the 0 dB position, is capable of 0 through 7 dB of attenuation by additive switching of none, one or more sections.
</para>

<image>03386.png<caption>Switched attenuator: attenuation is variable in discrete steps.</caption></image>

<para>
The typical multi section attenuator has more sections than the above figure shows.  The addition of  a 3 or 8 dB section above enables the unit to cover to 10 dB and beyond. Lower signal levels are achieved  by the addition of 10 dB and 20 dB sections, or a  binary multiple 16 dB section.
</para>

</subsection>

<subsection>

<subsectiontitle>RF attenuators</subsectiontitle>

<index>Attenuator, coaxial</index>
<index>Attenuator, rf</index>


<para>
For radio frequency (RF) work (<lt>1000 Mhz), the individual sections must be mounted in shielded compartments to thwart capacitive coupling if lower signal levels are to be achieved at the highest frequencies. The individual sections of the switched attenuators in the previous section are mounted in shielded sections.  Additional measures may be taken to extend the frequency range to beyond 1000 Mhz. This involves construction from special shaped lead-less resistive elements.
</para>

<image>03387.png<caption>Coaxial T-attenuator for radio frequency work.</caption></image>

<para>
A coaxial T-section attenuator consisting of resistive rods and a resistive disk is shown in  Figure<ref>03387.png above</ref>.  This construction is usable to a few gigahertz.
<comment>Split for multiple references cannot have two without cr at end</comment>
The coaxial <PI> version would have one resistive rod between two resistive disks in the coaxial line as in  Figure<ref>03388.png below</ref>.
</para>

<index>Attenuator, coaxial</index>
<index>Attenuator, rf</index>

<image>03388.png<caption>Coaxial <PI>-attenuator for radio frequency work.</caption></image>

<para>
RF connectors, not shown, are attached to the ends of the above T and <PI> attenuators. The connectors allow individual attenuators to be cascaded, in addition to connecting between a  source and load. For example, a 10 dB attenuator may be placed between a troublesome signal source and an expensive spectrum analyzer input. Even though we may not need the attenuation, the expensive test equipment is protected from the source by attenuating any overvoltage. 
</para>

</subsection>


<bold>Summary: Attenuators</bold>
<itemize>
<item>An <italic>attenuator</italic> reduces an input signal to a lower level. </item>
<item>The amount of attenuation is specified in <italic>decibels</italic> (dB). Decibel values are additive for cascaded attenuator sections.</item>
<item>dB from power ratio:<sp><sp><sp><sp><sp><sp>dB = 10 log<subscript>10</subscript>(P<subscript>I</subscript> /  P<subscript>O</subscript>)</item>

<item>dB from voltage ratio:<sp><sp><sp><sp>dB = 20 log<subscript>10</subscript>(V<subscript>I</subscript> /  V<subscript>O</subscript>)</item>

<item><italic>T</italic> and <italic><PI></italic> section attenuators are the most common circuit configurations.</item>
</itemize>


</section>






<section>
<sectiontitle*>Contributors</sectiontitle>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Colin Barnard</bold> (November 2003): Correction regarding Alexander Graham Bell's country of origin (Scotland, not the United States).
</para>

</section>



</chapter>

<pagebreak>


