
<chapter>
<chaptertitle>MULTIVIBRATORS</chaptertitle>

<section>
<sectiontitle>Digital logic with feedback</sectiontitle>

<para>
With simple gate and combinational logic circuits, there is a definite output state for any given input state.  Take the truth table of an OR gate, for instance:
</para>

<image>04169.png</image> 

<para>
For each of the four possible combinations of input states (0-0, 0-1, 1-0, and 1-1), there is one, definite, unambiguous output state.  Whether we're dealing with a multitude of cascaded gates or a single gate, that output state is determined by the truth table(s) for the gate(s) in the circuit, and nothing else.
</para>

<para>
However, if we alter this gate circuit so as to give signal feedback from the output to one of the inputs, strange things begin to happen:
</para>

<image>04170.png</image> 

<para>
We know that if A is 1, the output <italic>must</italic> be 1, as well.  Such is the nature of an OR gate: any "high" (1) input forces the output "high" (1).  If A is "low" (0), however, we cannot guarantee the logic level or state of the output in our truth table.  Since the output feeds back to one of the OR gate's inputs, and we know that any 1 input to an OR gates makes the output 1, this circuit will "latch" in the 1 output state after any time that A is 1.  When A is 0, the output could be either 0 or 1, <italic>depending on the circuit's prior state!</italic>  The proper way to complete the above truth table would be to insert the word <italic>latch</italic> in place of the question mark, showing that the output maintains its last state when A is 0.
</para>

<index>Multivibrator</index>
<index>Astable multivibrator</index>
<index>Monostable multivibrator</index>
<index>Bistable multivibrator</index>

<para>
Any digital circuit employing feedback is called a <italic>multivibrator</italic>.  The example we just explored with the OR gate was a very simple example of what is called a <italic>bistable</italic> multivibrator.  It is called "bistable" because it can hold stable in one of <italic>two</italic> possible output states, either 0 or 1.  There are also <italic>monostable</italic> multivibrators, which have only <italic>one</italic> stable output state (that other state being momentary), which we'll explore later; and <italic>astable</italic> multivibrators, which have no stable state (oscillating back and forth between an output of 0 and 1).
</para>

<para>
A very simple astable multivibrator is an inverter with the output fed directly back to the input:
</para>

<image>04171.png</image> 

<para>
When the input is 0, the output switches to 1.  That 1 output gets fed back to the input as a 1.  When the input is 1, the output switches to 0.  That 0 output gets fed back to the input as a 0, and the cycle repeats itself.  The result is a high frequency (several megahertz) oscillator, if implemented with a solid-state (semiconductor) inverter gate:
</para>

<para>
If implemented with relay logic, the resulting oscillator will be considerably slower, cycling at a frequency well within the audio range.  The <italic>buzzer</italic> or <italic>vibrator</italic> circuit thus formed was used extensively in early radio circuitry, as a way to convert steady, low-voltage DC power into pulsating DC power which could then be stepped up in voltage through a transformer to produce the high voltage necessary for operating the vacuum tube amplifiers.  Henry Ford's engineers also employed the buzzer/transformer circuit to create continuous high voltage for operating the spark plugs on Model T automobile engines:
</para>

<image>04172.png</image> 

<para>
Borrowing terminology from the old mechanical buzzer (vibrator) circuits, solid-state circuit engineers referred to any circuit with two or more vibrators linked together as a <italic>multivibrator</italic>.  The astable multivibrator mentioned previously, with only one "vibrator," is more commonly implemented with multiple gates, as we'll see later.
</para>

<para>
The most interesting and widely used multivibrators are of the bistable variety, so we'll explore them in detail now.
</para>

</section>





 
<section>
<sectiontitle>The S-R latch</sectiontitle>

<index>Set, latch</index>
<index>Reset, latch</index>
<index>S-R latch</index>
<index>Latch, S-R</index>

