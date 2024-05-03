
<comment></comment>

<comment>Created 07/01/2004 to 04/09/2005 (DC)</comment>
<comment>Modified</comment>
<comment>first table/equation image 14164.eps</comment>
<comment>last table/equation image  14xxx.eps</comment>
<comment>first schematic image 04371.eps</comment>
<comment>last schematic image 043.eps</comment>

<index>shift register</index>
<index>sequential logic, shift register</index>

<chapter>
<chaptertitle>SHIFT REGISTERS</chaptertitle>

<para>
<bold>Original author: Dennis Crunkilton</bold>
</para>

<bigspace>

<para>
<comment>inage image after author</comment>
</para>


<section>
<sectiontitle>Introduction</sectiontitle>
<para>
Shift registers, like counters, are a form of <italic>sequential logic</italic>. Sequential logic, unlike combinational logic is not only affected by the present  inputs, but also, by the prior history. In other words, sequential logic remembers past events.
</para>

<para>
Shift registers produce a discrete delay of a digital signal or waveform. A waveform synchronized to a <italic>clock</italic>, a repeating square wave, is delayed by <bold>"n"</bold> discrete clock times, where <bold>"n"</bold> is the number of shift register stages. Thus, a four stage shift register delays "data in" by four clocks to "data out". The stages in a shift register are <italic>delay stages</italic>, typically type <bold>"D"</bold> Flip-Flops or type <bold>"JK"</bold> Flip-flops.
</para>

<para>
Formerly, very long (several hundred stages) shift registers served  as digital memory. This obsolete application is reminiscent of the acoustic mercury delay lines used as early computer memory.
</para>

<para>
Serial data transmission, over a distance of meters to kilometers, uses shift registers to convert parallel data to serial form. Serial data communications replaces many slow parallel data wires with a single serial high speed circuit.
</para>

<para>
Serial data over shorter distances of tens of centimeters, uses shift registers to get data into and out of microprocessors.  Numerous peripherals, including analog to digital converters, digital to analog converters, display drivers, and memory,  use shift registers to reduce the amount of wiring in circuit boards.
</para>

<index>pseudo-noise</index>
<para>
Some specialized counter circuits actually use shift registers to generate repeating waveforms. Longer shift registers, with the help of feedback generate patterns so long that they look like random noise, <italic>pseudo-noise</italic>.
</para>

<para>
Basic shift registers are classified by structure according to the following types:
<itemize>
<item>Serial-in/serial-out</item>
<item>Parallel-in/serial-out</item>
<item>Serial-in/parallel-out</item>
<item>Universal parallel-in/parallel-out</item>
<item>Ring counter</item>
</itemize>
</para>

<bigspace>
<para>
<image>04450.png</image> <comment> SISO block- number out of sequence </comment>
</para>
<bigspace>

<para>
Above we show a block diagram of a serial-in/serial-out shift register, which is 4-stages long. Data at the input will be delayed by four clock periods from the input to the output of the shift register.
</para>
<para>
Data at "data in", above,  will be present at the Stage <bold>A</bold> output after the first clock pulse. After the second pulse stage <bold>A</bold> data is transfered to stage <bold>B</bold> output, and "data in" is transfered to stage <bold>A</bold> output. After the third clock, stage <bold>C</bold> is replaced by stage <bold>B</bold>; stage <bold>B</bold> is replaced by stage <bold>A</bold>; and stage A is replaced by "data in". After the fourth clock, the data originally present at "data in" is at stage <bold>D</bold>, "output". The "first in" data is "first out" as it is shifted from "data in" to "data out".
</para>

<bigspace>
<para>
<image>04372.png</image> <comment> PISO block </comment>
</para>
<bigspace>

<para>
Data is loaded into all stages at once of a parallel-in/serial-out shift register. The data is then shifted out via "data out" by clock pulses. Since a 4- stage shift register is shown above, four clock pulses are required to shift out all of the data. In the diagram above, stage <bold>D</bold> data will be present at the "data out" up until the first clock pulse; stage <bold>C</bold> data will be present at "data out"  between the first clock and the second clock pulse; stage <bold>B</bold> data will be present  between the second clock and the third clock; and stage <bold>A</bold> data will be present  between the third and the fourth clock. After the fourth clock pulse and thereafter, successive bits of "data in" should appear at "data out" of the shift register after a delay of four clock pulses.
</para>

<para>
If four switches were connected to D<subscript>A</subscript> through D<subscript>D</subscript>, the status could be read into a microprocessor using only one data pin and a clock pin. Since adding more switches would require no additional pins, this approach looks attractive for many inputs.
</para>

<bigspace>
<para>
<image>04373.png</image> <comment> SIPO block </comment>
</para>
<bigspace>

<para>
Above, four data bits will be shifted in from "data in" by four clock pulses and be available at Q<subscript>A</subscript> through Q<subscript>D</subscript> for driving external circuitry such as LEDs, lamps, relay drivers, and horns.
</para>

<para>
After the first clock, the data at "data in" appears at Q<subscript>A</subscript>.
After the second clock, The old Q<subscript>A</subscript> data appears at Q<subscript>B</subscript>; Q<subscript>A</subscript> receives next data from "data in". After the third clock, Q<subscript>B</subscript> data is at Q<subscript>C</subscript>. After the fourth clock, Q<subscript>C</subscript> data is at Q<subscript>D</subscript>. This stage contains the data first present at "data in". The shift register should now contain four data bits.
</para>

<bigspace>
<para>
<image>04374.png</image> <comment> PIPO block </comment>
</para>
<bigspace>

<para>
A parallel-in/parallel-out shift register combines the function of the parallel-in, serial-out shift register with the function of the serial-in, parallel-out shift register to yield the universal shift register. The "do anything" shifter comes at a price-- the increased number of I/O (Input/Output) pins may reduce the number of stages which can be packaged.
</para>

<para>
Data presented at D<subscript>A</subscript> through D<subscript>D</subscript> is parallel loaded into the registers. This data at Q<subscript>A</subscript> through Q<subscript>D</subscript> may be shifted by the number of pulses presented at the clock input. The shifted data is available at Q<subscript>A</subscript> through Q<subscript>D</subscript>. The "mode" input, which may be more than one input, controls parallel loading of data from D<subscript>A</subscript> through D<subscript>D</subscript>, shifting of data, and the direction of shifting. There are shift registers which will shift data either left or right.
</para>

<bigspace>
<para>
<image>04375.png</image> <comment> ring counter </comment>
</para>
<bigspace>

<para>
If the serial output of a shift register is connected to the serial input, data can be perpetually shifted around the ring as long as clock pulses are present.  If the output is inverted before being fed back as shown above, we do not have to worry about loading the initial data into the "ring counter".
</para>

</section>

<section>

<index>shift register, serial-in/serial-out</index>
<sectiontitle>Serial-in/serial-out shift register</sectiontitle>

<para>
Serial-in, serial-out shift registers delay data by one clock time for each stage. They will store a bit of data for each register. A serial-in, serial-out shift register may be one to 64 bits in length, longer if registers or packages are cascaded.
</para>

<para>
Below is a single stage shift register receiving data which is not synchronized to the register clock. The "data in" at the <bold>D</bold> pin of the type <bold>D</bold> <bold>FF</bold> (Flip-Flop) does not change levels when the clock changes for low to high. We may want to synchronize the data to a system wide clock in a circuit board to improve the reliability of a digital logic circuit.
</para>

<bigspace>
<para>
<image>04376.png</image> <comment> 1-shift type D</comment>
<bigspace>

<para>
The obvious point (as compared to the figure below) illustrated above is that whatever "data in" is present at the <bold>D</bold> pin of a type <bold>D</bold> FF is transfered from D to output Q at clock time. Since our example shift register uses positive edge sensitive storage elements, the output <bold>Q</bold> follows the <bold>D</bold> input when the clock transitions from low to high as shown by the up arrows on the diagram above. There is no doubt what logic level is  present at clock time because the data is stable well before and after the clock edge. This is  seldom the case in multi-stage shift registers. But, this was an easy example to start with. We are only concerned with the positive, low to high, clock edge. The falling edge can be ignored. It is very easy to see <bold>Q</bold> follow <bold>D</bold> at clock time above. Compare this to the diagram below where the "data in" appears to change with the positive clock edge.
</para>

<bigspace>
<para>
<image>04377.png</image> <comment> 1-shift D?? </comment>
</para>
<bigspace>

<para>
Since "data in" appears to changes at clock time t<subscript>1</subscript> above,  what does the type <bold>D</bold> FF see at clock time? The short over simplified answer is that it sees the data that was present at <bold>D</bold> prior to the clock. That is what is transfered to <bold>Q</bold> at clock time t<subscript>1</subscript>. The correct waveform is Q<subscript>C</subscript>. At t<subscript>1</subscript> Q goes to a zero if it is not already zero. The <bold>D</bold> register does not see a one until time t<subscript>2</subscript>, at which time Q goes high.
</para>

<bigspace>
<para>
<image>04378.png</image> <comment> 1-shift correct   </comment>
</para>
<bigspace>

<para>
Since data, above,  present at <bold>D</bold> is clocked to <bold>Q</bold> at clock time, and <bold>Q</bold> cannot change until the next clock time, the <bold>D</bold> FF delays data by one clock period, provided that the data is already synchronized to the clock. The Q<subscript>A</subscript> waveform is the same as "data in" with a one clock period delay.
</para>

<para>
A more detailed look at what the input of the type <bold>D</bold> Flip-Flop sees at clock time follows. Refer to the figure below. Since "data in" appears to changes at clock time (above), we need further information to determine what the <bold>D</bold> FF sees. If the "data in" is from another shift register stage, another same type <bold>D</bold> FF, we can draw some conclusions based on <italic>data sheet</italic> information. Manufacturers of digital logic make available information about their parts in data sheets, formerly only available in a collection called a <italic>data book</italic>. Data books are still available; though, the manufacturer's web site is the modern source.
</para>

<bigspace>
<para>
<image>04379.png</image> <comment> Tsu Thld </comment>
</para>
<bigspace>

<index>setup time, shift register</index>
<index>hold  time, shift register</index>
<index>propagation delay, shift register</index>

<para>
The following data was extracted from the CD4006b data sheet for operation at 5V<subscript>DC</subscript>, which serves as an example to illustrate timing.
</para>
<para>
<url>http://focus.ti.com/docs/prod/folders/print/cd4006b.html</url>
</para>

<itemize>
<item>t<subscript>S</subscript>=100ns</item>
<item>t<subscript>H</subscript>=60ns</item>
<item>t<subscript>P</subscript>=200-400ns typ/max</item>
</itemize>
<para>
t<subscript>S</subscript> is the <italic>setup time</italic>, the time data must be present before clock time. In this case data must be present at <bold>D</bold> 100ns prior to the clock. Furthermore, the data must be held for <italic>hold time</italic> t<subscript>H</subscript>=60ns after clock time. These two conditions must be met to reliably clock data from <bold>D</bold> to <bold>Q</bold> of the Flip-Flop.
</para>

<para>
There is no problem meeting the setup time of 60ns as the data at <bold>D</bold> has been there for the whole previous clock period if it comes from another shift register stage. For example, at a clock frequency of 1 Mhz, the clock period is 1000 <mu>s, plenty of time. Data will actually be present for 1000<mu>s prior to the clock, which is much greater than the minimum required t<subscript>S</subscript> of 60ns.
</para>

<para>
The hold time t<subscript>H</subscript>=60ns is met because D connected to Q of another stage cannot change any faster than the propagation delay of the previous stage t<subscript>P</subscript>=200ns.  Hold time is met as long as the propagation delay of the previous <bold>D</bold> FF is greater than the hold time. Data at <bold>D</bold> driven by another stage <bold>Q</bold> will not change any faster than 200ns for the CD4006b.
</para>

<para>
To summarize, output  <bold>Q</bold>  follows input D at nearly clock time if Flip-Flops are cascaded into a multi-stage shift register.
</para>



<bigspace>
<para>
<image>04380.png</image> <comment> 3-shift type D </comment>
</para>
<bigspace>

<para>
Three type <bold>D</bold> Flip-Flops are cascaded Q to D and the clocks paralleled to form a three stage shift register above.
</para>

<bigspace>
<para>
<image>04381.png</image> <comment> 3-shift type JK </comment>
</para>
<bigspace>

<para>
Type <bold>JK</bold> FFs cascaded Q to J, Q' to K with clocks in parallel to yield an alternate form of the shift register above.
</para>

<para>
A serial-in/serial-out shift register has a clock input, a data input, and a data output from the last stage. In general, the other stage outputs are not available Otherwise, it would be a serial-in, parallel-out shift register..
</para>

