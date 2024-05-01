
<comment>Modified 04/23/2005 (DC) -- added nutmeg spice plots commented out existing plots.</comment>
<comment>02/12/2006 (DC) Oscilloscope and spectrum analyzer eps's 02279.eps to 02292.eps appear to not conform to the ``screen shots'' convention of 22xxx.png series numbers. Experimentally moved one image to 22050.png  the resulting 22050.eps was smaller file than the original 02279.eps.  However, it a little too big for the latex-pdf book due to 50% scale factor instead of 42% scalefactor in Makefile eps target.The reason these images are soo big is that Tony's original smaller images were unreadable in the latex-pdf, though ok in html. I made these images larger some months ago to make them readable in latex-pdf. I am reluctant to make them smaller again. I opt to leave them as-is.</comment>
<chapter>
<chaptertitle>MIXED-FREQUENCY AC SIGNALS</chaptertitle>

<section>
<sectiontitle>Introduction</sectiontitle>

<index>Sinusoidal</index>
<index>Nonsinusoidal</index>
<index>Waveform, sinusoidal</index>
<index>Waveform, nonsinusoidal</index>

<para>
In our study of AC circuits thus far, we've explored circuits powered by a single-frequency sine voltage waveform.  In many applications of electronics, though, single-frequency signals are the exception rather than the rule.  Quite often we may encounter circuits where multiple frequencies of voltage coexist simultaneously.  Also, circuit waveforms may be something other than sine-wave shaped, in which case we call them <italic>non-sinusoidal waveforms</italic>.  
</para>

<para>
Additionally, we may encounter situations where DC is mixed with AC: where a waveform is superimposed on a steady (DC) signal.  The result of such a mix is a signal varying in intensity, but never changing polarity, or changing polarity asymmetrically (spending more time positive than negative, for example).  Since DC does not alternate as AC does, its ``frequency'' is said to be zero, and any signal containing DC along with a signal of varying intensity (AC) may be rightly called a mixed-frequency signal as well.  In any of these cases where there is a mix of frequencies in the same circuit, analysis is more complex than what we've seen up to this point.
</para>

<index>Coupling, signal</index>
<index>Inductive coupling</index>
<index>Capacitive coupling</index>

<para>
Sometimes mixed-frequency voltage and current signals are created accidentally.  This may be the result of unintended connections between circuits -- called <italic>coupling</italic> -- made possible by stray capacitance and/or inductance between the conductors of those circuits.  A classic example of coupling phenomenon is seen frequently in industry where DC signal wiring is placed in close proximity to AC power wiring.  The nearby presence of high AC voltages and currents may cause ``foreign'' voltages to be impressed upon the length of the signal wiring.  Stray capacitance formed by the electrical insulation separating power conductors from signal conductors may cause voltage (with respect to earth ground) from the power conductors to be impressed upon the signal conductors, while stray inductance formed by parallel runs of wire in conduit may cause current from the power conductors to electromagnetically induce voltage along the signal conductors.  The result is a mix of DC and AC at the signal load.  The following schematic shows how an AC ``noise'' source may ``couple'' to a DC circuit through mutual inductance (M<subscript>stray</subscript>) and capacitance (C<subscript>stray</subscript>) along the length of the conductors.  (Figure<ref>02302.png below</ref>)
</para>

<image>02302.png<caption>Stray inductance and capacitance couple stray AC into desired DC signal.</caption></image> 

<index>Twisted pair cable</index>
<index>Shielded cable</index>
<index>Cable, twisted pair</index>
<index>Cable, shielded</index>

<para>
When stray AC voltages from a ``noise'' source mix with DC signals conducted along signal wiring, the results are usually undesirable.  For this reason, power wiring and low-level signal wiring should <italic>always</italic> be routed through separated, dedicated metal conduit, and signals should be conducted via 2-conductor ``twisted pair'' cable rather than through a single wire and ground connection: (Figure<ref>02303.png below</ref>)
</para>

<image>02303.png<caption>Shielded twisted pair minimized noise.</caption></image> 

<index>Shield grounding</index>

<para>
The grounded cable shield -- a wire braid or metal foil wrapped around the two insulated conductors -- isolates both conductors from electrostatic (capacitive) coupling by blocking any external electric fields, while the parallel proximity of the two conductors effectively cancels any electromagnetic (mutually inductive) coupling because any induced noise voltage will be approximately equal in magnitude and opposite in phase along both conductors, canceling each other at the receiving end for a net (differential) noise voltage of almost zero.  Polarity marks placed near each inductive portion of signal conductor length shows how the induced voltages are phased in such a way as to cancel one another.
</para>

<para>
Coupling may also occur between two sets of conductors carrying AC signals, in which case both signals may become ``mixed'' with each other: (Figure<ref>02304.png below</ref>)
</para>

<image>02304.png<caption>Coupling of AC signals between parallel conductors.</caption></image> 

<para>
Coupling is but one example of how signals of different frequencies may become mixed.  Whether it be AC mixed with DC, or two AC signals mixing with each other, signal coupling via stray inductance and capacitance is usually accidental and undesired.  In other cases, mixed-frequency signals are the result of intentional design or they may be an intrinsic quality of a signal.  It is generally quite easy to create mixed-frequency signal sources.  Perhaps the easiest way is to simply connect voltage sources in series: (Figure<ref>02109.png below</ref>)
</para>

<image>02109.png<caption>Series connection of voltage sources mixes signals.</caption></image> 

<para>
Some computer communications networks operate on the principle of superimposing high-frequency voltage signals along 60 Hz power-line conductors, so as to convey computer data along existing lengths of power cabling.  This technique has been used for years in electric power distribution networks to communicate load data along high-voltage power lines.  Certainly these are examples of mixed-frequency AC voltages, under conditions that are deliberately established.
</para>

<para>
In some cases, mixed-frequency signals may be produced by a single voltage source.  Such is the case with microphones, which convert audio-frequency air pressure waves into corresponding voltage waveforms.  The particular mix of frequencies in the voltage signal output by the microphone is dependent on the sound being reproduced.  If the sound waves consist of a single, pure note or tone, the voltage waveform will likewise be a sine wave at a single frequency.  If the sound wave is a chord or other harmony of several notes, the resulting voltage waveform produced by the microphone will consist of those frequencies mixed together.  Very few natural sounds consist of single, pure sine wave vibrations but rather are a mix of different frequency vibrations at different amplitudes.
</para>

<index>Harmonic</index>
<index>Fundamental frequency</index>
<index>Frequency, fundamental</index>
<index>Chord, music</index>

<para>
Musical <italic>chords</italic> are produced by blending one frequency with other frequencies of particular fractional multiples of the first.  However, investigating a little further, we find that even a single piano note (produced by a plucked string) consists of one predominant frequency mixed with several other frequencies, each frequency a whole-number multiple of the first (called <italic>harmonics</italic>, while the first frequency is called the <italic>fundamental</italic>).  An illustration of these terms is shown    in Table<ref>harmonic.tbl below</ref> with a fundamental frequency of 1000 Hz (an arbitrary figure chosen for this example).
</para>

<table>harmonic.tbl<caption>For a ``base'' frequency of 1000 Hz:</caption>
<tabular>{|l|l|}
<hr>

<tr>
<th>Frequency (Hz)</th><th>Term</th>
</tr>
<hr>

<tr>
<td>1000</td><td>1st harmonic, or fundamental</td>
</tr>
<hr>

<tr>
<td>2000</td><td>2nd harmonic</td>
</tr>
<hr>

<tr>
<td>3000</td><td>3rd harmonic</td>
</tr>
<hr>

<tr>
<td>4000</td><td>4th harmonic</td>
</tr>
<hr>

<tr>
<td>5000</td><td>5th harmonic</td>
</tr>
<hr>

<tr>
<td>6000</td><td>6th harmonic</td>
</tr>
<hr>

<tr>
<td>7000</td><td>7th harmonic</td>
</tr>
<hr>

</tabular>
</table>



<index>Overtone</index>

<para>
Sometimes the term ``overtone'' is used to describe the harmonic frequency produced by a musical instrument.  The ``first'' overtone is the first harmonic frequency <italic>greater than</italic> the fundamental.  If we had an instrument producing the entire range of harmonic frequencies shown in the table above, the first overtone would be 2000 Hz (the 2nd harmonic), while the second overtone would be 3000 Hz (the 3rd harmonic), etc.  However, this application of the term ``overtone'' is specific to particular instruments.  
</para>

<para>
It so happens that certain instruments are incapable of producing certain types of harmonic frequencies.  For example, an instrument made from a tube that is open on one end and closed on the other (such as a bottle, which produces sound when air is blown across the opening) is incapable of producing even-numbered harmonics.  Such an instrument set up to produce a fundamental frequency of 1000 Hz would also produce frequencies of 3000 Hz, 5000 Hz, 7000 Hz, etc, but would <italic>not</italic> produce 2000 Hz, 4000 Hz, 6000 Hz, or any other even-multiple frequencies of the fundamental.  As such, we would say that the first overtone (the first frequency greater than the fundamental) in such an instrument would be 3000 Hz (the 3rd harmonic), while the second overtone would be 5000 Hz (the 5th harmonic), and so on.
</para>

