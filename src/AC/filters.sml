
<chapter>
<chaptertitle>FILTERS</chaptertitle>

<section>
<sectiontitle>What is a filter?</sectiontitle>


<index>Filter</index>
<index>Equalizer</index>
<index>Crossover network</index>
<index>Network, ``crossover''</index>

<para>
It is sometimes desirable to have circuits capable of selectively filtering one frequency or range of frequencies out of a mix of different frequencies in a circuit.  A circuit designed to perform this frequency selection is called a <italic>filter circuit</italic>, or simply a <italic>filter</italic>.  A common need for filter circuits is in high-performance stereo systems, where certain ranges of audio frequencies need to be amplified or suppressed for best sound quality and power efficiency.  You may be familiar with <italic>equalizers</italic>, which allow the amplitudes of several frequency ranges to be adjusted to suit the listener's taste and acoustic properties of the listening area.  You may also be familiar with <italic>crossover networks</italic>, which block certain ranges of frequencies from reaching speakers.  A tweeter (high-frequency speaker) is inefficient at reproducing low-frequency signals such as drum beats, so a crossover circuit is connected between the tweeter and the stereo's output terminals to block low-frequency signals, only passing high-frequency signals to the speaker's connection terminals.  This gives better audio system efficiency and thus better performance.  Both equalizers and crossover networks are examples of filters, designed to accomplish filtering of certain frequencies.
</para>

<para>
Another practical application of filter circuits is in the ``conditioning'' of non-sinusoidal voltage waveforms in power circuits.  Some electronic devices are sensitive to the presence of harmonics in the power supply voltage, and so require power conditioning for proper operation.  If a distorted sine-wave voltage behaves like a series of harmonic waveforms added to the fundamental frequency, then it should be possible to construct a filter circuit that only allows the fundamental waveform frequency to pass through, blocking all (higher-frequency) harmonics.
</para>

<index>Bode plot</index>

<para>
We will be studying the design of several elementary filter circuits in this lesson.  To reduce the load of math on the reader, I will make extensive use of SPICE as an analysis tool, displaying Bode plots (amplitude versus frequency) for the various kinds of filters.  Bear in mind, though, that these circuits can be analyzed over several points of frequency by repeated series-parallel analysis, much like the previous example with two sources (60 and 90 Hz), if the student is willing to invest a lot of time working and re-working circuit calculations for each frequency.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>filter</italic> is an AC circuit that separates some frequencies from others within mixed-frequency signals.</item>
<item>Audio <italic>equalizers</italic> and <italic>crossover networks</italic> are two well-known applications of filter circuits.</item>
<item>A <italic>Bode plot</italic> is a graph plotting waveform amplitude or phase on one axis and frequency on the other.</item>
</itemize>

</section>






<section>
<sectiontitle>Low-pass filters</sectiontitle>

<index>Low-pass filter</index>
<index>Filter, low-pass</index>

<para>
By definition, a low-pass filter is a circuit offering easy passage to low-frequency signals and difficult passage to high-frequency signals.  There are two basic kinds of circuits capable of accomplishing this objective, and many variations of each one: The inductive low-pass filter in Figure<ref>02116.png below</ref>
<comment>Split for two refs in one paragraph</comment>
and the capacitive low-pass filter in  Figure<ref>02117.png below</ref>
</para>

<image>02116.png<caption>Inductive low-pass filter</caption></image> 

<para>
The inductor's impedance increases with increasing frequency.  This high impedance in series tends to block high-frequency signals from getting to the load.  This can be demonstrated with a SPICE analysis: (Figure<ref>22026.png below</ref>)
</para>

<table>
<literal>
inductive lowpass filter               
v1 1 0 ac 1 sin 
l1 1 2 3
rload 2 0 1k    
.ac lin 20 1 200
.plot ac v(2)   
.end    
</literal>
</table>


<comment>freq       v(2)    0.2512      0.3981        0.631          1</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment> 
<comment>1.000E+00  9.998E-01 .            .            .            * </comment>
<comment>1.147E+01  9.774E-01 .            .            .           *.</comment>
<comment>2.195E+01  9.240E-01 .            .            .          * .</comment>
<comment>3.242E+01  8.533E-01 .            .            .       *    .</comment>
<comment>4.289E+01  7.776E-01 .            .            .     *      .</comment> 
<comment>5.337E+01  7.050E-01 .            .            .  *         .</comment> 
<comment>6.384E+01  6.391E-01 .            .            *            .</comment> 
<comment>7.432E+01  5.810E-01 .            .         *  .            .</comment> 
<comment>8.479E+01  5.304E-01 .            .        *   .            .</comment> 
<comment>9.526E+01  4.865E-01 .            .     *      .            .</comment>  
<comment>1.057E+02  4.485E-01 .            .   *        .            .</comment>   
<comment>1.162E+02  4.153E-01 .            .*           .            .</comment>   
<comment>1.267E+02  3.863E-01 .           *.            .            .</comment>   
<comment>1.372E+02  3.607E-01 .         *  .            .            .</comment>  
<comment>1.476E+02  3.382E-01 .        *   .            .            .</comment>   
<comment>1.581E+02  3.181E-01 .      *     .            .            .</comment>   
<comment>1.686E+02  3.002E-01 .    *       .            .            .</comment>  
<comment>1.791E+02  2.841E-01 .   *        .            .            .</comment> 
<comment>1.895E+02  2.696E-01 . *          .            .            .</comment>  
<comment>2.000E+02  2.564E-01 .*           .            .            .</comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment> 

<image>22026.png<caption>The response of an inductive low-pass filter falls off with increasing frequency.</caption></image> 
<image>02117.png<caption>Capacitive low-pass filter.</caption></image> 

<para>
The capacitor's impedance decreases with increasing frequency.  This low impedance in parallel with the load resistance tends to short out high-frequency signals, dropping most of the voltage across series resistor R<subscript>1</subscript>.  (Figure<ref>22027.png below</ref>)
</para>


<table>
<literal>
capacitive lowpass filter                                  
v1 1 0 ac 1 sin 
r1 1 2 500      
c1 2 0 7u       
rload 2 0 1k    
.ac lin 20 30 150       
.plot ac v(2)   
.end    
</literal>
</table>


<comment> freq       v(2)            0.3162     0.3981     0.5012  <comment>0.631</comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>  
<comment>3.000E+01  6.102E-01 .        .         .         .        *.</comment> 
<comment>3.632E+01  5.885E-01 .        .         .         .      *  .</comment> 
<comment>4.263E+01  5.653E-01 .        .         .         .   *     .</comment> 
<comment>4.895E+01  5.416E-01 .        .         .         .  *      .</comment> 
<comment>5.526E+01  5.180E-01 .        .         .         .*        .</comment> 
<comment>6.158E+01  4.948E-01 .        .         .        *.         .</comment> 
<comment>6.789E+01  4.725E-01 .        .         .     *   .         .</comment> 
<comment>7.421E+01  4.511E-01 .        .         .   *     .         .</comment> 
<comment>8.053E+01  4.309E-01 .        .         . *       .         .</comment> 
<comment>8.684E+01  4.118E-01 .        .         .*        .         .</comment> 
<comment>9.316E+01  3.938E-01 .        .        *.         .         .</comment> 
<comment>9.947E+01  3.770E-01 .        .      *  .         .         .</comment> 
<comment>1.058E+02  3.613E-01 .        .    *    .         .         .</comment> 
<comment>1.121E+02  3.465E-01 .        .  *      .         .         .</comment> 
<comment>1.184E+02  3.327E-01 .        .*        .         .         .</comment> 
<comment>1.247E+02  3.199E-01 .        *         .         .         .</comment> 
<comment>1.311E+02  3.078E-01 .      * .         .         .         .</comment> 
<comment>1.374E+02  2.965E-01 .    *   .         .         .         .</comment> 
<comment>1.437E+02  2.859E-01 .  *     .         .         .         .</comment> 
<comment>1.500E+02  2.760E-01 .*       .         .         .         .</comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment> 
                  