<para>
The waveforms below are applicable to either one of the preceding two versions of the serial-in, serial-out shift register. The three pairs of arrows show that a three stage shift register temporarily stores 3-bits of data and delays it by three clock periods from input to output.
</para>

<bigspace>
<para>
<image>04382.png</image> <comment> 3-shift waveforms </comment>
</para>
<bigspace>

<para>
At clock time t<subscript>1</subscript> a   "data in"   of <bold>0</bold> is clocked from <bold>D</bold> to <bold>Q</bold> of all three stages. In particular, <bold>D</bold> of stage <bold>A</bold> sees a logic <bold>0</bold>, which is clocked to Q<subscript>A</subscript> where it remains until time t<subscript>2</subscript>.
</para>

<para>
At clock time t<subscript>2</subscript> a "data in" of <bold>1</bold> is clocked from <bold>D</bold> to Q<subscript>A</subscript>. At stages <bold>B</bold> and <bold>C</bold>, a <bold>0</bold>, fed from preceding stages is clocked to Q<subscript>B</subscript> and Q<subscript>C</subscript>.
</para>

<para>
At clock time t<subscript>3</subscript> a "data in" of <bold>0</bold> is clocked from <bold>D</bold> to Q<subscript>A</subscript>. Q<subscript>A</subscript> goes low and stays low for the remaining clocks due to "data in" being <bold>0</bold>. Q<subscript>B</subscript> goes high at t<subscript>3</subscript> due to a <bold>1</bold> from the previous stage. Q<subscript>C</subscript> is still low after t<subscript>3</subscript> due to a low from the previous stage.
</para>

<para>
Q<subscript>C</subscript> finally goes high at clock t<subscript>4</subscript> due to the high fed to <bold>D</bold> from the previous stage Q<subscript>B</subscript>. All earlier stages have <bold>0</bold>s shifted into them. And, after the next clock pulse at t<subscript>5</subscript>, all logic <bold>1</bold>s will have been shifted out, replaced by <bold>0</bold>s
</para>

<subsection>
<subsectiontitle>Serial-in/serial-out devices</subsectiontitle>
<para>
We will take a closer look at the following parts available as integrated circuits, courtesy of Texas Instruments. For complete device data sheets follow the links.
</para>

<itemize>

<item>
CD4006b 18-bit serial-in/ serial-out shift register
<para>
<url>http://focus.ti.com/docs/prod/folders/print/cd4006b.html</url>
</para>
</item>

<item>
CD4031b 64-bit serial-in/ serial-out shift register
<para>
<url>http://focus.ti.com/docs/prod/folders/print/cd4031b.html</url>
</para>
</item>

<item>
CD4517b dual 64-bit serial-in/ serial-out shift register
<para>
<url>http://focus.ti.com/docs/prod/folders/print/cd4517b.html</url>
</para>
</item>

</itemize>

<para>
The following serial-in/ serial-out shift registers are 4000 series <italic>CMOS</italic> (Complementary Metal Oxide Semiconductor) family parts. As such, They will accept a V<subscript>DD</subscript>, positive power supply of 3-Volts to 15-Volts. The V<subscript>SS</subscript> pin is grounded. The maximum frequency of the shift clock, which varies with V<subscript>DD</subscript>, is a few megahertz. See the full data sheet for details.
</para>

<bigspace>
<para>
<image>04383.png</image> <comment>CD4006b 18-bit </comment>
</para>
<bigspace>

<para>
The 18-bit CD4006b consists of two stages of 4-bits and two more stages of 5-bits with a an output tap at 4-bits. Thus, the 5-bit stages could be used as 4-bit shift registers. To get a full 18-bit shift register the output of one shift register must be cascaded to the input of another and so on until all stages create a single shift register as shown below.
</para>

<bigspace>
<para>
<image>04384.png</image> <comment>CD4006b 18-bit DIP </comment>
</para>
<bigspace>

<para>
A CD4031 64-bit serial-in/ serial-out shift register is shown below.  A number of pins are not connected (nc). Both Q and Q' are available from the 64th stage, actually Q<subscript>64</subscript> and Q'<subscript>64</subscript>. There is also a Q<subscript>64</subscript> "delayed" from a half stage which is delayed by half a clock cycle. A major feature is a data selector which is at the data input to the shift register.
</para>

<bigspace>
<para>
<image>04385.png</image> <comment>CD40031b 64-bit </comment>
</para>
<bigspace>

<para>
The "mode control" selects between two inputs: data 1 and data 2. If "mode control" is high, data will be selected from  "data 2" for input to the shift register. In the case of "mode control" being logic low, the "data 1" is selected. Examples of this are shown in the two figures below.
</para>

<bigspace>
<para>
<image>04386.png</image> <comment>CD4031b recirculate </comment>
</para>
<bigspace>

<para>
The "data 2" above is wired to the  Q<subscript>64</subscript> output of the shift register. With "mode control" high, the Q<subscript>64</subscript> output is routed back to the shifter data input D. Data will <italic>recirculate</italic> from output to input. The data will repeat every 64 clock pulses as shown above. The question that arises is how did this data pattern get into the shift register in the first place?
</para>

<bigspace>
<para>
<image>04387.png</image> <comment>CD4031b load new data </comment>
</para>
<bigspace>

<para>
With "mode control" low, the CD4031 "data 1" is selected for input to the shifter. The output, Q<subscript>64</subscript>, is not recirculated because the lower data selector gate is <italic>disabled</italic>. By disabled we mean that the logic low "mode select" inverted twice to a low at the lower NAND gate prevents it for passing any signal on the lower pin (data 2) to the gate output. Thus, it is disabled.
</para>

<bigspace>
<para>
<image>04388.png</image> <comment>CD4517b dual 64-wide </comment>
</para>
<bigspace>

<para>
A CD4517b dual 64-bit shift register is shown above. Note the taps at the 16th, 32nd, and 48th stages. That means that shift registers of those lengths can be configured from one of the 64-bit shifters. Of course, the 64-bit shifters may be cascaded to yield an 80-bit, 96-bit, 112-bit, or 128-bit shift register. The clock CL<subscript>A</subscript> and CL<subscript>B</subscript> need to be paralleled when cascading the two shifters. WE<subscript>B</subscript> and WE<subscript>B</subscript> are grounded for normal shifting operations. The data inputs to the shift registers A and B  are D<subscript>A</subscript> and D<subscript>B</subscript> respectively.
</para>

<para>
Suppose that we require a 16-bit shift register. Can this be configured with the CD4517b?  How about a 64-shift register from the same part?
</para>

<bigspace>
<para>
<image>04389.png</image> <comment>CD4517b dual 64-wide as 16-bit, 64-bit </comment>
</para>
<bigspace>

<para>
Above we show A CD4517b wired as a 16-bit shift register for section B. The clock for section B is CL<subscript>B</subscript>. The data is clocked in at CL<subscript>B</subscript>. And the data delayed by 16-clocks is picked of off Q<subscript>16B</subscript>.  WE<subscript>B</subscript> , the write enable, is grounded.
</para>

<para>
Above we also show the same CD4517b wired as a 64-bit shift register for the independent section A. The clock for section A is CL<subscript>A</subscript>. The data enters at CL<subscript>A</subscript>. The data delayed by 64-clock pulses is picked up from Q<subscript>64A</subscript>.  WE<subscript>A</subscript>, the write enable for section A, is grounded.
</para>

</subsection>
</section>


<section>
<index>shift register, parallel-in/serial-out</index>
<sectiontitle>Parallel-in, serial-out shift register</sectiontitle>
<para>
</para>
</section>

<index>parallel data</index>
<index>serial data</index>
<para>
Parallel-in/ serial-out  shift registers do everything that the previous serial-in/ serial-out shift registers do plus input data to all stages simultaneously.  The parallel-in/ serial-out shift register stores data, shifts it on a clock by clock basis, and delays it by the number of stages times the clock period. In addition, parallel-in/ serial-out really means that we can load data  in parallel into all stages before any shifting ever begins. This is a way to convert data from a <italic>parallel</italic> format to a <italic>serial</italic> format. By parallel format we mean that the data bits are present simultaneously on individual wires, one for each data bit as shown below. By serial format we mean that the data bits are presented sequentially in time on a single wire or circuit as in the case of the "data out" on the block diagram below.
</para>

<bigspace>
<para>
<image>04372.png</image> <comment>CD4517b dual 64-wide </comment>
</para>
<bigspace>

<para>
Below we take a close look at the internal details of a 3-stage parallel-in/ serial-out shift register. A stage consists of  a type <bold>D</bold> Flip-Flop for storage, and an AND-OR selector to determine whether data will load in parallel, or shift stored data to the right. In general, these elements will be replicated for the number of stages required. We show three stages due to space limitations. Four, eight or sixteen bits is normal for real parts.
</para>


<bigspace>
<para>
<image>04390.png</image> <comment>PISO 3-stage </comment>
</para>
<bigspace>
<para>
Above we show the parallel load path when SHIFT/LD' is logic low. The upper NAND gates serving D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript> are enabled, passing data to the D inputs of type <bold>D</bold> Flip-Flops Q<subscript>A</subscript> Q<subscript>B</subscript> D<subscript>C</subscript> respectively. At the next positive going clock edge, the data will be clocked from D to Q of the three FFs. Three bits of data will load into Q<subscript>A</subscript> Q<subscript>B</subscript> D<subscript>C</subscript> at the same time.
</para>

<index>synchronous load, shift register</index>
<index>asynchronous load, shift register</index>

<para>
The type of parallel load just described, where the data loads on a clock pulse is known as <italic>synchronous load</italic> because the loading of data is synchronized to the clock. This needs to be differentiated from <italic>asynchronous load</italic> where loading is controlled by the preset and clear pins of the Flip-Flops which does not require the clock. Only one of these load methods is used within an individual device, the synchronous load being more common in newer devices.
</para>

<bigspace>
<para>
<image>04391.png</image> <comment>PISO 3-stage SI path </comment>
</para>
<bigspace>

<para>
The shift path is shown above when SHIFT/LD' is logic high. The lower AND gates of the pairs feeding the OR gate are enabled giving us a shift register connection of SI to D<subscript>A</subscript> , Q<subscript>A</subscript> to D<subscript>B</subscript> , Q<subscript>B</subscript> to D<subscript>C</subscript> , Q<subscript>C</subscript> to SO.  Clock pulses will cause data to be right shifted out to SO on successive pulses.
</para>

<para>
The waveforms below show both parallel loading of three bits of data and serial shifting of this data. Parallel data at D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript> is converted to serial data at SO.
</para>


<bigspace>
<para>
<image>04392.png</image> <comment>PISO 3-stage load waveforms </comment>
</para>
<bigspace>

<para>
What we previously described with words for parallel loading and shifting is now set down as waveforms above. As an example we present <bold>101</bold> to the parallel inputs D<subscript>AA</subscript> D<subscript>BB</subscript> D<subscript>CC</subscript>. Next, the SHIFT/LD' goes low enabling loading of data as opposed to shifting of data. It needs to be low a short time before and after the clock pulse due to setup and hold requirements. It is considerably wider than it has to be. Though, with synchronous logic it is convenient to make it wide. We could have made the active low SHIFT/LD' almost two clocks wide, low almost a clock before t<subscript>1</subscript> and back high just before t<subscript>3</subscript>. The important factor is that it needs to be low around clock time t<subscript>1</subscript> to enable parallel loading of the data by the clock.
</para>

<para>
Note that at t<subscript>1</subscript> the data <bold>101</bold> at D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript> is clocked from D to Q of the Flip-Flops as shown at Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> at time t<subscript>1</subscript>. This is the parallel loading of the data synchronous with the clock.
</para>

<bigspace>
<para>
<image>04393.png</image> <comment>PISO 3-stage shift waveforms </comment>
</para>
<bigspace>

<para>
Now that the data is loaded, we may shift it provided that  SHIFT/LD' is high to enable shifting, which it is prior to t<subscript>2</subscript>. At t<subscript>2</subscript> the data <bold>0</bold> at  Q<subscript>C</subscript> is shifted out of SO which is the same as the Q<subscript>C</subscript> waveform. It is either shifted into another integrated circuit, or lost if there is nothing connected to SO. The data at Q<subscript>B</subscript>, a <bold>0</bold> is shifted to Q<subscript>C</subscript>. The <bold>1</bold> at Q<subscript>A</subscript> is shifted into Q<subscript>B</subscript>. With "data in" a <bold>0</bold>, Q<subscript>A</subscript> becomes <bold>0</bold>. After t<subscript>2</subscript>, Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> = <bold>010</bold>.
</para>

