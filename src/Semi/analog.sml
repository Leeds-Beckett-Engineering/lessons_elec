
<chapter>
<chaptertitle>PRACTICAL ANALOG SEMICONDUCTOR CIRCUITS</chaptertitle>
<proofread>

<para>
<bold>*** INCOMPLETE ***</bold>
</para>

<section>
<sectiontitle>ElectroStatic Discharge</sectiontitle>


<para>
Volume I chapter 1.1 discusses static electricity, and how it is created. This has a lot more significance than might be first assumed, as control of static electricity plays a large part in modern electronics and other professions. An ElectroStatic Discharge event is when a static charge is bled off in an uncontrolled fashion, and will be referred to as ESD hereafter.
</para>


<para>
ESD comes in many forms, it can be as small as 50 volts of electricity being equalized up to tens of thousands of volts. The actual power is extremely small, so small that no danger is generally offered to someone who is in the discharge path of ESD. It usually takes several thousand volts for a person to even notice ESD in the form of a spark and the familiar zap that accompanies it. The problem with ESD is even a small discharge that can go completely unnoticed can ruin semiconductors. A static charge of thousands of volts is common, however the reason it is not a threat is there is no current of any substantial duration behind it. These extreme voltages do allow ionization of the air and allow other materials to break down, which is the root of where the damage comes from.
</para>

<para>
ESD is not a new problem. Black powder manufacturing and other pyrotechnic industries have always been dangerous if an ESD event occurs in the wrong circumstance. During the era of tubes (AKA valves) ESD was a nonexistent issue for electronics, but with the advent of semiconductors, and the increase in miniaturization, it has become much more serious.
</para>

<para>
Damage to components can, and usually do, occur when the part is in the ESD path. Many parts, such as power diodes, are very robust and can handle the discharge, but if a part has a small or thin geometry as part of their physical structure then the voltage can break down that part of the semiconductor. Currents during these events become quite high, but are in the nanosecond to microsecond time frame. Part of the component is left permanently damaged by this, which can cause two types of failure modes. Catastrophic is the easy one, leaving the part completely nonfunctional. The other can be much more serious. Latent damage may allow the problem component to work for hours, days or even months after the initial damage before catastrophic failure. Many times these parts are referred to as "walking wounded", since they are working but bad. Figure<ref>53009.jpg below</ref> is shown an example of latent ("walking wounded") ESD damage. If these components end up in a life support role, such as medical or military use, then the consequences can be grim. For most hobbyists it is an inconvenience, but it can be an expensive one.
</para>

<para>
Even components that are considered fairly rugged can be damaged by ESD. Bipolar transistors, the earliest of the solid state amplifiers, are not immune, though less susceptible. Some of the newer high speed components can be ruined with as little as 3 volts. There are components that might not be considered at risk, such as some specialized resistors and capacitors manufactured using MOS (Metal Oxide Semiconductor) technology, that can be damaged via ESD.
</para>

<comment>ESD image 2.jpg</comment>

<image>53009.jpg<caption> </caption></image>




<subsection>
<subsectiontitle>ESD Damage Prevention</subsectiontitle>

<para>
Before ESD can be prevented it is important to understand what causes it. Generally materials around the workbench can be broken up into 3 categories. These are ESD Generative, ESD Neutral, and ESD Dissipative (or ESD Conductive). ESD Generative materials are active static generators, such as most plastics, cat hair, and polyester clothing. ESD Neutral materials are generally insulative, but don't tend to generate or hold static charges very well. Examples of this include wood, paper, and cotton. This is not to say they can not be static generators or an ESD hazard, but the risk is somewhat minimized by other factors. Wood and wood products, for example, tend to hold moisture, which can make them slightly conductive. This is true of a lot of organic materials. A highly polished table would not fall under this category, because the gloss is usually plastic, or varnish, which are highly efficient insulators. ESD Conductive materials are pretty obvious, they are the metal tools laying around. Plastic handles can be a problem, but the metal will bleed a static charge away as fast as it is generated if it is on a grounded surface. There are a lot of other materials, such as some plastics, that are designed to be conductive. They would fall under the heading of ESD Dissipative. Dirt and concrete are also conductive, and fall under the ESD Dissipative heading.
</para>

<para>
There are a lot of activities that generate static, which you need to be aware of as part of an ESD control regimen. The simple act of pulling tape off a dispenser can generate extreme voltage. Rolling around in a chair is another static generator, as is scratching. In fact, any activity that allows 2 or more surfaces to rub against each other is pretty certain to generate some static charge. This was mentioned in the beginning of this book, but real world examples can be subtle. This is why a method for continuously bleeding off this voltage is needed. Things that generate huge amounts of static should be avoided while working on components.
</para>

<para>
Plastic is usually associated with the generation of static. This has been gotten around in the form of conductive plastics. The usual way to make conductive plastic is an additive that changes the electrical characteristics of the plastic from an insulator to a conductor, although it will likely still have a resistance of millions of ohms per square inch. Plastics have been developed that can be used as conductors is in low weight applications, such as those in the airline industries. These are specialist applications, and are not generally associated with ESD control.
</para>

<para>
It is not all bad news for ESD protection. The human body is a pretty decent conductor. High humidity in the air will also allow a static charge to dissipate harmlessly away, as well as making ESD Neutral materials more conductive. This is why cold winter days, where the humidity inside a house can be quite low, can increase the number of sparks on a doorknob. Summer, or rainy days, you would have to work quite hard to generate a substantial amount of static. Industry clean rooms and factory floors go the effort to regulate both temperature and humidity for this reason. Concrete floors are also conductive, so there may be some existing components in the home that can aid in setting up protections.
</para>

<para>
To establish ESD protection there has to be a standard voltage level that everything is referenced to. Such a level exists in the form of ground. There are very good safety reasons that ground is used around the house in outlets. In some ways this relates to static, but not directly. It does give us a place to dump our excess electrons, or acquire some if we are short, to neutralize any charges our bodies and tools might acquire. If everything on a workbench is connected directly or indirectly to ground via a conductor then static will dissipate long before an ESD event has a chance to occur.
</para>

<para>
A good grounding point can be made several different ways. In houses with modern wiring that is up to code the ground pin on the AC plug in can be used, or the screw that holds the outlets cover plate on. This is because house wiring actually has a wire or spike going into the earth somewhere where the power is tapped from the main power lines. For people whose house wiring isn't quite right a spike driven into the earth at least 3 feet or a simple electrical connection to metal plumbing (worst option) can be used. The main thing is to establish an electrical path to the earth outside the house.
</para>

<para>
Ten megohms is considered a conductor in the world of ESD control. Static electricity is voltage with no real current, and if a charge is bled off seconds after being generated it is nullified. Generally a 1 to 10 megohm resistor is used to connect any ESD protection for this reason. It has the benefit of slowing the discharge rate during an ESD event, which increases the likelihood of a component surviving undamaged. The faster the discharge, the higher the current spike going though the component. Another reason such a resistance is considered desirable is if the user is accidentally shorted to high voltage, such as household current, it won't be the ESD protections that kill them.
</para>

<para>
A large industry has grown up around controlling ESD in the electronics industry. The staple of any electronics construction is the workbench with a static conductive or dissipative surface. This surface can be bought commercially, or home made in the form of a sheet of metal or foil. In the case of a metal surface it might be a good idea to lay thin paper on top, although it is not necessary if you are not doing any powered tests on the surface. The commercial version is usually some form of conductive plastic whose resistance is high enough not to be a problem, which is a better solution. If you are making your own surface for the workbench be sure to add the 10 megohm resistor to ground, otherwise you have no protection at all.
</para>

<para>
The other big item that needs ESD grounded is you. People are walking static generators. Your body being conductive it is relatively easy to ground it though, this is usually done with a wrist strap. Commercial versions already have the resistor built in, and have a wide strap to offer a good contact surface with your skin. Disposable versions can be bought for a few dollars. A metal watchband is also a good ESD protection connection point. Just add a wire (with the resistor) to your grounding point. Most industries take the issue seriously enough to use real time monitors that will sound an alarm if the operator is not properly grounded.
</para>

<comment>ESD Setup.png</comment>

<image>[scale=1.4]43001.png<caption> </caption><label>43001.png</label></image>

<para>
Another way of grounding yourself is a heel strap. A conductive plastic part is wrapped around the heel of your shoe, with a conductive plastic strap going up and under your sock for good contact with the skin. It only works on floors with conductive wax or concrete. The method will keep a person from generating large charges that can overwhelm other ESD protections, and is not considered adequate in and of itself. You can get the same effect by walking barefoot on a concrete floor.
</para>

<para>
Yet another ESD protection is to wear ESD conductive smocks. Like the heel strap, this is a secondary protection, not meant to replace the wrist strap. They are meant to short circuit any charges that your clothes may generate.
</para>

<para>
Moving air can also generate substantial static charges. When you blow dust off your electronics their will be static generated. An industrial solution to the problem to this issue is two fold: Firstly, air guns have a small, well shielded radioactive material implanted within the air gun to ionize the air. Ionized air is a conductor, and will bleed off static charges quite well. Secondly, use high voltage electricity to ionize the air coming out of a fan, which has the same effect as the air gun. This will effectively help a workstation reduce the potential for ESD generation by a large amount.
</para>

<para>
Another ESD protection is the simplest of all, distance. Many industries have rules stating all Neutral and Generative materials will be at least 12 inches or more from any work in progress.
</para>

<para>
The user can also reduce the possibility of ESD damage by simply not removing the part out of its protective packaging until it is time to insert it into the circuit. This will reduce the likelihood of ESD exposure, and while the circuit will still be vulnerable, the component will have some minor protection from the rest of the components, as the other components will offer different discharge paths for ESD.
</para>

</subsection>



<subsection>
<subsectiontitle>Storage and Transportation of ESD sensitive component and boards</subsectiontitle>