<image>22027.png<caption>The response of a capacitive low-pass filter falls off with increasing frequency.</caption></image> 

<para>
The inductive low-pass filter is the pinnacle of simplicity, with only one component comprising the filter.  The capacitive version of this filter is not that much more complex, with only a resistor and capacitor needed for operation.  However, despite their increased complexity, capacitive filter designs are generally preferred over inductive because capacitors tend to be ``purer'' reactive components than inductors and therefore are more predictable in their behavior.  By ``pure'' I mean that capacitors exhibit little resistive effects than inductors, making them almost 100% reactive.  Inductors, on the other hand, typically exhibit significant dissipative (resistor-like) effects, both in the long lengths of wire used to make them, and in the magnetic losses of the core material.  Capacitors also tend to participate less in ``coupling'' effects with other components (generate and/or receive interference from other components via mutual electric or magnetic fields) than inductors, and are less expensive.
</para>

<para>
However, the inductive low-pass filter is often preferred in AC-DC power supplies to filter out the AC ``ripple'' waveform created when AC is converted (rectified) into DC, passing only the pure DC component.  The primary reason for this is the requirement of low filter resistance for the output of such a power supply.  A capacitive low-pass filter requires an extra resistance in series with the source, whereas the inductive low-pass filter does not.  In the design of a high-current circuit like a DC power supply where additional series resistance is undesirable, the inductive low-pass filter is the better design choice.  On the other hand, if low weight and compact size are higher priorities than low internal supply resistance in a power supply design, the capacitive low-pass filter might make more sense.
</para>

<index>Cutoff frequency</index>
<index>Frequency, cutoff</index>

<para>
All low-pass filters are rated at a certain <italic>cutoff frequency</italic>.  That is, the frequency above which the output voltage falls below 70.7% of the input voltage.  This cutoff percentage of 70.7 is not really arbitrary, all though it may seem so at first glance.  In a simple capacitive/resistive low-pass filter, it is the frequency at which capacitive reactance in ohms equals resistance in ohms.  In a simple capacitive low-pass filter (one resistor, one capacitor), the cutoff frequency is given as:
</para>

<image>12097.png</image> 

<para>
Inserting the values of R and C from the last SPICE simulation into this formula, we arrive at a cutoff frequency of 45.473 Hz.  However, when we look at the plot generated by the SPICE simulation, we see the load voltage well below 70.7% of the source voltage (1 volt) even at a frequency as low as 30 Hz, below the calculated cutoff point.  What's wrong?  The problem here is that the load resistance of 1 k<OMEGA> affects the frequency response of the filter, skewing it down from what the formula told us it would be.  Without that load resistance in place, SPICE produces a Bode plot whose numbers make more sense: (Figure<ref>22028.png below</ref>)
</para>

<table>
<literal>
capacitive lowpass filter   
v1 1 0 ac 1 sin 
r1 1 2 500      
c1 2 0 7u
* note: no load resistor!       
.ac lin 20 40 50
.plot ac v(2)   
.end    
</literal>
</table>



<comment>freq       v(2)    0.6607      0.6918       0.7244      0.7586</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>
<comment>4.000E+01  7.508E-01 .           .             .          *  .</comment> 
<comment>4.053E+01  7.465E-01 .           .             .        *    .</comment>
<comment>4.105E+01  7.423E-01 .           .             .      *      .</comment> 
<comment>4.158E+01  7.380E-01 .           .             .     *       .</comment>
<comment>4.211E+01  7.338E-01 .           .             .   *         .</comment>
<comment>4.263E+01  7.295E-01 .           .             . *           .</comment>
<comment>4.316E+01  7.253E-01 .           .             *             .</comment> 
<comment>4.368E+01  7.211E-01 .           .            *.             .</comment>
<comment>4.421E+01  7.170E-01 .           .          *  .             .</comment>
<comment>4.474E+01  7.129E-01 .           .        *    .             .</comment>
<comment>4.526E+01  7.087E-01 .           .      *      .             .</comment>
<comment>4.579E+01  7.046E-01 .           .     *       .             .</comment>
<comment>4.632E+01  7.006E-01 .           .   *         .             .</comment>
<comment>4.684E+01  6.965E-01 .           . *           .             .</comment>
<comment>4.737E+01  6.925E-01 .           *             .             .</comment>
<comment>4.789E+01  6.885E-01 .          *.             .             .</comment>
<comment>4.842E+01  6.846E-01 .        *  .             .             .</comment>
<comment>4.895E+01  6.806E-01 .      *    .             .             .</comment>
<comment>4.947E+01  6.767E-01 .    *      .             .             .</comment>
<comment>5.000E+01  6.728E-01 .   *       .             .             .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>


<image>22028.png<caption>For the capacitive low-pass filter with R = 500 <OMEGA> and C = 7 <mu>F, the Output should be 70.7% at 45.473 Hz.</caption></image> 

<table>
<literal>
<sp>          f<subscript>cutoff</subscript> = 1/(2<pi>RC) = 1/(2<pi>(500 <OMEGA>)(7 <mu>F)) = 45.473 Hz
</literal>
</table>


<para>
When dealing with filter circuits, it is always important to note that the response of the filter depends on the filter's component values <italic>and</italic> the impedance of the load.  If a cutoff frequency equation fails to give consideration to load impedance, it assumes no load and will fail to give accurate results for a real-life filter conducting power to a load.
</para>

<para>
One frequent application of the capacitive low-pass filter principle is in the design of circuits having components or sections sensitive to electrical ``noise.''  As mentioned at the beginning of the last chapter, sometimes AC signals can ``couple'' from one circuit to another via capacitance (C<subscript>stray</subscript>) and/or mutual inductance (M<subscript>stray</subscript>) between the two sets of conductors.  A prime example of this is unwanted AC signals (``noise'') becoming impressed on DC power lines supplying sensitive circuits: (Figure<ref>02300.png below</ref>)
</para>

<image>02300.png<caption>Noise is coupled by stray capacitance and mutual inductance into ``clean'' DC power.</caption></image> 

<para>
The oscilloscope-meter on the left shows the ``clean'' power from the DC voltage source.  After coupling with the AC noise source via stray mutual inductance and stray capacitance, though, the voltage as measured at the load terminals is now a mix of AC and DC, the AC being unwanted.  Normally, one would expect E<subscript>load</subscript> to be precisely identical to E<subscript>source</subscript>, because the uninterrupted conductors connecting them should make the two sets of points electrically common.  However, power conductor impedance allows the two voltages to differ, which means the noise magnitude can vary at different points in the DC system.
</para>

<index>Capacitor, decoupling</index>
<index>Decoupling capacitor</index>

<para>
If we wish to prevent such ``noise'' from reaching the DC load, all we need to do is connect a low-pass filter near the load to block any coupled signals.  In its simplest form, this is nothing more than a capacitor connected directly across the power terminals of the load, the capacitor behaving as a very low impedance to any AC noise, and shorting it out.  Such a capacitor is called a <italic>decoupling capacitor</italic>: (Figure<ref>02301.png below</ref>)
</para>

<image>02301.png<caption>Decoupling capacitor, applied to load, filters noise from DC power supply.</caption></image> 

<index>Printed circuit board</index>
<index>PCB</index>