<para>
A bistable multivibrator has <italic>two</italic> stable states, as indicated by the prefix <italic>bi</italic> in its name.  Typically, one state is referred to as <italic>set</italic> and the other as <italic>reset</italic>.  The simplest bistable device, therefore, is known as a <italic>set-reset</italic>, or S-R, latch.
</para>

<para>
To create an S-R latch, we can wire two NOR gates in such a way that the output of one feeds back to the input of another, and vice versa, like this:
</para>

<image>04173.png</image> 

<index>Invalid state</index>
<index>Illegal state</index>
<index>Q output, multivibrator</index>

<para>
The Q and not-Q outputs are supposed to be in opposite states.  I say "supposed to" because making both the S and R inputs equal to 1 results in both Q and not-Q being 0.  For this reason, having both S and R equal to 1 is called an <italic>invalid</italic> or <italic>illegal</italic> state for the S-R multivibrator.  Otherwise, making S=1 and R=0 "sets" the multivibrator so that Q=1 and not-Q=0.  Conversely, making R=1 and S=0 "resets" the multivibrator in the opposite state.  When S and R are both equal to 0, the multivibrator's outputs "latch" in their prior states.  Note how the same multivibrator function can be implemented in ladder logic, with the same results:
</para>

<image>04174.png</image> 

<para>
By definition, a condition of Q=1 and not-Q=0 is <italic>set</italic>.  A condition of Q=0 and not-Q=1 is <italic>reset</italic>.  These terms are universal in describing the output states of any multivibrator circuit.
</para>

<para>
The astute observer will note that the initial power-up condition of either the gate or ladder variety of S-R latch is such that both gates (coils) start in the de-energized mode.  As such, one would expect that the circuit will start up in an invalid condition, with both Q and not-Q outputs being in the same state.  Actually, this is true!  However, the invalid condition is unstable with both S and R inputs inactive, and the circuit will quickly stabilize in either the set or reset condition because one gate (or relay) is bound to react a little faster than the other.  If both gates (or coils) were <italic>precisely identical</italic>, they would oscillate between high and low like an astable multivibrator upon power-up without ever reaching a point of stability!  Fortunately for cases like this, such a precise match of components is a rare possibility.
</para>

<para>
It must be noted that although an astable (continually oscillating) condition would be extremely rare, there will most likely be a cycle or two of oscillation in the above circuit, and the final state of the circuit (set or reset) after power-up would be unpredictable.  The root of the problem is a <italic>race condition</italic> between the two relays CR<subscript>1</subscript> and CR<subscript>2</subscript>.  
</para>

<index>Race condition</index>

<para>
A race condition occurs when two mutually-exclusive events are simultaneously initiated through different circuit elements by a single cause.  In this case, the circuit elements are relays CR<subscript>1</subscript> and CR<subscript>2</subscript>, and their de-energized states are mutually exclusive due to the normally-closed interlocking contacts.  If one relay coil is de-energized, its normally-closed contact will keep the other coil energized, thus maintaining the circuit in one of two states (set or reset).  Interlocking prevents <italic>both</italic> relays from latching.  However, if <italic>both</italic> relay coils start in their de-energized states (such as after the whole circuit has been de-energized and is then powered up) both relays will "race" to become latched on as they receive power (the "single cause") through the normally-closed contact of the other relay.  One of those relays will inevitably reach that condition before the other, thus opening its normally-closed interlocking contact and de-energizing the other relay coil.  Which relay "wins" this race is dependent on the physical characteristics of the relays and not the circuit design, so the designer cannot ensure which state the circuit will fall into after power-up.  
</para>

<para>
Race conditions should be avoided in circuit design primarily for the unpredictability that will be created.  One way to avoid such a condition is to insert a time-delay relay into the circuit to disable one of the competing relays for a short time, giving the other one a clear advantage.  In other words, by purposely slowing down the de-energization of one relay, we ensure that the other relay will always "win" and the race results will always be predictable.  Here is an example of how a time-delay relay might be applied to the above circuit to avoid the race condition:
</para>

<image>04175.png</image> 