<para>
A pure sine wave (single frequency), being entirely devoid of any harmonics, sounds very ``flat'' and ``featureless'' to the human ear.  Most musical instruments are incapable of producing sounds this simple.  What gives each instrument its distinctive tone is the same phenomenon that gives each person a distinctive voice: the unique blending of harmonic waveforms with each fundamental note, described by the physics of motion for each unique object producing the sound.
</para>

<index>Timbre</index>
<index>Color (musical)</index>

<para>
Brass instruments do not possess the same ``harmonic content'' as woodwind instruments, and neither produce the same harmonic content as stringed instruments.  A distinctive blend of frequencies is what gives a musical instrument its characteristic tone.  As anyone who has played guitar can tell you, steel strings have a different sound than nylon strings.  Also, the tone produced by a guitar string changes depending on where along its length it is plucked.  These differences in tone, as well, are a result of different harmonic content produced by differences in the mechanical vibrations of an instrument's parts.  All these instruments produce harmonic frequencies (whole-number multiples of the fundamental frequency) when a single note is played, but the relative amplitudes of those harmonic frequencies are different for different instruments.  In musical terms, the measure of a tone's harmonic content is called <italic>timbre</italic> or <italic>color</italic>.
</para>

<para>
Musical tones become even more complex when the resonating element of an instrument is a two-dimensional surface rather than a one-dimensional string.  Instruments based on the vibration of a string (guitar, piano, banjo, lute, dulcimer, etc.) or of a column of air in a tube (trumpet, flute, clarinet, tuba, pipe organ, etc.) tend to produce sounds composed of a single frequency (the ``fundamental'') and a mix of harmonics.  Instruments based on the vibration of a flat plate (steel drums, and some types of bells), however, produce a much broader range of frequencies, not limited to whole-number multiples of the fundamental.  The result is a distinctive tone that some people find acoustically offensive.
</para>

<para>
As you can see, music provides a rich field of study for mixed frequencies and their effects.  Later sections of this chapter will refer to musical instruments as sources of waveforms for analysis in more detail.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>sinusoidal</italic> waveform is one shaped exactly like a sine wave.</item>
<item>A <italic>non-sinusoidal</italic> waveform can be anything from a distorted sine-wave shape to something completely different like a square wave.</item>
<item>Mixed-frequency waveforms can be accidently created, purposely created, or simply exist out of necessity.  Most musical tones, for instance, are not composed of a single frequency sine-wave, but are rich blends of different frequencies.</item>
<item>When multiple sine waveforms are mixed together (as is often the case in music), the lowest frequency sine-wave is called the <italic>fundamental</italic>, and the other sine-waves whose frequencies are whole-number multiples of the fundamental wave are called <italic>harmonics</italic>.</item>
<item>An <italic>overtone</italic> is a harmonic produced by a particular device.  The ``first'' overtone is the first frequency greater than the fundamental, while the ``second'' overtone is the next greater frequency produced.  Successive overtones may or may not correspond to incremental harmonics, depending on the device producing the mixed frequencies.  Some devices and systems do not permit the establishment of certain harmonics, and so their overtones would only include some (not all) harmonic frequencies.</item>
</itemize>

</section>






<section>
<sectiontitle>Square wave signals</sectiontitle>

<index>Square wave</index>
<index>Wave, square</index>

<para>
It has been found that <italic>any</italic> repeating, non-sinusoidal waveform can be equated to a combination of DC voltage, sine waves, and/or cosine waves (sine waves with a 90 degree phase shift) at various amplitudes and frequencies.  This is true no matter how strange or convoluted the waveform in question may be.  So long as it repeats itself regularly over time, it is reducible to this series of sinusoidal waves.  In particular, it has been found that square waves are mathematically equivalent to the sum of a sine wave at that same frequency, plus an infinite series of odd-multiple frequency sine waves at diminishing amplitude:
</para>

<image>12093.png</image> 

<para>
This truth about waveforms at first may seem too strange to believe.  However, if a square wave is actually an infinite series of sine wave harmonics added together, it stands to reason that we should be able to prove this by adding together several sine wave harmonics to produce a close approximation of a square wave.  This reasoning is not only sound, but easily demonstrated with SPICE.
</para>

<para>
The circuit we'll be simulating is nothing more than several sine wave AC voltage sources of the proper amplitudes and frequencies connected together in series.  We'll use SPICE to plot the voltage waveforms across successive additions of voltage sources, like this: (Figure<ref>02110.png below</ref>)
</para>

<image>02110.png<caption>A square wave is approximated by the sum of harmonics.</caption></image> 

<para>
In this particular SPICE simulation, I've summed the 1st, 3rd, 5th, 7th, and 9th harmonic voltage sources in series for a total of five AC voltage sources.  The fundamental frequency is 50 Hz and each harmonic is, of course, an integer multiple of that frequency.  The amplitude (voltage) figures are not random numbers; rather, they have been arrived at through the equations shown in the frequency series (the fraction 4/<pi> multiplied by 1, 1/3, 1/5, 1/7, etc. for each of the increasing odd harmonics). 
</para>

<table>
<literal>
building a squarewave 
v1 1 0 sin (0 1.27324 50 0 0)       1st harmonic (50 Hz)
v3 2 1 sin (0 424.413m 150 0 0)     3rd harmonic
v5 3 2 sin (0 254.648m 250 0 0)     5th harmonic
v7 4 3 sin (0 181.891m 350 0 0)     7th harmonic
v9 5 4 sin (0 141.471m 450 0 0)     9th harmonic
r1 5 0 10k      
.tran 1m 20m    
.plot tran v(1,0)    Plot 1st harmonic    
.plot tran v(2,0)    Plot 1st + 3rd harmonics
.plot tran v(3,0)    Plot 1st + 3rd + 5th harmonics
.plot tran v(4,0)    Plot 1st + 3rd + 5th + 7th harmonics
.plot tran v(5,0)    Plot 1st + . . . + 9th harmonics
.end 
</literal>
</table>

<para>
I'll narrate the analysis step by step from here, explaining what it is we're looking at.  In this first plot, we see the fundamental-frequency sine-wave of 50 Hz by itself.  It is nothing but a pure sine shape, with no additional harmonic content.  This is the kind of waveform produced by an ideal AC power source:  (Figure<ref>22013.png below</ref>)
</para>


<comment>time       v(1)          -1.000E+00    0.000E+00    1.000E+00 </comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  0.000E+00 .       .             *             .       .</comment>
<comment>1.000E-03  3.915E-01 .       .             .    *        .       .</comment>
<comment>2.000E-03  7.414E-01 .       .             .         *   .       .</comment>
<comment>3.000E-03  1.020E+00 .       .             .             *       .</comment>
<comment>4.000E-03  1.199E+00 .       .             .             .  *    .</comment>
<comment>5.000E-03  1.261E+00 .       .             .             .   *   .</comment>
<comment>6.000E-03  1.199E+00 .       .             .             .  *    .</comment>
<comment>7.000E-03  1.020E+00 .       .             .             *       .</comment>
<comment>8.000E-03  7.405E-01 .       .             .         *   .       .</comment>
<comment>9.000E-03  3.890E-01 .       .             .    *        .       .</comment>
<comment>1.000E-02 -5.819E-04 .       .             *             .       .</comment>
<comment>1.100E-02 -3.901E-01 .       .        *    .             .       .</comment>
<comment>1.200E-02 -7.414E-01 .       .   *         .             .       .</comment>
<comment>1.300E-02 -1.020E+00 .       *             .             .       .</comment>
<comment>1.400E-02 -1.199E+00 .    *  .             .             .       .</comment>
<comment>1.500E-02 -1.261E+00 .   *   .             .             .       .</comment>
<comment>1.600E-02 -1.199E+00 .    *  .             .             .       .</comment>
<comment>1.700E-02 -1.020E+00 .       *             .             .       .</comment>
<comment>1.800E-02 -7.405E-01 .       .   *         .             .       .</comment>
<comment>1.900E-02 -3.890E-01 .       .        *    .             .       .</comment>
<comment>2.000E-02  5.819E-04 .       .             *             .       .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>




<image>22013.png<caption>Pure 50 Hz sinewave.</caption></image> 

<para>
Next, we see what happens when this clean and simple waveform is combined with the third harmonic (three times 50 Hz, or 150 Hz).  Suddenly, it doesn't look like a clean sine wave any more: (Figure<ref>22014.png below</ref>)
</para>