<para>
A cursory glance at a crowded printed-circuit board (PCB) will typically reveal decoupling capacitors scattered throughout, usually located as close as possible to the sensitive DC loads.  Capacitor size is usually 0.1 <mu>F or more, a minimum amount of capacitance needed to produce a low enough impedance to short out any noise.  Greater capacitance will do a better job at filtering noise, but size and economics limit decoupling capacitors to meager values.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A low-pass filter allows for easy passage of low-frequency signals from source to load, and difficult passage of high-frequency signals.</item>
<item>Inductive low-pass filters insert an inductor in series with the load; capacitive low-pass filters insert a resistor in series and a capacitor in parallel with the load.  The former filter design tries to ``block'' the unwanted frequency signal while the latter tries to short it out.</item>
<item>The <italic>cutoff frequency</italic> for a low-pass filter is that frequency at which the output (load) voltage equals 70.7% of the input (source) voltage.  Above the cutoff frequency, the output voltage is lower than 70.7% of the input, and vice versa.</item>
</itemize>

</section>






<section>
<sectiontitle>High-pass filters</sectiontitle>

<index>High-pass filter</index>
<index>Filter, high-pass</index>

<para>
A high-pass filter's task is just the opposite of a low-pass filter: to offer easy passage of a high-frequency signal and difficult passage to a low-frequency signal.  As one might expect, the inductive (Figure<ref>02119.png below</ref>)
<comment>Split for two refs in one paragraph</comment>
and capacitive (Figure<ref>02118.png below</ref>) versions of the high-pass filter are just the opposite of their respective low-pass filter designs:
</para>

<image>02118.png<caption>Capacitive high-pass filter.</caption></image> 

<para>
The capacitor's impedance (Figure<ref>02118.png above</ref>)
<comment>split for double ref</comment>
increases with decreasing frequency. (Figure<ref>22029.png below</ref>)  This high impedance in series tends to block low-frequency signals from getting to load.
</para>

<table>
<literal>
capacitive highpass filter    
v1 1 0 ac 1 sin 
c1 1 2 0.5u     
rload 2 0 1k    
.ac lin 20 1 200
.plot ac v(2)   
.end    
</literal>
</table>



<comment>freq       v(2)  1.000E-03     1.000E-02     1.000E-01  1.000E+00 </comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>1.000E+00  3.142E-03 .      *      .             .             .</comment> 
<comment>1.147E+01  3.602E-02 .             .       *     .             .</comment>
<comment>2.195E+01  6.879E-02 .             .           * .             .</comment>   
<comment>3.242E+01  1.013E-01 .             .             *             .</comment>  
<comment>4.289E+01  1.336E-01 .             .             . *           .</comment>
<comment>5.337E+01  1.654E-01 .             .             .  *          .</comment>      
<comment>6.384E+01  1.966E-01 .             .             .   *         .</comment>     
<comment>7.432E+01  2.274E-01 .             .             .    *        .</comment>    
<comment>8.479E+01  2.574E-01 .             .             .     *       .</comment>   
<comment>9.526E+01  2.867E-01 .             .             .     *       .</comment>  
<comment>1.057E+02  3.152E-01 .             .             .      *      .</comment> 
<comment>1.162E+02  3.429E-01 .             .             .      *      .</comment>      
<comment>1.267E+02  3.698E-01 .             .             .       *     .</comment>    
<comment>1.372E+02  3.957E-01 .             .             .       *     .</comment>   
<comment>1.476E+02  4.207E-01 .             .             .        *    .</comment>  
<comment>1.581E+02  4.448E-01 .             .             .        *    .</comment> 
<comment>1.686E+02  4.680E-01 .             .             .        *    .</comment>       
<comment>1.791E+02  4.903E-01 .             .             .         *   .</comment>     
<comment>1.895E+02  5.116E-01 .             .             .         *   .</comment>   
<comment>2.000E+02  5.320E-01 .             .             .         *   .</comment>   
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>




<image>22029.png<caption>The response of the capacitive high-pass filter increases with frequency.</caption></image> 
<image>02119.png<caption>Inductive high-pass filter.</caption></image> 



<para>
The inductor's impedance  (Figure<ref>02119.png above</ref>)
<comment>split for double ref</comment>
decreases with decreasing frequency. (Figure<ref>22030.png below</ref>)  This low impedance in parallel tends to short out low-frequency signals from getting to the load resistor.  As a consequence, most of the voltage gets dropped across series resistor R<subscript>1</subscript>.
</para>

<table>
<literal>
inductive highpass filter  
v1 1 0 ac 1 sin 
r1 1 2 200      
l1 2 0 100m     
rload 2 0 1k    
.ac lin 20 1 200
.plot ac v(2)   
.end    
</literal>
</table>



<comment>freq       v(2)   1.000E-03  1.000E-02   1.000E-01    1.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>
<comment>1.000E+00  3.142E-03 .  *      .             .             .</comment> 
<comment>1.147E+01  3.601E-02 .         .       *     .             .</comment>
<comment>2.195E+01  6.871E-02 .         .           * .             .</comment>
<comment>3.242E+01  1.011E-01 .         .             *             .</comment>
<comment>4.289E+01  1.330E-01 .         .             . *           .</comment>
<comment>5.337E+01  1.644E-01 .         .             .  *          .</comment>
<comment>6.384E+01  1.950E-01 .         .             .   *         .</comment>
<comment>7.432E+01  2.248E-01 .         .             .    *        .</comment>
<comment>8.479E+01  2.537E-01 .         .             .     *       .</comment>
<comment>9.526E+01  2.817E-01 .         .             .     *       .</comment>
<comment>1.057E+02  3.086E-01 .         .             .      *      .</comment>
<comment>1.162E+02  3.344E-01 .         .             .      *      .</comment>
<comment>1.267E+02  3.591E-01 .         .             .       *     .</comment>
<comment>1.372E+02  3.828E-01 .         .             .       *     .</comment>
<comment>1.476E+02  4.053E-01 .         .             .        *    .</comment>
<comment>1.581E+02  4.267E-01 .         .             .        *    .</comment>
<comment>1.686E+02  4.470E-01 .         .             .        *    .</comment>
<comment>1.791E+02  4.662E-01 .         .             .        *    .</comment>
<comment>1.895E+02  4.845E-01 .         .             .         *   .</comment>
<comment>2.000E+02  5.017E-01 .         .             .         *   .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>

<image>22030.png<caption>The response of the inductive high-pass filter increases with frequency.</caption></image> 

<para>
This time, the capacitive design is the simplest, requiring only one component above and beyond the load.  And, again, the reactive purity of capacitors over inductors tends to favor their use in filter design, especially with high-pass filters where high frequencies commonly cause inductors to behave strangely due to the skin effect and electromagnetic core losses.
</para>

<index>Cutoff frequency</index>
<index>Frequency, cutoff</index>

<para>
As with low-pass filters, high-pass filters have a rated <italic>cutoff frequency</italic>, above which the output voltage increases above 70.7% of the input voltage.  Just as in the case of the capacitive low-pass filter circuit, the capacitive high-pass filter's cutoff frequency can be found with the same formula:
</para>

<image>12097.png</image> 

<para>
In the example circuit, there is no resistance other than the load resistor, so that is the value for R in the formula.
</para>