<para>
When the circuit powers up, time-delay relay contact TD<subscript>1</subscript> in the fifth rung down will delay closing for 1 second.  Having that contact open for 1 second prevents relay CR<subscript>2</subscript> from energizing through contact CR<subscript>1</subscript> in its normally-closed state after power-up.  Therefore, relay CR<subscript>1</subscript> will be allowed to energize first (with a 1-second head start), thus opening the normally-closed CR<subscript>1</subscript> contact in the fifth rung, preventing CR<subscript>2</subscript> from being energized without the S input going active.  The end result is that the circuit powers up cleanly and predictably in the reset state with S=0 and R=0.
</para>

<para>
It should be mentioned that race conditions are not restricted to relay circuits.  Solid-state logic gate circuits may also suffer from the ill effects of race conditions if improperly designed.  Complex computer programs, for that matter, may also incur race problems if improperly designed.  Race problems are a possibility for any sequential system, and may not be discovered until some time after initial testing of the system.  They can be very difficult problems to detect and eliminate.
</para>

<para>
A practical application of an S-R latch circuit might be for starting and stopping a motor, using normally-open, momentary pushbutton switch contacts for both <italic>start</italic> (S) and <italic>stop</italic> (R) switches, then energizing a motor contactor with either a CR<subscript>1</subscript> or CR<subscript>2</subscript> contact (or using a contactor in place of CR<subscript>1</subscript> or CR<subscript>2</subscript>).  Normally, a much simpler ladder logic circuit is employed, such as this:
</para>

<image>04176.png</image> 

<para>
In the above motor start/stop circuit, the CR<subscript>1</subscript> contact in parallel with the <italic>start</italic> switch contact is referred to as a "seal-in" contact, because it "seals" or latches control relay CR<subscript>1</subscript> in the energized state after the <italic>start</italic> switch has been released.  To break the "seal," or to "unlatch" or "reset" the circuit, the <italic>stop</italic> pushbutton is pressed, which de-energizes CR<subscript>1</subscript> and restores the seal-in contact to its normally open status.  Notice, however, that this circuit performs much the same function as the S-R latch.  Also note that this circuit has no inherent instability problem (if even a remote possibility) as does the double-relay S-R latch design.
</para>

<para>
In semiconductor form, S-R latches come in prepackaged units so that you don't have to build them from individual gates.  They are symbolized as such:
</para>

<image>04177.png</image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>bistable</italic> multivibrator is one with <italic>two</italic> stable output states.</item>
<item>In a bistable multivibrator, the condition of Q=1 and not-Q=0 is defined as <italic>set</italic>.  A condition of Q=0 and not-Q=1 is conversely defined as <italic>reset</italic>.  If Q and not-Q happen to be forced to the same state (both 0 or both 1), that state is referred to as <italic>invalid</italic>.</item>
<item>In an S-R latch, activation of the S input sets the circuit, while activation of the R input resets the circuit.  If both S and R inputs are activated simultaneously, the circuit will be in an invalid condition.</item>
<item>A <italic>race condition</italic> is a state in a sequential system where two mutually-exclusive events are simultaneously initiated by a single cause.</item>
</itemize>

</section>







<section>
<sectiontitle>The gated S-R latch</sectiontitle>

<index>Gated S-R latch</index>
<index>Latch, gated S-R</index>

<para>
It is sometimes useful in logic circuits to have a multivibrator which changes state only when certain conditions are met, regardless of its S and R input states.  The conditional input is called the <italic>enable</italic>, and is symbolized by the letter E.  Study the following example to see how this works:
</para>

<image>04178.png</image> 

<para>
When the E=0, the outputs of the two AND gates are forced to 0, regardless of the states of either S or R.  Consequently, the circuit behaves as though S and R were both 0, latching the Q and not-Q outputs in their last states.  Only when the enable input is activated (1) will the latch respond to the S and R inputs.  Note the identical function in ladder logic:
</para>

<image>04179.png</image> 