<comment>time       v(2)          -1.000E+00    0.000E+00    1.000E+00</comment>  
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  0.000E+00 .       .             *             .       .</comment>
<comment>1.000E-03  7.199E-01 .       .             .         *   .       .</comment>
<comment>2.000E-03  1.108E+00 .       .             .             . *     .</comment>
<comment>3.000E-03  1.135E+00 .       .             .             . *     .</comment>
<comment>4.000E-03  9.672E-01 .       .             .             *       .</comment>
<comment>5.000E-03  8.731E-01 .       .             .           * .       .</comment>
<comment>6.000E-03  9.751E-01 .       .             .             *       .</comment>
<comment>7.000E-03  1.144E+00 .       .             .             . *     .</comment>
<comment>8.000E-03  1.111E+00 .       .             .             . *     .</comment>
<comment>9.000E-03  6.995E-01 .       .             .         *   .       .</comment>
<comment>1.000E-02 -5.697E-03 .       .             *             .       .</comment>
<comment>1.100E-02 -7.066E-01 .       .   *         .             .       .</comment>
<comment>1.200E-02 -1.108E+00 .     * .             .             .       .</comment>
<comment>1.300E-02 -1.135E+00 .     * .             .             .       .</comment>
<comment>1.400E-02 -9.672E-01 .       *             .             .       .</comment>
<comment>1.500E-02 -8.731E-01 .       . *           .             .       .</comment>
<comment>1.600E-02 -9.751E-01 .       *             .             .       .</comment>
<comment>1.700E-02 -1.144E+00 .     * .             .             .       .</comment>
<comment>1.800E-02 -1.111E+00 .     * .             .             .       .</comment>
<comment>1.900E-02 -6.995E-01 .       .   *         .             .       .</comment>
<comment>2.000E-02  5.697E-03 .       .             *             .       .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>

<image>22014.png<caption>Sum of 1st (50 Hz) and 3rd (150 Hz) harmonics approximates a 50 Hz square wave.</caption></image> 

<para>
The rise and fall times between positive and negative cycles are much steeper now, and the crests of the wave are closer to becoming flat like a squarewave.  Watch what happens as we add the next odd harmonic frequency: (Figure<ref>22015.png below</ref>)
</para>



     <comment>time      v(3)</comment>    

<comment>time       v(3)          -1.000E+00    0.000E+00     1.000E+00 </comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  0.000E+00 .       .             *             .       .</comment>
<comment>1.000E-03  9.436E-01 .       .             .            *.       .</comment>
<comment>2.000E-03  1.095E+00 .       .             .             .*      .</comment>
<comment>3.000E-03  9.388E-01 .       .             .            *.       .</comment>
<comment>4.000E-03  9.807E-01 .       .             .             *       .</comment>
<comment>5.000E-03  1.069E+00 .       .             .             .*      .</comment>
<comment>6.000E-03  9.616E-01 .       .             .            *.       .</comment>
<comment>7.000E-03  9.479E-01 .       .             .            *.       .</comment>
<comment>8.000E-03  1.124E+00 .       .             .             . *     .</comment>
<comment>9.000E-03  8.957E-01 .       .             .            *.       .</comment>
<comment>1.000E-02 -1.925E-02 .       .             *             .       .</comment>
<comment>1.100E-02 -9.029E-01 .       .*            .             .       .</comment>
<comment>1.200E-02 -1.095E+00 .      *.             .             .       .</comment>
<comment>1.300E-02 -9.388E-01 .       .*            .             .       .</comment>
<comment>1.400E-02 -9.807E-01 .       *             .             .       .</comment>
<comment>1.500E-02 -1.069E+00 .      *.             .             .       .</comment>
<comment>1.600E-02 -9.616E-01 .       .*            .             .       .</comment>
<comment>1.700E-02 -9.479E-01 .       .*            .             .       .</comment>
<comment>1.800E-02 -1.124E+00 .     * .             .             .       .</comment>
<comment>1.900E-02 -8.957E-01 .       .*            .             .       .</comment>
<comment>2.000E-02  1.925E-02 .       .             *             .       .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<image>22015.png<caption>Sum of 1st, 3rd and 5th harmonics approximates square wave.</caption></image> 

<para>
The most noticeable change here is how the crests of the wave have flattened even more.  There are more several dips and crests at each end of the wave, but those dips and crests are smaller in amplitude than they were before.  Watch again as we add the next odd harmonic waveform to the mix: (Figure<ref>22016.png below</ref>)
</para>



<comment>time       v(4)            -1.000E+00    0.000E+00    1.000E+00</comment>  
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  0.000E+00 .       .             *             .       .</comment>
<comment>1.000E-03  1.055E+00 .       .             .             .*      .</comment>
<comment>2.000E-03  9.861E-01 .       .             .             *       .</comment>
<comment>3.000E-03  9.952E-01 .       .             .             *       .</comment>
<comment>4.000E-03  1.023E+00 .       .             .             *       .</comment>
<comment>5.000E-03  9.631E-01 .       .             .            *.       .</comment>
<comment>6.000E-03  1.044E+00 .       .             .             .*      .</comment>
<comment>7.000E-03  9.572E-01 .       .             .            *.       .</comment>
<comment>8.000E-03  1.031E+00 .       .             .             *       .</comment>
<comment>9.000E-03  9.962E-01 .       .             .             *       .</comment>
<comment>1.000E-02 -4.396E-02 .       .            *.             .       .</comment>
<comment>1.100E-02 -9.743E-01 .       *             .             .       .</comment>
<comment>1.200E-02 -9.861E-01 .       *             .             .       .</comment>
<comment>1.300E-02 -9.952E-01 .       *             .             .       .</comment>
<comment>1.400E-02 -1.023E+00 .       *             .             .       .</comment>
<comment>1.500E-02 -9.631E-01 .       .*            .             .       .</comment>
<comment>1.600E-02 -1.044E+00 .      *.             .             .       .</comment>
<comment>1.700E-02 -9.572E-01 .       .*            .             .       .</comment>
<comment>1.800E-02 -1.031E+00 .       *             .             .       .</comment>
<comment>1.900E-02 -9.962E-01 .       *             .             .       .</comment>
<comment>2.000E-02  4.396E-02 .       .             .*            .       .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<image>22016.png<caption>Sum of 1st, 3rd, 5th, and 7th harmonics approximates square wave.</caption></image> 

<para>
Here we can see the wave becoming flatter at each peak.  Finally, adding the 9th harmonic, the fifth sine wave voltage source in our circuit, we obtain this result: (Figure<ref>22017.png below</ref>)
</para>



<comment>time       v(5)          -1.000E+00    0.000E+00    1.000E+00</comment>  
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  0.000E+00 .       .             *             .       .</comment>
<comment>1.000E-03  1.079E+00 .       .             .             .*      .</comment>
<comment>2.000E-03  9.845E-01 .       .             .             *       .</comment>
<comment>3.000E-03  1.017E+00 .       .             .             *       .</comment>
<comment>4.000E-03  9.835E-01 .       .             .             *       .</comment>
<comment>5.000E-03  1.017E+00 .       .             .             *       .</comment>
<comment>6.000E-03  9.814E-01 .       .             .             *       .</comment>
<comment>7.000E-03  1.023E+00 .       .             .             *       .</comment>
<comment>8.000E-03  9.691E-01 .       .             .             *       .</comment>
<comment>9.000E-03  1.048E+00 .       .             .             .*      .</comment>
<comment>1.000E-02 -8.103E-02 .       .            *.             .       .</comment>
<comment>1.100E-02 -9.557E-01 .       .*            .             .       .</comment>
<comment>1.200E-02 -9.845E-01 .       *             .             .       .</comment>
<comment>1.300E-02 -1.017E+00 .       *             .             .       .</comment>
<comment>1.400E-02 -9.835E-01 .       *             .             .       .</comment>
<comment>1.500E-02 -1.017E+00 .       *             .             .       .</comment>
<comment>1.600E-02 -9.814E-01 .       *             .             .       .</comment>
<comment>1.700E-02 -1.023E+00 .       *             .             .       .</comment>
<comment>1.800E-02 -9.691E-01 .       *             .             .       .</comment>
<comment>1.900E-02 -1.048E+00 .      *.             .             .       .</comment>
<comment>2.000E-02  8.103E-02 .       .             .*            .       .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<image>22017.png<caption>Sum of 1st, 3rd, 5th, 7th and 9th harmonics approximates square wave.</caption></image> 

<para>
The end result of adding the first five odd harmonic waveforms together (all at the proper amplitudes, of course) is a close approximation of a square wave.  The point in doing this is to illustrate how we can build a square wave up from multiple sine waves at different frequencies, to prove that a pure square wave is actually equivalent to a <italic>series</italic> of sine waves.  When a square wave AC voltage is applied to a circuit with reactive components (capacitors and inductors), those components react as if they were being exposed to several sine wave voltages of different frequencies, which in fact they are.
</para>

<index>Fourier analysis</index>
<index>Analysis, Fourier</index>

<para>
The fact that repeating, non-sinusoidal waves are equivalent to a definite series of additive DC voltage, sine waves, and/or cosine waves is a consequence of how waves work: a fundamental property of all wave-related phenomena, electrical or otherwise.  The mathematical process of reducing a non-sinusoidal wave into these constituent frequencies is called <italic>Fourier analysis</italic>, the details of which are well beyond the scope of this text.  However, computer algorithms have been created to perform this analysis at high speeds on real waveforms, and its application in AC power quality and signal analysis is widespread.
</para>

<index>Fourier Transform</index>
<index>Transform, Fourier</index>

<para>
SPICE has the ability to sample a waveform and reduce it into its constituent sine wave harmonics by way of a <italic>Fourier Transform</italic> algorithm, outputting the frequency analysis as a table of numbers.  Let's try this on a square wave, which we already know is composed of odd-harmonic sine waves:
</para>