<para>
Using a stereo system as a practical example, a capacitor connected in series with the tweeter (treble) speaker will serve as a high-pass filter, imposing a high impedance to low-frequency bass signals, thereby preventing that power from being wasted on a speaker inefficient for reproducing such sounds.  In like fashion, an inductor connected in series with the woofer (bass) speaker will serve as a low-pass filter for the low frequencies that particular speaker is designed to reproduce.  In this simple example circuit, the midrange speaker is subjected to the full spectrum of frequencies from the stereo's output.  More elaborate filter networks are sometimes used, but this should give you the general idea.  Also bear in mind that I'm only showing you one channel (either left or right) on this stereo system.  A real stereo would have six speakers: 2 woofers, 2 midranges, and 2 tweeters.
</para>

<image>02120.png<caption>High-pass filter routes high frequencies to tweeter, while low-pass filter routes lows to woofer.</caption></image> 

<para>
For better performance yet, we might like to have some kind of filter circuit capable of passing frequencies that are between low (bass) and high (treble) to the midrange speaker so that none of the low- or high-frequency signal power is wasted on a speaker incapable of efficiently reproducing those sounds.  What we would be looking for is called a <italic>band-pass</italic> filter, which is the topic of the next section.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A high-pass filter allows for easy passage of high-frequency signals from source to load, and difficult passage of low-frequency signals.</item>
<item>Capacitive high-pass filters insert a capacitor in series with the load; inductive high-pass filters insert a resistor in series and an inductor in parallel with the load.  The former filter design tries to ``block'' the unwanted frequency signal while the latter tries to short it out.</item>
<item>The <italic>cutoff frequency</italic> for a high-pass filter is that frequency at which the output (load) voltage equals 70.7% of the input (source) voltage.  Above the cutoff frequency, the output voltage is greater than 70.7% of the input, and vice versa.</item>
</itemize>

</section>






<section>
<sectiontitle>Band-pass filters</sectiontitle>

<index>Band-pass filter</index>
<index>Filter, band-pass</index>

<para>
There are applications where a particular band, or spread, or frequencies need to be filtered from a wider range of mixed signals.  Filter circuits can be designed to accomplish this task by combining the properties of low-pass and high-pass into a single filter.  The result is called a <italic>band-pass</italic> filter.  Creating a bandpass filter from a low-pass and high-pass filter can be illustrated using block diagrams: (Figure<ref>02121.png below</ref>)
</para>

<image>02260.png<caption>System level block diagram of a band-pass filter.</caption></image> 

<para>
What emerges from the series combination of these two filter circuits is a circuit that will only allow passage of those frequencies that are neither too high nor too low.  Using real components, here is what a typical schematic might look like Figure<ref>02121.png below</ref>.
<comment>split for double ref</comment>
The response of the band-pass filter is shown in  (Figure<ref>22031.png below</ref>)
</para>

<image>02121.png<caption>Capacitive band-pass filter.</caption></image> 

<table>
<literal>
capacitive bandpass filter       
v1 1 0 ac 1 sin 
r1 1 2 200      
c1 2 0 2.5u     
c2 2 3 1u       
rload 3 0 1k    
.ac lin 20 100 500      
.plot ac v(3)   
.end    
</literal>
</table>



<comment>freq       v(3)   4.467E-01    5.012E-01    5.623E-01    6.310E-01</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>
<comment>1.000E+02  4.703E-01 .     *       .             .             . </comment>
<comment>1.211E+02  5.155E-01 .             .  *          .             .</comment> 
<comment>1.421E+02  5.469E-01 .             .          *  .             .</comment>
<comment>1.632E+02  5.676E-01 .             .             .*            .</comment>      
<comment>1.842E+02  5.801E-01 .             .             .   *         .</comment>    
<comment>2.053E+02  5.865E-01 .             .             .    *        .</comment>   
<comment>2.263E+02  5.882E-01 .             .             .    *        .</comment>  
<comment>2.474E+02  5.864E-01 .             .             .    *        .</comment>
<comment>2.684E+02  5.820E-01 .             .             .   *         .</comment>
<comment>2.895E+02  5.755E-01 .             .             .  *          .</comment>      
<comment>3.105E+02  5.676E-01 .             .             .*            .</comment>     
<comment>3.316E+02  5.585E-01 .             .            *.             .</comment>   
<comment>3.526E+02  5.487E-01 .             .          *  .             .</comment> 
<comment>3.737E+02  5.384E-01 .             .        *    .             .</comment>
<comment>3.947E+02  5.277E-01 .             .     *       .             .</comment>       
<comment>4.158E+02  5.169E-01 .             .   *         .             .</comment>      
<comment>4.368E+02  5.060E-01 .             .*            .             .</comment>     
<comment>4.579E+02  4.951E-01 .            *.             .             .</comment>   
<comment>4.789E+02  4.843E-01 .         *   .             .             .</comment>  
<comment>5.000E+02  4.736E-01 .      *      .             .             .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>


<image>22031.png<caption>The response of a capacitive bandpass filter peaks within a narrow frequency range.</caption></image> 

<para>
Band-pass filters can also be constructed using inductors, but as mentioned before, the reactive ``purity'' of capacitors gives them a design advantage.  If we were to design a bandpass filter using inductors, it might look something like Figure<ref>02122.png below</ref>.
</para>

<image>02122.png<caption>Inductive band-pass filter.</caption></image> 

<para>
The fact that the high-pass section comes ``first'' in this design instead of the low-pass section makes no difference in its overall operation.  It will still filter out all frequencies too high or too low.
</para>

<index>Attenuation</index>

<para>
While the general idea of combining low-pass and high-pass filters together to make a bandpass filter is sound, it is not without certain limitations.  Because this type of band-pass filter works by relying on either section to <italic>block</italic> unwanted frequencies, it can be difficult to design such a filter to allow unhindered passage within the desired frequency range.  Both the low-pass and high-pass sections will always be blocking signals to some extent, and their combined effort makes for an attenuated (reduced amplitude) signal at best, even at the peak of the ``pass-band'' frequency range.  Notice the curve peak on the previous SPICE analysis: the load voltage of this filter never rises above 0.59 volts, although the source voltage is a full volt.  This signal attenuation becomes more pronounced if the filter is designed to be more selective (steeper curve, narrower band of passable frequencies).
</para>

<para>
There are other methods to achieve band-pass operation without sacrificing signal strength within the pass-band.  We will discuss those methods a little later in this chapter.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>band-pass</italic> filter works to screen out frequencies that are too low or too high, giving easy passage only to frequencies within a certain range.</item>
<item>Band-pass filters can be made by stacking a low-pass filter on the end of a high-pass filter, or vice versa.</item>
<item>``Attenuate'' means to reduce or diminish in amplitude.  When you turn down the volume control on your stereo, you are ``attenuating'' the signal being sent to the speakers.</item>
</itemize>

</section>






<section>
<sectiontitle>Band-stop filters</sectiontitle>

<index>Band-stop filter</index>
<index>Band-reject filter</index>
<index>Band-elimination filter</index>
<index>Notch filter</index>
<index>Filter, band-stop</index>
<index>Filter, band-reject</index>
<index>Filter, band-elimination</index>
<index>Filter, notch</index>

<para>
Also called <italic>band-elimination</italic>, <italic>band-reject</italic>, or <italic>notch</italic> filters, this kind of filter passes all frequencies above and below a particular range set by the component values.  Not surprisingly, it can be made out of a low-pass and a high-pass filter, just like the band-pass design, except that this time we connect the two filter sections in parallel with each other instead of in series. (Figure<ref>02261.png below</ref>)
</para>

<image>02261.png<caption>System level block diagram of a band-stop filter.</caption></image> 

<para>
Constructed using two capacitive filter sections, it looks something like  (Figure<ref>02123.png below</ref>).
</para>

<image>02123.png<caption>``Twin-T'' band-stop filter.</caption></image> 