<para>
After t<subscript>3</subscript>, Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> = <bold>001</bold>. This <bold>1</bold>, which was originally present at Q<subscript>A</subscript> after t<subscript>1</subscript>, is now present at SO and Q<subscript>C</subscript>. The last data bit is shifted out to an external integrated circuit if it exists. After t<subscript>4</subscript> all data from the parallel load is gone. At clock t<subscript>5</subscript> we show the shifting in of a data <bold>1</bold> present on the SI, serial input.
</para>

<para>
Why provide SI and SO pins on a shift register?  These connections allow us to cascade shift register stages to provide large shifters than available in a single IC (Integrated Circuit) package. They also allow serial connections to and from other ICs like microprocessors.
</para>


<subsection>
<subsectiontitle>Parallel-in/serial-out devices</subsectiontitle>
<para>
Let's  take a closer look at parallel-in/ serial-out shift registers available as integrated circuits, courtesy of Texas Instruments. For complete device data sheets follow these the links.
</para>

<itemize>

<item>
SN74ALS166 parallel-in/ serial-out 8-bit shift register, synchronous load
<para>
<url>http://www-s.ti.com/sc/ds/sn74als166.pdf</url>
</para>
</item>

<item>
SN74ALS165 parallel-in/ serial-out 8-bit shift register, asynchronous load
<para>
<url>http://www-s.ti.com/sc/ds/sn74als165.pdf</url>
</para>
</item>

<item>
CD4014B parallel-in/ serial-out 8-bit shift register, synchronous load
<para>
<url>http://www-s.ti.com/sc/ds/cd4014b.pdf</url>
</para>
</item>

<item>
SN74LS647 parallel-in/ serial-out 16-bit shift register, synchronous load
<para>
<url>http://www-s.ti.com/sc/ds/sn74ls674.pdf</url>
</para>
</item>

</itemize>


<bigspace>
<para>
<image>04394.png</image> <comment>PISO SN74ALS166 </comment>
</para>
<bigspace>

<index>166, SN74ALS166</index>

<para>
The SN74ALS166 shown above is the closest match of an actual part to the previous parallel-in/ serial out shifter figures. Let us note the minor changes to our figure above. First of all, there are 8-stages. We only show three. All 8-stages are shown on the data sheet available at the link above. The manufacturer labels the data inputs A, B, C, and so on to H. The  SHIFT/LOAD  control is called SH/LD'. It is abbreviated from our previous terminology, but works the same: parallel load if low, shift if high. The shift input (serial data in) is SER on the ALS166 instead of SI. The clock CLK is controlled by an inhibit signal, CLKINH. If CLKINH is high, the clock is inhibited, or disabled. Otherwise, this "real part" is the same as what we have looked at in detail.
</para>

<para>
</para>

<bigspace>
<para>
<image>04395.png</image> <comment>PISO SN74ALS166 ANSI symbol</comment>
</para>
<bigspace>


<para>
Above is the ANSI (American National Standards Institute) symbol for the SN74ALS166 as provided on the data sheet. Once we know how the part operates, it is convenient to hide the details within a symbol. There are many general forms of symbols. The advantage of the ANSI symbol is that the labels provide hints about how the part operates.
</para>

<para>
The large notched block at the top of the '74ASL166 is the control section of the ANSI symbol. There is a reset indicted by <bold>R</bold>. There are three control signals: <bold>M1</bold> (Shift), <bold>M2 </bold>(Load), and <bold>C3/1 (arrow)</bold> (inhibited clock). The clock has two functions. First,  <bold>C3</bold> for shifting parallel data wherever a prefix of <bold></bold>3 appears. Second, whenever <bold>M1</bold> is asserted, as indicated by the <bold>1</bold> of <bold>C3/1 (arrow)</bold>, the data is shifted as indicated by the right pointing arrow. The slash (/) is a separator between these two functions.  The 8-shift stages, as indicated by title <bold>SRG8</bold>, are identified by the external inputs <bold>A, B, C,</bold> to <bold>H</bold>. The internal <bold>2, 3D</bold> indicates that data, <bold>D</bold>, is controlled by <bold>M2</bold> [Load] and <bold>C3</bold> clock. In this case, we can conclude that the parallel data is loaded synchronously with the clock <bold>C3</bold>. The upper stage at <bold>A</bold> is a wider block than the others to accommodate the  input <bold>SER</bold>. The  legend <bold>1, 3D</bold> implies that <bold>SER</bold> is controlled by <bold>M1</bold> [Shift] and <bold>C3</bold> clock. Thus, we expect to clock in data at <bold>SER</bold>  when shifting as opposed to parallel loading.
</para>

<bigspace>
<para>
<image>04396.png</image> <comment>gate symbols, ANSI symbol</comment>
</para>
<bigspace>

<index>shape symbols, logic gate</index>
<index>ANSI gate symbols</index>
<index>gate shape, ANSI symbols</index>
<index>logic gate shape symbols</index>
<index>rectangular symbols, logic gate</index>

<para>
The ANSI/IEEE basic gate <italic>rectangular symbols</italic> are provided above for comparison to the more familiar <italic>shape symbols</italic> so that we may decipher the meaning of the symbology associated with the <bold>CLKIN</bold>H and <bold>CLK</bold> pins on the previous ANSI SN74ALS166 symbol. The <bold>CLK</bold> and CLKINH feed an <bold>OR</bold> gate on the SN74ALS166 ANSI symbol. <bold>OR</bold> is indicated by <bold>=<gt></bold> on the rectangular inset symbol. The long triangle at the output indicates a clock. If there was a  bubble with the arrow this would have indicated  shift on negative clock edge (high to low). Since there is no bubble with the clock arrow, the register shifts on the  positive (low to high transition) clock edge. The long arrow, after the legend <bold>C3/1</bold> pointing right indicates shift right, which is down the symbol.
</para>

<bigspace>
<para>
<image>04397.png</image> <comment>PISO async load 74ALS165 internal logic</comment>
</para>
<bigspace>

<index>165, SN74ALS165</index>

<para>
Part of the internal logic of the SN74ALS165 parallel-in/ serial-out, asynchronous load shift register is reproduced from the data sheet above. See the link at the beginning of this section the for the full diagram. We have not looked at asynchronous loading of data up to this point. First of all, the loading is accomplished by application of appropriate signals to the <bold>Set</bold> (preset) and <bold>Reset</bold> (clear) inputs of the Flip-Flops. The upper <bold>NAND</bold> gates feed the <bold>Set</bold> pins of the FFs and also cascades into the lower <bold>NAND</bold> gate feeding the <bold>Reset</bold> pins of the FFs. The lower <bold>NAND</bold> gate inverts the signal in going from the <bold>Set</bold> pin to the <bold>Reset</bold> pin.
</para>

<para>
First, <bold>SH/LD'</bold> must be pulled <bold>Low</bold> to enable the upper and lower <bold>NAND</bold> gates.  If <bold>SH/LD'</bold> were at a logic <bold>high</bold> instead, the inverter feeding a logic <bold>low</bold> to all <bold>NAND</bold> gates would force a <bold>High</bold> out, releasing the "active low" <bold>Set</bold> and <bold>Reset</bold> pins of all FFs. There would be no possibility of loading the FFs.
</para>

<para>
With <bold>SH/LD'</bold> held <bold>Low</bold>, we can feed, for example, a data <bold>1</bold> to parallel input <bold>A</bold>, which inverts to a zero at the upper <bold>NAND</bold> gate output, setting FF Q<subscript>A</subscript> to a <bold>1</bold>. The  <bold>0</bold> at the <bold>Set</bold> pin is fed to the lower <bold>NAND</bold> gate where it is inverted to a <bold>1</bold> , releasing the <bold>Reset</bold> pin of <bold>Q<subscript>A</subscript></bold>. Thus, a data <bold>A=1</bold> sets <bold>Q<subscript>A</subscript>=1</bold>. Since none of this required the clock, the loading is asynchronous with respect to the clock. We use an asynchronous loading shift register if we cannot wait for a clock to parallel load data, or if it is inconvenient to generate a single clock pulse.
</para>

<para>
The only difference in feeding a data <bold>0</bold> to parallel input <bold>A</bold> is that it inverts to a <bold>1</bold> out of the upper gate releasing <bold>Set</bold>. This <bold>1</bold> at <bold>Set</bold> is inverted to a <bold>0</bold> at the lower gate, pulling <bold>Reset</bold> to a <bold>Low</bold>, which resets <bold>Q<subscript>A</subscript>=0</bold>.
</para>

<bigspace>
<para>
<image>04398.png</image> <comment>74ALS165 ANSI symbol</comment>
</para>
<bigspace>

<index>165, SN74ALS165</index>

<para>
The ANSI symbol for the SN74ALS166 above has two internal controls <bold>C1</bold> [LOAD] and <bold>C2</bold> clock from the <bold>OR</bold> function of (<bold>CLKINH, CLK</bold>).  <bold>SRG8</bold> says 8-stage shifter. The arrow after <bold>C2</bold> indicates shifting right or down. <bold>SER</bold> input is a function of the clock as indicated by internal label <bold>2D</bold>. The parallel data inputs <bold>A, B, C</bold> to <bold>H</bold> are a function of <bold>C1</bold> [LOAD], indicated by internal label <bold>1D</bold>.  <bold>C1</bold> is asserted when <bold>sh/LD' =0</bold> due to the half-arrow inverter at the input. Compare this to the control of the parallel data inputs by the clock of the previous synchronous ANSI SN75ALS166. Note the differences in the ANSI Data labels.
</para>

<bigspace>
<para>
<image>04399.png</image> <comment>CD4014b, CD4021b ANSI symbol</comment>
</para>
<bigspace>

<index>4014, CD4014B</index>

<para>
On the CD4014B above, <bold>M1</bold> is asserted when <bold>LD/SH'=0</bold>. <bold>M2</bold> is asserted when <bold>LD/SH'=1</bold>. Clock <bold>C3/1</bold> is used for parallel loading data at <bold>2, 3D</bold> when <bold>M2</bold> is active as indicated by the <bold>2,3</bold> prefix labels. Pins <bold>P3</bold> to <bold>P7</bold> are understood to have the smae internal <bold>2,3</bold> prefix labels as <bold>P2</bold> and <bold>P8</bold>.  At <bold>SER</bold>, the <bold>1,3D</bold> prefix implies that <bold>M1</bold> and clock <bold>C3</bold> are necessary to input serial data. Right shifting takes place when M1 active is as indicated by the <bold>1</bold> in <bold>C3/1 arrow</bold>.
</para>

<index>4021, CD4021B</index>

<para>
The CD4021B is a similar part except for asynchronous parallel loading of data as implied by the lack of any <bold>2</bold> prefix in the data label <bold>1D</bold> for pins P1, P2, to P8. Of course, prefix <bold>2</bold> in label <bold>2D</bold> at input <bold>SER</bold> says that data is clocked into this pin. The <bold>OR</bold> gate inset shows that the clock is controlled by <bold>LD/SH'</bold>.
</para>

<comment> begin 74ALS674 section could be edited out, as the high priced part is not widely stocked.</comment>
<bigspace>
<para>
<image>04400.png</image> <comment>74ALS674 ANSI symbol</comment>
</para>
<bigspace>

<index>674, SN74LS674</index>

<para>
The above SN74LS674 internal label <bold>SRG 16</bold> indicates 16-bit shift register. The <bold>MODE</bold> input to the control section at the top of the symbol is labeled <bold>1,2 M3</bold>. Internal <bold>M3</bold> is a function of input <bold>MODE</bold> and <bold>G1</bold> and <bold>G2</bold> as indicated by the <bold>1,2</bold> preceding <bold>M3</bold>. The base label <bold>G</bold> indicates an <bold>AND</bold> function of any such <bold>G</bold> inputs. Input <bold>R/W'</bold> is internally labeled <bold>G1/2 EN</bold>. This is an enable <bold>EN</bold> (controlled by <bold>G1 AND G2</bold>) for tristate devices used elsewhere in the symbol.  We note that <bold>CS'</bold> on (pin 1) is internal <bold>G2</bold>. Chip select <bold>CS'</bold> also is <bold>AND</bold>ed with the input <bold>CLK</bold> to give internal clock <bold>C4</bold>. The bubble within the clock arrow indicates that activity is on the negative (high to low transition) clock edge. The slash (/) is a separator implying two functions for the clock. Before the slash,  <bold>C4</bold> indicates control of anything with a prefix of <bold>4</bold>. After the slash, the <bold>3' (arrow)</bold> indicates shifting. The <bold>3'</bold> of <bold>C4/3'</bold> implies shifting when M3 is de-asserted (<bold>MODE=0</bold>).   The long arrow indicates shift right (down).
</para>