<table>
<literal>
squarewave analysis netlist
v1 1 0 pulse (-1 1 0 .1m .1m 10m 20m)   
r1 1 0 10k      
.tran 1m 40m    
.plot tran v(1,0)       
.four 50 v(1,0) 
.end    
</literal>
</table>

<para>
The <italic>pulse</italic> option in the netlist line describing voltage source <typewriter>v1</typewriter> instructs SPICE to simulate a square-shaped ``pulse'' waveform, in this case one that is symmetrical (equal time for each half-cycle) and has a peak amplitude of 1 volt.  First we'll plot the square wave to be analyzed: (Figure<ref>22018.png below</ref>)
</para>

<comment>time       v(1)     -1         -0.5          0          0.5     1</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00 -1.000E+00 *         .           .           .         .</comment>
<comment>1.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>2.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>3.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>4.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>5.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>6.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>7.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>8.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>9.000E-03  1.000E+00 .         .           .           .         *</comment>
<comment>1.000E-02  1.000E+00 .         .           .           .         *</comment>
<comment>1.100E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.200E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.300E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.400E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.500E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.600E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.700E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.800E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>1.900E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>2.000E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>2.100E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.200E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.300E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.400E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.500E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.600E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.700E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.800E-02  1.000E+00 .         .           .           .         *</comment>
<comment>2.900E-02  1.000E+00 .         .           .           .         *</comment>
<comment>3.000E-02  1.000E+00 .         .           .           .         *</comment>
<comment>3.100E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.200E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.300E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.400E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.500E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.600E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.700E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.800E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>3.900E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>4.000E-02 -1.000E+00 *         .           .           .         .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>

<image>22018.png<caption>Squarewave for SPICE Fourier analysis</caption></image> 

<para>
Next, we'll print the Fourier analysis generated by SPICE for this square wave:
</para>

<table>
<literal>
fourier components of transient response v(1)    
dc component =  -2.439E-02
harmonic  frequency   fourier     normalized   phase   normalized
no          (hz)     component    component    (deg)   phase (deg)
1         5.000E+01   1.274E+00     1.000000    -2.195       0.000
2         1.000E+02   4.892E-02     0.038415   -94.390     -92.195
3         1.500E+02   4.253E-01     0.333987    -6.585      -4.390
4         2.000E+02   4.936E-02     0.038757   -98.780     -96.585
5         2.500E+02   2.562E-01     0.201179   -10.976      -8.780
6         3.000E+02   5.010E-02     0.039337  -103.171    -100.976
7         3.500E+02   1.841E-01     0.144549   -15.366     -13.171
8         4.000E+02   5.116E-02     0.040175  -107.561    -105.366
9         4.500E+02   1.443E-01     0.113316   -19.756     -17.561
total harmonic distortion =     43.805747  percent
</literal>
</table>

<image>22019.png<caption>Plot of Fourier analysis esults.</caption></image> <comment>fourier</comment>

<comment>Above plot produced with gnuplot...comands follow</comment>
<comment>Extract the fourier 9 lines, 6 columns of data. Insert a line of five zeros at the top of the data file and save it as fourier.dat. It now has ten lines</comment>
<comment> gnuplot</comment>
<comment>set size 0.6,0.6</comment>
<comment>set xlabel ``harmonic number''</comment>
<comment>set ylabel ``Relative Amplitude''</comment>
<comment>plot ``fourier.dat'' using 0:3 with impulses</comment>
<comment>set terminal postscript eps color dashed ``Helvetica'' 18</comment>
<comment>set output ``fourier.eps''</comment>
<comment>plot ``fourier.dat'' using 0:3 with impulses linewidth 30</comment>
<comment>from a command prompt on another screen </comment>
<comment>display fourier.eps</comment>

<para>
Here, (Figure<ref>22019.png above</ref>) SPICE has broken the waveform down into a spectrum of sinusoidal frequencies up to the ninth harmonic, plus a small DC voltage labelled <typewriter>DC component</typewriter>.  I had to inform SPICE of the fundamental frequency (for a square wave with a 20 millisecond period, this frequency is 50 Hz), so it knew how to classify the harmonics.  Note how small the figures are for all the even harmonics (2nd, 4th, 6th, 8th), and how the amplitudes of the odd harmonics diminish (1st is largest, 9th is smallest). 
</para>

<index>Fast Fourier Transform</index>
<index>FFT</index>

<para>
This same technique of ``Fourier Transformation'' is often used in computerized power instrumentation, sampling the AC waveform(s) and determining the harmonic content thereof.  A common computer algorithm (sequence of program steps to perform a task) for this is the <italic>Fast Fourier Transform</italic> or <italic>FFT</italic> function.  You need not be concerned with exactly how these computer routines work, but be aware of their existence and application.
</para>

<index>Graphic equalizer</index>
<index>Equalizer, graphic</index>

<para>
This same mathematical technique used in SPICE to analyze the harmonic content of waves can be applied to the technical analysis of music: breaking up any particular sound into its constituent sine-wave frequencies.  In fact, you may have already seen a device designed to do just that without realizing what it was!  A <italic>graphic equalizer</italic> is a piece of high-fidelity stereo equipment that controls (and sometimes displays) the nature of music's harmonic content.  Equipped with several knobs or slide levers, the equalizer is able to selectively attenuate (reduce) the amplitude of certain frequencies present in music, to ``customize'' the sound for the listener's benefit.  Typically, there will be a ``bar graph'' display next to each control lever, displaying the amplitude of each particular frequency. (Figure<ref>02264.png below</ref>)
</para>

<image>02264.png<caption>Hi-Fi audio  graphic equalizer.</caption></image> 

<index>Spectrum analyzer</index>
<index>Analyzer, spectrum</index>

<para>
A device built strictly to display -- not control -- the amplitudes of each frequency range for a mixed-frequency signal is typically called a <italic>spectrum analyzer</italic>.  The design of spectrum analyzers may be as simple as a set of ``filter'' circuits (see the next chapter for details) designed to separate the different frequencies from each other, or as complex as a special-purpose digital computer running an FFT algorithm to mathematically split the signal into its harmonic components.  Spectrum analyzers are often designed to analyze extremely high-frequency signals, such as those produced by radio transmitters and computer network hardware.  In that form, they often have an appearance like that of an oscilloscope: (Figure<ref>02265.png below</ref>)
</para>

<image>02265.png<caption>Spectrum analyzer shows amplitude as a function of frequency.</caption></image> 

<index>Domain, time</index>
<index>Domain, frequency</index>
<index>Analysis, frequency domain</index>
<index>Analysis, time domain</index>
<index>Bode plot</index>

<para>
Like an oscilloscope, the spectrum analyzer uses a CRT (or a computer display mimicking a CRT) to display a plot of the signal.  Unlike an oscilloscope, this plot is amplitude over <italic>frequency</italic> rather than amplitude over <italic>time</italic>.  In essence, a frequency analyzer gives the operator a Bode plot of the signal: something an engineer might call a <italic>frequency-domain</italic> rather than a <italic>time-domain</italic> analysis.  
</para>

<para>
The term ``domain'' is mathematical: a sophisticated word to describe the horizontal axis of a graph.  Thus, an oscilloscope's plot of amplitude (vertical) over time (horizontal) is a ``time-domain'' analysis, whereas a spectrum analyzer's plot of amplitude (vertical) over frequency (horizontal) is a ``frequency-domain'' analysis.  When we use SPICE to plot signal amplitude (either voltage or current amplitude) over a range of frequencies, we are performing <italic>frequency-domain</italic> analysis.
</para>

<para>
Please take note of how the Fourier analysis from the last SPICE simulation isn't ``perfect.''  Ideally, the amplitudes of all the even harmonics should be absolutely zero, and so should the DC component.  Again, this is not so much a quirk of SPICE as it is a property of waveforms in general.  A waveform of infinite duration (infinite number of cycles) can be analyzed with absolute precision, but the less cycles available to the computer for analysis, the less precise the analysis.  It is only when we have an equation describing a waveform in its entirety that Fourier analysis can reduce it to a definite series of sinusoidal waveforms.  The fewer times that a wave cycles, the less certain its frequency is.  Taking this concept to its logical extreme, a short pulse -- a waveform that doesn't even complete a cycle -- actually <italic>has no frequency</italic>, but rather acts as an infinite range of frequencies.  This principle is common to <italic>all</italic> wave-based phenomena, not just AC voltages and currents.
</para>

<para>
Suffice it to say that the number of cycles and the certainty of a waveform's frequency component(s) are directly related.  We could improve the precision of our analysis here by letting the wave oscillate on and on for many cycles, and the result would be a spectrum analysis more consistent with the ideal.  In the following analysis, I've omitted the waveform plot for brevity's sake -- its just a really long square wave:
</para>

<table>
<literal>
squarewave 
v1 1 0 pulse (-1 1 0 .1m .1m 10m 20m)   
r1 1 0 10k      
.option limpts=1001     
.tran 1m 1      
.plot tran v(1,0)       
.four 50 v(1,0) 
.end    
</literal>
</table>