<para>
The low-pass filter section is comprised of R<subscript>1</subscript>, R<subscript>2</subscript>, and C<subscript>1</subscript> in a ``T'' configuration.  The high-pass filter section is comprised of C<subscript>2</subscript>, C<subscript>3</subscript>, and R<subscript>3</subscript> in a ``T'' configuration as well.  Together, this arrangement is commonly known as a ``Twin-T'' filter, giving sharp response when the component values are chosen in the following ratios:
</para>

<image>12098.png</image> 

<para>
Given these component ratios, the frequency of maximum rejection (the ``notch frequency'') can be calculated as follows:
</para>

<image>12099.png</image> 

<para>
The impressive band-stopping ability of this filter is illustrated by the following SPICE analysis:  (Figure<ref>22032.png below</ref>)
</para>

<table>
<literal>
twin-t bandstop filter
v1 1 0 ac 1 sin 
r1 1 2 200      
c1 2 0 2u       
r2 2 3 200      
c2 1 4 1u       
r3 4 0 100      
c3 4 3 1u       
rload 3 0 1k    
.ac lin 20 200 1.5k     
.plot ac v(3)   
.end    
</literal>
</table>



<comment>freq       v(3)  1.000E-02  3.162E-02  1.000E-01    3.162E-01</comment>  
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>2.000E+02  5.400E-01 .         .           .             .      *.</comment>
<comment>2.684E+02  4.512E-01 .         .           .             .   *   .</comment>
<comment>3.368E+02  3.686E-01 .         .           .             . *     .</comment>
<comment>4.053E+02  2.946E-01 .         .           .            *.       .</comment>
<comment>4.737E+02  2.290E-01 .         .           .         *   .       .</comment>
<comment>5.421E+02  1.707E-01 .         .           .      *      .       .</comment>
<comment>6.105E+02  1.185E-01 .         .           . *           .       .</comment>
<comment>6.789E+02  7.134E-02 .         .       *   .             .       .</comment>
<comment>7.474E+02  2.832E-02 .        *.           .             .       .</comment>
<comment>8.158E+02  1.126E-02 .*        .           .             .       .</comment>
<comment>8.842E+02  4.796E-02 .         .    *      .             .       .</comment>
<comment>9.526E+02  8.222E-02 .         .         * .             .       .</comment>
<comment>1.021E+03  1.144E-01 .         .           . *           .       .</comment>
<comment>1.089E+03  1.447E-01 .         .           .   *         .       .</comment>
<comment>1.158E+03  1.734E-01 .         .           .      *      .       .</comment>
<comment>1.226E+03  2.007E-01 .         .           .       *     .       .</comment>
<comment>1.295E+03  2.267E-01 .         .           .         *   .       .</comment>
<comment>1.363E+03  2.515E-01 .         .           .          *  .       .</comment>
<comment>1.432E+03  2.752E-01 .         .           .           * .       .</comment>
<comment>1.500E+03  2.980E-01 .         .           .            *.       .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<bigspace>
<image>22032.png<caption>Response of ``twin-T'' band-stop filter.</caption></image> 
<bigspace>


<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>band-stop</italic> filter works to screen out frequencies that are within a certain range, giving easy passage only to frequencies outside of that range.  Also known as <italic>band-elimination</italic>, <italic>band-reject</italic>, or <italic>notch</italic> filters.</item>
<item>Band-stop filters can be made by placing a low-pass filter in parallel with a high-pass filter.  Commonly, both the low-pass and high-pass filter sections are of the ``T'' configuration, giving the name ``Twin-T'' to the band-stop combination.</item>
<item>The frequency of maximum attenuation is called the <italic>notch</italic> frequency.</item>
</itemize>

</section>






<section>
<sectiontitle>Resonant filters</sectiontitle>

<index>Resonant filter</index>
<index>Filter, resonant</index>

<para>
So far, the filter designs we've concentrated on have employed <italic>either</italic> capacitors <italic>or</italic> inductors, but never both at the same time.  We should know by now that combinations of L and C will tend to resonate, and this property can be exploited in designing band-pass and band-stop filter circuits.
</para>

<para>
Series LC circuits give minimum impedance at resonance, while parallel LC (``tank'') circuits give maximum impedance at their resonant frequency.  Knowing this, we have two basic strategies for designing either band-pass or band-stop filters.
</para>

<para>
For band-pass filters, the two basic resonant strategies are this: series LC to pass a signal (Figure<ref>02124.png below</ref>),
<comment>split for double ref</comment>

or parallel LC (Figure<ref>02125.png below</ref>) to short a signal.  The two schemes will be contrasted and simulated here:
</para>

<image>02124.png<caption>Series resonant LC band-pass filter.</caption></image> 

<para>
Series LC components pass signal at resonance, and block signals of any other frequencies from getting to the load. (Figure<ref>22033.png below</ref>)
</para>

<table>
<literal>
series resonant bandpass filter
v1 1 0 ac 1 sin 
l1 1 2 1
c1 2 3 1u       
rload 3 0 1k    
.ac lin 20 50 250       
.plot ac v(3)   
.end    
</literal>
</table>


<comment>freq       v(3)   2.512E-01   3.981E-01    6.310E-01    1.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>
<comment>5.000E+01  3.291E-01 .     *     .             .             .</comment>
<comment>6.053E+01  4.063E-01 .           .*            .             .</comment>
<comment>7.105E+01  4.870E-01 .           .     *       .             .</comment>
<comment>8.158E+01  5.708E-01 .           .          *  .             .</comment>
<comment>9.211E+01  6.564E-01 .           .             .*            .</comment>
<comment>1.026E+02  7.411E-01 .           .             .    *        .</comment>
<comment>1.132E+02  8.210E-01 .           .             .       *     .</comment>
<comment>1.237E+02  8.910E-01 .           .             .         *   .</comment>
<comment>1.342E+02  9.460E-01 .           .             .           * .</comment>
<comment>1.447E+02  9.824E-01 .           .             .            *.</comment>
<comment>1.553E+02  9.988E-01 .           .             .             *</comment>
<comment>1.658E+02  9.967E-01 .           .             .             *</comment>
<comment>1.763E+02  9.796E-01 .           .             .            *.</comment>
<comment>1.868E+02  9.518E-01 .           .             .           * .</comment>
<comment>1.974E+02  9.174E-01 .           .             .          *  .</comment>
<comment>2.079E+02  8.797E-01 .           .             .         *   .</comment>
<comment>2.184E+02  8.408E-01 .           .             .        *    .</comment>
<comment>2.289E+02  8.026E-01 .           .             .      *      .</comment>
<comment>2.395E+02  7.657E-01 .           .             .     *       .</comment>
<comment>2.500E+02  7.307E-01 .           .             .   *         .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>

<image>22033.png<caption>Series resonant band-pass filter: voltage peaks at resonant frequency of 159.15 Hz.</caption></image> 

<index>Selectivity</index>
<index>Filter ``selectivity''</index>

<para>
A couple of points to note: see how there is virtually no signal attenuation within the ``pass band'' (the range of frequencies near the load voltage peak), unlike the band-pass filters made from capacitors or inductors alone.  Also, since this filter works on the principle of series LC resonance, the resonant frequency of which is unaffected by circuit resistance, the value of the load resistor will not skew the peak frequency.  However, different values for the load resistor <italic>will</italic> change the ``steepness'' of the Bode plot (the ``selectivity'' of the filter).
</para>

<para>
The other basic style of resonant band-pass filters employs a tank circuit (parallel LC combination) to short out signals too high or too low in frequency from getting to the load: (Figure<ref>02125.png below</ref>)
</para>

<image>02125.png<caption>Parallel resonant band-pass filter.</caption></image> 