<para>
It does no good to follow ESD protections on the workbench if the parts are being damaged while storing or carrying them. The most common method is to use a variation of a Faraday cage, an ESD bag. An ESD bag surrounds the component with a conductive shield, and usually has a non static generating insulative layer inside. In permanent Faraday cages this shield is grounded, as in the case of RFI rooms, but with portable containers this isn't practical. By putting a ESD bag on a grounded surface the same thing is accomplished. Faraday cages work by routing the electric charge around the contents and grounding them immediately. A car struck by lightning is an extreme example of a Faraday cage.
</para>

<para>
Static bags are by far the most common method of storing components and boards. They are made using extremely thin layers of metal, so thin as to be almost transparent. A bag with a hole, even small ones, or one that is not folded on top to seal the content from outside charges is ineffective.
</para>

<para>
Another method of protecting parts in storage is totes or tubes. In these cases the parts are put into conductive boxes, with a lid of the same material. This effectively forms a Faraday cage. A tube is meant for ICs and other devices with a lot of pins, and stores the parts in a molded conductive plastic tube that keeps the parts safe both mechanically and electrically.
</para>

<comment>ESD Logos.png</comment>

<image>[scale=1.5]43002.png<caption> </caption><label>43002.png</label></image>
</subsection>


<subsection>
<subsectiontitle>Conclusion</subsectiontitle>

<para>
ESD can be a minor unfelt event measuring a few volts, or a massive event presenting real dangers to operators. All ESD protections can be overwhelmed by circumstance, but this can be circumvented by awareness of what it is and how to prevent it. Many projects have been built with no ESD protections at all and worked well. Given that protecting these projects is a minor inconvenience it is better to make the effort.
</para>

<para>
Industry takes the problem very seriously, as both a potential life threatening issue and a quality issue. Someone who buys an expensive piece of electronics or high tech hardware is not going to be happy if they have to return it in 6 months. When a reputation is on the line it is easier to do the right thing.
</para>

</subsection>



</section>




<section>
<sectiontitle>Power Supply circuits</sectiontitle>

<subsection>
<subsectiontitle>Power Supply types</subsectiontitle>

<para>
There are three major kinds of power supplies: <italic>unregulated</italic> (also called <italic>brute force</italic>), <italic>linear regulated</italic>, and <italic>switching</italic>.  A fourth type of power supply circuit called the <italic>ripple-regulated</italic>, is a hybrid between the "brute force" and "switching" designs, and merits a subsection to itself.
</para>



<bold>Unregulated</bold>

<para>
An unregulated power supply is the most rudimentary type, consisting of a transformer, rectifier, and low-pass filter.  These power supplies typically exhibit a lot of ripple voltage (i.e. rapidly-varying instability) and other AC "noise" superimposed on the DC power.  If the input voltage varies, the output voltage will vary by a proportional amount.  The advantage of an unregulated supply is that its cheap, simple, and efficient.
</para>

<para>
See <hyperlink>half-W-R[Rectifier circuits][SEMI_3.html]</hyperlink> in the Diodes chapter for the various configurations of the rectifiers used in unregulated power supplies. Note that those circuits are unfiltered, A low pass filter is normally added to the output of the rectifier circuit to remove some of the ripple. 
</para>