<table>
<literal>
fourier components of transient response v(1)    
dc component =   9.999E-03
harmonic  frequency    fourier    normalized   phase   normalized
no           (hz)     component   component    (deg)   phase (deg)
1         5.000E+01   1.273E+00     1.000000    -1.800       0.000
2         1.000E+02   1.999E-02     0.015704    86.382      88.182
3         1.500E+02   4.238E-01     0.332897    -5.400      -3.600
4         2.000E+02   1.997E-02     0.015688    82.764      84.564
5         2.500E+02   2.536E-01     0.199215    -9.000      -7.200
6         3.000E+02   1.994E-02     0.015663    79.146      80.946
7         3.500E+02   1.804E-01     0.141737   -12.600     -10.800
8         4.000E+02   1.989E-02     0.015627    75.529      77.329
9         4.500E+02   1.396E-01     0.109662   -16.199     -14.399
</literal>
</table>


<image>22020.png<caption>Improved fourier analysis.</caption></image> <comment>fourier</comment>

<para>
Notice how this analysis (Figure<ref>22020.png above</ref>) shows less of a DC component voltage and lower amplitudes for each of the even harmonic frequency sine waves, all because we let the computer sample more cycles of the wave.  Again, the imprecision of the first analysis is not so much a flaw in SPICE as it is a fundamental property of waves and of signal analysis.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Square waves are equivalent to a sine wave at the same (fundamental) frequency added to an infinite series of odd-multiple sine-wave harmonics at decreasing amplitudes.</item>
<item>Computer algorithms exist which are able to sample waveshapes and determine their constituent sinusoidal components.  The <italic>Fourier Transform</italic> algorithm (particularly the <italic>Fast Fourier Transform</italic>, or <italic>FFT</italic>) is commonly used in computer circuit simulation programs such as SPICE and in electronic metering equipment for determining power quality.</item>
</itemize>

</section>





<section>
<sectiontitle>Other waveshapes</sectiontitle>

<para>
As strange as it may seem, <italic>any</italic> repeating, non-sinusoidal waveform is actually equivalent to a series of sinusoidal waveforms of different amplitudes and frequencies added together.  Square waves are a very common and well-understood case, but not the only one.
</para>

<index>Diode</index>
<index>Transistor</index>
<index>SCR</index>
<index>Silicon-controlled rectifier</index>
<index>Rectifier, silicon-controlled</index>

<para>
Electronic power control devices such as transistors and silicon-controlled rectifiers (<italic>SCRs</italic>) often produce voltage and current waveforms that are essentially chopped-up versions of the otherwise ``clean'' (pure) sine-wave AC from the power supply.  These devices have the ability to suddenly <italic>change</italic> their resistance with the application of a control signal voltage or current, thus ``turning on'' or ``turning off'' almost instantaneously, producing current waveforms bearing little resemblance to the source voltage waveform powering the circuit.  These current waveforms then produce changes in the voltage waveform to other circuit components, due to voltage drops created by the non-sinusoidal current through circuit impedances.  
</para>

<index>Nonlinear components</index>

<para>
Circuit components that distort the normal sine-wave shape of AC voltage or current are called <italic>nonlinear</italic>.  Nonlinear components such as SCRs find popular use in power electronics due to their ability to regulate large amounts of electrical power without dissipating much heat.  While this is an advantage from the perspective of energy efficiency, the waveshape distortions they introduce can cause problems.
</para>

<para>
These non-sinusoidal waveforms, regardless of their actual shape, are equivalent to a series of sinusoidal waveforms of higher (harmonic) frequencies.  If not taken into consideration by the circuit designer, these harmonic waveforms created by electronic switching components may cause erratic circuit behavior.  It is becoming increasingly common in the electric power industry to observe overheating of transformers and motors due to distortions in the sine-wave shape of the AC power line voltage stemming from ``switching'' loads such as computers and high-efficiency lights.  This is no theoretical exercise: it is very real and potentially very troublesome.
</para>

<para>
In this section, I will investigate a few of the more common waveshapes and show their harmonic components by way of Fourier analysis using SPICE.
</para>

<index>Diode</index>
<index>Half-wave rectification</index>
<index>Rectification, half-wave</index>

<para>
One very common way harmonics are generated in an AC power system is when AC is converted, or ``rectified'' into DC.  This is generally done with components called <italic>diodes</italic>, which only allow the passage of current in one direction.  The simplest type of AC/DC rectification is <italic>half-wave</italic>, where a single diode blocks half of the AC current (over time) from passing through the load. (Figure<ref>02111.png below</ref>) Oddly enough, the conventional diode schematic symbol is drawn such that electrons flow <italic>against</italic> the direction of the symbol's arrowhead:
</para>

<image>02111.png<caption>Half-wave rectifier.</caption></image> 

<table>
<literal>
halfwave rectifier               
v1 1 0 sin(0 15 60 0 0) 
rload 2 0 10k   
d1 1 2 mod1     
.model mod1 d   
.tran .5m 17m   
.plot tran v(1,0) v(2,0)
.four 60 v(1,0) v(2,0)  
.end    
halfwave rectifier               
</literal>
</table>


<comment>legend:</comment>
<comment>*: v(1) </comment>   
<comment>+: v(2)</comment>    
<comment>time      v(1)</comment>    
<comment>( *)---------      -20     -10           0          10          20</comment>
<comment>(+)----------       -5       0           5          10          15</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  0.000E+00 .       +           *           .           .</comment>
<comment>5.000E-04  2.806E+00 .       .   +       .   *       .           .</comment>
<comment>1.000E-03  5.483E+00 .       .           +       *   .           .</comment>
<comment>1.500E-03  7.929E+00 .       .           .     +    *.           .</comment>
<comment>2.000E-03  1.013E+01 .       .           .           +*          .</comment>
<comment>2.500E-03  1.198E+01 .       .           .           .  *+       .</comment>
<comment>3.000E-03  1.338E+01 .       .           .           .    *  +   .</comment>
<comment>3.500E-03  1.435E+01 .       .           .           .     *   + .</comment>
<comment>4.000E-03  1.476E+01 .       .           .           .      *   +.</comment>
<comment>4.500E-03  1.470E+01 .       .           .           .      *   +.</comment>
<comment>5.000E-03  1.406E+01 .       .           .           .     *   + .</comment>
<comment>5.500E-03  1.299E+01 .       .           .           .   *  +    .</comment>
<comment>6.000E-03  1.139E+01 .       .           .           . x         .</comment>
<comment>6.500E-03  9.455E+00 .       .           .        + *.           .</comment>
<comment>7.000E-03  7.113E+00 .       .           .   +    *  .           .</comment>
<comment>7.500E-03  4.591E+00 .       .        +  .     *     .           .</comment>
<comment>8.000E-03  1.841E+00 .       . +         .  *        .           .</comment>
<comment>8.500E-03 -9.177E-01 .       +          *.           .           .</comment>
<comment>9.000E-03 -3.689E+00 .       +      *    .           .           .</comment>
<comment>9.500E-03 -6.298E+00 .       +  *        .           .           .</comment>
<comment>1.000E-02 -8.701E+00 .       +*          .           .           .</comment>
<comment>1.050E-02 -1.079E+01 .      *+           .           .           .</comment>
<comment>1.100E-02 -1.249E+01 .    *  +           .           .           .</comment>
<comment>1.150E-02 -1.377E+01 .  *    +           .           .           .</comment>
<comment>1.200E-02 -1.453E+01 . *     +           .           .           .</comment>
<comment>1.250E-02 -1.482E+01 .*      +           .           .           .</comment>
<comment>1.300E-02 -1.452E+01 . *     +           .           .           .</comment>
<comment>1.350E-02 -1.378E+01 .  *    +           .           .           .</comment>
<comment>1.400E-02 -1.248E+01 .    *  +           .           .           .</comment>
<comment>1.450E-02 -1.081E+01 .      *+           .           .           .</comment>
<comment>1.500E-02 -8.681E+00 .       +*          .           .           .</comment>
<comment>1.550E-02 -6.321E+00 .       +  *        .           .           .</comment>
<comment>1.600E-02 -3.666E+00 .       +      *    .           .           .</comment>
<comment>1.650E-02 -9.432E-01 .       .   +      *.           .           .</comment>
<comment>1.700E-02  1.865E+00 .       .      +    .  *        .           .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>


<image>22021.png<caption>Half-wave rectifier waveforms. V(1)+0.4 shifts the sinewave input V(1) up for clarity. This is not part of the simulation.</caption></image> <comment>fourier</comment>

<para>
First, we'll see how SPICE analyzes the source waveform, a pure sine wave voltage: (Figure<ref>22022.png below</ref>)
</para>

<table>
<literal>
fourier components of transient response v(1)    
dc component =   8.016E-04
harmonic   frequency  fourier    normalized   phase   normalized
no         (hz)      component   component    (deg)   phase (deg)
1        6.000E+01   1.482E+01     1.000000    -0.005       0.000
2        1.200E+02   2.492E-03     0.000168  -104.347    -104.342
3        1.800E+02   6.465E-04     0.000044   -86.663     -86.658
4        2.400E+02   1.132E-03     0.000076   -61.324     -61.319
5        3.000E+02   1.185E-03     0.000080   -70.091     -70.086
6        3.600E+02   1.092E-03     0.000074   -63.607     -63.602
7        4.200E+02   1.220E-03     0.000082   -56.288     -56.283
8        4.800E+02   1.354E-03     0.000091   -54.669     -54.664
9        5.400E+02   1.467E-03     0.000099   -52.660     -52.655
</literal>
</table>