<para>
Moving down below the control section to the data section, we have external inputs <bold>P0-P15</bold>, pins (7-11, 13-23). The prefix  <bold>3,4</bold>  of internal label <bold>3,4D</bold> indicates that <bold>M3</bold> and the clock <bold>C4</bold> control loading of parallel data. The <bold>D</bold> stands for Data. This label is assumed to apply to all the parallel inputs, though not explicitly written out. Locate the label <bold>3',4D</bold> on the right of the <bold>P0</bold> (pin7) stage. The complemented-<bold>3</bold> indicates that <bold>M3=MODE=0</bold> inputs (shifts) <bold>SER/Q<subscript>15</subscript></bold> (pin5) at clock time, (<bold>4</bold> of 3',4D) corresponding to clock <bold>C4</bold>. In other words, with <bold>MODE=0</bold>, we shift data into <bold>Q<subscript>0</subscript></bold> from  the serial input (pin 6). All other stages shift right (down) at clock time.
</para>

<para>
Moving to the bottom of the symbol, the triangle pointing right indicates a buffer between <bold>Q</bold> and the output pin. The Triangle pointing down indicates a tri-state device. We previously stated that the tristate is controlled by enable <bold>EN</bold>, which is actually <bold>G1 AND G2</bold> from the control section. If <bold>R/W=0</bold>, the tri-state is disabled, and we can shift data into <bold>Q<subscript>0</subscript></bold> via <bold>SER</bold> (pin 6), a detail we omitted above. We actually need <bold>MODE=0, R/W'=0, CS'=0</bold>
</para>

<para>
The internal logic of the SN74LS674 and a table summarizing the operation of the control signals is available in the link in the bullet list, top of section.
</para>

<para>
 If <bold>R/W'=1</bold>, the tristate is enabled, <bold>Q<subscript>15</subscript></bold> shifts out <bold>SER/Q<subscript>15</subscript></bold>  (pin 6) and recirculates to the <bold>Q<subscript>0</subscript></bold> stage via the right hand wire to <bold>3',4D</bold>.  We have assumed that CS' was low giving us clock C4/3' and G2 to <bold>EN</bold>able the tri-state.
</para>
<comment> end 74ALS674 section could be edited out, as the high priced part is not widely stocked.</comment>
</subsection>

<subsection>
<subsectiontitle>Practical applications</subsectiontitle>

<para>
An application of a  parallel-in/ serial-out shift register is to read data into a microprocessor.
</para>

<bigspace>
<para>
<image>04401.png</image> <comment>Reading switches into microprocessor</comment>
</para>
<bigspace>

<para>
The Alarm above is controlled by a remote keypad. The  alarm box supplies +5V and ground to the remote keypad to power it. The alarm reads the remote keypad every few tens of milliseconds by sending shift clocks to the keypad which returns serial data showing the status of the keys via a parallel-in/ serial-out shift register. Thus, we read nine key switches with four wires. How many wires would be required if we had to run a circuit for each of the nine keys?
</para>

<bigspace>
<para>
<image>04402.png</image> <comment>Reading switches into microprocessor</comment>
</para>
<bigspace>

<index>microprocessor, read switches</index>

<para>
A practical application of a parallel-in/ serial-out shift register is to read many switch closures into a microprocessor on just a few pins. Some low end microprocessors only have 6-I/O (Input/Output) pins available on an 8-pin package. Or, we may have used most of the pins on an 84-pin package. We may want to reduce the number of wires running around a circuit board, machine, vehicle, or building. This will increase the reliability of our system. It has been reported that manufacturers who have reduced the number of wires in an automobile produce a more reliable product. In any event,  only three microprocessor pins are required to read in 8-bits of data from the switches in the figure above. 
</para>
<para>
We have chosen an asynchronous loading device, the CD4021B because it is easier to control the loading of data without having to generate a single parallel load clock. The parallel data inputs of the shift register are pulled up to +5V with a resistor on each input. If all switches are open, all <bold>1</bold>s will be loaded into the shift register when the microprocessor moves the <bold>LD/SH'</bold> line from low to high, then back low in anticipation of shifting. Any switch closures will apply logic <bold>0</bold>s to the corresponding parallel inputs. The data pattern at P1-P7 will be parallel loaded by the <bold>LD/SH'=1</bold> generated by the microprocessor software.
</para>

<para>
The microprocessor generates shift pulses and reads a data bit for each of the 8-bits. This process may be performed totally with software, or larger microprocessors may have one or more serial interfaces to do the task more quickly with hardware.  With <bold>LD/SH'=0</bold>, the microprocessor generates a <bold>0</bold> to <bold>1</bold> transition on the <bold>Shift clock line</bold>, then reads a data bit on the <bold>Serial data in</bold> line. This is repeated for all 8-bits.
</para>

<para>
The <bold>SER</bold> line of the shift register may be driven by another identical CD4021B circuit if more switch contacts need to be read. In which case, the microprocessor generates 16-shift pulses.  More likely, it will be driven by something else compatible with this serial data format, for example, an analog to digital converter, a temperature sensor, a keyboard scanner, a serial read-only memory. As for the switch closures, they may be limit switches on the carriage of a machine, an over-temperature sensor, a magnetic reed switch, a door or window switch, an air or water pressure switch, or a solid state optical interrupter.

</para>

</subsection>
</section>

<section>
<index>shift register, serial-in/parallel-out</index>
<sectiontitle>Serial-in, parallel-out shift register</sectiontitle>

<para>
A serial-in/parallel-out shift register is similar to the serial-in/ serial-out shift register in that it shifts data into internal storage elements and shifts data out at the serial-out, data-out, pin. It is different in that it makes all the internal stages available as outputs. Therefore, a serial-in/parallel-out shift register converts data from serial format to parallel format. If four data bits are shifted in by four clock pulses via a single wire at data-in, below, the data becomes available simultaneously on the four Outputs Q<subscript>A</subscript> to Q<subscript>D</subscript> after the fourth clock pulse.
</para>

<bigspace>
<para>
<image>04373.png</image> <comment>SIPO block diagram</comment>
</para>
<bigspace>

<para>
The practical application of the serial-in/parallel-out shift register is to convert data from serial format on a single wire to parallel format on multiple wires. Perhaps, we will illuminate four LEDs (Light Emitting Diodes) with the four outputs (<bold>Q<subscript>A</subscript> Q<subscript>B</subscript>  Q<subscript>C</subscript>  Q<subscript>D</subscript> </bold>).
</para>

<bigspace>
<para>
<image>04403.png</image> <comment>SIPO generic detail</comment>
</para>
<bigspace>

<para>
The above details of the serial-in/parallel-out shift register are fairly simple. It looks like a serial-in/ serial-out shift register with taps added to each stage output. Serial data shifts in at <bold>SI</bold> (Serial Input). After  a number of clocks equal to the number of stages, the first data bit in appears at SO (Q<subscript>D</subscript>) in the above figure. In general, there is no SO pin. The last stage (Q<subscript>D</subscript> above) serves as SO and is cascaded to the next package if it exists.
</para>

<para>
If a serial-in/parallel-out shift register is so similar to a serial-in/ serial-out shift register, why do manufacturers bother to offer both types? Why not just offer the  serial-in/parallel-out shift register? They actually only offer the serial-in/parallel-out shift register, as long as it has no more than 8-bits.  Note that serial-in/ serial-out shift registers come in bigger than 8-bit lengths of 18 to to 64-bits. It is not practical to offer a  64-bit serial-in/parallel-out shift register requiring that many output pins. See waveforms below for above shift register. 
</para>


<bigspace>
<para>
<image>04404.png</image> <comment>SIPO waveform m</comment>
</para>
<bigspace>

<para>
The shift register has been cleared prior to any data by <bold>CLR'</bold>, an active low signal, which clears all type D Flip-Flops within the shift register. Note the serial data <bold>1011</bold> pattern presented at the <bold>SI</bold> input. This data is synchronized with the clock <bold>CLK</bold>. This would be the case if it is being shifted in from something like another shift register, for example, a parallel-in/ serial-out shift register (not shown here). On the first clock at <bold>t1</bold>, the data <bold>1</bold> at <bold>SI</bold> is shifted from <bold>D</bold> to <bold>Q</bold> of the first shift register stage.    After <bold>t2</bold> this first data bit is at <bold>Q<subscript>B</subscript></bold>.  After <bold>t3</bold> it is at <bold>Q<subscript>C</subscript></bold>. After <bold>t4</bold> it is at <bold>Q<subscript>D</subscript></bold>. Four clock pulses have shifted the first data bit all the way to the last stage <bold>Q<subscript>D</subscript></bold>. The second data bit a <bold>0</bold> is at
<bold>Q<subscript>C</subscript></bold> after the 4th clock. The third data bit a <bold>1</bold> is at <bold>Q<subscript>B</subscript></bold>. The fourth data bit another <bold>1</bold> is at <bold>Q<subscript>A</subscript></bold>.  Thus, the serial data input pattern <bold>1011</bold> is contained in (<bold>Q<subscript>D</subscript> Q<subscript>C</subscript>  Q<subscript>B</subscript>  Q<subscript>A</subscript></bold>). It is now available on the four outputs.

</para>

<para>
It will available on the four outputs from just after clock <bold>t<subscript>4</subscript></bold> to just before <bold>t<subscript>5</subscript></bold>. This parallel data must be used or stored between these two times, or it will be lost due to shifting out the Q<subscript>D</subscript> stage on following clocks <bold>t<subscript>5</subscript></bold> to <bold>t<subscript>8</subscript></bold>  as shown above.
</para>


<subsection>
<subsectiontitle>Serial-in/ parallel-out devices</subsectiontitle>
<para>
Let's  take a closer look at Serial-in/ parallel-out shift registers available as integrated circuits, courtesy of Texas Instruments. For complete device data sheets follow the links.
</para>

<itemize>

<item>
SN74ALS164A serial-in/ parallel-out 8-bit shift register
<para>
<url>http://www-s.ti.com/sc/ds/sn74als164a.pdf</url>
</para>
</item>

<item>
SN74AHC594 serial-in/ parallel-out 8-bit shift register with output register
<para>
<para>
<url>http://www-s.ti.com/sc/ds/sn74ahct594.pdf</url>
</para>
</item>

<item>
SN74AHC595 serial-in/ parallel-out 8-bit shift register with output register
<para>
<url>http://www-s.ti.com/sc/ds/sn74ahct595.pdf</url>
</para>
</item>

<item>
CD4094 serial-in/ parallel-out 8-bit shift register with output register
<para>
<url>http://www-s.ti.com/sc/ds/cd4094b.pdf</url>
</para>
<para>
<url>http://www.st.com/stonline/books/pdf/docs/2069.pdf</url>
</para>
</item>

</itemize>


<bigspace>
<para>
<image>04405.png</image> <comment>SIPO 74LS164a </comment>
</para>
<bigspace>

<index>164, SN74ALS164A</index>

<para>
The 74ALS164A is almost identical to our prior diagram with the exception of the two serial inputs <bold>A</bold> and <bold>B</bold>. The unused input should be pulled high to enable the other input. We do not show all the stages above. However, all the outputs are shown on the ANSI symbol below, along with the pin numbers.
</para>

<bigspace>
<para>
<image>04406.png</image> <comment>SIP0 74ALS164 ANSI</comment>
</para>
<bigspace>

<para>
The <bold>CLK</bold> input to the control section of the above ANSI symbol has two internal functions <bold>C1</bold>, control of anything with a prefix of <bold>1</bold>. This would be clocking in of data at <bold>1D</bold>. The second function, the arrow after  after the slash (/) is right (down) shifting of data within the shift register. The eight  outputs are available to the right of the eight registers below the control section. The first stage is wider than the others to accommodate the <bold>A&B</bold> input.
</para>

<bigspace>
<para>
<image>04407.png</image> <comment>SIP0 SIP074HC594 internal</comment>
</para>
<bigspace>

<index>594, 74AHC594</index>