<para>
A linear regulated supply is simply a "brute force" (unregulated) power supply followed by a transistor circuit operating in its "active," or "linear" mode, hence the name <italic>linear</italic> regulator.  (Obvious in retrospect, isn't it?)  A typical linear regulator is designed to output a fixed voltage for a wide range of input voltages, and it simply drops any excess input voltage to allow a maximum output voltage to the load.  This excess voltage drop results in significant power dissipation in the form of heat.  If the input voltage gets too low, the transistor circuit will lose regulation, meaning that it will fail to keep the voltage steady.  It can only drop excess voltage, not make up for a deficiency in voltage from the brute force section of the circuit.  Therefore, you have to keep the input voltage at least 1 to 3 volts higher than the desired output, depending on the regulator type.  This means the power equivalent of at <italic>least</italic> 1 to 3 volts multiplied by the full load current will be dissipated by the regulator circuit, generating a lot of heat.  This makes linear regulated power supplies rather inefficient.  Also, to get rid of all that heat they have to use large heat sinks which makes them large, heavy, and expensive.
</para>


<bold>Switching</bold>
<para>
A switching regulated power supply ("switcher") is an effort to realize the advantages of both brute force and linear regulated designs (small, efficient, and cheap, but also "clean," stable output voltage).  Switching power supplies work on the principle of rectifying the incoming AC power line voltage into DC, re-converting it into high-frequency square-wave AC through transistors operated as on/off switches, stepping that AC voltage up or down by using a lightweight transformer, then rectifying the transformer's AC output into DC and filtering for final output.  Voltage regulation is achieved by altering the "duty cycle" of the DC-to-AC inversion on the transformer's primary side.  In addition to lighter weight because of a smaller transformer core, switchers have another tremendous advantage over the prior two designs: this type of power supply can be made so totally independent of the input voltage that it can work on any electric power system in the world; these are called "universal" power supplies.  
</para>

<para>
The downside of switchers is that they are more complex, and due to their operation they tend to generate a lot of high-frequency AC "noise" on the power line.  Most switchers also have significant ripple voltage on their outputs.  With the cheaper types, this noise and ripple can be as bad as for an unregulated power supply; such low-end switchers aren't worthless, because they still provide a stable average output voltage, and there's the "universal" input capability.  
</para>

<para>
Expensive switchers are ripple-free and have noise nearly as low as for some a linear types; these switchers tend to be as expensive as linear supplies.  The reason to use an expensive switcher instead of a good linear is if you need universal power system compatibility or high efficiency.  High efficiency, light weight, and small size are the reasons switching power supplies are almost universally used for powering digital computer circuitry.
</para>

<bold>Ripple regulated</bold>
<para>
A ripple-regulated power supply is an alternative to the linear regulated design scheme: a "brute force" power supply (transformer, rectifier, filter) constitutes the "front end" of the circuit, but a transistor operated strictly in its on/off (saturation/cutoff) modes transfers DC power to a large capacitor as needed to maintain the output voltage between a high and a low setpoint.  As in switchers, the transistor in a ripple regulator never passes current while in its "active," or "linear," mode for any substantial length of time, meaning that very little energy will be wasted in the form of heat.  However, the biggest drawback to this regulation scheme is the necessary presence of some ripple voltage on the output, as the DC voltage varies between the two voltage control setpoints.  Also, this ripple voltage varies in frequency depending on load current, which makes final filtering of the DC power more difficult.
</para>

<para>
Ripple regulator circuits tend to be quite a bit simpler than switcher circuitry, and they need not handle the high power line voltages that switcher transistors must handle, making them safer to work on. 
</para>

</subsection>

<subsection>
<subsectiontitle>Power Supply Introduction</subsectiontitle>

<para>
Power supply circuits are a class of circuits that are designed to convert electrical energy for some load. Every power supply consists of at least three parts:
<itemize>
<item>An input power source, which delivers power at some voltage or range of voltages V1</item>
<item>A load, which requires power delivered at some voltage or range of voltages V2</item>
<item>Conversion circuitry, which receives voltage V1 as an input and generates voltage V2 as an output</item>
</itemize>
</para>


<para>
Some devices are simple enough that they can operate properly without any modifications to the voltage and current provided by the input source. For example, the lightbulb inside a low-cost flashlight is designed to emit light when connected in series with a few batteries, meaning the entire conversion circuit is just wires. In a similar way, household incandescent lightbulbs are designed to operate properly when connected to an AC source, operated at a well-regulated voltage and line frequency. But for the majority of electronic devices, it is impractical to operate an entire circuit at voltages commonly available. Computers, cell phones, car stereos, aircraft sensors, traffic lights, and pacemakers all have elements which require drastically different voltages than those delivered by any common power source. Well-designed power supply circuits convert almost all of the energy supplied by batteries, solar cells, AC lines and other power sources to voltage levels suitable for the operation of intricate electronic devices.
</para>



<para>
These are some of the typical considerations when designing a power supply circuit:
</para>


<bold>Efficiency</bold>
<para>
Efficiency is defined as the output power divided by the total input power. The maximum theoretical efficiency of a circuit is 100%, and this makes sense: the only place output power can come from in a power supply is the input power source. Energy that is consumed in the conversion process, and is not delivered as output power, is called power loss. All power supply circuits have some losses, even if those losses are very small. Maximizing efficiency and minimizing losses is of key importance in power supply design. Highly efficient devices can last longer on a single battery charge, cost less money to operate from a utility AC line, and generate less heat.
</para>

<bold>Heat</bold>
<para>
Power loss is dissipated away from a power supply circuit as heat. Very small semiconductor components may only be able to dissipate a few hundred milliwatts before they become too hot and fail. On the other hand, very large power supplies can convert multiple kilowatts of power, and routinely see tens of watts dissipated across only a few components. Further complicating issues, many power supplies are designed to operate in hot or cold environments, where temperatures can vary by over 100<superscript>o</superscript> C. At hotter temperatures, devices must be thermally derated to avoid overheating, which significantly reduces the maximum output power available. At colder temperatures, considerable deviations in component values can be expected, and rapid changes in loading can lead to thermal shock effects, where repeated heating and cooling stresses components to failure. In most cases, cold temperature performance can be guaranteed with proper component selection; removing waste heat and preventing damage from overheating receive much greater consideration.
</para>


<para>
In order to prevent component failures, high dissipation components are usually connected to heat sinks. Sometimes the only heat sink needed is a solid connection to a copper plane in a printed circuit board. But for anything beyond a few watts, components need to be connected to a separate, thermally conductive metal block. By putting long metal fins on these blocks, the surface area can be boosted to increase convective heat transfer. A fan can also be used to increase airflow. Some designs even use water or oil traveling through the block to more effectively remove waste heat.
</para>


<para>
As a general rule, most semiconductors begin experiencing damage when the circuit's internal temperature reaches 150<superscript>o</superscript>C, though some devices are designed to withstand even higher temperatures. Other components such as inductors and capacitors are available in a wide range of operating temperatures and tolerances, with a premium charged for more extreme temperatures and tighter tolerances.

</para>

<bold>Size</bold>

<para>
In some devices such as cell phones or smart watches, there can be dozens or hundreds of components made to fit within only a few square centimeters. Power supply circuits in these types of devices must be small leave room for other, feature-rich components. In other devices such as aircraft electronics, the power requirements are large enough that many components must be attached to a heat sink. This can add significant weight to the overall design, which reduces fuel economy of the aircraft. Size is directly related to the amount of power being converted, and the efficiency of the conversion. The more power being converted, the larger the components must be to spread out self-heating and to withstand the high voltages used for larger power conversions. Improvements in efficiency can help to reduce supply size, since less heat sinking is required.
</para>


<bold>Cost</bold>

<para>
Unsurprisingly, cost is a critical factor. Generally, as both power and efficiency are increased, the cost of the power supply increases as well. This cost increase comes from a combination of expensive but well-optimized components, increased complexity leading to longer design and test cycles, and costs associated with regulatory compliance. As in any engineering challenge, power supply design is a tradeoff of acceptable performance and cost. Since all electronic devices require one or more power supply circuits, aggressive cost optimization is common. In high-volume manufacturing, saving even a few cents per product can reduce build costs by thousands of dollars.
</para>

<bold>Line Regulation</bold>

<para>
Line regulation is a measure of how well a power supply circuit can respond to changes in input source voltage. Many input power sources present a wide voltage range to a power supply input: battery voltages can vary by 30% or more across one charge cycle, solar cell voltages vary proportionally to incident sunlight, and AC line voltages can (on rare occasion) deviate by as much as 20% in either direction. Line regulation is defined as the output voltage at the maximum/minimum input voltage, minus the output voltage at the nominal input voltage. It can also be given as a percentage of the nominal output voltage value. An ideal power supply has perfect line regulation, <plusminus>0V or <plusminus>0% change. It is not uncommon for modern power supplies to see values <lt> <plusminus>5mV or <lt> <plusminus>0.1%.
</para>


<bold>Load Regulation</bold>

<para>
Load regulation is a measure of how well a power supply circuit can respond to changes in output loading. As output power increases, heating from power loss causes changes in reference parameters used by the circuit to control the output. Power supply designers use carefully designed reference circuits to minimize the effects of temperature variations, but observable effects still exist. Load regulation is defined as the output voltage at full load, minus the output voltage at no load. It can also be given as a percentage of the nominal output voltage value. An ideal power supply has perfect load regulation, 0V or 0% change. Modern power supply circuits can achieve values similar to line regulation.
</para>


<bold>Ripple Rejection</bold>

<para>
For many power supply circuits with an AC line as input, the line frequency is coupled through the supply to the output. Some power supply circuits specify a ripple rejection, usually in dB, which is defined as the magnitude of a specific frequency on the output (commonly 100Hz or 120Hz) relative to the magnitude of that same specific frequency on the input.
</para>


<bold>Quiescent Current</bold>

<para>
Even at no load, some power is required to keep a power supply in regulation. The housekeeping current used to power the control circuitry of the supply is called the quiescent current. This value has a wide range, spanning from hundreds of milliamps all the way down to hundreds of nanoamps.
</para>


<bold>Output Impedance</bold>

<para>
An ideal voltage source has zero output impedance. Practical converters see some small output impedance, which tends to grow at higher frequencies. For a power supply to effectively regulate against loads that change in milliseconds or less, low output impedance is mandatory. Otherwise, sudden changes in load current will produce severe changes in output voltage. Nearly all converters can easily achieve output impedances of less than an ohm; <lt> 10m<OMEGA> at DC is not uncommon.
</para>


<bold>Output Voltage Noise</bold>

<para>
Electrons flowing in resistors and transistors are susceptible to thermodynamic events, statistical fluctuations in current density, and other complex particle-scale phenomena. These tendencies manifest in all circuits, including power supply circuits, as noise on the output voltage. Although the average value of a power supply output is constant, noise can cause the output to experience millivolt excursions on a microsecond or submicrosecond scale. For lower power analog circuits that depend on tightly regulated power supply voltages such as high-resolution analog-to-digital converters or high-frequency oscillators, power supply noise can cripple performance. Because noise sources tend to be a function of frequency, noise is commonly listed as a value integrated over a frequency range (in RMS Volts), or is specified as a plot of noise spectral density comparing noise (in Volts/<radic>Hz) vs. frequency. Wideband (10Hz to 100kHz) integrated noise can be controlled to <lt> 10<mu>Vrms, and noise at high frequencies can approach <lt> 10nV/<radic>Hz.
</para>

<para>
Higher power designs tend to introduce noise on the order of tens or hundreds of millivolts, concentrated at specific frequencies, as a function of their construction. Though some designs exist which can tightly control even high-power supply noise, they are costly and are therefore reserved for specialized test and measurement equipment. Virtually all practical power supplies above a few watts will generate millivolts of noise on the output, and for many types of load this does not affect device performance in the slightest. It is common to use an effective but noisy power supply for insensitive loads, and as the input to a second, quieter power supply.
</para>

</subsection>

<comment>*****************</comment>

<subsection>
<subsectiontitle>Linear power supplies</subsectiontitle>

<para>
There are two major types of power supplies whose output behavior can be determined according to linear equations: shunt regulators, and series regulators. Shunt regulators (pictured in  Figure<ref>03511.png below</ref> are so named because they shunt away unnecessary load current to keep the output in regulation. In a shunt regulator, high quiescent current is necessary, since the shunt must be able to redirect the full load current at no load conditions. This can lead to high power dissipation, especially for appreciably large full load currents. On the bright side, they are relatively simple, often made of entirely passive elements, and can be reduced to two-terminal devices.
</para>

<image>03511.png<caption>Shunt regulators</caption></image>

<image>13083.png</image>

<para>
<comment>Split two refrences in to two lines</comment>
Series regulators, in contrast, regulate the input current with a pass element to control the output current delivered to a load pictured in Figure<ref>03512.png below</ref>. This can be utilized to reduce quiescent current to almost nothing at light or no load, though some current must always pass through the series element to ensure proper output voltage regulation. However, the series regulator must control both the voltage drop across and the current through the series element to regulate the output voltage, and no passive element can be used to guarantee this behavior. Because of the need for some form of output sensing circuitry, a three terminal solution is almost always required.
</para>

<image>03512.png<caption>Series regulators</caption></image>

<image>13084.png</image>
<para>

For the sake of illustrating the common terms seen in power supply design, consider the following specification: Suppose there is a need to take a static 15V output from a converter, and step it down to a 5V level. The input voltage may vary by as much as <plusminus>3V, and the output current must be 500mA maximum. In the following examples, several basic topologies will be explored, and the relative strengths and weaknesses of the different approaches compared.
</para>



<bold>Example Supply: Resistor Divider</bold>


<comment>Figure3.png</comment>

<image>03513.png<caption>Resistor divider power supply</caption></image>


<para>
The humble resistor divider circuit of Figure<ref>03513.png above</ref> is perhaps the simplest power supply circuit. While its behavior is entirely linear, it is hard to say whether such a supply should be considered a shunt or series regulator, since the output voltage is a function of both the shunt and series elements. For the purposes of this first example, the distinction is unimportant. The nonidealities of this circuit, especially when constrained by the specification above, make it useful to conceptualize the common terms used in power supply design. 
</para>



<para>
The resistor values must be small to simultaneously allow 500mA through the pass element without causing too much of a voltage drop, and maintain a nominal output voltage of 5V from a 15V supply. The values 15<OMEGA> and 7.5<OMEGA> are selected for R1 and R2, respectively. The behavior of the circuit can be described by a system of equations, first using ohm's law at the output, second by using the standard divider equation considering R2 and the load in parallel:
</para>

<image>13085.png</image>



<para>
By selecting values for Vin and one other parameter, and solving for the remaining unknowns, the performance of this circuit may be interrogated. The key points are summarized below.
</para>



<para>
<bold>Efficiency: </bold>To achieve the maximum output current of 500mA with nominal input conditions (Vin = 15V), solving the system of equations gives:
</para>

<image>13086.png</image>


<para>
Meanwhile, the input power is the input voltage multiplied by the input current, and the input current is found as:
</para>

<image>13087.png</image>


<para>
Therefore, 
</para>

<image>13088.png</image>


<para>
Our efficiency at full load is then:
</para>

<image>13089.png</image>

<para>
It can also be shown using calculus that the maximum efficiency is achieved with a load resistance of 5<OMEGA>, yielding only 10.1% efficiency. These values are unimpressive. Interestingly, a quick calculation will reveal that this maximum efficiency is the same, regardless of input voltage. This makes sense, since output power is ratiometric with input power for the same circuit.
</para>



<para>
<bold> Quiescent current:</bold> At no load, the circuit draws:
</para>

<image>13090.png</image>

<para>
This is more than the maximum output by some margin, and is very wasteful compared to what might be achievable with other topologies. Worse still, the total current only increases with increasing load.
</para>


<para>
<bold> Heat:</bold> At no load, the circuit dissipates 10W power, and at full load this increases to 12.5W. Under short circuit conditions, this increases to 15W, all dissipated in R1. Both R1 and R2 would need to be large wirewound resistors, or would require active cooling, for this supply to function at ambient temperature. Performance above ambient temperature is more difficult.
</para>


<para>
<bold>Load regulation:</bold> At full load, the output voltage drops from 5V to 2.5V. From the load regulation equation, we find that this supply has the following load regulation:
</para>

<image>13091.png</image>

<para>
This is atrocious. Any improvement in load regulation is also practically infeasible; to make the parallel combination of R2 and the load negligibly different from the load, even at full load, the value of R1 and R2 would need to be further decreased by more than an order of magnitude, which would necessarily increase the quiescent current and decrease the efficiency by the same degree. It is unreasonable to require over 100W of power dissipation to maintain a reasonable load regulation from a resistor divider. Ideally, it shouldn't even take milliwatts.
</para>


<para>
<bold>Line regulation:</bold> At 18V with no load, the output voltage is:
</para>

<image>13092.png</image>

<para>
Meanwhile, at 12V, the output voltage is:
</para>

<image>13093.png</image>

<para>
This corresponds to a line regulation of <plusminus>1V, or <plusminus>20%. This is quite terrible.
</para>

<para>
While on the subject of input voltage variations, consider that the values of quiescent current and load regulation will change for different input voltages. As the input voltage increases, the quiescent current increases, and the heat generation increases. The output will deliver 500mA to a 7<OMEGA> load at 3.5V. At <15V the output voltage decreases substantially, delivering 500mA to a 3<OMEGA> load at 1.5V. Since the output voltage is directly proportional to the input voltage, the output is dependent on a stable input voltage, which is not always possible.
</para>


<para>
<bold> Output Impedance:</bold> By small signal analysis, the voltage source at Vin is shorted, and the output impedance is plainly the parallel combination of R1||R2, or 5<OMEGA>. Since this output impedance is static across all changes in input voltage and output current, it is understandable why the output voltage varies so much with every change in input and load conditions.
</para>



<para>
<bold>Output Noise:</bold> Although this resistor will be affected by thermal noise, standard 1/f noise, and excess noise due to resistor construction, ultimately noise is unlikely to be the biggest concern in this design, and true noise analysis will be saved for more deserving circuits.
</para>


<para>
The performance of this circuit as a power supply is nothing short of abysmal. In fairness to the resistor divider, the most common use for such a circuit is voltage division into high-impedance loads, such as amplifier input pins and transistor gates. For these high-impedance load conditions, the divider may be treated as very close to ideal, and as such it is not often thought of as a power supply circuit. Nevertheless, when operating conditions begin to change (such as with supply voltage variations or even small load current increases), high impedance amplifier inputs and transistors can still be made to misbehave.
</para>


<para>
In this impractical example it should be clear that a resistor divider is unsuited for any serious power delivery, with completely unusable line and load regulation and horrible overall efficiency. However, with only a minor modification, this circuit can be augmented with vastly improved line and load regulation. This is explored in the following example.
</para>





<para>
<bold>Example Supply:</bold> Zener Divider
</para>


<image>03514.png<caption>Zener Divder Power Supply</caption></image>
<comment>Figure4.png </comment>



<para>
The circuit of Figure<ref>03514.png above</ref> is a Zener divider (Zener diodes are discussed in chapter 3). By substituting a reverse-biased Zener diode in place of R2 in the previous circuit, the shifting Zener impedance above a certain reverse current knee point can be exploited to guarantee a stable output voltage over different line and load conditions. Keeping in mind that Zener diodes can only be constructed with certain reverse voltages, the closest stable output to 5V is chosen, giving a Zener voltage of 5.1V. At no load, all available current will be passed through the Zener diode. By choosing this load current to be slightly over 500mA at maximum load (say by 10mA), regulation can be ensured even when the the full load current is delivered to the load. R1 is selected for all voltages within the tolerance of the input voltage range: the worst case, at 12V, requires that:
</para>

<image>13094.png</image>


<para>
As long as the Zener diode has current through it, a load of 10.2<OMEGA> can now be attached, with any input supply voltage in the specified range, and 500mA will be delivered to it. To prove this assertion, test the behavior at Vin = 12V and Vin = 18V:
</para>

<image>13095.png</image>


<para>
In theory, this design should therefore be capable of meeting all the requirements. A closer examination of the affected parameters offers some caveats.
</para>

<para>
<bold>Efficiency:</bold> The Zener regulator efficiency differs depending on input voltage and output loading. The best case efficiency for any input voltage is at full load, and the best case efficiency for any load is at the minimum input voltage. In this condition, we find that:
</para>

<image>13096.png</image>

<para>
This is better than the resistor divider, but not by much, and only at one extreme corner of operation. At the other corner the results are less impressive:
</para>

<image>13097.png</image>


<para>
<bold>Quiescent current:</bold> At no load, the full operating current of the Zener regulator must travel through the Zener diode. Best case, this is always more than the maximum output current; worst case, it can be much greater. At 17V, this regulator consumes almost double the maximum output current!
</para>


<para>

</para>

<para>
<bold>Heat:</bold> Since the Zener regulator quiescent current is always greater than the maximum operating current, the worst case power dissipation leads to a great deal of heat dissipated in both R1 and in the diode. However, as the load current increases, the Zener diode dissipates less and less power, since the current and therefore the power must be diverted from the diode to the output load. Meanwhile, R1 power dissipation remains almost constant across loading, but benefits from a lower input voltage. If for any reason the output current exceeds the quiescent current (such as during a short circuit), the power dissipation in R1 increases above the typical worst case operating point, requiring a larger component or better cooling to endure this stress. Even under normal operating conditions, R1 still dissipates enough to require a large wirewound resistor and probably some form of active cooling:
</para>

<image>13098.png</image>

<para>
It is worth noting, in passing, that at worst case the Zener diode must dissipate close to 5W; while there exist Zener diodes capable of this, 5W is an uncommonly large value for a Zener diode. With smaller maximum load current requirements, low power Zeners may be used at substantially decreased costs.
</para>


<para>
<bold>Line and load regulation:</bold> From an ideal standpoint, the Zener voltage is always 5.1V, across all line and load conditions. In reality, however, the Zener diode has some temperature related effects which cause the Zener voltage to change. Worse still, the temperature effects do not all act in the same direction. Low voltage Zener diodes behave predominantly according to the Zener effect, an electron tunneling process, which has a negative temperature coefficient (Zener voltage decreases with increasing heat). Higher voltage Zener diodes behave predominantly according to the avalanche effect, a form of current multiplication that has a positive temperature coefficient (Zener voltage increases with increasing heat). At around 4V to 6V, and dependent on the Zener current, the temperature coefficients of these two mechanisms will combine and can occasionally cancel out almost entirely. Unfortunately, there is still some effect at 5.1V; A 5W rated 1N5338B, for example, can see a difference of almost 0.4V across temperature, typically increasing in voltage.
</para>

<para>
A basic approximation of this effect can explain the difficulty. With a 15V supply voltage, at no load the Zener current and power are found to be:
</para>

<image>13099.png</image>

<para>
Assuming the change in Zener voltage is up to 0.4V at 5W for the given Zener diode, and the change is both linear and positive, the Zener voltage may increase in response to increasing junction temperature by as much as:
</para>

<image>13100.png</image>

<para>
This changes the Zener current and power to:
</para>

<image>13101.png</image>

<para>
Iteration shows this change in Zener voltage with temperature eventually stabilizes; still, the output is far from its ideal value. As load current increases, Zener current decreases, returning the output voltage to a lower value. Line and load regulation are difficult to estimate precisely, since the exact location of the Zener knee, the effect of process variation on the temperature coefficient, and the variation of the temperature coefficient with Zener current cannot always be predicted. Both are frequently verified experimentally or with a spice simulation. Broadly speaking, with a maximum specified regulation swing of about 0.4V, and assuming this can be either positive or negative for a 5.1V Zener diode, the combined line and load regulation can be stated as:
</para>

<image>13102.png</image>


<para>
<bold>Output Impedance:</bold> For the small signal analysis, voltage sources are shorted. The impedance looking into the output is just R1||RZ. But RZ is a dynamic value, based on the Zener voltage (Vout) and the Zener current (Iz).
</para>


<image>13103.png</image>


<para>
In the limit as RL approaches infinity, Zout becomes Vout x R1 / Vin, approximately 4.59<OMEGA> at 15V input. Interestingly, from this equation we can discover that the output impedance increases as a function of increasing load, to a maximum of R1 at a dead short across the output. The output is regulated because the output impedance continuously changes to match the level of loading.
</para>


<para>
<bold>Output Noise:</bold> The topic of output noise for Zener diodes is complicated. Due to the different mechanisms of Zener diode behavior, there are different sources of noise for different Zener voltages and currents.  Some attempt to simplify these topics will be made here.
</para>

<para>
Low voltage Zener diodes operate on the Zener effect, where discrete electrons tunnel across a barrier. Since this is a discrete, random process centered around a mean value, it follows a Poisson distribution and generates corresponding shot noise. The noise level is proportional to the square root of the number of discrete events. Thus, as current increases, shot noise increases as well. For a given Zener current I<subscript>Z</subscript> and Zener voltage V<subscript>Z</subscript> and recalling the electron elementary charge q = 1.6 x 10-19 coulombs, the shot noise is:
</para>

<image>13104.png</image>


<para>
At no load, this effect is almost negligible, since it is inversely proportional to I<subscript>Z</subscript>. But at full load, I<subscript>Z</subscript> shrinks considerably. The noise at full load for V<subscript>in</subscript> = 12V is 7x worse than the noise at no load. At 18V, since the difference in I<subscript>Z</subscript> at no load and at full load is smaller, the effect is much less pronounced.
</para>

<para>
High voltage Zener diodes operate on the avalanche effect, where one carrier collides with many others and causes an avalanche multiplication of carrier movements, resulting in wide-bandwidth noise that can exceed simple shot noise by orders of magnitude. In fact, the equation is almost identical, but depends to some extent on the recombination lifetime of each new electron in the avalanche. Without getting too deeply into the physics, it is usually sufficient to introduce some large multiplier to the original shot noise equation. Whereas a low voltage Zener diode might measure its wideband noise in the hundreds of nV, a high voltage Zener diode might measure its wideband noise in hundreds of <mu>volts or even low millivolts.
</para>

<para>
To keep a Zener diode at the lowest possible noise, there are only two requirements: first, use a low voltage Zener diode, to minimize avalanche noise; second, use a large Zener current, even at full load. Though increasing the current increases the power dissipation, potentially leading to greater thermal noise, remember that thermal noise is proportional to Zener impedance, and that Zener impedance shrinks faster than absolute temperature grows. In power supply design Zener noise is once again rarely an issue, since other regulators can be created with less noise, more efficiency, and better line and load regulation.
</para>

<para>
In general, shunt regulators are used in cases where the power dissipation is negligible, and the load current is small (tens of milliamps or fewer). More complex shunt regulators can incorporate compensation schemes which minimize the effects of line, load, and temperature variations. The exact mechanisms of these compensation schemes are beyond the scope of this discussion, but line and load regulation values of <1% are achievable with shunt regulation schemes, over a very wide range of temperatures and input voltages.
</para>

</subsection>

</section>





<section>
<sectiontitle>Amplifier circuits -- PENDING</sectiontitle>

<para>
Note, Q<subscript>3</subscript> and Q<subscript>4</subscript> in Figure<ref>03475.png below</ref> are complementary, NPN and PNP respectively. This circuit works well for moderate power audio amplifiers.  For an explanation of this circuit see ``Direct coupled complementary-pair,'' 
<comment>split for double ref</comment>
<pageref>03474.png[Ch 4 ][SEMI_4.html]</pageref>.
</para>

<image>03475.png<caption>Direct coupled complementary symmetry 3 w audio amplifier. After Mullard. <cite>MUL</cite></caption></image>

</section>





<section>
<sectiontitle>Oscillator circuits -- INCOMPLETE</sectiontitle>


<index>oscillator, phase shift</index>

<image>03473.png<caption>Phase shift oscillator. R<subscript>1</subscript>C<subscript>1</subscript>, R<subscript>2</subscript>C<subscript>2</subscript>, and R<subscript>3</subscript>C<subscript>3</subscript> each provide 60<superscript>o</superscript> of phase shift. </caption></image>

<para>
The phase shift oscillator of Figure<ref>03473.png above</ref> produces a sinewave output in the audio frequency range. Resistive feedback from the collector would be negative feedback due to 180<superscript>o</superscript> phasing (base to collector phase inversion). However, the three 60<superscript>o</superscript> RC phase shifters ( R<subscript>1</subscript>C<subscript>1</subscript>, R<subscript>2</subscript>C<subscript>2</subscript>, and R<subscript>3</subscript>C<subscript>3</subscript>) provide an additional 180<superscript>o</superscript> for a total of 360<superscript>o</superscript>. This in-phase feedback constitutes positive feedback. Oscillations result if transistor gain exceeds feedback network losses.
</para>


<index>Multiplier, frequency, varactor</index>
<hypertarget>varactormul[]</hypertarget>
<subsection>
<subsectiontitle>Varactor multiplier</subsectiontitle>


<para>
A Varactor or variable capacitance diode with a nonlinear capacitance vs frequency characteristic distorts the applied sinewave f1 in Figure<ref>03457.png below</ref>, generating harmonics, f3.
</para>


<image>03457.png<caption>Varactor diode, having a nonlinear capacitance vs voltage characteristic, serves in frequency multiplier.</caption></image>

<para>
The fundamental filter passes f1, blocking the harmonics from returning to the generator. The choke passes DC, and blocks radio frequencies (RF) from entering the V<subscript>bias</subscript> supply. The harmonic filter passes the desired harmonic, say the 3rd, to the output, f3. The capacitor at the bottom of the inductor is a large value, low reactance, to block DC but ground  the inductor for RF. The varicap diode in parallel with the indctor constitutes a parallel resonant network. It is tuned to the desired harmonic. Note that the reverse bias, V<subscript>bias</subscript>, is fixed.
</para>

<para>
The varicap multiplier is primarily used to generate microwave signals which cannot be directly produced by oscillators. The lumped circuit representation in Figure<ref>03457.png above</ref> is actually stripline or waveguide sections. Frequenies up to hundreds of gHz may be produced by varactor multipliers.
</para>

</subsection>

</section>





<section>
<sectiontitle>Phase-locked loops -- PENDING</sectiontitle>

<para>

</para>

</section>






<section>
<sectiontitle>Radio circuits -- INCOMPLETE</sectiontitle>

<para>

</para>

<index>Crystal radio</index>
<index>Radio, crystal</index>

<image>03442.png<caption>(a) Crystal radio. (b) Modulated RF at antenna. (c) Rectified RF at diode cathode, without C2 filter capacitor. (d) Demodualted audio to headphones.</caption></image>

<hypertarget>CrystalRadio[]</hypertarget>

<para>
An antenna  ground system, tank circuit, peak detector, and headphones are the  the main components of a <italic>crystal radio</italic>. See  Figure<ref>03442.png above</ref> (a). The antenna absorbs transimtted radio signals (b) which flow to ground via the other components. The combination of C1 and L1 comprise a resonant circuit, refered to as a <italic>tank circuit</italic>. Its purpose is to select one out of many available radios signals. The variable capacitor C1 allows for <italic>tuning</italic> to the various signals.  The diode passes the positive half cycles of the RF, removing the negative half cycles (c). C2 is sized to filter the radio frequencies from the RF  envelope (c), passing audio frequencies (d) to the headset. Note that no power supply is required for a crystal radio. A germanium diode, which has a lower forward voltage drop  provides greater sensitvity than a silicon diode.
</para>

<para>
While 2000<OMEGA> magnetic headphones are shown above, a ceramic earphone, sometimes called a crystal earphone, is more sensitive. The ceramic earphone is desirable for all but the strongest radio signals
</para>


<label>TRone</label>
<para>
The circuit in Figure<ref>03492.png below</ref> produces a stronger output than the crystal detector. Since the transistor is not biased in the linear region (no base bias resistor), it only conducts for positive half cycles of RF input, detecting the audio modulation. An advantage of a transistor detector is amplification in addition to detection. This more powerful circuit can readily drive 2000<OMEGA> magnetic headphones. Note the transistor is a germanuim PNP device. This is probably more sensitive, due to the lower 0.2V V<subscript>BE</subscript>, compared with silicon. However, a silicon device should still work. Reverse battery polarity for NPN silicon devices.
</para>

<image>03492.png<caption>TR One, one transistor radio. No-bias-resistor causes operation as a detector. After Stoner, Figure 4.4A. <cite>DLS</cite></caption></image>

<para>
The 2000<OMEGA> headphones are no longer a widely available item. However, the low impedance earbuds commonly used with portable audio equipment may be substituted when paired with a suitable audio transformer. See Volume 6 Experiments, AC Circuits, Sensitive audio detector for details.
</para>

<label>TRtwo</label>
<para>
The circuit in Figure<ref>03493.png below</ref> adds an audio amplifier to the crystal detector for greater headphone volume. The original circuit used a germanium diode and transistor. <cite>DLS</cite> A schottky diode may be substituted for the germanium diode. A silicon transistor may be used if the base-bias resistor is changed according to the table.
</para>

<image>03493.png<caption>Crystal radio with one transistor audio amplifer, base-bias. After Stoner, Figure 4.3A. <cite>DLS</cite></caption></image>

<para>
For more crystal radio circuits, simple one-transistor radios, and more advanced low transistor count radios, see Wenzel <cite>CW1</cite>
</para>

<label>RegencyTr1</label>
<tex>
<image>03454.png<caption>Regency TR1: First mass produced transistor radio, 1954.</caption></image>
</tex>

<htmlo>
<image>03453.png<caption>Regency TR1: First mass produced transistor radio, 1954.</caption></image>
</htmlo>


<para>
The circuit in Figure<ref>03476.png below</ref> is an integrated circuit AM radio containing all the active radio frequency circuitry within a single IC. All capacitors and inductors, along with a few resistors, are external to the IC. The 370 Pf variable capacitor tunes the desired  RF signal. The 320 pF variable capacitor tunes the local oscillator 455 KHz above the RF input signal. The RF signal and local oscillator frequencies mix producing the sun and difference of the two at pin 15. The external 455 KHz ceramic filter between pins 15 and 12, selects the 455 KHz difference frequency. Most of the amplification is in the intermediate frequency (IF) amplifier between pins 12 and 7. A diode at pin 7 recovers audio from the IF. Some automatic gain control (AGC) is recovered and filtered to DC and fed back into pin 9. 
</para>

<image>03476.png<caption>IC radio, After Signetics <cite>SIG</cite></caption></image>



<para>
Figure<ref>03477.png below</ref> shows conventional mecahnical tuning (a) of the RF input tuner and the local oscillator with varactor diode tuning (b). The meshed plates of a dual variable capacitor make for a bulky component.  It is ecconomic to replace it with varicap tuning diodes. Increasing the  reverse bias V<subscript>tune</subscript> decreases capacitance which increases frequency. V<subscript>tune</subscript> could be produced by a potentiometer.
</para>

<image>03477.png<caption>IC radio comparison of (a) mechanical tuning to (b) electronic varicap diode tuning.<cite>SIG</cite></caption></image>



<para>
Figure<ref>03480.png below</ref> shows an even lower parts count AM radio. Sony engineers have included the intermediate frequency (IF) bandpass filter within the 8-pin IC. This eliminates external IF transformers and an IF ceramic filter. L-C tuning components are still required for the radio frequency (RF) input and the local oscillator. Though, the variable capacitors could be replaced by varicap tuning diodes.
</para>

<image>03480.png<caption>Compact IC radio eliminates external IF filters. After Sony <cite>SNE</cite></caption></image>

<para>
Figure<ref>03491.png below</ref> shows a low-parts-count FM radio based on a TDA7021T integrated circuit by NXP Wireless. The bulky external IF filter transformers have been replaced by R-C filters. The resistors are integrated, the capacitors external.  This circuit has been simplified from Figure 5 in the NXP Datasheet. See Figure 5 or 8 of the datasheet for the omitted signal strength circuit. The simple tuning circuit is from the Figure 5 Test Circuit. Figure 8 has a more elaborate tuner. Datasheet Figure 8 shows a stereo FM radio with an audio amplifier for driving a speaker. <cite>NXP</cite>
</para>

<image>03491.png<caption>IC FM radio, signal strength circuit not shown.  After NXP Wireless Figure 5. <cite>NXP</cite></caption></image>

<para>
For a construction project, the simplified FM Radio in Figure<ref>03491.png above</ref> is recommended.  For the 56nH inductor, wind 8 turns of #22 AWG bare wire or magnet wire on a 0.125 inch drill bit or other mandrel. Remove the mandrel and strech to 0.6 inch length.  The tuning capacitor may be a miniature trimmer capacitor.
</para>

<para>
Figure<ref>03478.png below</ref> is an example of a common-base (CB) RF amplifier. It is a good illustration because it looks like a CB for lack of a bias network. Since there is no bias, this is a class C amplifier. The transistor conducts for less than 180<superscript>o</superscript>  of the input signal because at least 0.7 V bias would be required for 180<superscript>o</superscript> class B. The common-base configuration has higher power gain at high RF frequencies than  common-emitter. This is a power amplifier (3/4 W) as opposed to a small signal amplifier. The input and output <pi>-networks match the emitter and collector to the 50 <OMEGA> input and output coaxial terminations, respectively. The output <pi>-network also helps filter harmonics generated by the class C amplifier. Though, more sections would likely be required by modern radiated emissions standards.
</para>

<image>03478.png<caption>Class C common-base 750 mW RF power amplifier. L1 = #10 Cu wire 1/2 turn, 5/8 in. ID by 3/4 in. high.  L2 = #14 tinned Cu wire 1 1/2 turns, 1/2 in. ID by 1/3 in. spacing. After Texas Instruments <cite>TX1</cite></caption></image>


<para>
An example of a high gain common-base RF amplifier is shown in Figure<ref>03479.png below</ref>. The common-base circuit can be pushed to a higher frequency than other configurations.  This is a common base configuration because the transistor bases are grounded for AC by 1000 pF capacitors. The capacitors are necessary (unlike the class C, Figure<ref>03478.png previous</ref>) to allow the 1K<OMEGA>-4K<OMEGA> voltage divider to bias the transistor base for class A operation. The 500<OMEGA> resistors are emitter bias resistors. They stablize the collector current. The 850<OMEGA> resistors are collector DC loads. The three stage amplifier provides an overall gain of 38 dB at 100 MHz with a 9 MHz bandwidth.
</para>


<image>03479.png<caption>Class A common-base small-signal high gain amplifier. After Texas Instruments <cite>TX2</cite></caption></image>


<label>CASCODEA</label>


<para>
A cascode amplifier has a wide bandwdth like a common-base amplifier and a moderately high input impedance like a common emitter arrangement.  The biasing for this cascode amplifier  (Figure<ref>03503.png below</ref>) is worked out in an example problem  <pageref>CASCODEB[Ch 4 ][SEMI_4.html]</pageref>.
</para>

<image>03503.png<caption>Class A cascode small-signal high gain amplifier.</caption></image>

<para>
This circuit (Figure<ref>03503.png above</ref>) is simulated in the ``Cascode'' section of the BJT chapter <pageref>CASCODES[Ch 4 ][SEMI_4.html]</pageref>. Use RF or microwave transistors for best high frequency response.
</para>


<label>PinTR</label>
<image>03464.png<caption>PIN diode T/R switch disconnects receiver from antenna during transmit.</caption></image>


<label>Pinant</label>
<image>03465.png<caption>PIN diode antenna  switch for direction finder receiver.</caption></image>


<label>Pinatt</label>
<image>03466.png<caption>PIN diode attenuator: PIN diodes function as voltage variable resistors. After Lin <cite>LCC</cite>.</caption></image>


<para>
The PIN diodes are arranged in a <pi>-attenuator network. The anti-series diodes cancel some harmonic distortion compared with a single series diode. The fixed 1.25 V supply forward biases the parallel diodes, which not only conducting DC current from ground via the resistors, but also, conduct RF to ground through the diodes' capacitors. The control voltage V<subscript>control</subscript>, increases current through the parallel diodes as it increases. This decreases the resistance and attenuation, passing more RF from input to output. Attenuation is about 3 dB at V<subscript>control</subscript>= 5 V. Attenuation is 40 dB at V<subscript>control</subscript>= 1 V with flat frequency response to 2 gHz. At V<subscript>control</subscript>= 0.5 V, attenuation is 80 dB at 10 MHz. However, the frequency response varies too much to use. <cite>LCC</cite>
</para>


</section>





<section>
<sectiontitle>Computational circuits</sectiontitle>

<para>
When someone mentions the word "computer," a digital device is what usually comes to mind.  Digital circuits represent numerical quantities in <italic>binary</italic> format: patterns of 1's and 0's represented by a multitude of transistor circuits operating in saturated or cutoff states.  However, analog circuitry may also be used to represent numerical quantities and perform mathematical calculations, by using variable voltage signals instead of discrete on/off states.
</para>

<para>
Here is a simple example of binary (digital) representation versus analog representation of the number "twenty-five:"
</para>

<image>03333.png</image> 

<para>

</para>

<bigspace>

<image>03334.png</image> 

<para>
Digital circuits are very different from circuits built on analog principles.  Digital computational circuits can be incredibly complex, and calculations must often be performed in sequential "steps" to obtain a final answer, much as a human being would perform arithmetical calculations in steps with pencil and paper.  Analog computational circuits, on the other hand, are quite simple in comparison, and perform their calculations in continuous, real-time fashion.  There is a disadvantage to using analog circuitry to represent numbers, though: imprecision.  The digital circuit shown above is representing the number twenty-five, precisely.  The analog circuit shown above may or may not be exactly calibrated to 25.000 volts, but is subject to "drift" and error.
</para>

<para>
In applications where precision is not critical, analog computational circuits are very practical and elegant.  Shown here are a few op-amp circuits for performing analog computation:
</para>

<image>03335.png</image> 

<para>

</para>

<bigspace>

<image>03336.png</image> 

<para>

</para>

<bigspace>

<image>03337.png</image> 

<para>

</para>

<bigspace>

<image>03338.png</image> 

<para>

</para>

<bigspace>

<image>03342.png</image> 

<para>

</para>

<bigspace>

<image>03340.png</image> 

<para>

</para>

<bigspace>

<image>03339.png</image> 

<para>
Each of these circuits may be used in modular fashion to create a circuit capable of multiple calculations.  For instance, suppose that we needed to subtract a certain fraction of one variable from another variable.  By combining a divide-by-constant circuit with a subtractor circuit, we could obtain the required function:
</para>

<image>03341.png</image> 

<index>Calculus</index>
<index>Integration, calculus</index>
<index>Differentiation, calculus</index>

<para>
Devices called <italic>analog computers</italic> used to be common in universities and engineering shops, where dozens of op-amp circuits could be "patched" together with removable jumper wires to model mathematical statements, usually for the purpose of simulating some physical process whose underlying equations were known.  Digital computers have made analog computers all but obsolete, but analog computational circuitry cannot be beaten by digital in terms of sheer elegance and economy of necessary components.
</para>

<para>
Analog computational circuitry excels at performing the calculus operations <italic>integration</italic> and <italic>differentiation</italic> with respect to time, by using capacitors in an op-amp feedback loop.  To fully understand these circuits' operation and applications, though, we must first grasp the meaning of these fundamental calculus concepts.  Fortunately, the application of op-amp circuits to real-world problems involving calculus serves as an excellent means to teach basic calculus.  In the words of John I. Smith, taken from his outstanding textbook, <italic>Modern Operational Circuit Design</italic>:
</para>

<quotation>

<para>
<italic>"A note of encouragement is offered to certain readers: integral calculus is one of the mathematical disciplines that operational [amplifier] circuitry exploits and, in the process, rather demolishes as a barrier to understanding."</italic> (pg. 4)
</para>

</quotation>

<para>
Mr. Smith's sentiments on the pedagogical value of analog circuitry as a learning tool for mathematics are not unique.  Consider the opinion of engineer George Fox Lang, in an article he wrote for the August 2000 issue of the journal <italic>Sound and Vibration</italic>, entitled, "Analog was <underline>not</underline> a Computer Trademark!":
</para>

<quotation>

<para>
<italic>"Creating a real physical entity (a circuit) governed by a particular set of equations and interacting with it provides unique insight into those mathematical statements.  There is no better way to develop a "gut feel" for the interplay between physics and mathematics than to experience such an interaction.  The analog computer was a powerful interdisciplinary teaching tool; its obsolescence is mourned by many educators in a variety of fields."</italic> (pg. 23)
</para>

</quotation>

<para>
Differentiation is the first operation typically learned by beginning calculus students.  Simply put, differentiation is determining the instantaneous rate-of-change of one variable as it relates to another.  In analog differentiator circuits, the independent variable is time, and so the rates of change we're dealing with are rates of change for an electronic signal (voltage or current) with respect to time. 
</para>

<para>
Suppose we were to measure the position of a car, traveling in a direct path (no turns), from its starting point.  Let us call this measurement, <italic>x</italic>.  If the car moves at a rate such that its distance from "start" increases steadily over time, its position will plot on a graph as a <italic>linear</italic> function (straight line):
</para>

<image>03343.png</image> 

<index>Derivative, calculus</index>

<para>
If we were to calculate the <italic>derivative</italic> of the car's position with respect to time (that is, determine the rate-of-change of the car's position with respect to time), we would arrive at a quantity representing the car's velocity.  The differentiation function is represented by the fractional notation <italic>d/d</italic>, so when differentiating position (<italic>x</italic>) with respect to time (<italic>t</italic>), we denote the result (the derivative) as <italic>dx/dt</italic>:
</para>

<image>03344.png</image> 

<para>
For a linear graph of <italic>x</italic> over time, the derivate of position (<italic>dx/dt</italic>), otherwise and more commonly known as <italic>velocity</italic>, will be a flat line, unchanging in value.  The derivative of a mathematical function may be graphically understood as its <italic>slope</italic> when plotted on a graph, and here we can see that the position (<italic>x</italic>) graph has a constant slope, which means that its derivative (<italic>dx/dt</italic>) must be constant over time.
</para>

<para>
Now, suppose the distance traveled by the car increased exponentially over time: that is, it began its travel in slow movements, but covered more additional distance with each passing period in time.  We would then see that the derivative of position (<italic>dx/dt</italic>), otherwise known as velocity (<italic>v</italic>), would not be constant over time, but would increase:
</para>

<image>03345.png</image> 

<para>
The height of points on the velocity graph correspond to the rates-of-change, or slope, of points at corresponding times on the position graph:
</para>

<image>03346.png</image> 

<para>
What does this have to do with analog electronic circuits?  Well, if we were to have an analog voltage signal represent the car's position (think of a huge potentiometer whose wiper was attached to the car, generating a voltage proportional to the car's position), we could connect a differentiator circuit to this signal and have the circuit continuously <italic>calculate</italic> the car's velocity, displaying the result via a voltmeter connected to the differentiator circuit's output:
</para>