<image>22022.png<caption>Fourier analysis of the sine wave input.</caption></image> 


<para>
Notice the extremely small harmonic and DC components of this sinusoidal waveform in the table above, though, too small to show on the harmonic plot above.  Ideally, there would be nothing but the fundamental frequency showing (being a perfect sine wave), but our Fourier analysis figures aren't perfect because SPICE doesn't have the luxury of sampling a waveform of infinite duration.  Next, we'll compare this with the Fourier analysis of the half-wave ``rectified'' voltage across the load resistor: (Figure<ref>22023.png below</ref>)
</para>

<table>
<literal>
fourier components of transient response v(2)    
dc component =   4.456E+00
harmonic  frequency   fourier    normalized   phase    normalized
no         (hz)      component   component    (deg)    phase (deg)
1        6.000E+01   7.000E+00     1.000000    -0.195       0.000
2        1.200E+02   3.016E+00     0.430849   -89.765     -89.570
3        1.800E+02   1.206E-01     0.017223  -168.005    -167.810
4        2.400E+02   5.149E-01     0.073556   -87.295     -87.100
5        3.000E+02   6.382E-02     0.009117  -152.790    -152.595
6        3.600E+02   1.727E-01     0.024676   -79.362     -79.167
7        4.200E+02   4.492E-02     0.006417  -132.420    -132.224
8        4.800E+02   7.493E-02     0.010703   -61.479     -61.284
9        5.400E+02   4.051E-02     0.005787  -115.085    -114.889
</literal>
</table>

<image>22023.png<caption>Fourier analysis half-wave output.</caption></image> 

<para>
Notice the relatively large even-multiple harmonics in this analysis.  By cutting out half of our AC wave, we've introduced the equivalent of several higher-frequency sinusoidal (actually, cosine) waveforms into our circuit from the original, pure sine-wave.  Also take note of the large DC component: 4.456 volts.  Because our AC voltage waveform has been ``rectified'' (only allowed to push in one direction across the load rather than back-and-forth), it behaves a lot more like DC.
</para>

<index>Full-wave rectification</index>
<index>Rectification, full-wave</index>

<para>
Another method of AC/DC conversion is called <italic>full-wave</italic>  (Figure<ref>02112.png below</ref>), which as you may have guessed utilizes the full cycle of AC power from the source, reversing the polarity of half the AC cycle to get electrons to flow through the load the same direction all the time.
<comment>split for multiple refs in paragraph</comment>
I won't bore you with details of exactly how this is done, but we can examine the waveform (Figure<ref>22024.png below</ref>)
<comment>split for multiple refs in paragraph</comment>
and its harmonic analysis through SPICE:  (Figure<ref>22025.png below</ref>)
</para>

<image>02112.png<caption>Full-wave rectifier circuit.</caption></image> 

<table>
<literal>
fullwave bridge rectifier   
v1 1 0 sin(0 15 60 0 0) 
rload 2 3 10k   
d1 1 2 mod1     
d2 0 2 mod1     
d3 3 1 mod1     
d4 3 0 mod1     
.model mod1 d   
.tran .5m 17m   
.plot tran v(1,0) v(2,3)
.four 60 v(2,3)  
.end    
</literal>
</table>

<comment>legend:</comment>
<comment>*: v(1)</comment>    
<comment>+: v(2,3)</comment>  
<comment>time       v(1)</comment>    
<comment>( *)---------      -20         -10     0.000E+00     1.000E+01 </comment> 
<comment>(+)----------  0.000E+00     5.000E+00     1.000E+01     1.500E+01 </comment> 
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>
<comment>0.000E+00  0.000E+00 +          .            *            .      .</comment>
<comment>5.000E-04  2.806E+00 .   +      .            .   *        .      .</comment>
<comment>1.000E-03  5.483E+00 .         +.            .      *     .      .</comment>
<comment>1.500E-03  7.929E+00 .          .    +       .         *  .      .</comment>
<comment>2.000E-03  1.013E+01 .          .         +  .            *      . </comment>
<comment>2.500E-03  1.198E+01 .          .            . +          . *    .</comment>
<comment>3.000E-03  1.338E+01 .          .            .     +      .   *  .</comment>
<comment>3.500E-03  1.435E+01 .          .            .       +    .     *.</comment>
<comment>4.000E-03  1.476E+01 .          .            .        +   .      *</comment>
<comment>4.500E-03  1.470E+01 .          .            .        +   .     *.</comment>
<comment>5.000E-03  1.406E+01 .          .            .       +    .    * .</comment>
<comment>5.500E-03  1.299E+01 .          .            .    +       .  *   .</comment>
<comment>6.000E-03  1.139E+01 .          .            +            .*     .</comment>
<comment>6.500E-03  9.455E+00 .          .       +    .           *.      .</comment>
<comment>7.000E-03  7.113E+00 .          . +          .        *   .      .</comment>
<comment>7.500E-03  4.591E+00 .      +   .            .     *      .      .</comment>
<comment>8.000E-03  1.841E+00 .   +      .            .  *         .      .</comment>
<comment>8.500E-03 -9.177E-01 . +        .           *.            .      .</comment>
<comment>9.000E-03 -3.689E+00 .    +     .       *    .            .      .</comment>
<comment>9.500E-03 -6.298E+00 .          +    *       .            .      .</comment>
<comment>1.000E-02 -8.701E+00 .          . *    +     .            .      .</comment>
<comment>1.050E-02 -1.079E+01 .         *.           +.            .      .</comment>
<comment>1.100E-02 -1.249E+01 .       *  .            .  +         .      .</comment>
<comment>1.150E-02 -1.377E+01 .     *    .            .      +     .      .</comment>
<comment>1.200E-02 -1.453E+01 .    *     .            .        +   .      .</comment>
<comment>1.250E-02 -1.482E+01 .   *      .            .         +  .      .</comment>
<comment>1.300E-02 -1.452E+01 .    *     .            .        +   .      .</comment>
<comment>1.350E-02 -1.378E+01 .     *    .            .      +     .      .</comment>
<comment>1.400E-02 -1.248E+01 .       *  .            .  +         .      .</comment>
<comment>1.450E-02 -1.081E+01 .         *.           +.            .      .</comment>
<comment>1.500E-02 -8.681E+00 .          . *    +     .            .      .</comment>
<comment>1.550E-02 -6.321E+00 .          +    *       .            .      .</comment>
<comment>1.600E-02 -3.666E+00 .     +    .       *    .            .      .</comment>
<comment>1.650E-02 -9.432E-01 .   +      .           *.            .      .</comment>
<comment>1.700E-02  1.865E+00 .    +     .            .  *         .      .</comment>
<comment>- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</comment>

<image>22024.png<caption>Waveforms for full-wave rectifier</caption></image> <comment>fullwave</comment>


<table>
<literal>
fourier components of transient response v(2,3)  
dc component =   8.273E+00
harmonic   frequency  fourier    normalized   phase   normalized
no         (hz)      component   component    (deg)   phase (deg)
1        6.000E+01   7.000E-02     1.000000   -93.519       0.000
2        1.200E+02   5.997E+00    85.669415   -90.230       3.289
3        1.800E+02   7.241E-02     1.034465   -93.787      -0.267
4        2.400E+02   1.013E+00    14.465161   -92.492       1.027
5        3.000E+02   7.364E-02     1.052023   -95.026      -1.507
6        3.600E+02   3.337E-01     4.767350  -100.271      -6.752
7        4.200E+02   7.496E-02     1.070827   -94.023      -0.504
8        4.800E+02   1.404E-01     2.006043  -118.839     -25.319
9        5.400E+02   7.457E-02     1.065240   -90.907       2.612
</literal>
</table>


<image>22025.png<caption>Fourier analysis of full-wave rectifier output.</caption></image> 

<para>
What a difference!  According to SPICE's Fourier transform, we have a 2nd harmonic component to this waveform that's over 85 times the amplitude of the original AC source frequency!  The DC component of this wave shows up as being 8.273 volts (almost twice what is was for the half-wave rectifier circuit) while the second harmonic is almost 6 volts in amplitude.  Notice all the other harmonics further on down the table.  The odd harmonics are actually stronger at some of the higher frequencies than they are at the lower frequencies, which is interesting.
</para>

<para>
As you can see, what may begin as a neat, simple AC sine-wave may end up as a complex mess of harmonics after passing through just a few electronic components.  While the complex mathematics behind all this Fourier transformation is not necessary for the beginning student of electric circuits to understand, it is of the utmost importance to realize the principles at work and to grasp the practical effects that harmonic signals may have on circuits.  The practical effects of harmonic frequencies in circuits will be explored in the last section of this chapter, but before we do that we'll take a closer look at waveforms and their respective harmonics.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Any</italic> waveform at all, so long as it is repetitive, can be reduced to a series of sinusoidal waveforms added together.  Different waveshapes consist of different blends of sine-wave harmonics.</item>
<item>Rectification of AC to DC is a very common source of harmonics within industrial power systems.</item>
</itemize>

</section>