<para>
A practical application of this might be the same motor control circuit (with two normally-open pushbutton switches for <italic>start</italic> and <italic>stop</italic>), except with the addition of a master lockout input (E) that disables both pushbuttons from having control over the motor when its low (0).
</para>

<para>
Once again, these multivibrator circuits are available as prepackaged semiconductor devices, and are symbolized as such:
</para>

<image>04180.png</image> 

<para>
It is also common to see the enable input designated by the letters "EN" instead of just "E."
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>The <italic>enable</italic> input on a multivibrator must be activated for either S or R inputs to have any effect on the output state.</item>
<item>This enable input is sometimes labeled "E", and other times as "EN".</item>
</itemize>

</section>






<section>
<sectiontitle>The D latch</sectiontitle>

<index>D latch</index>
<index>Latch, D</index>

<para>
Since the enable input on a gated S-R latch provides a way to latch the Q and not-Q outputs without regard to the status of S or R, we can eliminate one of those inputs to create a multivibrator latch circuit with no "illegal" input states.  Such a circuit is called a D latch, and its internal logic looks like this:
</para>

<image>04181.png</image> 

<para>
Note that the R input has been replaced with the complement (inversion) of the old S input, and the S input has been renamed to D.  As with the gated S-R latch, the D latch will not respond to a signal input if the enable input is 0 -- it simply stays latched in its last state.  When the enable input is 1, however, the Q output follows the D input.
</para>

<para>
Since the R input of the S-R circuitry has been done away with, this latch has no "invalid" or "illegal" state.  Q and not-Q are <italic>always</italic> opposite of one another.  If the above diagram is confusing at all, the next diagram should make the concept simpler:
</para>

<image>04182.png</image> 

<para>
Like both the S-R and gated S-R latches, the D latch circuit may be found as its own prepackaged circuit, complete with a standard symbol:
</para>

<image>04183.png</image> 

<para>
The D latch is nothing more than a gated S-R latch with an inverter added to make R the complement (inverse) of S.  Let's explore the ladder logic equivalent of a D latch, modified from the basic ladder diagram of an S-R latch:
</para>

<image>04184.png</image> 

<para>
An application for the D latch is a 1-bit memory circuit.  You can "write" (store) a 0 or 1 bit in this latch circuit by making the enable input high (1) and setting D to whatever you want the stored bit to be.  When the enable input is made low (0), the latch ignores the status of the D input and merrily holds the stored bit value, outputting at the stored value at Q, and its inverse on output not-Q.
</para>
 
<itemize>
<item><bold>REVIEW:</bold></item>
<item>A D latch is like an S-R latch with only one input: the "D" input.  Activating the D input sets the circuit, and de-activating the D input resets the circuit.  Of course, this is only if the enable input (E) is activated as well.  Otherwise, the output(s) will be latched, unresponsive to the state of the D input.</item>
<item>D latches can be used as 1-bit memory circuits, storing either a "high" or a "low" state when disabled, and "reading" new data from the D input when enabled.</item>
</itemize>

</section>





<section>
<sectiontitle>Edge-triggered latches: Flip-Flops</sectiontitle>

<index>Edge triggering</index>

<para>
So far, we've studied both S-R and D latch circuits with enable inputs.  The latch responds to the data inputs (S-R or D) only when the enable input is activated.  In many digital applications, however, it is desirable to limit the responsiveness of a latch circuit to a very short period of time instead of the entire duration that the enabling input is activated.  One method of enabling a multivibrator circuit is called <italic>edge triggering</italic>, where the circuit's data inputs have control only during the time that the enable input is <italic>transitioning</italic> from one state to another.  Let's compare timing diagrams for a normal D latch versus one that is edge-triggered:
</para>

<image>04185.png</image> 

<para>

</para>

<bigspace>

<image>04186.png</image> 