<image>03347.png</image> 

<para>
Recall from the last chapter that a differentiator circuit outputs a voltage proportional to the input voltage's <italic>rate-of-change over time</italic> (<italic>d/dt</italic>).  Thus, if the input voltage is changing over time at a constant <italic>rate</italic>, the output voltage will be at a constant value.  If the car moves in such a way that its elapsed distance over time builds up at a steady rate, then that means the car is traveling at a constant velocity, and the differentiator circuit will output a constant voltage proportional to that velocity.  If the car's elapsed distance over time changes in a non-steady manner, the differentiator circuit's output will likewise be non-steady, but always at a level representative of the input's rate-of-change over time.
</para>

<para>
Note that the voltmeter registering velocity (at the output of the differentiator circuit) is connected in "reverse" polarity to the output of the op-amp.  This is because the differentiator circuit shown is <italic>inverting</italic>: outputting a negative voltage for a positive input voltage rate-of-change.  If we wish to have the voltmeter register a positive value for velocity, it will have to be connected to the op-amp as shown.  As impractical as it may be to connect a giant potentiometer to a moving object such as an automobile, the concept should be clear: by electronically performing the calculus function of differentiation on a signal representing position, we obtain a signal representing velocity.
</para>

<para>
Beginning calculus students learn symbolic techniques for differentiation.  However, this requires that the equation describing the original graph be known.  For example, calculus students learn how to take a function such as <italic>y = 3x</italic> and find its derivative with respect to <italic>x</italic> (<italic>d/dx</italic>), <italic>3</italic>, simply by manipulating the equation.  We may verify the accuracy of this manipulation by comparing the graphs of the two functions:
</para>