<section>
<sectiontitle>More on spectrum analysis</sectiontitle>

<para>
Computerized Fourier analysis, particularly in the form of the <italic>FFT</italic> algorithm, is a powerful tool for furthering our understanding of waveforms and their related spectral components.  This same mathematical routine programmed into the SPICE simulator as the <typewriter>.fourier</typewriter> option is also programmed into a variety of electronic test instruments to perform real-time Fourier analysis on measured signals.  This section is devoted to the use of such tools and the analysis of several different waveforms.
</para>

<para>
First we have a simple sine wave at a frequency of 523.25 Hz.  This particular frequency value is a ``C'' pitch on a piano keyboard, one octave above ``middle C''.  Actually, the signal measured for this demonstration was created by an electronic keyboard set to produce the tone of a panflute, the closest instrument ``voice'' I could find resembling a perfect sine wave.  The plot below was taken from an oscilloscope display, showing signal amplitude (voltage) over time: (Figure<ref>02279.png below</ref>)
</para>

<image>02279.png<caption>Oscilloscope display: voltage vs time.</caption></image> 

<para>
Viewed with an oscilloscope, a sine wave looks like a wavy curve traced horizontally on the screen.  The horizontal axis of this oscilloscope display is marked with the word ``Time'' and an arrow pointing in the direction of time's progression.  The curve itself, of course, represents the cyclic increase and decrease of voltage over time.
</para>

<index>Artifact, measurement</index>

<para>
Close observation reveals imperfections in the sine-wave shape.  This, unfortunately, is a result of the specific equipment used to analyze the waveform.  Characteristics like these due to quirks of the test equipment are technically known as <italic>artifacts</italic>: phenomena existing solely because of a peculiarity in the equipment used to perform the experiment.
</para>

<para>
If we view this same AC voltage on a spectrum analyzer, the result is quite different: (Figure<ref>02280.png below</ref>)
</para>

<image>02280.png<caption>Spectrum analyzer display: voltage vs frequency.</caption></image> 

<para>
As you can see, the horizontal axis of the display is marked with the word ``Frequency,'' denoting the domain of this measurement.  The single peak on the curve represents the predominance of a single frequency within the range of frequencies covered by the width of the display.  If the scale of this analyzer instrument were marked with numbers, you would see that this peak occurs at 523.25 Hz.  The height of the peak represents the signal amplitude (voltage).
</para>

<para>
If we mix three different sine-wave tones together on the electronic keyboard (C-E-G, a C-major chord) and measure the result, both the oscilloscope display and the spectrum analyzer display reflect this increased complexity: (Figure<ref>02281.png below</ref>)
</para>

<image>02281.png<caption>Oscilloscape display: three tones.</caption></image> 

<para>
The oscilloscope display (time-domain) shows a waveform with many more peaks and valleys than before, a direct result of the mixing of these three frequencies.  As you will notice, some of these peaks are higher than the peaks of the original single-pitch waveform, while others are lower.  This is a result of the three different waveforms alternately reinforcing and canceling each other as their respective phase shifts change in time.  
</para>


<image>02282.png<caption>Spectrum analyzer display: three tones.</caption></image> 

<para>
The spectrum display (frequency-domain) is much easier to interpret: each pitch is represented by its own peak on the curve. (Figure<ref>02282.png above</ref>)  The difference in height between these three peaks is another artifact of the test equipment: a consequence of limitations within the equipment used to generate and analyze these waveforms, and not a necessary characteristic of the musical chord itself.
</para>

<para>
As was stated before, the device used to generate these waveforms is an electronic keyboard: a musical instrument designed to mimic the tones of many different instruments.  The panflute ``voice'' was chosen for the first demonstrations because it most closely resembled a pure sine wave (a single frequency on the spectrum analyzer display).  Other musical instrument ``voices'' are not as simple as this one, though.  In fact, the unique tone produced by <italic>any</italic> instrument is a function of its waveshape (or spectrum of frequencies).  For example, let's view the signal for a trumpet tone: (Figure<ref>02283.png below</ref>)
</para>

<image>02283.png<caption>Oscilloscope display: waveshape of a trumpet tone.</caption></image> 

<para>
The fundamental frequency of this tone is the same as in the first panflute example: 523.25 Hz, one octave above ``middle C.''  The waveform itself is far from a pure and simple sine-wave form.  Knowing that any repeating, non-sinusoidal waveform is equivalent to a series of sinusoidal waveforms at different amplitudes and frequencies, we should expect to see multiple peaks on the spectrum analyzer display: (Figure<ref>02284.png below</ref>)
</para>

<image>02284.png<caption>Spectrum of a trumpet tone.</caption></image> 

<para>
Indeed we do!  The fundamental frequency component of 523.25 Hz is represented by the left-most peak, with each successive harmonic represented as its own peak along the width of the analyzer screen.  The second harmonic is twice the frequency of the fundamental (1046.5 Hz), the third harmonic three times the fundamental (1569.75 Hz), and so on.  This display only shows the first six harmonics, but there are many more comprising this complex tone.
</para>

<para>
Trying a different instrument voice (the accordion) on the keyboard, we obtain a similarly complex oscilloscope (time-domain) plot (Figure<ref>02285.png below</ref>) 
<comment>split for multiple refs in paragraph</comment>
and spectrum analyzer (frequency-domain) display: (Figure<ref>02286.png below</ref>)
</para>

<image>02285.png<caption>Oscilloscope display: waveshape of accordion tone.</caption></image> 

<para>

</para>


<image>02286.png<caption>Spectrum of accordion tone.</caption></image> 

<para>
Note the differences in relative harmonic amplitudes (peak heights) on the spectrum displays for trumpet and accordion.  Both instrument tones contain harmonics all the way from 1st (fundamental) to 6th (and beyond!), but the proportions aren't the same.  Each instrument has a unique harmonic ``signature'' to its tone.  Bear in mind that all this complexity is in reference to <italic>a single note</italic> played with these two instrument ``voices.''  Multiple notes played on an accordion, for example, would create a much more complex mixture of frequencies than what is seen here.
</para>

<para>
The analytical power of the oscilloscope and spectrum analyzer permit us to derive general rules about waveforms and their harmonic spectra from real waveform examples.  We already know that any deviation from a pure sine-wave results in the equivalent of a mixture of multiple sine-wave waveforms at different amplitudes and frequencies.  However, close observation allows us to be more specific than this.  Note, for example, the time- (Figure<ref>02287.png below</ref>) and 
<comment>split for multiple refs in paragraph</comment>
frequency-domain  (Figure<ref>02288.png below</ref>) plots for a waveform approximating a square wave:
</para>

<image>02287.png<caption>Oscilloscope time-domain display of a square wave</caption></image> 

<para>

</para>


<image>02288.png<caption>Spectrum (frequency-domain) of a square wave.</caption></image> 

<para>
According to the spectrum analysis, this waveform contains <italic>no</italic> even harmonics, only odd.  Although this display doesn't show frequencies past the sixth harmonic, the pattern of odd-only harmonics in descending amplitude continues indefinitely.  This should come as no surprise, as we've already seen with SPICE that a square wave is comprised of an infinitude of odd harmonics.  The trumpet and accordion tones, however, contained <italic>both</italic> even and odd harmonics.  This difference in harmonic content is noteworthy.  Let's continue our investigation with an analysis of a triangle wave: (Figure<ref>02289.png below</ref>)
</para>

<image>02289.png<caption>Oscilloscope time-domain display of a triangle wave.</caption></image> 

<para>

</para>


<image>02290.png<caption>Spectrum of a triangle wave.</caption></image> 

<index>Triangle wave </index>
<index>Wave, triangle</index>

<para>
In this waveform there are practically no even harmonics: (Figure<ref>02290.png above</ref>) the only significant frequency peaks on the spectrum analyzer display belong to odd-numbered multiples of the fundamental frequency.  Tiny peaks can be seen for the second, fourth, and sixth harmonics, but this is due to imperfections in this particular triangle waveshape (once again, artifacts of the test equipment used in this analysis).  A perfect triangle waveshape produces no even harmonics, just like a perfect square wave.  It should be obvious from inspection that the harmonic spectrum of the triangle wave is not identical to the spectrum of the square wave: the respective harmonic peaks are of different heights.  However, the two different waveforms are common in their lack of even harmonics. 
</para>

<index>Sawtooth wave </index>
<index>Wave, sawtooth</index>

<para>
Let's examine another waveform, this one very similar to the triangle wave, except that its rise-time is not the same as its fall-time.  Known as a <italic>sawtooth wave</italic>, its oscilloscope plot reveals it to be aptly named: (Figure<ref>02291.png below</ref>)
</para>

<image>02291.png<caption>Time-domain display of a sawtooth wave.</caption></image> 

<para>
When the spectrum analysis of this waveform is plotted, we see a result that is quite different from that of the regular triangle wave, for this analysis shows the strong presence of even-numbered harmonics (second and fourth): (Figure<ref>02292.png below</ref>)
</para>

<image>02292.png<caption>Frequency-domain display of a sawtooth wave.</caption></image> 

<index>Harmonic, even vs. odd</index>
<index>Harmonics and waveform symmetry</index>
<index>Waveform symmetry and harmonics</index>