<para>
In the first timing diagram, the outputs respond to input D whenever the enable (E) input is high, for however long it remains high.  When the enable signal falls back to a low state, the circuit remains latched.  In the second timing diagram, we note a distinctly different response in the circuit output(s): it only responds to the D input during that brief moment of time when the enable signal <italic>changes</italic>, or <italic>transitions</italic>, from low to high.  This is known as <italic>positive</italic> edge-triggering.
</para>

<para>
There is such a thing as <italic>negative</italic> edge triggering as well, and it produces the following response to the same input signals:
</para>

<image>04187.png</image> 

<index>Flip-flop vs. latch</index>
<index>Latch vs. flip-flop</index>
<index>Clock signal</index>

<para>
Whenever we enable a multivibrator circuit on the transitional edge of a square-wave enable signal, we call it a <italic>flip-flop</italic> instead of a <italic>latch</italic>.  Consequently, and edge-triggered S-R circuit is more properly known as an S-R flip-flop, and an edge-triggered D circuit as a D flip-flop.  The enable signal is renamed to be the <italic>clock</italic> signal.  Also, we refer to the data inputs (S, R, and D, respectively) of these flip-flops as <italic>synchronous</italic> inputs, because they have effect only at the time of the clock pulse edge (transition), thereby synchronizing any output changes with that clock pulse, rather than at the whim of the data inputs.
</para>

<para>
But, how do we actually accomplish this edge-triggering?  To create a "gated" S-R latch from a regular S-R latch is easy enough with a couple of AND gates, but how do we implement logic that only pays attention to the <italic>rising or falling edge</italic> of a changing digital signal?  What we need is a digital circuit that outputs a brief pulse whenever the input is activated for an arbitrary period of time, and we can use the output of this circuit to briefly enable the latch.  We're getting a little ahead of ourselves here, but this is actually a kind of monostable multivibrator, which for now we'll call a <italic>pulse detector</italic>.
</para>

<image>04188.png</image> 

<para>
The duration of each output pulse is set by components in the pulse circuit itself.  In ladder logic, this can be accomplished quite easily through the use of a time-delay relay with a very short delay time:
</para>

<image>04189.png</image> 

<index>Propagation delay</index>
<index>Delay, propagation</index>

<para>
Implementing this timing function with semiconductor components is actually quite easy, as it exploits the inherent time delay within every logic gate (known as <italic>propagation delay</italic>).  What we do is take an input signal and split it up two ways, then place a gate or a series of gates in one of those signal paths just to delay it a bit, then have both the original signal and its delayed counterpart enter into a two-input gate that outputs a high signal for the brief moment of time that the delayed signal has not yet caught up to the low-to-high change in the non-delayed signal.  An example circuit for producing a clock pulse on a low-to-high input signal transition is shown here:
</para>

<image>04190.png</image> 

<para>
This circuit may be converted into a negative-edge pulse detector circuit with only a change of the final gate from AND to NOR:
</para>

<image>04191.png</image> 

<index>S-R flip-flop</index>
<index>Flip-flop, S-R</index>

<para>
Now that we know how a pulse detector can be made, we can show it attached to the enable input of a latch to turn it into a flip-flop.  In this case, the circuit is a S-R flip-flop:
</para>

<image>04192.png</image> 

<para>
Only when the clock signal (C) is transitioning from low to high is the circuit responsive to the S and R inputs.  For any other condition of the clock signal ("x") the circuit will be latched.
</para>

<para>
A ladder logic version of the S-R flip-flop is shown here:
</para>

<image>04193.png</image> 

<para>
Relay contact CR<subscript>3</subscript> in the ladder diagram takes the place of the old E contact in the S-R latch circuit, and is closed only during the short time that both C is closed and time-delay contact TR<subscript>1</subscript> is closed.  In either case (gate or ladder circuit), we see that the inputs S and R have no effect unless C is transitioning from a low (0) to a high (1) state.  Otherwise, the flip-flop's outputs latch in their previous states.
</para>

<index>Race condition</index>