<para>
The above internal logic diagram is adapted from the TI (Texas Instruments) data sheet for the 74AHC594. The type "D" FFs in the top row comprise a serial-in/ parallel-out shift register. This section works like the previously described devices. The outputs (<bold>Q<subscript>A</subscript>'  Q<subscript>B</subscript>'</bold>  to <bold>Q<subscript>H</subscript>' </bold>) of the shift register half of the device feed the type "D" FFs in the lower half in parallel. <bold>Q<subscript>H</subscript>'</bold> (pin 9) is shifted out to any optional cascaded device package.
</para>
<para>
A single positive clock edge at RCLK will transfer the data from <bold> D</bold> to <bold> Q</bold>  of the lower FFs.  All 8-bits transfer in parallel to the output <italic>register</italic> (a collection of storage elements). The purpose of the output register is to maintain a constant data output while new data is being shifted into the upper shift register section. This is necessary if the outputs drive relays, valves, motors, solenoids, horns, or buzzers. This feature may not be necessary when driving LEDs as long as flicker during shifting is not a problem.
</para>

<para>
Note that the 74AHC594 has separate clocks for the shift register (<bold>SRCLK</bold>) and the output register (<bold> RCLK</bold>). Also, the shifter may be cleared by  <bold> SRCLR</bold> and, the output register by <bold> RCLR</bold>. It desirable to put the outputs in a known state at power-on, in particular, if driving relays, motors, etc.   The waveforms below illustrate shifting and latching of data.
</para>

<bigspace>
<para>
<image>04408.png</image> <comment>SIP0 SIP074HC594 waveforms</comment>
</para>
<bigspace>

<para>
The above waveforms show shifting of 4-bits of data into the first four stages of 74AHC594, then the parallel transfer to the output register. In actual fact, the 74AHC594 is an 8-bit shift register, and it would take 8-clocks to shift in 8-bits of data, which would be the normal mode of operation. However, the 4-bits we show saves space and adequately illustrates the operation.
</para>

<para>
We clear the shift register half a clock prior to <bold>t<subscript>0</subscript></bold> with <bold>SRCLR'=0</bold>. <bold> SRCLR'</bold> must be released back high prior to shifting. Just prior to <bold>t<subscript>0</subscript></bold> the output register is cleared by <bold> RCLR'=0</bold>. It, too, is released (<bold> RCLR'=1</bold>).
</para>

<para>
Serial data <bold>1011</bold> is presented at the SI pin between clocks <bold>t<subscript>0</subscript></bold> and <bold>t<subscript>4</subscript></bold>. It is shifted in by clocks <bold>t<subscript>1</subscript> t<subscript>2</subscript> t<subscript>3</subscript> t<subscript>4</subscript></bold> appearing at internal shift stages <bold>Q<subscript>A</subscript>' Q<subscript>B</subscript>' Q<subscript>C</subscript>' Q<subscript>D</subscript>' </bold>. This data is present at these stages between <bold>t<subscript>4</subscript></bold> and <bold>t<subscript>5</subscript></bold>.  After <bold>t<subscript>5</subscript></bold> the desired data (<bold>1011</bold>) will be unavailable on these internal shifter stages.
</para>

<para>
Between <bold>t<subscript>4</subscript></bold> and <bold>t<subscript>5</subscript></bold> we apply a positive going <bold>RCLK</bold> transferring data <bold>1011</bold> to register outputs  <bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> Q<subscript>D</subscript> </bold>. This data will be frozen here as more data (<bold>0</bold>s) shifts in during the succeeding <bold>SRCLK</bold>s (<bold>t<subscript>5</subscript></bold> to <bold>t<subscript>8</subscript></bold>). There will not be a change in data here until another <bold>RCLK</bold> is applied.
</para>

<para>
</para>

<bigspace>
<para>
<image>04409.png</image> <comment>SIP074HC595 internal </comment>
</para>
<bigspace>

<index>595, 74AHC595</index>

<para>
The 74AHC595 is identical to the '594 except that the <bold>RCLR'</bold> is replaced by an <bold>OE'</bold> enabling a tri-state buffer at the output of each of the eight output register bits. Though the output register cannot be cleared, the outputs may be disconnected by <bold>OE'=1</bold>. This would allow external pull-up or pull-down resistors to force any relay, solenoid, or valve drivers to a known state during a system power-up. Once the system is powered-up and, say, a microprocessor has shifted and latched data into the '595, the output enable could be asserted  (<bold>OE'=0</bold>) to drive the relays, solenoids, and valves with valid data, but, not before that time.
</para>

<bigspace>
<para>
<image>04410.png</image> <comment>SIP0 74HC594/595 ANSI</comment>
</para>
<bigspace>
<index>595, 74AHC595 ANSI symbol</index>
<index>594, 74AHC594 ANSI symbol</index>
<para>
Above are the proposed ANSI symbols for these devices. <bold>C3</bold> clocks data into the serial input (external <bold>SER</bold>) as indicate by the <bold>3</bold> prefix of <bold>2,3D</bold>. The arrow after <bold>C3/</bold> indicates shifting right (down) of the shift register, the 8-stages to the left of the '595symbol below the control section. The <bold>2</bold> prefix of <bold>2,3D</bold> and <bold>2D</bold> indicates that these stages can be reset by <bold>R2</bold> (external <bold>SRCLR'</bold>).
</para>

<para>
The <bold>1</bold> prefix of <bold>1,4D</bold> on the <bold>'594</bold> indicates that <bold>R1</bold> (external <bold>RCLR'</bold>) may reset the output register, which is to the right of the shift register section. The <bold>'595</bold>, which has an <bold>EN</bold> at external <bold>OE'</bold> cannot reset the output register. But, the <bold>EN</bold> enables tristate (inverted triangle) output buffers. The right pointing triangle of both the <bold>'594</bold> and<bold>'595</bold> indicates internal buffering. Both the <bold>'594</bold> and<bold>'595</bold> output registers are clocked by C4 as indicated by <bold>4</bold> of <bold>1,4D</bold> and <bold>4D</bold> respectively.
</para>

<bigspace>
<para>
<image>04445.png</image> <comment>SIP0 CD4095 ANSI</comment>
</para>
<bigspace>

<index>4094, 74HCT4094 ANSI symbol</index>

<para>
The CD4094B  is a 3 to 15V<subscript>DC</subscript> capable latching shift register alternative to the previous 74AHC594 devices. <bold>CLOCK</bold>, <bold>C</bold>1, shifts data in  at <bold>SERIAL IN</bold> as implied by the <bold>1</bold> prefix of <bold>1D</bold>. It is also the clock of the right shifting shift register (left half of the symbol body) as indicated by the
/(right-arrow) of <bold>C1</bold>/(arrow) at the <bold>CLOCK</bold> input.
</para>

<para>
<bold>STROBE</bold>, <bold>C2</bold> is the clock for the 8-bit output register to the right of the symbol body. The  <bold>2</bold> of <bold>2D</bold> indicates that <bold>C2</bold> is the clock for the output register. The inverted triangle in the output latch indicates that the output is tristated, being enabled by <bold>EN3</bold>.  The <bold>3</bold> preceding the inverted triangle and the <bold>3</bold> of <bold>EN3</bold> are often omitted, as any enable (<bold>EN</bold>) is understood to control the tristate outputs.
</para>

<para>
<bold>Q<subscript>S</subscript></bold> and <bold>Q<subscript>S</subscript>'</bold> are non-latched outputs of the shift register stage. <bold>Q<subscript>S</subscript></bold> could be cascaded to <bold>SERIAL IN</bold> of a succeeding device.
</para>
</subsection>



<subsection>
<subsectiontitle>Practical applications</subsectiontitle>

<para>
A real-world application of the serial-in/ parallel-out shift register is to output data from a microprocessor to a remote panel indicator. Or, another remote output device which accepts serial format data.
</para>

<bigspace>
<para>
<image>04411.png</image> <comment>SIP074HC595 internal </comment>
</para>
<bigspace>


<para>
The figure "Alarm with remote key pad" is repeated here from the parallel-in/ serial-out section with the addition of the remote display. Thus, we can display, for example, the status of the alarm loops connected to the main alarm box.  If the Alarm detects an open window, it can send serial data to the remote display to let us know. Both the keypad and the display would likely be contained within the same remote enclosure, separate from the main alarm box. However, we will only look at the display panel in this section.
</para>

<para>
If the display were on the same board as the Alarm, we could just run eight wires to the eight LEDs along with two wires for power and ground. These eight wires are much less desirable on a long run to a remote panel.  Using shift registers, we only need to run five wires- clock,  serial data, a strobe,  power, and ground. If the panel were just a few inches away from the main board, it might still be desirable to cut down on the number of wires in a connecting cable to improve reliability. Also, we sometimes use up most of  the available pins on a microprocessor and need to use serial techniques to expand the number of outputs.  Some integrated circuit output devices, such as Digital to Analog converters contain serial-in/ parallel-out shift registers to receive data from microprocessors. The techniques illustrated here are applicable to those parts.
</para>

<bigspace>
<para>
<image>04412.png</image> <comment>SIP074HC595 internal </comment>
</para>
<bigspace>

<para>
We have chosen the 74AHC594 serial-in/ parallel-out shift register with output register; though, it requires an extra pin, <bold>RCLK</bold>, to parallel load the shifted-in data to the output pins. This extra pin prevents the outputs from changing while data is shifting in. This is not much of a problem for LEDs. But, it would be a problem if driving relays, valves, motors, etc.
</para>

<para>
Code executed within the microprocessor would start with 8-bits of data to be output. One bit would be output on the "Serial data out" pin, driving <bold>SER</bold> of the remote 74AHC594. Next, the microprocessor generates a low to high transition on "Shift clock", driving <bold>SRCLK</bold> of the '595 shift register. This positive clock shifts the data bit at <bold>SER</bold> from "D" to "Q" of the first  shift register stage. This has no effect on the <bold>Q<subscript>A</subscript></bold> LED at this time because of the internal 8-bit output register between the shift register and the output pins (<bold>Q<subscript>A</subscript></bold> to <bold>Q<subscript>H</subscript></bold>). Finally, "Shift clock" is pulled back low by the microprocessor. This completes the shifting of one bit into the '595.
</para>

<para>
The above procedure is repeated seven more times to complete the shifting of 8-bits of data from the microprocessor into the  74AHC594 serial-in/ parallel-out shift register.  To transfer the 8-bits of data within the  internal '595 shift register to the output requires that the microprocessor generate a low to high transition on <bold>RCLK</bold>, the output register clock. This applies new data to the LEDs. The <bold>RCLK</bold> needs to be pulled back low in anticipation of the next 8-bit transfer of data.
</para>

<para>
The data present at the output of the '595 will remain until the process in the above two paragraphs is repeated for a new 8-bits of data. In particular, new data can be shifted into the '595 internal shift register without affecting the LEDs. The LEDs will only be updated with new data with the application of the <bold>RCLK</bold> rising edge.
</para>

<para>
What if we need to drive more than eight LEDs?  Simply cascade another 74AHC594 <bold>SER</bold> pin to the <bold>Q<subscript>H</subscript>'</bold> of the existing shifter. Parallel the <bold>SRCLK</bold> and <bold>RCLK</bold> pins.
The microprocessor would need to transfer 16-bits of data with 16-clocks before generating an <bold>RCLK</bold> feeding both devices.
</para>

<para>
The discrete LED indicators, which we show, could be 7-segment LEDs. Though, there are LSI (Large Scale Integration) devices capable of driving several 7-segment digits. This device accepts data from a microprocessor in a serial format, driving more LED segments than it has pins by by multiplexing the LEDs.   For example, see link below for MAX6955
</para>

<para>
<url>http://www.maxim-ic.com/appnotes.cfm/appnote_number/3211</url>
</para>

</subsection>
</section>




<section>
<index>parallel-in/parallel-out  universal shift register</index>
<index>shift register, parallel-in/parallel-out  universal shift register</index>
<sectiontitle>Parallel-in, parallel-out, universal shift register</sectiontitle>
<para>
</para>
The purpose of the parallel-in/ parallel-out shift register is to take in parallel data, shift it, then output it as shown below.  A universal shift register is a do-everything device in addition to the parallel-in/ parallel-out function.

<bigspace>
<para>
<image>04374.png</image> <comment>PIPO block </comment>
</para>
<bigspace>

<para>
Above we apply four bit of data to a parallel-in/ parallel-out shift register at <bold>D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript> D<subscript>D</subscript></bold>. The mode control, which may be multiple inputs, controls parallel loading vs shifting. The mode control may also control the direction of shifting in some real devices. The data will be shifted one bit position for each clock pulse. The shifted data is available at the outputs <bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> Q<subscript>D</subscript> </bold>. The "data in" and "data out" are provided for cascading of multiple stages. Though, above, we can only cascade data for right shifting. We could accommodate cascading of left-shift data by adding a pair of left pointing signals, "data in" and "data out", above.
</para>

<para>
The internal details of a right shifting parallel-in/ parallel-out shift register are shown below. The tri-state buffers are not strictly necessary to the parallel-in/ parallel-out shift register, but are part of the real-world device shown below.
</para>

<index>395, 74LS395, shift register</index>