<para>
The tank circuit will have a lot of impedance at resonance, allowing the signal to get to the load with minimal attenuation.  Under or over resonant frequency, however, the tank circuit will have a low impedance, shorting out the signal and dropping most of it across series resistor R<subscript>1</subscript>. (Figure<ref>22034.png below</ref>)
</para>

<table>
<literal>
parallel resonant bandpass filter            
v1 1 0 ac 1 sin 
r1 1 2 500      
l1 2 0 100m     
c1 2 0 10u      
rload 2 0 1k    
.ac lin 20 50 250       
.plot ac v(2)   
.end    
</literal>
</table>



<comment>freq       v(2)   3.162E-02   1.000E-01    3.162E-01     1.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>
<comment>5.000E+01  6.933E-02 .       *   .             .             .</comment>
<comment>6.053E+01  8.814E-02 .         * .             .             .</comment>
<comment>7.105E+01  1.100E-01 .           .*            .             .</comment>
<comment>8.158E+01  1.361E-01 .           .   *         .             .</comment>
<comment>9.211E+01  1.684E-01 .           .     *       .             .</comment>
<comment>1.026E+02  2.096E-01 .           .        *    .             .</comment>
<comment>1.132E+02  2.640E-01 .           .           * .             .</comment>
<comment>1.237E+02  3.382E-01 .           .             .*            .</comment>
<comment>1.342E+02  4.392E-01 .           .             .   *         .</comment>
<comment>1.447E+02  5.630E-01 .           .             .      *      .</comment>
<comment>1.553E+02  6.578E-01 .           .             .        *    .</comment>
<comment>1.658E+02  6.432E-01 .           .             .        *    .</comment>
<comment>1.763E+02  5.503E-01 .           .             .      *      .</comment>
<comment>1.868E+02  4.543E-01 .           .             .   *         .</comment>
<comment>1.974E+02  3.792E-01 .           .             . *           .</comment>
<comment>2.079E+02  3.234E-01 .           .             *             .</comment>
<comment>2.184E+02  2.816E-01 .           .            *.             .</comment>
<comment>2.289E+02  2.495E-01 .           .          *  .             .</comment>
<comment>2.395E+02  2.242E-01 .           .         *   .             .</comment>
<comment>2.500E+02  2.038E-01 .           .        *    .             .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>

<image>22034.png<caption>Parallel resonant filter: voltage peaks a resonant frequency of 159.15 Hz.</caption></image> 

<para>
Just like the low-pass and high-pass filter designs relying on a series resistance and a parallel ``shorting'' component to attenuate unwanted frequencies, this resonant circuit can never provide full input (source) voltage to the load.  That series resistance will always be dropping some amount of voltage so long as there is a load resistance connected to the output of the filter.
</para>

<index>Tuner circuit, radio</index>

<para>
It should be noted that this form of band-pass filter circuit is very popular in analog radio tuning circuitry, for selecting a particular radio frequency from the multitudes of frequencies available from the antenna.  In most analog radio tuner circuits, the rotating dial for station selection moves a variable capacitor in a tank circuit.
</para>

<image>52004.jpg<caption>Variable capacitor tunes radio receiver tank circuit to select one out of many broadcast stations.</caption></image> 

<para>
The variable capacitor and air-core inductor shown in Figure<ref>52004.jpg above</ref>  photograph of a simple radio comprise the main elements in the tank circuit filter used to discriminate one radio station's signal from another.
</para>

<para>
Just as we can use series and parallel LC resonant circuits to pass only those frequencies within a certain range, we can also use them to block frequencies within a certain range, creating a band-stop filter.  Again, we have two major strategies to follow in doing this, to use either series or parallel resonance.  First, we'll look at the series variety: (Figure<ref>02126.png below</ref>)
</para>

<image>02126.png<caption>Series resonant band-stop filter.</caption></image> 

<para>
When the series LC combination reaches resonance, its very low impedance shorts out the signal, dropping it across resistor R<subscript>1</subscript> and preventing its passage on to the load. (Figure<ref>22035.png below</ref>)
</para>


<table>
<literal>
series resonant bandstop filter    
v1 1 0 ac 1 sin 
r1 1 2 500      
l1 2 3 100m     
c1 3 0 10u      
rload 2 0 1k    
.ac lin 20 70 230       
.plot ac v(2)   
.end    
</literal>
</table>




<comment>freq       v(2)   1.000E-03  1.000E-02   1.000E-01     1.000E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment> 
<comment>7.000E+01  3.213E-01 .         .             .      *      .</comment>
<comment>7.842E+01  2.791E-01 .         .             .     *       .</comment>
<comment>8.684E+01  2.401E-01 .         .             .    *        .</comment>
<comment>9.526E+01  2.041E-01 .         .             .   *         .</comment>
<comment>1.037E+02  1.708E-01 .         .             .  *          .</comment>
<comment>1.121E+02  1.399E-01 .         .             . *           .</comment>
<comment>1.205E+02  1.111E-01 .         .             .*            .</comment>
<comment>1.289E+02  8.413E-02 .         .            *.             .</comment>
<comment>1.374E+02  5.887E-02 .         .          *  .             .</comment>
<comment>1.458E+02  3.508E-02 .         .       *     .             .</comment>
<comment>1.542E+02  1.262E-02 .         .*            .             .</comment>
<comment>1.626E+02  8.644E-03 .        *.             .             .</comment>
<comment>1.711E+02  2.884E-02 .         .     *       .             .</comment>
<comment>1.795E+02  4.805E-02 .         .         *   .             .</comment>
<comment>1.879E+02  6.638E-02 .         .           * .             .</comment>
<comment>1.963E+02  8.388E-02 .         .            *.             .</comment>
<comment>2.047E+02  1.006E-01 .         .             *             .</comment>
<comment>2.132E+02  1.167E-01 .         .             .*            .</comment>
<comment>2.216E+02  1.321E-01 .         .             . *           .</comment>
<comment>2.300E+02  1.469E-01 .         .             . *           .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>

<image>22035.png<caption>Series resonant band-stop filter: Notch frequency = LC resonant frequency (159.15 Hz).</caption></image> 

<para>
Next, we will examine the parallel resonant band-stop filter: (Figure<ref>02127.png below</ref>)
</para>

<image>02127.png<caption>Parallel resonant band-stop filter.</caption></image> 

<para>
The parallel LC components present a high impedance at resonant frequency, thereby blocking the signal from the load at that frequency.  Conversely, it passes signals to the load at any other frequencies. (Figure<ref>22036.png below</ref>)
</para>


<table>
<literal>
parallel resonant bandstop filter  
v1 1 0 ac 1 sin 
l1 1 2 100m     
c1 1 2 10u      
rload 2 0 1k    
.ac lin 20 100 200      
.plot ac v(2)   
.end    
</literal>
</table>