<para>
It is important to note that the invalid state for the S-R flip-flop is maintained only for the short period of time that the pulse detector circuit allows the latch to be enabled.  After that brief time period has elapsed, the outputs will latch into either the set or the reset state.  Once again, the problem of a <italic>race condition</italic> manifests itself.  With no enable signal, an invalid output state cannot be maintained.  However, the valid "latched" states of the multivibrator -- set and reset -- are mutually exclusive to one another.  Therefore, the two gates of the multivibrator circuit will "race" each other for supremacy, and whichever one attains a high output state first will "win."
</para>

<para>
The block symbols for flip-flops are slightly different from that of their respective latch counterparts:
</para>

<image>04194.png</image> 

<para>
The triangle symbol next to the clock inputs tells us that these are edge-triggered devices, and consequently that these are flip-flops rather than latches.  The symbols above are positive edge-triggered: that is, they "clock" on the rising edge (low-to-high transition) of the clock signal.  Negative edge-triggered devices are symbolized with a bubble on the clock input line:
</para>

<image>04195.png</image> 

<para>
Both of the above flip-flops will "clock" on the falling edge (high-to-low transition) of the clock signal.
</para>
 
<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>flip-flop</italic> is a latch circuit with a "pulse detector" circuit connected to the enable (E) input, so that it is enabled only for a brief moment on either the rising or falling edge of a clock pulse.</item>
<item>Pulse detector circuits may be made from time-delay relays for ladder logic applications, or from semiconductor gates (exploiting the phenomenon of <italic>propagation delay</italic>).</item>
</itemize>

</section>





<section>
<sectiontitle>The J-K flip-flop</sectiontitle>

<index>J-K flip-flop</index>
<index>Flip-flop, J-K</index>

<para>
Another variation on a theme of bistable multivibrators is the J-K flip-flop.  Essentially, this is a modified version of an S-R flip-flop with no "invalid" or "illegal" output state.  Look closely at the following diagram to see how this is accomplished:
</para>

<image>04196.png</image> 

<para>
What used to be the S and R inputs are now called the J and K inputs, respectively.  The old two-input AND gates have been replaced with 3-input AND gates, and the third input of each gate receives feedback from the Q and not-Q outputs.  What this does for us is permit the J input to have effect only when the circuit is reset, and permit the K input to have effect only when the circuit is set.  In other words, the two inputs are <italic>interlocked</italic>, to use a relay logic term, so that they cannot both be activated simultaneously.  If the circuit is "set," the J input is inhibited by the 0 status of not-Q through the lower AND gate; if the circuit is "reset," the K input is inhibited by the 0 status of Q through the upper AND gate.
</para>

<para>
When both J and K inputs are 1, however, something unique happens.  Because of the selective inhibiting action of those 3-input AND gates, a "set" state inhibits input J so that the flip-flop acts as if J=0 while K=1 when in fact both are 1.  On the next clock pulse, the outputs will switch ("toggle") from set (Q=1 and not-Q=0) to reset (Q=0 and not-Q=1).  Conversely, a "reset" state inhibits input K so that the flip-flop acts as if J=1 and K=0 when in fact both are 1.  The next clock pulse toggles the circuit again from reset to set.
</para>

<para>
See if you can follow this logical sequence with the ladder logic equivalent of the J-K flip-flop:
</para>

<image>04197.png</image> 

<para>
The end result is that the S-R flip-flop's "invalid" state is eliminated (along with the race condition it engendered) and we get a useful feature as a bonus: the ability to toggle between the two (bistable) output states with every transition of the clock input signal.
</para>

<para>
There is no such thing as a J-K latch, only J-K flip-flops.  Without the edge-triggering of the clock input, the circuit would continuously toggle between its two output states when both J and K were held high (1), making it an astable device instead of a bistable device in that circumstance.  If we want to preserve bistable operation for all combinations of input states, we <italic>must</italic> use edge-triggering so that it toggles only when we tell it to, one step (clock pulse) at a time.
</para>

<para>
The block symbol for a J-K flip-flop is a whole lot less frightening than its internal circuitry, and just like the S-R and D flip-flops, J-K flip-flops come in two clock varieties (negative and positive edge-triggered):
</para>