<image>03353.png</image> 

<para>
Nonlinear functions such as <italic>y = 3x<superscript>2</superscript></italic> may also be differentiated by symbolic means.  In this case, the derivative of <italic>y = 3x<superscript>2</superscript></italic> with respect to <italic>x</italic> is <italic>6x</italic>:
</para>

<image>03354.png</image> 

<para>
In real life, though, we often cannot describe the behavior of any physical event by a simple equation like <italic>y = 3x</italic>, and so symbolic differentiation of the type learned by calculus students may be impossible to apply to a physical measurement.  If someone wished to determine the derivative of our hypothetical car's position (<italic>dx/dt</italic> = velocity) by symbolic means, they would first have to obtain an equation describing the car's position over time, based on position measurements taken from a real experiment -- a nearly impossible task unless the car is operated under carefully controlled conditions leading to a very simple position graph.  However, an analog differentiator circuit, by exploiting the behavior of a capacitor with respect to voltage, current, and time <italic>i = C(dv/dt)</italic>, naturally differentiates any real signal in relation to time, and would be able to output a signal corresponding to instantaneous velocity (<italic>dx/dt</italic>) at any moment.  By logging the car's position signal along with the differentiator's output signal using a chart recorder or other data acquisition device, both graphs would naturally present themselves for inspection and analysis.
</para>