<bigspace>
<para>
<image>04413.png</image> <comment>PIPO 74LS395 internal </comment>
</para>
<bigspace>

<index>395, 74LS395</index>

<para>
The 74LS395 so closely matches our concept of a hypothetical  right shifting parallel-in/ parallel-out shift register that we use an overly simplified version of the data sheet details above. See the link to the full data sheet more more details, later in this chapter.
</para>

<para>
<bold>LD/SH'</bold> controls the AND-OR multiplexer at the data input to the FF's. If <bold>LD/SH'=1</bold>, the upper four AND gates are enabled allowing application of parallel inputs <bold>D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript> D<subscript>D</subscript></bold> to the four FF data inputs. Note the inverter bubble at the clock input of the four FFs. This indicates that the 74LS395 clocks data on the negative going clock, which is the high to low transition. The four bits of data will be clocked in parallel from <bold>D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript> D<subscript>D</subscript></bold> to <bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> Q<subscript>D</subscript> </bold> at the next negative going clock. In this "real part", <bold>OC'</bold> must be low if the data needs to be available at the actual output pins as opposed to only on the internal FFs.
</para>

<para>
The previously loaded data may be shifted right by one bit position if <bold>LD/SH'=0</bold> for the succeeding negative going clock edges. Four clocks would shift the data entirely out of our 4-bit shift register. The data would be lost unless our device was cascaded from <bold>Q<subscript>D</subscript>'</bold> to <bold>SER</bold> of another device.

</para>


<bigspace>
<para>
<image>04414.png</image> <comment>PIPO 1-shift, 2-shift</comment>
</para>
<bigspace>

<para>
Above, a data pattern is presented to inputs <bold>D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript> D<subscript>D</subscript></bold>. The pattern is loaded to  <bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> Q<subscript>D</subscript> </bold>. Then it is shifted one bit to the right. The incoming data is indicated by <bold>X</bold>, meaning the we do no know what it is. If the input (<bold>SER</bold>) were grounded, for example, we would know what data (<bold>0</bold>) was shifted in. Also shown, is right shifting by two positions, requiring two clocks.
</para>

<bigspace>
<para>
<image>04415.png</image> <comment>PIPO right shift diagram </comment>
</para>
<bigspace>

<para>
The above figure serves as a reference for the hardware involved in right shifting of data. It is too simple to even bother with this figure, except for comparison to more complex figures to follow.
</para>

<bigspace>
<para>
<image>04416.png</image> <comment>PIPO right shift data shift </comment>
</para>
<bigspace>

<para>
Right shifting of data is provided above  for reference to the previous right shifter.
</para>

<bigspace>
<para>
<image>04417.png</image> <comment>PIPO left shift diagram</comment>
</para>
<bigspace>

<para>
If we need to shift left, the FFs need to be  rewired. Compare to the previous right shifter. Also, <bold>SI</bold> and <bold>SO</bold> have been reversed. <bold>SI</bold> shifts to  <bold>Q<subscript>C</subscript></bold>. <bold>Q<subscript>C</subscript></bold> shifts to <bold>Q<subscript>B</subscript></bold>. <bold>Q<subscript>B</subscript></bold> shifts to <bold>Q<subscript>A</subscript></bold>. <bold>Q<subscript>A</subscript></bold> leaves on the <bold>SO</bold> connection, where it could cascade to another shifter <bold>SI</bold>. This left shift sequence is backwards from the right shift sequence.
</para>

<bigspace>
<para>
<image>04418.png</image> <comment>PIPO left shift data </comment>
</para>
<bigspace>

<para>
Above we shift the same data pattern left by one bit.
</para>

<para>
There is one problem with the "shift left" figure above. There is no market for it. Nobody manufactures a shift-left part.  A "real device" which shifts one direction can be wired externally to shift the other direction. Or, should we say there is no left or right in the context of a device which shifts in only one direction. However, there is a market for a device which will shift left or right on command by a control line. Of course, left and right are valid in that context.
</para>

<bigspace>
<para>
<image>04419.png</image> <comment>PIPO  LR right shift  </comment>
</para>
<bigspace>

<para>
What we have above is a hypothetical shift register capable of shifting either direction under the control of <bold>L'/R</bold>. It is setup with <bold>L'/R=1</bold> to shift the normal direction, right. <bold>L'/R=1</bold> enables the multiplexer AND gates labeled <bold>R</bold>. This allows data to follow the path illustrated by the arrows, when a clock is applied. The connection path is the same as the"too simple"  "shift right" figure above.
</para>

<para>
Data shifts in at <bold>SR</bold>, to <bold>Q<subscript>A</subscript></bold>, to <bold>Q<subscript>B</subscript></bold>, to <bold>Q<subscript>C</subscript></bold>, where it leaves at <bold>SR cascade</bold>. This pin could drive <bold>SR</bold> of another device to the right.
</para>

<para>
What if we change <bold>L'/R</bold> to <bold>L'/R=0</bold>?
</para>

<bigspace>
<para>
<image>04420.png</image> <comment>PIPO  LR left shift  </comment>
</para>
<bigspace>

<para>
With  <bold>L'/R=0</bold>, the multiplexer AND gates labeled  <bold>L</bold> are enabled, yielding a path, shown by the arrows, the same as the above "shift left" figure. Data shifts in at <bold>SL</bold>, to <bold>Q<subscript>C</subscript></bold>, to <bold>Q<subscript>B</subscript></bold>, to <bold>Q<subscript>A</subscript></bold>, where it leaves at <bold>SL cascade</bold>. This pin could drive <bold>SL</bold> of another device to the left.
</para>

<para>
The prime virtue of the above two figures illustrating the "shift left/ right register" is simplicity. The operation of the left right control <bold>L'/R=0</bold> is easy to follow. A commercial part needs the parallel data loading implied by the section title. This appears in the figure below.
</para>


<bigspace>
<para>
<image>04421.png</image> <comment>PIPO  LR load </comment>
</para>
<bigspace>

<para>
 Now that we can shift both left and right via <bold>L'/R</bold>, let us add <bold>SH/LD'</bold>, shift/ load, and the AND gates labeled "load" to provide for parallel loading of data from inputs <bold>D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript></bold>. When <bold>SH/LD'=0</bold>, AND gates <bold>R</bold> and <bold>L</bold> are disabled, AND gates "load" are enabled to pass data <bold>D<subscript>A</subscript> D<subscript>B</subscript> D<subscript>C</subscript></bold> to the FF data inputs. the next clock <bold>CLK</bold> will clock the data to <bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript></bold>. As long as the same data is present it will be re-loaded on succeeding clocks. However, data present for only one clock will be lost from the outputs when it is no longer present on the data inputs. One solution is to load the data on one clock, then proceed to shift on the next four clocks. This problem is remedied in the 74ALS299 by the addition of another AND gate to the multiplexer.
</para>

<para>
If <bold>SH/LD'</bold> is changed to <bold>SH/LD'=1</bold>, the AND gates labeled "load" are disabled, allowing the left/ right control <bold>L'/R</bold> to set the direction of shift on the <bold>L</bold> or <bold>R</bold> AND gates. Shifting is as in the previous figures.
</para>

<para>
The only thing needed to produce a viable integrated device is to add the fourth  AND gate to the multiplexer as alluded for the 74ALS299. This is shown in the next section for that part.
</para>


<subsection>
<subsectiontitle>Parallel-in/ parallel-out and universal devices</subsectiontitle>
<para>
Let's  take a closer look at Serial-in/ parallel-out shift registers available as integrated circuits, courtesy of Texas Instruments. For complete device data sheets, follow the links.
</para>

<index>395, 74LS395, shift register</index>
<index>299, 74ALS299, shift register</index>

<itemize>



<item>
SN74LS395A parallel-in/ parallel-out 4-bit shift register
<para>
<para>
<url>http://www-s.ti.com/sc/ds/sn74ls395a.pdf</url>
</para>
</item>


<item>
SN74ALS299 parallel-in/ parallel-out 8-bit universal shift register
<para>
<url>http://www-s.ti.com/sc/ds/sn74als299.pdf</url>
</para>
</item>



</itemize>


<bigspace>
<para>
<image>04422.png</image> <comment>PIPO 74LS395 ansi </comment>
</para>
<bigspace>

<index>395, 74LS395A ANSI symbol</index>

<para>
We have already looked at the internal details of the SN74LS395A, see above previous figure, 74LS395 parallel-in/ parallel-out shift register with tri-state output.  Directly above is the ANSI symbol for the 74LS395.
</para>

<para>
Why only 4-bits, as indicated by <bold>SRG4</bold> above?  Having both parallel inputs, and parallel outputs, in addition to control and power pins, does not allow for any more  I/O (Input/Output) bits in a 16-pin DIP (Dual Inline Package).
</para>

<para>
<bold>R</bold> indicates that the shift register stages are reset by input <bold>CLR'</bold> (active low- inverting half arrow at input) of the control section at the top of the symbol. <bold>OC'</bold>, when low, (invert arrow again) will enable (<bold>EN4</bold>) the four tristate output buffers (<bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> Q<subscript>D</subscript> </bold>) in the data section.
Load/shift' (<bold>LD/SH'</bold>) at pin (7) corresponds to internals <bold>M1</bold> (load) and <bold>M2</bold> (shift). Look for prefixes of <bold>1</bold> and <bold>2</bold> in the rest of the symbol to ascertain what is controlled by these.
</para>

<para>
 The negative edge sensitive clock (indicated by the invert arrow at pin-10) <bold>C3/2</bold>has two functions.  First, the <bold>3</bold> of <bold>C3/2</bold> affects any input having a prefix of <bold>3</bold>, say <bold>2,3D</bold> or <bold>1,3D</bold> in the data section. This would be parallel load at <bold>A, B, C, D</bold> attributed to <bold>M1</bold> and <bold>C3</bold> for <bold>1,3D</bold>. Second, <bold>2</bold> of <bold>C3/2</bold>-right-arrow indicates data clocking wherever <bold>2</bold> appears in a prefix (<bold>2,3D</bold> at pin-2). Thus we have clocking of data at <bold>SER</bold> into <bold>Q<subscript>A</subscript></bold> with mode <bold>2</bold> . The right arrow after <bold>C3/2 </bold> accounts for shifting at internal shift register stages <bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript> Q<subscript>D</subscript></bold>.
</para>

<para>
The right pointing triangles indicate buffering; the inverted triangle indicates tri-state, controlled by the <bold>EN4</bold>. Note, all the <bold>4</bold>s in the symbol associated with the <bold>EN</bold> are frequently omitted. Stages <bold>Q<subscript>B</subscript> Q<subscript>C</subscript></bold> are understood to have the same attributes as <bold>Q<subscript>D</subscript></bold>. <bold>Q<subscript>D</subscript>'</bold> cascades to the next package's <bold>SER</bold> to the right.
</para>



<bigspace>
<para>
<image>04423.png</image> <comment>PIPO 74LS299 chart </comment>
</para>
<bigspace>

<index>bus, shift register</index>

<index>299, 74LS299</index>

<para>
The table above, condensed from the data '299 data sheet, summarizes the operation of the 74ALS299 universal shift/ storage register. Follow the '299 link above for full details. The Multiplexer gates <bold>R</bold>, <bold>L</bold>, <bold>load</bold> operate as in the previous "shift left/ right register" figures. The difference is that the mode inputs <bold>S1</bold> and <bold>S0</bold> select shift left, shift right, and load with mode set to <bold>S1 S0 = </bold> to <bold>01</bold>, <bold>10</bold>, and <bold>11</bold>respectively as shown in the table, enabling multiplexer gates <bold>L</bold>, <bold>R</bold>,  and <bold>load</bold> respectively. See table. A minor difference is the parallel load path from the tri-state outputs. Actually the tri-state buffers are (must be) disabled by <bold>S1 S0 = 11</bold> to float the I/O <italic>bus</italic> for use as  inputs. A bus is a collection of similar signals. The inputs are applied to <bold>A</bold>, <bold>B</bold> through  <bold>H</bold> (same pins as   <bold>Q<subscript>A</subscript></bold>,  <bold>Q<subscript>B</subscript></bold>, through <bold>Q<subscript>H</subscript></bold>) and routed to the <bold>load</bold> gate in the multiplexers, and on the the <bold>D</bold> inputs of the FFs. Data is parallel load on a clock pulse.
</para>

<para>
 The one new multiplexer gate is the AND gate labeled
<bold>hold</bold>, enabled by  <bold>S1 S0 = 00</bold>. The <bold>hold</bold> gate enables a path from the <bold>Q</bold> output of the FF  back to the <bold>hold</bold> gate, to the D input of the same FF. The result is that with mode  <bold>S1 S0 = 00</bold>, the output is continuously re-loaded with each new clock pulse. Thus, data is held. This is summarized in the table.
</para>