<image>04198.png</image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A J-K flip-flop is nothing more than an S-R flip-flop with an added layer of feedback.  This feedback selectively enables one of the two set/reset inputs so that they cannot both carry an active signal to the multivibrator circuit, thus eliminating the invalid condition.</item>
<item>When both J and K inputs are activated, and the clock input is pulsed, the outputs (Q and not-Q) will swap states.  That is, the circuit will <italic>toggle</italic> from a set state to a reset state, or vice versa.</item>
</itemize>

</section>






<section>
<sectiontitle>Asynchronous flip-flop inputs</sectiontitle>

<para>
The normal data inputs to a flip flop (D, S and R, or J and K) are referred to as <italic>synchronous</italic> inputs because they have effect on the outputs (Q and not-Q) only in step, or in sync, with the clock signal transitions.  These extra inputs that I now bring to your attention are called <italic>asynchronous</italic> because they can set or reset the flip-flop regardless of the status of the clock signal.  Typically, they're called <italic>preset</italic> and <italic>clear</italic>:
</para>

<image>04199.png</image> 

<para>
When the preset input is activated, the flip-flop will be set (Q=1, not-Q=0) regardless of any of the synchronous inputs or the clock.  When the clear input is activated, the flip-flop will be reset (Q=0, not-Q=1), regardless of any of the synchronous inputs or the clock.  So, what happens if both preset and clear inputs are activated?  Surprise, surprise: we get an invalid state on the output, where Q and not-Q go to the same state, the same as our old friend, the S-R latch!  Preset and clear inputs find use when multiple flip-flops are ganged together to perform a function on a multi-bit binary word, and a single line is needed to set or reset them all at once.
</para>

<para>
Asynchronous inputs, just like synchronous inputs, can be engineered to be active-high or active-low.  If they're active-low, there will be an inverting bubble at that input lead on the block symbol, just like the negative edge-trigger clock inputs.
</para>

<image>04200.png</image> 

<para>
Sometimes the designations "PRE" and "CLR" will be shown with inversion bars above them, to further denote the negative logic of these inputs:
</para>

<image>04201.png</image> 

<itemize>
<item><bold>REVIEW:</bold></item>
<item><italic>Asynchronous</italic> inputs on a flip-flop have control over the outputs (Q and not-Q) regardless of clock input status.</item>
<item>These inputs are called the <italic>preset</italic> (PRE) and <italic>clear</italic> (CLR).  The preset input drives the flip-flop to a set state while the clear input drives it to a reset state.</item>
<item>It is possible to drive the outputs of a J-K flip-flop to an invalid condition using the asynchronous inputs, because all feedback within the multivibrator circuit is overridden.</item>
</itemize>

</section>







<section>
<sectiontitle>Monostable multivibrators</sectiontitle>

<para>
We've already seen one example of a monostable multivibrator in use: the pulse detector used within the circuitry of flip-flops, to enable the latch portion for a brief time when the clock input signal transitions from either low to high or high to low.  The pulse detector is classified as a monostable multivibrator because it has only <italic>one</italic> stable state.  By <italic>stable</italic>, I mean a state of output where the device is able to latch or hold to forever, without external prodding.  A latch or flip-flop, being a bistable device, can hold in either the "set" or "reset" state for an indefinite period of time.  Once its set or reset, it will continue to latch in that state unless prompted to change by an external input.  A monostable device, on the other hand, is only able to hold in one particular state indefinitely.  Its other state can only be held momentarily when triggered by an external input.  
</para>

<para>
A mechanical analogy of a monostable device would be a momentary contact pushbutton switch, which spring-returns to its normal (stable) position when pressure is removed from its button actuator.  Likewise, a standard wall (toggle) switch, such as the type used to turn lights on and off in a house, is a bistable device.  It can latch in one of two modes: on or off.
</para>