<para>
We may take the principle of differentiation one step further by applying it to the velocity signal using another differentiator circuit.  In other words, use it to calculate the rate-of-change of velocity, which we know is the rate-of-change of position.  What practical measure would we arrive at if we did this?  Think of this in terms of the units we use to measure position and velocity.  If we were to measure the car's position from its starting point in miles, then we would probably express its velocity in units of miles <italic>per hour</italic> (<italic>dx/dt</italic>).  If we were to differentiate the velocity (measured in miles per hour) with respect to time, we would end up with a unit of miles per hour <italic>per hour</italic>.  Introductory physics classes teach students about the behavior of falling objects, measuring position in <italic>meters</italic>, velocity in <italic>meters per second</italic>, and change in velocity over time in <italic>meters per second, per second</italic>.  This final measure is called <italic>acceleration</italic>: the rate of change of velocity over time:
</para>

<image>03348.png</image> 

<para>
The expression <italic>d<superscript>2</superscript>x/dt<superscript>2</superscript></italic> is called the <italic>second derivative</italic> of position (<italic>x</italic>) with regard to time (<italic>t</italic>).  If we were to connect a second differentiator circuit to the output of the first, the last voltmeter would register acceleration:
</para>

<image>03349.png</image> 

<para>
Deriving velocity from position, and acceleration from velocity, we see the principle of differentiation very clearly illustrated.  These are not the only physical measurements related to each other in this way, but they are, perhaps, the most common.  Another example of calculus in action is the relationship between liquid flow (<italic>q</italic>) and liquid volume (<italic>v</italic>) accumulated in a vessel over time:
</para>