<para>
The distinction between a waveform having even harmonics versus no even harmonics resides in the difference between a triangle waveshape and a sawtooth waveshape.  That difference is <italic>symmetry</italic> above and below the horizontal centerline of the wave.  A waveform that is symmetrical above and below its centerline (the shape on both sides mirror each other precisely) will contain <italic>no</italic> even-numbered harmonics.  (Figure<ref>02293.png below</ref>) 
</para>

<image>02293.png<caption>Waveforms symmetric about their x-axis center line contain only odd harmonics.</caption></image> 

<para>
Square waves, triangle waves, and pure sine waves all exhibit this symmetry, and all are devoid of even harmonics.  Waveforms like the trumpet tone, the accordion tone, and the sawtooth wave are unsymmetrical around their centerlines and therefore <italic>do</italic> contain even harmonics. (Figure<ref>02294.png below</ref>)
</para>

<image>02294.png<caption>Asymmetric waveforms contain even harmonics.</caption></image> 

<para>
This principle of centerline symmetry should not be confused with symmetry around the <italic>zero</italic> line.  In the examples shown, the horizontal centerline of the waveform happens to be zero volts on the time-domain graph, but this has nothing to do with harmonic content.  This rule of harmonic content (even harmonics only with unsymmetrical waveforms) applies whether or not the waveform is shifted above or below zero volts with a ``DC component.''  For further clarification, I will show the same sets of waveforms, shifted with DC voltage, and note that their harmonic contents are unchanged. (Figure<ref>02296.png below</ref>)

</para>

<image>02296.png<caption>These waveforms are composed exclusively of odd harmonics.</caption></image> 

<para>
Again, the amount of DC voltage present in a waveform has nothing to do with that waveform's harmonic frequency content. (Figure<ref>02297.png below</ref>)
</para>


<image>02297.png<caption>These waveforms contain even harmonics.</caption></image> 

<para>
Why is this harmonic rule-of-thumb an important rule to know?  It can help us comprehend the relationship between harmonics in AC circuits and specific circuit components.  Since most sources of sine-wave distortion in AC power circuits tend to be symmetrical, even-numbered harmonics are rarely seen in those applications.  This is good to know if you're a power system designer and are planning ahead for harmonic reduction: you only have to concern yourself with mitigating the odd harmonic frequencies, even harmonics being practically nonexistent.  Also, if you happen to measure even harmonics in an AC circuit with a spectrum analyzer or frequency meter, you know that something in that circuit must be <italic>unsymmetrically</italic> distorting the sine-wave voltage or current, and that clue may be helpful in locating the source of a problem (look for components or conditions more likely to distort one half-cycle of the AC waveform more than the other).
</para>

<para>
Now that we have this rule to guide our interpretation of nonsinusoidal waveforms, it makes more sense that a waveform like that produced by a rectifier circuit should contain such strong even harmonics, there being no symmetry at all above and below center.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Waveforms that are symmetrical above and below their horizontal centerlines contain no even-numbered harmonics.</item>
<item>The amount of DC ``bias'' voltage present (a waveform's ``DC component'') has no impact on that wave's harmonic frequency content.</item>
</itemize>

</section>





<section>
<sectiontitle>Circuit effects</sectiontitle>

<para>
The principle of non-sinusoidal, repeating waveforms being equivalent to a series of sine waves at different frequencies is a fundamental property of waves in general and it has great practical import in the study of AC circuits.  It means that any time we have a waveform that isn't perfectly sine-wave-shaped, the circuit in question will react as though its having an array of different frequency voltages imposed on it at once.
</para>

<index>Superposition Theorem</index>
<index>Theorem, Superposition</index>

<para>
When an AC circuit is subjected to a source voltage consisting of a mixture of frequencies, the components in that circuit respond to each constituent frequency in a different way.  Any reactive component such as a capacitor or an inductor will simultaneously present a unique amount of impedance to each and every frequency present in a circuit.  Thankfully, the analysis of such circuits is made relatively easy by applying the <italic>Superposition Theorem</italic>, regarding the multiple-frequency source as a set of single-frequency voltage sources connected in series, and analyzing the circuit for one source at a time, summing the results at the end to determine the aggregate total:
</para>

<image>02113.png<caption>Circuit driven by a combination of frequencies: 60 Hz and 90 Hz.</caption></image> 

<para>
Analyzing circuit for 60 Hz source alone:
</para>

<image>02114.png<caption>Circuit for solving 60 Hz.</caption></image> 

<para>

</para>


<image>12094.png</image> 

<para>
Analyzing the circuit for 90 Hz source alone:
</para>

<image>02115.png<caption>Circuit of solving 90 Hz.</caption></image> 

<para>

</para>


<image>12095.png</image> 

<para>
Superimposing the voltage drops across R and C, we get:
</para>

<image>12096.png</image> 

<para>
Because the two voltages across each component are at different frequencies, we cannot consolidate them into a single voltage figure as we could if we were adding together two voltages of different amplitude and/or phase angle at the same frequency.  Complex number notation give us the ability to represent waveform amplitude (polar magnitude) and phase angle (polar angle), but not frequency.  
</para>

<para>
What we can tell from this application of the superposition theorem is that there will be a greater 60 Hz voltage dropped across the capacitor than a 90 Hz voltage.  Just the opposite is true for the resistor's voltage drop.  This is worthy to note, especially in light of the fact that the two source voltages are equal.  It is this kind of unequal circuit response to signals of differing frequency that will be our specific focus in the next chapter.  
</para>

<para>
We can also apply the superposition theorem to the analysis of a circuit powered by a non-sinusoidal voltage, such as a square wave.  If we know the Fourier series (multiple sine/cosine wave equivalent) of that wave, we can regard it as originating from a series-connected string of multiple sinusoidal voltage sources at the appropriate amplitudes, frequencies, and phase shifts.  Needless to say, this can be a laborious task for some waveforms (an accurate square-wave Fourier Series is considered to be expressed out to the ninth harmonic, or five sine waves in all!), but it is possible.  I mention this not to scare you, but to inform you of the potential complexity lurking behind seemingly simple waveforms.  A real-life circuit will respond just the same to being powered by a square wave as being powered by an <italic>infinite</italic> series of sine waves of odd-multiple frequencies and diminishing amplitudes.  This has been known to translate into unexpected circuit resonances, transformer and inductor core overheating due to eddy currents, electromagnetic noise over broad ranges of the frequency spectrum, and the like.  Technicians and engineers need to be made aware of the potential effects of non-sinusoidal waveforms in reactive circuits.
</para>

<para>
Harmonics are known to manifest their effects in the form of electromagnetic radiation as well.  Studies have been performed on the potential hazards of using portable computers aboard passenger aircraft, citing the fact that computers' high frequency square-wave ``clock'' voltage signals are capable of generating radio waves that could interfere with the operation of the aircraft's electronic navigation equipment.  It's bad enough that typical microprocessor clock signal frequencies are within the range of aircraft radio frequency bands, but worse yet is the fact that the harmonic multiples of those fundamental frequencies span an even larger range, due to the fact that clock signal voltages are square-wave in shape and not sine-wave.
</para>

<para>
Electromagnetic ``emissions'' of this nature can be a problem in industrial applications, too, with harmonics abounding in very large quantities due to (nonlinear) electronic control of motor and electric furnace power.  The fundamental power line frequency may only be 60 Hz, but those harmonic frequency multiples theoretically extend into infinitely high frequency ranges.  Low frequency power line voltage and current doesn't radiate into space very well as electromagnetic energy, but high frequencies do.  
</para>

<index>Coupling, signal</index>
<index>Inductive coupling</index>
<index>Capacitive coupling</index>

<para>
Also, capacitive and inductive ``coupling'' caused by close-proximity conductors is usually more severe at high frequencies.  Signal wiring nearby power wiring will tend to ``pick up'' harmonic interference from the power wiring to a far greater extent than pure sine-wave interference.  This problem can manifest itself in industry when old motor controls are replaced with new, solid-state electronic motor controls providing greater energy efficiency.  Suddenly there may be weird electrical noise being impressed upon signal wiring that never used to be there, because the old controls never generated harmonics, and those high-frequency harmonic voltages and currents tend to inductively and capacitively ``couple'' better to nearby conductors than any 60 Hz signals from the old controls used to.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Any regular (repeating), non-sinusoidal waveform is equivalent to a particular series of sine/cosine waves of different frequencies, phases, and amplitudes, plus a DC offset voltage if necessary.  The mathematical process for determining the sinusoidal waveform equivalent for any waveform is called <italic>Fourier analysis</italic>.</item>
<item>Multiple-frequency voltage sources can be simulated for analysis by connecting several single-frequency voltage sources in series.  Analysis of voltages and currents is accomplished by using the superposition theorem.  NOTE: superimposed voltages and currents of different frequencies <italic>cannot</italic> be added together in complex number form, since complex numbers only account for amplitude and phase shift, not frequency!</item>
<item>Harmonics can cause problems by impressing unwanted (``noise'') voltage signals upon nearby circuits.  These unwanted signals may come by way of capacitive coupling, inductive coupling, electromagnetic radiation, or a combination thereof.</item>
</itemize>

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