<para>
All monostable multivibrators are <italic>timed</italic> devices.  That is, their unstable output state will hold only for a certain minimum amount of time before returning to its stable state.  With semiconductor monostable circuits, this timing function is typically accomplished through the use of resistors and capacitors, making use of the exponential charging rates of RC circuits.  A comparator is often used to compare the voltage across the charging (or discharging) capacitor with a steady reference voltage, and the on/off output of the comparator used for a logic signal.  With ladder logic, time delays are accomplished with time-delay relays, which can be constructed with semiconductor/RC circuits like that just mentioned, or mechanical delay devices which impede the immediate motion of the relay's armature.  Note the design and operation of the pulse detector circuit in ladder logic:
</para>

<image>04202.png</image> 

<para>
No matter how long the input signal stays high (1), the output remains high for just 1 second of time, then returns to its normal (stable) low state.
</para>

<para>
For some applications, it is necessary to have a monostable device that outputs a longer pulse than the input pulse which triggers it.  Consider the following ladder logic circuit:
</para>

<image>04203.png</image> 

<index>One-shot, retriggerable</index>

<para>
When the input contact closes, TD<subscript>1</subscript> contact immediately closes, and stays closed for 10 seconds after the input contact opens.  No matter how short the input pulse is, the output stays high (1) for exactly 10 seconds after the input drops low again.  This kind of monostable multivibrator is called a <italic>one-shot</italic>.  More specifically, it is a <italic>retriggerable</italic> one-shot, because the timing begins after the input drops to a low state, meaning that multiple input pulses within 10 seconds of each other will maintain a continuous high output:
</para>

<image>04204.png</image> 

<index>Bounce, switch contact</index>
<index>Switch contact bounce</index>
<index>Debouncing circuit</index>

<para>
One application for a retriggerable one-shot is that of a single mechanical contact debouncer.  As you can see from the above timing diagram, the output will remain high despite "bouncing" of the input signal from a mechanical switch.  Of course, in a real-life switch debouncer circuit, you'd probably want to use a time delay of much shorter duration than 10 seconds, as you only need to "debounce" pulses that are in the millisecond range.
</para>

<image>04205.png</image> 

<index>One-shot, nonretriggerable</index>

<para>
What if we only wanted a 10 second timed pulse output from a relay logic circuit, <italic>regardless</italic> of how many input pulses we received or how long-lived they may be?  In that case, we'd have to couple a pulse-detector circuit to the retriggerable one-shot time delay circuit, like this:
</para>

<image>04206.png</image> 

<para>
Time delay relay TD<subscript>1</subscript> provides an "on" pulse to time delay relay coil TD<subscript>2</subscript> for an arbitrarily short moment (in this circuit, for at least 0.5 second each time the input contact is actuated).  As soon as TD<subscript>2</subscript> is energized, the normally-closed, timed-closed TD<subscript>2</subscript> contact in series with it prevents coil TD<subscript>2</subscript> from being re-energized as long as its timing out (10 seconds).  This effectively makes it unresponsive to any more actuations of the input switch during that 10 second period.
</para>

<para>
Only after TD<subscript>2</subscript> times out does the normally-closed, timed-closed TD<subscript>2</subscript> contact in series with it allow coil TD<subscript>2</subscript> to be energized again.  This type of one-shot is called a <italic>nonretriggerable</italic> one-shot.
</para>

<para>
One-shot multivibrators of both the retriggerable and nonretriggerable variety find wide application in industry for siren actuation and machine sequencing, where an intermittent input signal produces an output signal of a set time. 
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>A <italic>monostable</italic> multivibrator has only one stable output state.  The other output state can only be maintained temporarily.</item>
<item>Monostable multivibrators, sometimes called <italic>one-shots</italic>, come in two basic varieties: <italic>retriggerable</italic> and <italic>nonretriggerable</italic>.</item>
<item>One-shot circuits with very short time settings may be used to <italic>debounce</italic> the "dirty" signals created by mechanical switch contacts.</item>
</itemize>

</section>

</chapter>

<pagebreak>