<comment>freq       v(2)  3.162E-02  1.000E-01    3.162E-01    1.000E+00 </comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment> 
<comment>1.000E+02  9.947E-01 .         .             .             *     .</comment> 
<comment>1.053E+02  9.932E-01 .         .             .             *     .</comment> 
<comment>1.105E+02  9.911E-01 .         .             .             *     .</comment> 
<comment>1.158E+02  9.883E-01 .         .             .             *     .</comment> 
<comment>1.211E+02  9.841E-01 .         .             .             *     .</comment> 
<comment>1.263E+02  9.778E-01 .         .             .             *     .</comment> 
<comment>1.316E+02  9.675E-01 .         .             .             *     .</comment> 
<comment>1.368E+02  9.497E-01 .         .             .            *.     .</comment> 
<comment>1.421E+02  9.152E-01 .         .             .            *.     .</comment> 
<comment>1.474E+02  8.388E-01 .         .             .           * .     .</comment> 
<comment>1.526E+02  6.420E-01 .         .             .        *    .     .</comment> 
<comment>1.579E+02  1.570E-01 .         .    *        .             .     .</comment> 
<comment>1.632E+02  4.450E-01 .         .             .   *         .     .</comment> 
<comment>1.684E+02  7.496E-01 .         .             .         *   .     .</comment> 
<comment>1.737E+02  8.682E-01 .         .             .           * .     .</comment> 
<comment>1.789E+02  9.201E-01 .         .             .            *.     .</comment> 
<comment>1.842E+02  9.465E-01 .         .             .            *.     .</comment> 
<comment>1.895E+02  9.616E-01 .         .             .             *     .</comment> 
<comment>1.947E+02  9.710E-01 .         .             .             *     .</comment> 
<comment>2.000E+02  9.773E-01 .         .             .             *     .</comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment> 


<image>22036.png<caption>Parallel resonant band-stop filter: Notch frequency = LC resonant frequency (159.15 Hz).</caption></image> 

<para>
Once again, notice how the absence of a series resistor makes for minimum attenuation for all the desired (passed) signals.  The amplitude at the notch frequency, on the other hand, is very low.  In other words, this is a very ``selective'' filter.
</para>

<para>
In all these resonant filter designs, the selectivity depends greatly upon the ``purity'' of the inductance and capacitance used.  If there is any stray resistance (especially likely in the inductor), this will diminish the filter's ability to finely discriminate frequencies, as well as introduce antiresonant effects that will skew the peak/notch frequency.
</para>

<para>
A word of caution to those designing low-pass and high-pass filters is in order at this point.  After assessing the standard RC and LR low-pass and high-pass filter designs, it might occur to a student that a better, more effective design of low-pass or high-pass filter might be realized by combining capacitive and inductive elements together like Figure<ref>02128.png below</ref>.
</para>

<image>02128.png<caption>Capacitive Inductive low-pass filter.</caption></image> 

<para>
The inductors should block any high frequencies, while the capacitor should short out any high frequencies as well, both working together to allow only low frequency signals to reach the load.
</para>

<para>
At first, this seems to be a good strategy, and eliminates the need for a series resistance.  However, the more insightful student will recognize that any combination of capacitors and inductors together in a circuit is likely to cause resonant effects to happen at a certain frequency.  Resonance, as we have seen before, can cause strange things to happen.  Let's plot a SPICE analysis and see what happens over a wide frequency range: (Figure<ref>22037.png below</ref>)
</para>

<table>
<literal>
lc lowpass filter  
v1 1 0 ac 1 sin 
l1 1 2 100m     
c1 2 0 1u       
l2 2 3 100m     
rload 3 0 1k    
.ac lin 20 100 1k       
.plot ac v(3)   
.end    
</literal>
</table>


<comment>freq       v(3)  1.000E-01  3.162E-01    1.000E+00    3.162E+00</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>1.000E+02  1.033E+00 .         .             *             .</comment>  
<comment>1.474E+02  1.074E+00 .         .             .*            .</comment>  
<comment>1.947E+02  1.136E+00 .         .             . *           .</comment>  
<comment>2.421E+02  1.228E+00 .         .             . *           .</comment>  
<comment>2.895E+02  1.361E+00 .         .             .   *         . </comment>
<comment>3.368E+02  1.557E+00 .         .             .    *        .</comment>  
<comment>3.842E+02  1.853E+00 .         .             .       *     .</comment>  
<comment>4.316E+02  2.308E+00 .         .             .         *   .</comment>  
<comment>4.789E+02  2.919E+00 .         .             .            *.</comment>  
<comment>5.263E+02  3.185E+00 .         .             .             * </comment> 
<comment>5.737E+02  2.553E+00 .         .             .          *  .</comment>  
<comment>6.211E+02  1.802E+00 .         .             .      *      .</comment>  
<comment>6.684E+02  1.298E+00 .         .             .  *          .</comment>  
<comment>7.158E+02  9.778E-01 .         .             *             .</comment>  
<comment>7.632E+02  7.650E-01 .         .          *  .             .</comment>  
<comment>8.105E+02  6.165E-01 .         .       *     .             .</comment>  
<comment>8.579E+02  5.084E-01 .         .     *       .             .</comment>  
<comment>9.053E+02  4.268E-01 .         .   *         .             .</comment>  
<comment>9.526E+02  3.635E-01 .         . *           .             .</comment>  
<comment>1.000E+03  3.133E-01 .         *             .             .</comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<bigspace>
<image>22037.png<caption>Unexpected response of L-C low-pass filter.</caption></image> 

<para>
What was supposed to be a low-pass filter turns out to be a band-pass filter with a peak somewhere around 526 Hz!  The capacitance and inductance in this filter circuit are attaining resonance at that point, creating a large voltage drop around C<subscript>1</subscript>, which is seen at the load, regardless of L<subscript>2</subscript>'s attenuating influence.  The output voltage to the load at this point actually exceeds the input (source) voltage!  A little more reflection reveals that if L<subscript>1</subscript> and C<subscript>2</subscript> are at resonance, they will impose a very heavy (very low impedance) load on the AC source, which might not be good either.  We'll run the same analysis again, only this time plotting C<subscript>1</subscript>'s voltage, vm(2) in Figure<ref>22038.png below</ref>, and the source current, I(v1),  along with load voltage, vm(3):
</para>


<comment>legend:</comment>
<comment>*: v(3)</comment>    
<comment>+: v(2)</comment>    
<comment>=: i(v1)</comment>   
<comment>freq       v(3) </comment>   
<comment>( *)---------  1.000E-01     3.162E-01     1.000E+00     3.162E+00</comment>
<comment>(+)----------  3.162E-01     1.000E+00     3.162E+00     1.000E+01</comment>
<comment>(=)----------  1.000E-03     3.162E-03     1.000E-02     3.162E-02</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>
<comment>1.000E+02  1.033E+00 . =           +             *             .</comment>
<comment>1.474E+02  1.074E+00 .   =         .+            .*            .</comment>
<comment>1.947E+02  1.136E+00 .     =       . +           . *           .</comment>
<comment>2.421E+02  1.228E+00 .        =    .  +          . *           .</comment>
<comment>2.895E+02  1.361E+00 .           = .   +         .   *         .</comment>
<comment>3.368E+02  1.557E+00 .             .=    +       .    *        .</comment>
<comment>3.842E+02  1.853E+00 .             .   =   +     .       *     .</comment>
<comment>4.316E+02  2.308E+00 .             .       =  +  .         *   .</comment>
<comment>4.789E+02  2.919E+00 .             .           = +            *.</comment>
<comment>5.263E+02  3.185E+00 .             .             .x            *</comment>
<comment>5.737E+02  2.553E+00 .             .           +=.          *  .</comment>
<comment>6.211E+02  1.802E+00 .             .       + =   .      *      .</comment>
<comment>6.684E+02  1.298E+00 .             .   +  =      .  *          .</comment>
<comment>7.158E+02  9.778E-01 .             .+  =         *             .</comment>
<comment>7.632E+02  7.650E-01 .           + . =        *  .             .</comment>
<comment>8.105E+02  6.165E-01 .         +   =       *     .             .</comment>
<comment>8.579E+02  5.084E-01 .      +     =.     *       .             .</comment>
<comment>9.053E+02  4.268E-01 .    +      = .   *         .             .</comment>
<comment>9.526E+02  3.635E-01 .   +     =   . *           .             .</comment>
<comment>1.000E+03  3.133E-01 . +      =    *             .             .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - </comment>