<para>
To read data from outputs <bold>Q<subscript>A</subscript></bold>,  <bold>Q<subscript>B</subscript></bold>, through <bold>Q<subscript>H</subscript></bold>, the tri-state buffers must be enabled by <bold>OE2', OE1' =00</bold> and mode =<bold>S1 S0 = 00, 01, or 10</bold>. That is, mode is anything except <bold>load</bold>. See second table.
</para>

<bigspace>
<para>
<image>04424.png</image> <comment>PIPO 74LS299 diagram </comment>
</para>
<bigspace>

<para>
Right shift data from a package to the left, shifts in on the <bold>SR</bold> input. Any data shifted out to the right from stage Q<subscript>H</subscript> cascades to the right via  Q<subscript>H</subscript>'. This output is unaffected by the tri-state buffers. The shift right sequence for <bold>S1 S0 = 10</bold> is:
</para>
<bigspace>
<para>
SR <gt> Q<subscript>A</subscript> <gt> Q<subscript>B</subscript> <gt>  Q<subscript>C</subscript> <gt> Q<subscript>D</subscript> <gt>   Q<subscript>E</subscript> <gt> Q<subscript>F</subscript>  <gt> Q<subscript>G</subscript>  <gt> Q<subscript>H</subscript>  (Q<subscript>H</subscript>')
</para>
<bigspace>
<para>
Left shift data from a package to the right shifts in on the <bold>SL</bold> input. Any data shifted out to the left from stage Q<subscript>A</subscript> cascades to the left via  Q<subscript>A</subscript>', also unaffected by the tri-state buffers. The shift left sequence for <bold>S1 S0 = 01</bold> is:
</para>
<bigspace>
<para>
(Q<subscript>A</subscript>') Q<subscript>A</subscript> <lt> Q<subscript>B</subscript> <lt>  Q<subscript>C</subscript> <lt> Q<subscript>D</subscript> <lt>   Q<subscript>E</subscript> <lt> Q<subscript>F</subscript>  <lt> Q<subscript>G</subscript>  <lt> Q<subscript>H</subscript>  (Q<subscript>SL</subscript>')
</para>
<bigspace>
<para>
Shifting may take place with the tri-state buffers disabled by one of <bold>OE2'</bold> or <bold>OE1'  = 1</bold>. Though, the register contents outputs will not be accessible. See table.
</para>


<bigspace>
<para>
<image>04425.png</image> <comment>PIPO 74LS299 ansi</comment>
</para>
<bigspace>

<index>299, 74LS299 ANSI symbol</index>

<para>
The "clean" ANSI symbol for the SN74ALS299 parallel-in/ parallel-out 8-bit universal shift register with tri-state output is shown for reference above.
</para>


<bigspace>
<para>
<image>04426.png</image> <comment>PIPO 74LS299 ansi</comment>
</para>
<bigspace>

<para>
The annotated version of the ANSI symbol is shown to clarify the terminology contained therein. Note that the ANSI mode (S0 S1) is reversed from the order (S1 S0) used in the previous table. That reverses the decimal mode numbers (1 & 2). In any event, we are in complete agreement with the official data sheet, copying this inconsistency.
</para>

</subsection>

<subsection>
<subsectiontitle>Practical applications</subsectiontitle>

<para>
The Alarm with remote keypad block diagram is repeated below. Previously, we built the keypad reader and the remote display as separate units. Now we will combine both the keypad and display into a single unit using a universal shift register. Though separate in the diagram, the Keypad and Display are both contained within the same remote enclosure.
</para>

<bigspace>
<para>
<image>04411.png</image> <comment>alarm with remote keypad and display</comment>
</para>
<bigspace>

<para>
We will parallel load the keyboard data into the shift register on a single clock pulse, then shift it out to the main alarm box. At the same time , we will shift LED data from the main alarm to the remote shift register to illuminate the LEDs. We will be simultaneously shifting keyboard data out and  LED data into the shift register.
</para>

<bigspace>
<para>
<image>04427.png</image> <comment>PIPO 74LS299 practical ckt</comment>
</para>
<bigspace>

<para>
Eight LEDs and current limiting resistors are connected to the eight I/O pins of the 74ALS299 universal shift register. The LEDS can only be driven during Mode 3 with <bold>S1=0 S0=0</bold>. The <bold>OE1'</bold> and <bold>OE2'</bold> tristate enables are grounded to permenantly enable the tristate outputs during modes <bold>0, 1, 2</bold>. That will cause the LEDS to light (flicker) during shifting. If this were a problem the <bold>EN1</bold>' and  <bold>EN2'</bold> could be ungrounded and paralleled with <bold>S1</bold> and <bold>S0</bold> respectively to only enable the tristate buffers and light the LEDS during hold, mode <bold>3</bold>. Let's keep it simple for this example.
</para>




<para>
During parallel loading, <bold>S0=1</bold> inverted to a 0, enables the octal tristate buffers to ground the switch wipers. The upper, open, switch contacts are pulled up to logic high by the resister-LED combination at the eight inputs. Any switch closure will short the input low. We parallel load the switch data into the <bold>'299</bold> at clock <bold>t0</bold> when both <bold>S0</bold> and <bold>S1</bold> are high. See waveforms below.
</para>

<bigspace>
<para>
<image>04428.png</image> <comment>PIPO 74LS299 practical waveform</comment>
</para>
<bigspace>

<para>
Once <bold>S0</bold> goes low, eight clocks (<bold>t0</bold> to<bold>t8</bold>) shift switch closure data out of the  <bold>'299</bold> via the <bold>Q<subscript>h</subscript>'</bold> pin. At the same time, new LED data is shifted in at <bold>SR</bold> of the <bold>299</bold> by the same eight clocks. The LED data replaces the switch closure data as shifting proceeds.
</para>

<para>
After the 8th shift clock, <bold>t8</bold>, <bold>S1</bold> goes low to yield hold mode (<bold>S1 S0 = 00</bold>). The data in the shift register remains the same even if there are more clocks, for example, <bold>T9</bold>, <bold>t10</bold>, etc. Where do the waveforms come from?  They could be generated by a microprocessor if the clock rate were not over 100 kHz, in which case, it would be inconvenient to generate any clocks after <bold>t8</bold>. If the clock was in the megahertz range, the clock would run continuously. The clock,  <bold>S1</bold> and <bold>S0</bold> would be generated by digital logic, not shown here.
</para>

</subsection>

</section>

<section>
<index>ring counters</index>
<sectiontitle>Ring counters</sectiontitle>
<para>
</para>


<para>
If the output of a shift register is fed back to the input. a ring counter results. The data pattern contained within the shift register will recirculate as long as clock pulses are applied. For example,  the data pattern will repeat every four clock pulses in the figure below.  However, we must load a data pattern. All <bold>0</bold>'s or all <bold>1</bold>'s doesn't count.  Is a continuous logic level from such a condition useful? 
</para>

<bigspace>
<para>
<image>04375.png</image> <comment> ring counter </comment>
</para>
<bigspace>

<para>
We make provisions for loading data into the parallel-in/ serial-out shift register configured as a ring counter below. Any random pattern may be loaded.  The most generally useful pattern is a single <bold>1</bold>.
</para>

<bigspace>
<para>
<image>04429.png</image> <comment> parallel-in/ serial-out  </comment>
</para>
<bigspace>

<para>
Loading binary <bold>1000</bold> into the ring counter, above,  prior to shifting yields a viewable pattern. The data pattern for a single stage repeats every four clock pulses in our 4-stage example. The waveforms for all four stages look the same, except for the one clock time delay from one stage to the next. See figure below.
</para>

<bigspace>
<para>
<image>04430.png</image> <comment> ring counter waveform </comment>
</para>
<bigspace>


<para>
The circuit above is a divide by <bold>4</bold> counter. Comparing the clock input to any one of the outputs, shows a frequency ratio of 4:1. How may stages would we need for a divide by 10 ring counter?  Ten stages would recirculate the <bold>1</bold> every <bold>10</bold> clock pulses.
</para>

<bigspace>
<para>
<image>04431.png</image> <comment> ring counter 4-D FFs</comment>
</para>
<bigspace>

<para>
An alternate method of initializing the ring counter to <bold>1000</bold> is shown above. The shift waveforms are identical to those above, repeating every fourth clock pulse. The requirement for initialization is a disadvantage of the ring counter over a conventional counter. At a minimum, it must be initialized at power-up since there is no way to predict what state flip-flops will power up in. In theory, initialization should never be required again. In actual practice, the flip-flops could eventually be corrupted by noise, destroying the data pattern. A "self correcting" counter, like a conventional synchronous binary counter would be more reliable.
</para>

<para>

</para>

<bigspace>
<para>
<image>04432.png</image> <comment> compare to binary counter</comment>
</para>
<bigspace>

<para>
The above binary synchronous counter needs only two stages, but requires decoder gates.  The ring counter had more stages, but was self decoding, saving the decode gates above. Another disadvantage of the ring counter is that it is not "self starting". If we need the decoded outputs, the ring counter looks attractive, in particular, if most of the logic is in a single shift register package. If not, the conventional binary counter is less complex without the decoder.
</para>

<bigspace>
<para>
<image>04433.png</image> <comment>compare to binary counter, waveform</comment>
</para>
<bigspace>

<para>
The waveforms decoded from the synchronous binary counter are identical to the previous ring counter waveforms. The counter sequence is (<bold>Q<subscript>A</subscript> Q<subscript>B</subscript>)</bold> = (<bold>00 01 10 11</bold>). 
</para>


<subsection>

<index>Johnson counter</index>
<index>switch-tail ring counter</index>

<subsectiontitle>Johnson counters</subsectiontitle>

<para>
The  <italic>switch-tail ring counter</italic>, also know as the <italic>Johnson counter</italic>, overcomes some of the limitations of the ring counter.  Like a ring counter a Johnson counter is a shift register fed back on its' self. It requires half the stages of a comparable ring counter for a given division ratio. If the complement output of a ring counter is fed back to the input instead of the true output, a Johnson counter results. The difference between a ring counter and a Johnson counter is which output of the last stage is fed back (Q or Q'). Carefully compare the feedback connection below to the previous ring counter.
</para>

<bigspace>
<para>
<image>04434.png</image> <comment>johnson 4-stage ckt</comment>
</para>
<bigspace>

<para>
This "reversed" feedback connection has a profound effect upon the behavior of the otherwise similar circuits. Recirculating a single <bold>1</bold> around a ring counter divides the input clock by a factor equal to the number of stages. Whereas, a Johnson counter divides by a factor equal to twice the number of stages. For example, a 4-stage ring counter divides by <bold>4</bold>. A 4-stage Johnson counter divides by <bold>8</bold>. 

</para>

<para>
Start a Johnson counter by clearing all stages to <bold>0</bold>s before the first clock. This is often done at power-up time. Referring to the figure below, the first clock shifts three <bold>0</bold>s from (<bold> Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript></bold>)  to the right into (<bold> Q<subscript>B</subscript> Q<subscript>C</subscript> Q<subscript>D</subscript></bold>).  The <bold>1</bold> at <bold>Q<subscript>D</subscript>' </bold>(the complement of Q) is shifted back into <bold>Q<subscript>A</subscript></bold>. Thus, we start shifting <bold>1</bold>s to the right, replacing the <bold>0</bold>s. Where a ring counter recirculated a single <bold>1</bold>, the 4-stage Johnson counter recirculates four <bold>0</bold>s then four <bold>1</bold>s for an 8-bit pattern, then repeats.
</para>

<bigspace>
<para>
<image>04435.png</image> <comment>johnson 4-stage ckt</comment>
</para>
<bigspace>

<para>
The above waveforms illustrates that multi-phase square waves are generated by a Johnson counter. The 4-stage unit above generates four overlapping  phases of 50% duty cycle. How many stages would be required to generate a set of three phase waveforms? For example, a three stage Johnson counter, driven by a 360 Hertz clock would generate three 120<superscript>o</superscript> phased square waves at 60 Hertz.
</para>

<para>
The outputs of the flop-flops in a Johnson counter are easy to decode to a single state. Below for example, the eight states of a 4-stage Johnson counter are decoded by no more than a two input gate for each of the states. In our example, eight of the two input gates decode the states for our example Johnson counter.
</para>

<bigspace>
<para>
<image>04436.png</image> <comment>johnson 4-stage w/decoder</comment>
</para>
<bigspace>