<image>03357.png</image> 

<para>
A "Level Transmitter" device mounted on a water storage tank provides a signal directly proportional to water level in the tank, which -- if the tank is of constant cross-sectional area throughout its height -- directly equates water volume stored.  If we were to take this volume signal and differentiate it with respect to time (<italic>dv/dt</italic>), we would obtain a signal proportional to the water <italic>flow rate</italic> through the pipe carrying water to the tank.  A differentiator circuit connected in such a way as to receive this volume signal would produce an output signal proportional to flow, possibly substituting for a flow-measurement device ("Flow Transmitter") installed in the pipe.
</para>

<para>
Returning to the car experiment, suppose that our hypothetical car were equipped with a tachogenerator on one of the wheels, producing a voltage signal directly proportional to velocity.  We could differentiate the signal to obtain acceleration with one circuit, like this:
</para>

<image>03350.png</image> 

<para>
By its very nature, the tachogenerator differentiates the car's position with respect to time, generating a voltage proportional to how rapidly the wheel's angular position changes over time.  This provides us with a raw signal already representative of velocity, with only a single step of differentiation needed to obtain an acceleration signal.  A tachogenerator measuring velocity, of course, is a far more practical example of automobile instrumentation than a giant potentiometer measuring its physical position, but what we gain in practicality we lose in position measurement.  No matter how many times we differentiate, we can never infer the car's position from a velocity signal.  If the process of differentiation brought us from position to velocity to acceleration, then somehow we need to perform the "reverse" process of differentiation to go from velocity to position.  Such a mathematical process does exist, and it is called <italic>integration</italic>.  The "integrator" circuit may be used to perform this function of integration with respect to time:
</para>

<image>03351.png</image> 

<para>
Recall from the last chapter that an integrator circuit outputs a voltage whose rate-of-change over time is proportional to the input voltage's magnitude.  Thus, given a constant input voltage, the output voltage will <italic>change</italic> at a constant <italic>rate</italic>.  If the car travels at a constant velocity (constant voltage input to the integrator circuit from the tachogenerator), then its distance traveled will increase steadily as time progresses, and the integrator will output a steadily changing voltage proportional to that distance.  If the car's velocity is not constant, then neither will the rate-of-change over time be of the integrator circuit's output, but the output voltage <italic>will</italic> faithfully represent the amount of distance traveled by the car at any given point in time.
</para>

<para>
The symbol for integration looks something like a very narrow, cursive letter "S" (<integral>).  The equation utilizing this symbol (<integral><italic>v dt = x</italic>) tells us that we are integrating velocity (<italic>v</italic>) with respect to time (<italic>dt</italic>), and obtaining position (<italic>x</italic>) as a result.
</para>

<para>
So, we may express three measures of the car's motion (position, velocity, and acceleration) in terms of velocity (<italic>v</italic>) just as easily as we could in terms of position (<italic>x</italic>):
</para>

<image>03352.png</image> 

<para>
If we had an accelerometer attached to the car, generating a signal proportional to the rate of acceleration or deceleration, we could (hypothetically) obtain a velocity signal with one step of integration, and a position signal with a second step of integration:
</para>

<image>03355.png</image> 

<para>
Thus, all three measures of the car's motion (position, velocity, and acceleration) may be expressed in terms of acceleration:
</para>

<image>03356.png</image> 

<para>
As you might have suspected, the process of integration may be illustrated in, and applied to, other physical systems as well.  Take for example the water storage tank and flow example shown earlier.  If flow rate is the <italic>derivative</italic> of tank volume with respect to time (<italic>q = dv/dt</italic>), then we could also say that volume is the <italic>integral</italic> of flow rate with respect to time:
</para>

<image>03358.png</image> 

<para>
If we were to use a "Flow Transmitter" device to measure water flow, then by time-integration we could calculate the volume of water accumulated in the tank over time.  Although it is theoretically possible to use a capacitive op-amp integrator circuit to derive a volume signal from a flow signal, mechanical and digital electronic "integrator" devices are more suitable for integration over long periods of time, and find frequent use in the water treatment and distribution industries.
</para>

<para>
Just as there are symbolic techniques for differentiation, there are also symbolic techniques for integration, although they tend to be more complex and varied.  Applying symbolic integration to a real-world problem like the acceleration of a car, though, is still contingent on the availability of an equation precisely describing the measured signal -- often a difficult or impossible thing to derive from measured data.  However, electronic integrator circuits perform this mathematical function continuously, in real time, and for <italic>any</italic> input signal profile, thus providing a powerful tool for scientists and engineers.
</para>

<para>
Having said this, there are caveats to the using calculus techniques to derive one type of measurement from another.  Differentiation has the undesirable tendency of amplifying "noise" found in the measured variable, since the noise will typically appear as frequencies much higher than the measured variable, and high frequencies by their very nature possess high rates-of-change over time.  
</para>

<para>
To illustrate this problem, suppose we were deriving a measurement of car acceleration from the velocity signal obtained from a tachogenerator with worn brushes or commutator bars.  Points of poor contact between brush and commutator will produce momentary "dips" in the tachogenerator's output voltage, and the differentiator circuit connected to it will interpret these dips as very rapid changes in velocity.  For a car moving at constant speed -- neither accelerating nor decelerating -- the acceleration signal should be 0 volts, but "noise" in the velocity signal caused by a faulty tachogenerator will cause the differentiated (acceleration) signal to contain "spikes," falsely indicating brief periods of high acceleration and deceleration:
</para>