<image>22038.png<caption>Current inceases at the unwanted resonance of the L-C low-pass filter.</caption></image> 

<para>
Sure enough, we see the voltage across C<subscript>1</subscript> and the source current spiking to a high point at the same frequency where the load voltage is maximum.  If we were expecting this filter to provide a simple low-pass function, we might be disappointed by the results.  
</para>

<para>
The problem is that an L-C filter has an input impedance and an output impedance which must be matched. The voltage source impedance must match the input impedance of the filter, and the filter output impedance must be matched by ``rload'' for a flat response. The input and output impedance is given by the square root of (L/C).
</para>

<table>
<literal>
<sp>          Z = (L/C)<superscript>1/2</superscript>
</literal>
</table>

<para>
Taking the component values from  (Figure<ref>02128.png below</ref>), we can find the impedance of the filter, and the required , R<subscript>g</subscript> and R<subscript>load</subscript> to match it.
</para>

<table>
<literal>
<sp>               For L= 100 mH,<sp><sp><sp>C= 1<mu>F
<sp>          Z = (L/C)<superscript>1/2</superscript>=((100 mH)/(1 <mu>F))<superscript>1/2</superscript> = 316 <OMEGA>
</literal>
</table>

<para>
In Figure<ref>02517.png below</ref> we have added R<subscript>g</subscript> = 316 <OMEGA> to the generator, and changed the load R<subscript>load</subscript> from 1000 <OMEGA> to 316 <OMEGA>.  Note that if we needed to drive a 1000 <OMEGA> load, the L/C ratio could have been adjusted to match that  resistance.
</para>

<image>02517.png<caption>Circuit of source and  load matched L-C low-pass filter.</caption></image> 

<table>
<literal>
LC matched lowpass filter  
V1 1 0 ac 1 SIN
Rg 1 4 316
L1 4 2 100m
C1 2 0 1.0u
L2 2 3 100m
Rload 3 0 316
.ac lin 20 100 1k       
.plot ac v(3)   
.end    
</literal>
</table>



<para>
Figure<ref>22056.png below</ref> shows the ``flat'' response of the L-C low pass filter when the source and load impedance match the filter input and output impedances. 
</para>

<image>22056.png<caption>The response of impedance matched  L-C low-pass filter is nearly flat up to the cut-off frequency.</caption></image> 

<index>swinging choke</index>
<index>choke, swinging</index>
<para>
The point to make in comparing the response of the unmatched filter  (Figure<ref>22037.png above</ref>)
<comment>split for double ref</comment>
 to the matched filter (Figure<ref>22056.png above</ref>) is that variable load on the filter produces a considerable change in voltage. This property is directly applicable to L-C filtered power supplies-- the <italic>regulation</italic> is poor. The power supply voltage changes with a change in load. This is undesirable. 
</para>

<para>
This poor load regulation can be  mitigated by a <italic>swinging choke</italic>. This is a <italic>choke</italic>, inductor,  designed to <italic>saturate</italic> when a large DC current passes through it. By saturate, we mean that the DC current creates a ``too'' high level of flux in the magnetic core, so that the AC component of current cannot vary the flux. Since induction is proportional to d<PHI>/dt, the inductance is decreased by the heavy DC current.  The decrease in inductance decreases reactance X<subscript>L</subscript>. Decreasing reactance, reduces the voltage drop across the inductor; thus, increasing the voltage at the filter output. This improves the voltage regulation with respect to variable loads.
</para>


<para>
Despite the unintended resonance, low-pass filters made up of capacitors and inductors are frequently used as final stages in AC/DC power supplies to filter the unwanted AC ``ripple'' voltage out of the DC converted from AC.  Why is this, if this particular filter design possesses a potentially troublesome resonant point?
</para>

<para>
The answer lies in the selection of filter component sizes and the frequencies encountered from an AC/DC converter (rectifier).  What we're trying to do in an AC/DC power supply filter is separate DC voltage from a small amount of relatively high-frequency AC voltage.  The filter inductors and capacitors are generally quite large (several Henrys for the inductors and thousands of <mu>F for the capacitors is typical), making the filter's resonant frequency very, very low.  DC of course, has a ``frequency'' of zero, so there's no way it can make an LC circuit resonate.  The ripple voltage, on the other hand, is a non-sinusoidal AC voltage consisting of a fundamental frequency at least twice the frequency of the converted AC voltage, with harmonics many times that in addition.  For plug-in-the-wall power supplies running on 60 Hz AC power (60 Hz United States; 50 Hz in Europe), the lowest frequency the filter will ever see is 120 Hz (100 Hz in Europe), which is well above its resonant point.  Therefore, the potentially troublesome resonant point in a such a filter is completely avoided.
</para>

<para>
The following SPICE analysis calculates the voltage output (AC and DC) for such a filter, with series DC and AC (120 Hz) voltage sources providing a rough approximation of the mixed-frequency output of an AC/DC converter.
</para>
<bigspace>
<image>02129.png<caption>AC/DC power suppply filter provides ``ripple free'' DC power.</caption></image> 

<table>
<literal>
ac/dc power supply filter  
v1 1 0 ac 1 sin 
v2 2 1 dc       
l1 2 3 3
c1 3 0 9500u    
l2 3 4 2
rload 4 0 1k    
.dc v2 12 12 1  
.ac lin 1 120 120       
.print dc v(4)  
.print ac v(4)  
.end    
</literal>
</table>

<table>
<literal>
v2            v(4)            
1.200E+01     1.200E+01   DC voltage at load = 12 volts
<sp>
freq          v(4)            
1.200E+02     3.412E-05   AC voltage at load = 34.12 microvolts
</literal>
</table>


<para>
With a full 12 volts DC at the load and only 34.12 <mu>V of AC left from the 1 volt AC source imposed across the load, this circuit design proves itself to be a very effective power supply filter.
</para>

<para>
The lesson learned here about resonant effects also applies to the design of high-pass filters using both capacitors and inductors.  So long as the desired and undesired frequencies are well to either side of the resonant point, the filter will work OK.  But if any signal of significant magnitude close to the resonant frequency is applied to the input of the filter, strange things will happen!
</para>

<table>
<itemize>
<item><bold>REVIEW:</bold></item>
<item>Resonant combinations of capacitance and inductance can be employed to create very effective band-pass and band-stop filters without the need for added resistance in a circuit that would diminish the passage of desired frequencies.</item>
<item>
<image>12091.png</image> 
</item>
</itemize>
</table>

</section>






<section>
<sectiontitle>Summary</sectiontitle>

<para>
As lengthy as this chapter has been up to this point, it only begins to scratch the surface of filter design.  A quick perusal of any advanced filter design textbook is sufficient to prove my point.  The mathematics involved with component selection and frequency response prediction is daunting to say the least -- well beyond the scope of the beginning electronics student.  It has been my intent here to present the basic principles of filter design with as little math as possible, leaning on the power of the SPICE circuit analysis program to explore filter performance.  The benefit of such computer simulation software cannot be understated, for the beginning student or for the working engineer.
</para>

<para>
Circuit simulation software empowers the student to explore circuit designs far beyond the reach of their math skills.  With the ability to generate Bode plots and precise figures, an intuitive understanding of circuit concepts can be attained, which is something often lost when a student is burdened with the task of solving lengthy equations by hand.  If you are not familiar with the use of SPICE or other circuit simulation programs, take the time to become so!  It will be of great benefit to your study.  To see SPICE analyses presented in this book is an aid to understanding circuits, but to actually set up and analyze your own circuit simulations is a much more engaging and worthwhile endeavor as a student.
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