<para>
 No matter how long the Johnson counter, only 2-input decoder gates are needed.  Note, we could have used uninverted inputs to the <bold>AND</bold> gates by changing the gate inputs from true to inverted at the FFs,  <bold>Q</bold> to<bold> Q'</bold>, (and vice versa). However, we are trying to make the diagram above match the data sheet for the CD4022B, as closely as practical.
</para>


<bigspace>
<para>
<image>04437.png</image> <comment>johnson 4-stage, decode waveform</comment>
</para>
<bigspace>

<para>
Above, our four phased square waves <bold>Q<subscript>A</subscript></bold>  to <bold>Q<subscript>D</subscript></bold> are decoded to eight signals (<bold>G<subscript>0</subscript></bold>  to <bold>G<subscript>7</subscript></bold>)  active during one clock period out of a complete 8-clock cycle. For example, <bold>G<subscript>0</subscript></bold> is active high when both <bold>Q<subscript>A</subscript></bold> and <bold>Q<subscript>D</subscript></bold> are low. Thus, pairs of the  various register outputs define each of the eight states of our Johnson counter example.
</para>


<bigspace>
<para>
<image>04438.png</image> <comment>CD4022B johnson 4-stage, disallowed state detector </comment>
</para>
<bigspace>

<index>disallowed state, Johnson counter</index>
<index>disallowed state detector</index>
<para>
Above is the more complete internal diagram of the CD4022B Johnson counter. See the manufacturers' data sheet for minor details omitted. The major new addition to the diagram as compared to previous figures is the <italic>disallowed state detector</italic> composed of the two <bold>NOR</bold> gates. Take a look at the inset state table. There are 8-permissible states as listed in the table. Since our shifter has  four flip-flops, there are a total of 16-states, of which there are 8-disallowed states. That would be the ones not listed in the table.
</para>

<para>
In theory, we will not get into any of the disallowed states as long as the shift register is <bold>RESET</bold> before first use.  However, in the "real world" after many days of continuous operation due to unforeseen noise, power line disturbances, near lightning strikes, etc, the Johnson counter could get into one of the disallowed states. For high reliability applications, we need to plan for this slim possibility. More serious is the case where the circuit is not cleared at power-up. In this case there is no way to know which of the 16-states the circuit will power up in. Once in a disallowed state, the Johnson counter will not return to any of the permissible states without intervention. That is the purpose of the <bold>NOR</bold> gates.
</para>

<para>
Examine the table for the sequence (<bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript></bold>)  = (<bold>010</bold>). Nowhere does this sequence appear in the table of allowed states. Therefore  (<bold>010</bold>) is disallowed. It should never occur. If it does, the Johnson counter is in a disallowed state, which it needs to exit to any allowed state. Suppose that (<bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript></bold>)  = (<bold>010</bold>). The second <bold>NOR</bold> gate will replace <bold>Q<subscript>B</subscript></bold> = <bold>1</bold> with a <bold>0</bold> at the <bold>D</bold> input to FF <bold>Q<subscript>C</subscript></bold>. In other words, the offending <bold>010</bold> is replaced by <bold>000</bold>. And <bold>000</bold>, which does appear in the table, will be shifted right. There are may triple-0 sequences in the table. This is how the <bold>NOR</bold> gates get the Johnson counter out of a disallowed state to an allowed state.
</para>

<para>
Not all disallowed states contain a <bold>010</bold> sequence. However, after a few clocks, this sequence will appear so that any disallowed states will eventually be escaped. If the circuit is powered-up without a <bold>RESET</bold>,  the outputs will be unpredictable for a few clocks until an allowed state is reached. If this is a problem for a particular application, be sure to <bold>RESET</bold> on power-up.
</para>



<subsubsection>
<subsubsectiontitle>Johnson counter devices</subsubsectiontitle>

<para>
A pair of integrated circuit Johnson counter devices with the output states decoded is available.  We have already looked at the CD4017 internal logic in the discussion of Johnson counters. The 4000 series devices can operate from 3V to 15V power supplies. The the 74HC' part, designed for a TTL compatiblity, can operate from a 2V to 6V supply, count faster, and has greater output drive capability. For complete device data sheets, follow the links.
</para>

<index>4017, CD4017, 74HC4017, Johnson counter</index>
<index>4022, CD4022, Johnson counter</index>

<itemize>



<item>
<para>
CD4017 Johnson counter with 10 decoded outputs
</para>
<para>
CD4022 Johnson counter  with 8 decoded outputs
</para>
<para>
<url>http://www-s.ti.com/sc/ds/cd4017b.pdf</url>
</para>
</item>

<item>
74HC4017 Johnson counter, 10 decoded outputs
<para>
<url>http://www-s.ti.com/sc/ds/cd74hc4017.pdf</url>
</para>
</item>

</itemize>

<para>
</para>

<bigspace>
<para>
<image>04439.png</image> <comment>CD4017B, CD4022B johnson ctr </comment>
</para>
<bigspace>

<para>
The ANSI symbols for the <italic>modulo</italic>-10 (divide by 10) and modulo-8 Johnson counters are shown above. The symbol takes on the characteristics of a counter rather than a shift register derivative, which it is.  Waveforms for the CD4022 modulo-8 and operation were shown previously. The CD4017B/ 74HC4017 decade counter is a 5-stage Johnson counter with ten decoded outputs. The operation and waveforms are similar to the CD4017. In fact, the CD4017 and CD4022 are both detailed on the same data sheet. See above links. The 74HC4017 is a more modern version of the decade counter.
</para>

<para>
These devices are used where decoded outputs are needed instead of the binary or BCD (Binary Coded Decimal) outputs found on normal counters. By decoded, we mean one line out of the ten lines is active at a time for the '4017 in place of the four bit BCD code out of conventional counters. See previous waveforms for 1-of-8 decoding for the '4022 Octal Johnson counter.
</para>


</subsubsection>


<subsubsection>
<subsubsectiontitle>Practical applications</subsubsectiontitle>
</subsubsection>

<bigspace>
<para>
<image>04440.png</image> <comment>johnson ctr practical LED </comment>
</para>
<bigspace>

<para>
The above Johnson counter shifts a lighted LED each fifth of a second around the ring of ten.  Note that the 74HC4017 is used instead of the '40017 because the former part has more current drive capability.  From the data sheet, (at the link above) operating at V<subscript>CC</subscript>= 5V, the V<subscript>OH</subscript>= 4.6V at 4ma. In other words, the outputs can supply 4 ma at 4.6 V to drive the LEDs. Keep in mind that LEDs are normally driven with 10 to 20 ma of current. Though, they are visible down to 1 ma. This simple circuit illustrates an application of the 'HC4017. Need a bright display for an exhibit? Then, use inverting buffers to drive the cathodes of the LEDs pulled up to the power supply by lower value anode resistors.
</para>

<para>
The 555 timer, serving as an astable multivibrator, generates a clock frequency determined by R<subscript>1</subscript> R<subscript>2</subscript> C<subscript>1</subscript>. This drives the 74HC4017 a step per clock as indicated by a single LED illuminated on the ring. Note, if the 555 does not reliably drive the clock pin of the '4015, run it through a single buffer stage between the 555 and the '4017.  A variable R<subscript>2</subscript> could change the step rate. The value of decoupling capacitor C<subscript>2</subscript> is not critical. A similar capacitor should be applied across the power and ground pins of the '4017.
</para>

<bigspace>
<para>
<image>04441.png</image> <comment>3-ph generator diagram </comment>
</para>
<bigspace>

<index>stepper motor driver, 3-phase</index>

<para>
The Johnson counter above generates 3-phase square waves, phased 60<superscript>o</superscript> apart with respect to (<bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript></bold>). However, we need 120<superscript>o</superscript> phased waveforms of power applications (see Volume II, AC). Choosing <bold>P<subscript>1</subscript>=Q<subscript>A</subscript></bold>  <bold>P<subscript>2</subscript>=Q<subscript>C</subscript></bold>   <bold>P<subscript>3</subscript>=Q<subscript>B</subscript>'</bold> yields the 120<superscript>o</superscript> phasing desired. See figure below. If these (<bold>P<subscript>1</subscript></bold> <bold>P<subscript>2</subscript></bold>  <bold>P<subscript>3</subscript></bold>) are low-pass filtered to sine waves and amplified, this could be the beginnings of a 3-phase power supply. For example, do you need to drive a small 3-phase 400 Hz aircraft motor? Then, feed  6x 400Hz to the above circuit <bold>CLOCK</bold>. Note that all these waveforms are 50% duty cycle.
</para>

<bigspace>
<para>
<image>04442.png</image> <comment>3-ph waveforms</comment>
</para>
<bigspace>

<para>
The circuit below produces 3-phase nonoverlapping, less than 50% duty cycle, waveforms for driving 3-phase stepper motors.
</para>

<bigspace>
<para>
<image>04443.png</image> <comment>3-ph stepper diagram</comment>
</para>
<bigspace>

<para>
</para>

<para>
Above we decode the overlapping outputs <bold>  Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript></bold> to non-overlapping outputs <bold>P<subscript>0</subscript> P<subscript>1</subscript> P<subscript>2</subscript></bold> as shown below. These waveforms drive a 3-phase stepper motor after suitable amplification from the milliamp level to the fractional amp level using the ULN2003 drivers shown above, or the discrete component Darlington pair driver shown in the circuit which follow. Not counting the motor driver, this circuit requires three IC (Integrated Circuit) packages: two dual type "D" FF packages and a quad NAND gate.
</para>


<bigspace>
<para>
<image>04444.png</image> <comment>new 3-ph stepper waveforms</comment>
</para>
<bigspace>

<bigspace>
<para>
<image>04446.png</image> <comment>3-ph 4017 diagram stepper diagram</comment>
</para>

<para>
A single CD4017, above,  generates the required 3-phase stepper waveforms in the circuit above by clearing the Johnson counter at count <bold>3</bold>. Count <bold>3</bold> persists for less than a microsecond before it clears its' self. The other counts (<bold>Q<subscript>0</subscript>=G<subscript>0</subscript> Q<subscript>1</subscript>=G<subscript>1</subscript> Q<subscript>2</subscript>=G<subscript>2</subscript></bold>) remain for a full clock period each.
</para>

<para>
The Darlington bipolar transistor drivers shown above are a substitute for the internal circuitry of the ULN2003. The design of drivers is beyond the scope of this digital electronics chapter. Either driver may be used with either waveform generator circuit.
</para>

<comment>the image 04445.png is missing from this sequence, inserted after 04410.eps</comment>

<bigspace>
<para>
<image>04447.png</image> <comment>3-ph 4017 stepper waveforms</comment>
</para>

<para>
The above waceforms make the most sense in the context of the internal logic of the CD4017 shown earlier in this section. Though, the <bold>AND</bold> gating equations for the internal decoder are shown. The signals <bold>Q<subscript>A</subscript> Q<subscript>B</subscript> Q<subscript>C</subscript></bold> are Johnson counter direct shift register outputs not available on pin-outs.  The <bold>Q<subscript>D</subscript></bold> waveform shows resetting of the <bold>'4017</bold> every three clocks.   <bold>Q<subscript>0</subscript> Q<subscript>1</subscript> Q<subscript>2</subscript></bold>, etc. are decoded outputs which actually are available at output pins.
</para>


<bigspace>
<para>
<image>04448.png</image> <comment>4-ph 4017 stepper waveforms</comment>
</para>

<index>stepper motor driver, unipolar</index>

<para>
Above we generate waveforms for driving a <italic>unipolar stepper motor</italic>, which only requires one polarity of driving signal. That is, we do not have to reverse the polarity of the drive to the windings. This simplifies the power driver between the '4017 and the motor. Darlington pairs from a prior diagram may be substituted for the ULN3003.
</para>

<bigspace>
<para>
<image>04449.png</image> <comment>4-ph 4017 stepper waveforms</comment>
</para>

<para>
Once again, the CD4017B generates the required waveforms with a reset after the teminal count.  The decoded outputs <bold>Q<subscript>0</subscript> Q<subscript>1</subscript> Q<subscript>2</subscript> Q<subscript>3</subscript></bold> sucessively drive the stepper motor windings, with  <bold>Q<subscript>4</subscript></bold> reseting the counter at the end of each group of four pulses.
</para>

<bigspace>

</subsection>


</section>


<section>

<sectiontitle> references</sectiontitle>

<para>
DataSheetCatalog.com  http://www.datasheetcatalog.com/
</para>

<para>
http://www.st.com/stonline/psearch/index.htm select standard logics
</para>
http://www.st.com/stonline/books/pdf/docs/2069.pdf
<para>
http://www.ti.com/  (Products, Logic, Product Tree)
</para>

<para>
</para>

</section>



</chapter>
<pagebreak>