<image>03359.png</image> 

<para>
Noise voltage present in a signal to be differentiated need not be of significant amplitude to cause trouble: all that is required is that the noise profile have fast rise or fall times.  In other words, any electrical noise with a high <italic>dv/dt</italic> component will be problematic when differentiated, even if it is of low amplitude.
</para>

<index>Artifact, measurement</index>

<para>
It should be noted that this problem is not an artifact (an idiosyncratic error of the measuring/computing instrument) of the analog circuitry; rather, it is inherent to the process of differentiation.  No matter how we might perform the differentiation, "noise" in the velocity signal will invariably corrupt the output signal.  Of course, if we were differentiating a signal twice, as we did to obtain both velocity and acceleration from a position signal, the amplified noise signal output by the first differentiator circuit will be amplified again by the next differentiator, thus compounding the problem:
</para>

<image>03362.png</image> 

<para>
Integration does not suffer from this problem, because integrators act as low-pass filters, attenuating high-frequency input signals.  In effect, all the high and low peaks resulting from noise on the signal become averaged together over time, for a diminished net result.  One might suppose, then, that we could avoid all trouble by measuring acceleration directly and integrating that signal to obtain velocity; in effect, calculating in "reverse" from the way shown previously:
</para>

<image>03360.png</image> 

<para>
Unfortunately, following this methodology might lead us into other difficulties, one being a common artifact of analog integrator circuits known as <italic>drift</italic>.  All op-amps have some amount of input bias current, and this current will tend to cause a charge to accumulate on the capacitor in addition to whatever charge accumulates as a result of the input voltage signal.  In other words, all analog integrator circuits suffer from the tendency of having their output voltage "drift" or "creep" even when there is absolutely no voltage input, accumulating error over time as a result.  Also, imperfect capacitors will tend to lose their stored charge over time due to internal resistance, resulting in "drift" toward zero output voltage.  These problems <italic>are</italic> artifacts of the analog circuitry, and may be eliminated through the use of digital computation.
</para>

<para>
Circuit artifacts notwithstanding, possible errors may result from the integration of one measurement (such as acceleration) to obtain another (such as velocity) simply because of the way integration works.  If the "zero" calibration point of the raw signal sensor is not perfect, it will output a slight positive or negative signal even in conditions when it should output nothing.  Consider a car with an imperfectly calibrated accelerometer, or one that is influenced by gravity to detect a slight acceleration unrelated to car motion.  Even with a perfect integrating computer, this sensor error will cause the integrator to accumulate error, resulting in an output signal indicating a change of velocity when the car is neither accelerating nor decelerating.
</para>

<image>03361.png</image> 

<para>
As with differentiation, this error will also compound itself if the integrated signal is passed on to another integrator circuit, since the "drifting" output of the first integrator will very soon present a significant positive or negative signal for the next integrator to integrate.  Therefore, care should be taken when integrating sensor signals: if the "zero" adjustment of the sensor is not <italic>perfect</italic>, the integrated result will drift, even if the integrator circuit itself is perfect.  
</para>

<para>
So far, the only integration errors discussed have been artificial in nature: originating from imperfections in the circuitry and sensors.  There also exists a source of error inherent to the process of integration itself, and that is the <italic>unknown constant</italic> problem.  Beginning calculus students learn that whenever a function is integrated, there exists an unknown constant (usually represented as the variable <italic>C</italic>) added to the result.  This uncertainty is easiest to understand by comparing the derivatives of several functions differing only by the addition of a constant value:
</para>

<image>03373.png</image> 

<para>
Note how each of the parabolic curves (<italic>y = 3x<superscript>2</superscript> + C</italic>) share the exact same shape, differing from each other in regard to their vertical offset.  However, they all share the exact same derivative function: <italic>y' = (d/dx)( 3x<superscript>2</superscript> + C) = 6x</italic>, because they all share identical <italic>rates of change</italic> (slopes) at corresponding points along the <italic>x</italic> axis.  While this seems quite natural and expected from the perspective of differentiation (different equations sharing a common derivative), it usually strikes beginning students as odd from the perspective of integration, because there are multiple correct answers for the integral of a function.  Going from an equation to its derivative, there is only one answer, but going from that derivative back to the original equation leads us to a range of correct solutions.  In honor of this uncertainty, the symbolic function of integration is called the <italic>indefinite integral</italic>.
</para>

<para>
When an integrator performs live signal integration with respect to time, the output is the sum of the integrated input signal over time <italic>and</italic> an initial value of arbitrary magnitude, representing the integrator's pre-existing output at the time integration began.  For example, if I integrate the velocity of a car driving in a straight line away from a city, calculating that a constant velocity of 50 miles per hour over a time of 2 hours will produce a distance (<integral><italic>v dt</italic>) of 100 miles, that does not necessarily mean the car will be 100 miles away from the city after 2 hours.  All it tells us is that the car will be 100 miles <italic>further</italic> away from the city after 2 hours of driving.  The actual distance from the city after 2 hours of driving depends on how far the car was from the city when integration began.  If we do not know this initial value for distance, we cannot determine the car's exact distance from the city after 2 hours of driving.
</para>

<para>
This same problem appears when we integrate acceleration with respect to time to obtain velocity:
</para>

<image>03374.png</image> 

<para>
In this integrator system, the calculated velocity of the car will only be valid if the integrator circuit is <italic>initialized</italic> to an output value of zero when the car is stationary (<italic>v</italic> = 0).  Otherwise, the integrator could very well be outputting a non-zero signal for velocity (<italic>v<subscript>0</subscript></italic>) when the car is stationary, for the accelerometer cannot tell the difference between a stationary state (0 miles per hour) and a state of constant velocity (say, 60 miles per hour, unchanging).  This uncertainty in integrator output is inherent to the process of integration, and not an artifact of the circuitry or of the sensor.
</para>

<para>
In summary, if maximum accuracy is desired for any physical measurement, it is best to measure that variable directly rather than compute it from other measurements.  This is not to say that computation is worthless.  Quite to the contrary, often it is the only practical means of obtaining a desired measurement.  However, the limits of computation must be understood and respected in order that precise measurements be obtained.
</para>

</section>





<section>
<sectiontitle>Measurement circuits -- INCOMPLETE</sectiontitle>
<comment>optical encoder?</comment>



<index>Photodiode amplifier</index>
<para>
Figure<ref>03455.png below</ref> shows a photodiode amplifier for measuring low levels of light. Best sensitivity and bandwidth are obtained with a <italic>transimpedance amplifier</italic>, a current to voltage amplifier, instead of a conventional operational amplifier. The photodiode remains reverse biased for lowest diode capacitance, hence wider bandwidth, and lower noise. The feedback resistor sets the ``gain'', the current to voltage amplification factor. Typical values are 1 to 10 Meg <OMEGA>. Higher values yield higher gain. A capacitor of a few pF may be required to compensate for photodiode capacitance, and prevents instability at the high gain. The wiring at the summing node must be as compact as possible. This point is sensitive to circuit board contaminants and must be thoroughly cleaned. The most sensitive amplifiers contain the photodiode and amplifier within a hybrid microcircuit package or single die.
</para>

<image>03455.png<caption>Photodiode amplifier.</caption></image>

</section>





<section>
<sectiontitle>Control circuits -- PENDING</sectiontitle>

<para>

</para>

</section>





<section>
<sectiontitle*>Contributors</sectiontitle*>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Warren Young</bold> (August 2002): Initial idea and text for "Power supply circuits" section.  Paragraphs modified by Tony Kuphaldt (changes in vocabulary, plus inclusion of additional concepts).
</para>

<para>
<bold>Bill Marsden</bold> (April 2008) Author of ``ElectroStatic Discharge'' section. 
</para>


</section>


<thebibliography>

<bibitem>[LCC]Chin-Leong Lim, Lim Yeam Ch'ng, Goh Swee Chye, ``Diode Quad Is Foundation For PIN Diode Attenuator,'' Microwaves & RF, May 2006, at <url>http://www.mwrf.com/Articles/Index.cfm?Ad=1&ArticleID=12523[http://www.mwrf.com/Articles/Index.cfm?Ad=1&ArticleID=12523]</url></bibitem> 

<bibitem>[MUL]``Transistor Audio and Radio Circuits,'' TP1399, 2nd Ed., pp 39-40,  Mullard, London, 1972.</bibitem> 

<bibitem>[SIG]``AM Receiver Circuit TCA440,'' Analog Data Manual, 2nd Ed., pp 14-20 to 14-26, Signetics, 1982.</bibitem> 

<bibitem>[SNE]Sony ``8-pin Single-Chip AM Radio with Builot-in Power Amplifier,'' pp 5, at <url>http://www.datasheetcatalog.com/datasheets_pdf/C/X/A/1/CXA1600.shtml[http://www.datasheetcatalog.com/datasheets_pdf/C/X/A/1/CXA1600.shtml]</url> </bibitem>

<bibitem>[TX1]Texas Instruments ``Solid State Communications,'' pp 318, McGraw-Hill, N.Y., 1966.</bibitem> 

<bibitem>[TX2]Texas Instruments ``Transistor Circuit Design,'' pp 290, McGraw-Hill, N.Y., 1963.</bibitem> 

<bibitem>[NXP] ``Datasheet TDA7021T'', STR-NXP Wireless, at <url>http://www.nxp.com/acrobat_download/datasheets/TDA7021T_CNV_2.pdf[http://www.nxp.com/<allowbreak>acrobat_download/<allowbreak>datasheets/TDA7021T_CNV_2.pdf]</url></bibitem> 


<bibitem>[DLS]Donald L. Stoner, L. A. Earnshaw, ``The Transistor Radio Handbook,'' pp 76, Editors and Eenineers, Sumerland, CA, 1963.</bibitem> 

<bibitem>[CW1],Charles Wenzel, ``Crystal Radio Circuits,'' at <url>http://www.techlib.com/electronics/crystal.html[http://www.techlib.com/e<allowbreak>lectronics/<allowbreak>crystal.html]</url>.</bibitem> 

</thebibliography>

</chapter>

<pagebreak>

