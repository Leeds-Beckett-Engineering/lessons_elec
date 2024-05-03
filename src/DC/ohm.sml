
<chapter>
<chaptertitle>OHM's LAW </chaptertitle>

<quotation>

<para>
<italic>"One microampere flowing in one ohm causes a one microvolt potential drop."</italic>
</para>

<para>
<bold>Georg Simon Ohm</bold>
</para>

</quotation>


<section>
<sectiontitle>How voltage, current, and resistance relate</sectiontitle>

<index>Current</index>

<para>
An electric circuit is formed when a conductive path is created to allow free electrons to continuously move.  This continuous movement of free electrons through the conductors of a circuit is called a <italic>current</italic>, and it is often referred to in terms of "flow," just like the flow of a liquid through a hollow pipe. 
</para>

<index>Voltage</index>
<index>Voltage, potential</index>

<para>
The force motivating electrons to "flow" in a circuit is called <italic>voltage</italic>.  Voltage is a specific measure of potential energy that is always relative between two points.  When we speak of a certain amount of voltage being present in a circuit, we are referring to the measurement of how much <italic>potential</italic> energy exists to move electrons from one particular point in that circuit to another particular point.  Without reference to <italic>two</italic> particular points, the term "voltage" has no meaning.
</para>

<index>Resistance</index>

<para>
Free electrons tend to move through conductors with some degree of friction, or opposition to motion.  This opposition to motion is more properly called <italic>resistance</italic>.  The amount of current in a circuit depends on the amount of voltage available to motivate the electrons, and also the amount of resistance in the circuit to oppose electron flow.  Just like voltage, resistance is a quantity relative between two points.  For this reason, the quantities of voltage and resistance are often stated as being "between" or "across" two points in a circuit.
</para>

<para>
To be able to make meaningful statements about these quantities in circuits, we need to be able to describe their quantities in the same way that we might quantify mass, temperature, volume, length, or any other kind of physical quantity.  For mass we might use the units of "kilogram" or "gram."  For temperature we might use degrees Fahrenheit or degrees Celsius.  Here are the standard units of measurement for electrical current, voltage, and resistance:
</para>

<image>10001.png</image>

<para>
The "symbol" given for each quantity is the standard alphabetical letter used to represent that quantity in an algebraic equation.  Standardized letters like these are common in the disciplines of physics and engineering, and are internationally recognized.  The "unit abbreviation" for each quantity represents the alphabetical symbol used as a shorthand notation for its particular unit of measurement.  And, yes, that strange-looking "horseshoe" symbol is the capital Greek letter <OMEGA>, just a character in a <italic>foreign</italic> alphabet (apologies to any Greek readers here).
</para>

<index>Ampere (Amp)</index>
<index>Unit, ampere (amp)</index>
<index>Volt</index>
<index>Unit, volt</index>
<index>Ohm</index>
<index>Unit, ohm</index>
<index>I, symbol for current</index>
<index>E, symbol for voltage</index>
<index>V, symbol for voltage</index>
<index>R, symbol for resistance</index>

<para>
Each unit of measurement is named after a famous experimenter in electricity: The <italic>amp</italic> after the Frenchman Andre M. Ampere, the <italic>volt</italic> after the Italian Alessandro Volta, and the <italic>ohm</italic> after the German Georg Simon Ohm.
</para>

<index>Electromotive force</index>
<index>Force, electromotive</index>

<para>
The mathematical symbol for each quantity is meaningful as well.  The "R" for resistance and the "V" for voltage are both self-explanatory, whereas "I" for current seems a bit weird.  The "I" is thought to have been meant to represent "Intensity" (of electron flow), and the other symbol for voltage, "E," stands for "Electromotive force."  From what research I've been able to do, there seems to be some dispute over the meaning of "I."  The symbols "E" and "V" are  interchangeable for the most part, although some texts reserve "E" to represent voltage across a source (such as a battery or generator) and "V" to represent voltage across anything else. 
</para>

<index>Instantaneous value</index>
<index>e, symbol for instantaneous voltage</index>
<index>v, symbol for instantaneous voltage</index>
<index>i, symbol for instantaneous current</index>

<para>
All of these symbols are expressed using capital letters, except in cases where a quantity (especially voltage or current) is described in terms of a brief period of time (called an "instantaneous" value).  For example, the voltage of a battery, which is stable over a long period of time, will be symbolized with a capital letter "E," while the voltage peak of a lightning strike at the very instant it hits a power line would most likely be symbolized with a lower-case letter "e" (or lower-case "v") to designate that value as being at a single moment in time.  This same lower-case convention holds true for current as well, the lower-case letter "i" representing current at some instant in time.  Most direct-current (DC) measurements, however, being stable over time, will be symbolized with capital letters.
</para>

<index>Coulomb</index>
<index>Unit, coulomb</index>
<index>Q, symbol for electric charge</index>
<index>Current, precise definition</index>
<index>Ampere (Amp), unit defined</index>

<para>
One foundational unit of electrical measurement, often taught in the beginnings of electronics courses but used infrequently afterwards, is the unit of the <italic>coulomb</italic>, which is a measure of electric charge proportional to the number of electrons in an imbalanced state.  One coulomb of charge is equal to 6,250,000,000,000,000,000 electrons.  The symbol for electric charge quantity is the capital letter "Q," with the unit of coulombs abbreviated by the capital letter "C."  It so happens that the unit for electron flow, the amp, is equal to 1 coulomb of electrons passing by a given point in a circuit in 1 second of time.  Cast in these terms, current is the <italic>rate of electric charge motion</italic> through a conductor.
</para>

<index>Volt, unit defined</index>
<index>Joule</index>
<index>Unit, joule</index>

<para>
As stated before, voltage is the measure of <italic>potential energy per unit charge</italic> available to motivate electrons from one point to another.  Before we can precisely define what a "volt" is, we must understand how to measure this quantity we call "potential energy."  The general metric unit for energy of any kind is the <italic>joule</italic>, equal to the amount of work performed by a force of 1 newton exerted through a motion of 1 meter (in the same direction).  In British units, this is slightly less than 3/4 pound of force exerted over a distance of 1 foot.  Put in common terms, it takes about 1 joule of energy to lift a 3/4 pound weight 1 foot off the ground, or to drag something a distance of 1 foot using a parallel pulling force of 3/4 pound.  Defined in these scientific terms, 1 volt is equal to 1 joule of electric potential energy per (divided by) 1 coulomb of charge.  Thus, a 9 volt battery releases 9 joules of energy for every coulomb of electrons moved through a circuit.
</para>

<index>Ohm's Law</index>

<para>
These units and symbols for electrical quantities will become very important to know as we begin to explore the relationships between them in circuits.  The first, and perhaps most important, relationship between current, voltage, and resistance is called Ohm's Law, discovered by Georg Simon Ohm and published in his 1827 paper, <italic>The Galvanic Circuit Investigated Mathematically</italic>.  Ohm's principal discovery was that the amount of electric current through a metal conductor in a circuit is directly proportional to the voltage impressed across it, for any given temperature.  Ohm expressed his discovery in the form of a simple equation, describing how voltage, current, and resistance interrelate:
</para>

<image>10002.png</image>

<para>
In this algebraic expression, voltage (E) is equal to current (I) multiplied by resistance (R).  Using algebra techniques, we can manipulate this equation into two variations, solving for I and for R, respectively:
</para>

<image>10003.png</image>

<para>
Let's see how these equations might work to help us analyze simple circuits:
</para>

<image>00032.png</image>

<para>
In the above circuit, there is only one source of voltage (the battery, on the left) and only one source of resistance to current (the lamp, on the right).  This makes it very easy to apply Ohm's Law.  If we know the values of any two of the three quantities (voltage, current, and resistance) in this circuit, we can use Ohm's Law to determine the third.
</para>

<para>
In this first example, we will calculate the amount of current (I) in a circuit, given values of voltage (E) and resistance (R):
</para>

<image>00033.png</image>

<para>
What is the amount of current (I) in this circuit?
</para>

<image>10004.png</image>

<para>
In this second example, we will calculate the amount of resistance (R) in a circuit, given values of voltage (E) and current (I):
</para>

<image>00034.png</image>

<para>
What is the amount of resistance (R) offered by the lamp?
</para>

<image>10005.png</image>

<para>
In the last example, we will calculate the amount of voltage supplied by a battery, given values of current (I) and resistance (R):
</para>

<image>00035.png</image>

<para>
What is the amount of voltage provided by the battery?
</para>

<image>10006.png</image>

<index>Ohm's Law "triangle"</index>

<para>
Ohm's Law is a very simple and useful tool for analyzing electric circuits.  It is used so often in the study of electricity and electronics that it needs to be committed to memory by the serious student.  For those who are not yet comfortable with algebra, there's a trick to remembering how to solve for any one quantity, given the other two.  First, arrange the letters E, I, and R in a triangle like this:
</para>

<image>00036.png</image>

<para>
If you know E and I, and wish to determine R, just eliminate R from the picture and see what's left:
</para>

<image>00037.png</image>

<para>
If you know E and R, and wish to determine I, eliminate I and see what's left:
</para>

<image>00038.png</image>

<para>
Lastly, if you know I and R, and wish to determine E, eliminate E and see what's left:
</para>

<image>00039.png</image>

<para>
Eventually, you'll have to be familiar with algebra to seriously study electricity and electronics, but this tip can make your first calculations a little easier to remember.  If you are comfortable with algebra, all you need to do is commit E=IR to memory and derive the other two formulae from that when you need them! 
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Voltage measured in <italic>volts</italic>, symbolized by the letters "E" or "V".</item>
<item>Current measured in <italic>amps</italic>, symbolized by the letter "I".</item>
<item>Resistance measured in <italic>ohms</italic>, symbolized by the letter "R".</item>
<item>Ohm's Law: E = IR ; I = E/R ; R = E/I</item>
</itemize>

</section>



<section>
<sectiontitle>An analogy for Ohm's Law</sectiontitle>

<index>Ohm's Law, water analogy</index>

<para>
Ohm's Law also makes intuitive sense if you apply it to the water-and-pipe analogy.  If we have a water pump that exerts pressure (voltage) to push water around a "circuit" (current) through a restriction (resistance), we can model how the three variables interrelate.  If the resistance to water flow stays the same and the pump pressure increases, the flow rate must also increase.
</para>

<image>10008.png</image> 

<para>
If the pressure stays the same and the resistance increases (making it more difficult for the water to flow), then the flow rate must decrease:
</para>

<image>10009.png</image>

<para>
If the flow rate were to stay the same while the resistance to flow decreased, the required pressure from the pump would necessarily decrease: 
</para>

<image>10010.png</image>

<para>
As odd as it may seem, the actual mathematical relationship between pressure, flow, and resistance is actually more complex for fluids like water than it is for electrons.  If you pursue further studies in physics, you will discover this for yourself.  Thankfully for the electronics student, the mathematics of Ohm's Law is very straightforward and simple.  
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>With resistance steady, current follows voltage (an increase in voltage means an increase in current, and vice versa).</item>
<item>With voltage steady, changes in current and resistance are opposite (an increase in current means a decrease in resistance, and vice versa).</item>
<item>With current steady, voltage follows resistance (an increase in resistance means an increase in voltage).</item>
</itemize>


</section>



<section>
<sectiontitle>Power in electric circuits</sectiontitle>

<index>Electric power</index>
<index>Power, electric</index>

<para>
In addition to voltage and current, there is another measure of free electron activity in a circuit: <italic>power</italic>.  First, we need to understand just what power is before we analyze it in any circuits.
</para>

<index>Horsepower</index>
<index>Work</index>

<para>
Power is a measure of how much work can be performed in a given amount of time.  <italic>Work</italic> is generally defined in terms of the lifting of a weight against the pull of gravity.  The heavier the weight and/or the higher it is lifted, the more work has been done.  <italic>Power</italic> is a measure of how rapidly a standard amount of work is done.
</para>

<para>
For American automobiles, engine power is rated in a unit called "horsepower," invented initially as a way for steam engine manufacturers to quantify the working ability of their machines in terms of the most common power source of their day: horses.  One horsepower is defined in British units as 550 ft-lbs of work per second of time.  The power of a car's engine won't indicate how tall of a hill it can climb or how much weight it can tow, but it will indicate how <italic>fast</italic> it can climb a specific hill or tow a specific weight.
</para>

<index>Torque</index>
<index>RPM</index>

<para>
The power of a mechanical engine is a function of both the engine's speed and its torque provided at the output shaft.  Speed of an engine's output shaft is measured in revolutions per minute, or RPM.  Torque is the amount of twisting force produced by the engine, and it is usually measured in pound-feet, or lb-ft (not to be confused with foot-pounds or ft-lbs, which is the unit for work).  Neither speed nor torque alone is a measure of an engine's power.
</para>

<para>
A 100 horsepower diesel tractor engine will turn relatively slowly, but provide great amounts of torque.  A 100 horsepower motorcycle engine will turn very fast, but provide relatively little torque.  Both will produce 100 horsepower, but at different speeds and different torques.  The equation for shaft horsepower is simple:
</para>

<image>10011.png</image>

<para>
Notice how there are only two variable terms on the right-hand side of the equation, S and T.  All the other terms on that side are constant: 2, pi, and 33,000 are all constants (they do not change in value).  The horsepower varies only with changes in speed and torque, nothing else.  We can re-write the equation to show this relationship:
</para>

<image>10012.png</image>

<para>
Because the unit of the "horsepower" doesn't coincide exactly with speed in revolutions per minute multiplied by torque in pound-feet, we can't say that horsepower <italic>equals</italic> ST.  However, they are <italic>proportional</italic> to one another.  As the mathematical product of ST changes, the value for horsepower will change by the same proportion. 
</para>

<para>
In electric circuits, power is a function of both voltage and current.  Not surprisingly, this relationship bears striking resemblance to the "proportional" horsepower formula above:
</para>

<image>10013.png</image>

<index>Watt</index>
<index>Unit, watt</index>
<index>P, symbol for power</index>

<para>
In this case, however, power (P) is exactly equal to current (I) multiplied by voltage (E), rather than merely being proportional to IE.  When using this formula, the unit of measurement for power is the <italic>watt</italic>, abbreviated with the letter "W."
</para>

<index>Voltage, precise definition</index>
<index>Current, precise definition</index>
<index>Power, precise definition</index>

<para>
It must be understood that neither voltage nor current by themselves constitute power.  Rather, power is the combination of both voltage <italic>and</italic> current in a circuit.  Remember that voltage is the specific work (or potential energy) per unit charge, while current is the rate at which electric charges move through a conductor.  Voltage (specific work) is analogous to the work done in lifting a weight against the pull of gravity.  Current (rate) is analogous to the speed at which that weight is lifted.  Together as a product (multiplication), voltage (work) and current (rate) constitute power.
</para>

<para>
Just as in the case of the diesel tractor engine and the motorcycle engine, a circuit with high voltage and low current may be dissipating the same amount of power as a circuit with low voltage and high current.  Neither the amount of voltage alone nor the amount of current alone indicates the amount of power in an electric circuit.
</para>

<para>
In an open circuit, where voltage is present between the terminals of the source and there is zero current, there is <italic>zero</italic> power dissipated, no matter how great that voltage may be.  Since P=IE and I=0 and anything multiplied by zero is zero, the power dissipated in any open circuit must be zero.  Likewise, if we were to have a short circuit constructed of a loop of superconducting wire (absolutely zero resistance), we could have a condition of current in the loop with zero voltage, and likewise no power would be dissipated.  Since P=IE and E=0 and anything multiplied by zero is zero, the power dissipated in a superconducting loop must be zero.  (We'll be exploring the topic of superconductivity in a later chapter).
</para>

<para>
Whether we measure power in the unit of "horsepower" or the unit of "watt," we're still talking about the same thing: how much work can be done in a given amount of time.  The two units are not numerically equal, but they express the same kind of thing.  In fact, European automobile manufacturers typically advertise their engine power in terms of kilowatts (kW), or thousands of watts, instead of horsepower!  These two units of power are related to each other by a simple conversion formula:
</para>

<image>10014.png</image>

<para>
So, our 100 horsepower diesel and motorcycle engines could also be rated as "74570 watt" engines, or more properly, as "74.57 kilowatt" engines.  In European engineering specifications, this rating would be the norm rather than the exception.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Power is the measure of how much work can be done in a given amount of time.</item>
<item>Mechanical power is commonly measured (in America) in "horsepower."</item>
<item>Electrical power is almost always measured in "watts," and it can be calculated by the formula P = IE.</item>
<item>Electrical power is a product of both voltage <italic>and</italic> current, not either one separately.</item>
<item>Horsepower and watts are merely two different units for describing the same kind of physical measurement, with 1 horsepower equaling 745.7 watts.</item>
</itemize>

</section>



<section>
<sectiontitle>Calculating electric power</sectiontitle>

<index>Power calculations</index>

<para>
We've seen the formula for determining the power in an electric circuit: by multiplying the voltage in "volts" by the current in "amps" we arrive at an answer in "watts."  Let's apply this to a circuit example:
</para>

<image>00040.png</image>

<para>
In the above circuit, we know we have a battery voltage of 18 volts and a lamp resistance of 3 <OMEGA>.  Using Ohm's Law to determine current, we get:
</para>

<image>10015.png</image>

<para>
Now that we know the current, we can take that value and multiply it by the voltage to determine power:
</para>

<image>10016.png</image>

<para>
Answer: the lamp is dissipating (releasing) 108 watts of power, most likely in the form of both light and heat. 
</para>

<para>
Let's try taking that same circuit and increasing the battery voltage to see what happens.  Intuition should tell us that the circuit current will increase as the voltage increases and the lamp resistance stays the same.  Likewise, the power will increase as well:
</para>

<image>00041.png</image>

<para>
Now, the battery voltage is 36 volts instead of 18 volts.  The lamp is still providing 3 <OMEGA> of electrical resistance to the flow of electrons.  The current is now:
</para>

<image>10017.png</image>

<para>
This stands to reason: if I = E/R, and we double E while R stays the same, the current should double.  Indeed, it has: we now have 12 amps of current instead of 6.  Now, what about power?
</para>

<image>10018.png</image>

<para>
Notice that the power has increased just as we might have suspected, but it increased quite a bit more than the current.  Why is this?  Because power is a function of voltage multiplied by current, and <italic>both</italic> voltage and current doubled from their previous values, the power will increase by a factor of 2 x 2, or 4.  You can check this by dividing 432 watts by 108 watts and seeing that the ratio between them is indeed 4.
</para>

<para>
Using algebra again to manipulate the formulae, we can take our original power formula and modify it for applications where we don't know both voltage and current:
</para>

<para>
If we only know voltage (E) and resistance (R):
</para>
   
<image>10019.png</image>

<para>
If we only know current (I) and resistance (R):
</para>
  
<image>10020.png</image>

<index>Joule's Law</index>

<para>
A historical note: it was James Prescott Joule, not Georg Simon Ohm, who first discovered the mathematical relationship between power dissipation and current through a resistance.  This discovery, published in 1841, followed the form of the last equation (P = I<superscript>2</superscript>R), and is properly known as Joule's Law.  However, these power equations are so commonly associated with the Ohm's Law equations relating voltage, current, and resistance (E=IR ; I=E/R ; and R=E/I) that they are frequently credited to Ohm.
</para>

<image>10021.png</image>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Power measured in <italic>watts</italic>, symbolized by the letter "W".</item>
<item>Joule's Law: P = I<superscript>2</superscript>R ; P = IE ; P = E<superscript>2</superscript>/R</item>
</itemize>

</section>




<section>
<sectiontitle>Resistors</sectiontitle>

<index>Resistor</index>

<para>
Because the relationship between voltage, current, and resistance in any circuit is so regular, we can reliably control any variable in a circuit simply by controlling the other two.  Perhaps the easiest variable in any circuit to control is its resistance.  This can be done by changing the material, size, and shape of its conductive components (remember how the thin metal filament of a lamp created more electrical resistance than a thick wire?).
</para>

<para>
Special components called <italic>resistors</italic> are made for the express purpose of creating a precise quantity of resistance for insertion into a circuit.  They are typically constructed of metal wire or carbon, and engineered to maintain a stable resistance value over a wide range of environmental conditions.  Unlike lamps, they do not produce light, but they do produce heat as electric power is dissipated by them in a working circuit.  Typically, though, the purpose of a resistor is not to produce usable heat, but simply to provide a precise quantity of electrical resistance. 
</para>

<para>
The most common schematic symbol for a resistor is a zig-zag line:
</para>

<image>00042.png</image>

<para>
Resistor values in ohms are usually shown as an adjacent number, and if several resistors are present in a circuit, they will be labeled with a unique identifier number such as R<subscript>1</subscript>, R<subscript>2</subscript>, R<subscript>3</subscript>, etc.  As you can see, resistor symbols can be shown either horizontally or vertically:
</para>

<image>00043.png</image>

<para>
Real resistors look nothing like the zig-zag symbol.  Instead, they look like small tubes or cylinders with two wires protruding for connection to a circuit.  Here is a sampling of different kinds and sizes of resistors:
</para>

<image>50008.jpg</image>

<para>
In keeping more with their physical appearance, an alternative schematic symbol for a resistor looks like a small, rectangular box:
</para>

<image>00368.png</image>

<para>
Resistors can also be shown to have varying rather than fixed resistances.  This might be for the purpose of describing an actual physical device designed for the purpose of providing an adjustable resistance, or it could be to show some component that just happens to have an unstable resistance:
</para>

<image>00339.png</image>

<index>Resistor, fixed</index>
<index>Resistor, variable</index>
<index>Variable component, symbol modifier</index>

<para>
In fact, any time you see a component symbol drawn with a diagonal arrow through it, that component has a variable rather than a fixed value.  This symbol "modifier" (the diagonal arrow) is standard electronic symbol convention.
</para>

<index>Potentiometer</index>
<index>Resistor, potentiometer</index>

<para>
Variable resistors must have some physical means of adjustment, either a rotating shaft or lever that can be moved to vary the amount of electrical resistance.  Here is a photograph showing some devices called <italic>potentiometers</italic>, which can be used as variable resistors:
</para>

<image>50009.jpg</image>

<para>
Because resistors dissipate heat energy as the electric currents through them overcome the "friction" of their resistance, resistors are also rated in terms of how much heat energy they can dissipate without overheating and sustaining damage.  Naturally, this power rating is specified in the physical unit of "watts."  Most resistors found in small electronic devices such as portable radios are rated at 1/4 (0.25) watt or less.  The power rating of any resistor is roughly proportional to its physical size.  Note in the first resistor photograph how the power ratings relate with size: the bigger the resistor, the higher its power dissipation rating.  Also note how resistances (in ohms) have nothing to do with size!
</para>

<para>
Although it may seem pointless now to have a device doing nothing but resisting electric current, resistors are extremely useful devices in circuits.  Because they are simple and so commonly used throughout the world of electricity and electronics, we'll spend a considerable amount of time analyzing circuits composed of nothing but resistors and batteries. 
</para>

<index>Printed circuit board</index>
<index>PCB</index>
<index>Soldering</index>

<para>
For a practical illustration of resistors' usefulness, examine the photograph below.  It is a picture of a <italic>printed circuit board</italic>, or <italic>PCB</italic>: an assembly made of sandwiched layers of insulating phenolic fiber-board and conductive copper strips, into which components may be inserted and secured by a low-temperature welding process called "soldering."  The various components on this circuit board are identified by printed labels.  Resistors are denoted by any label beginning with the letter "R".
</para>

<image>50016.jpg</image>

<index>Integrated circuit</index>
<index>IC</index>
<index>Chip</index>

<para>
This particular circuit board is a computer accessory called a "modem," which allows digital information transfer over telephone lines.  There are at least a dozen resistors (all rated at 1/4 watt power dissipation) that can be seen on this modem's board.  Every one of the black rectangles (called "integrated circuits" or "chips") contain their own array of resistors for their internal functions, as well.
</para>

<index>Surface-mount device</index>
<index>SMD</index>

<para>
Another circuit board example shows resistors packaged in even smaller units, called "surface mount devices."  This particular circuit board is the underside of a personal computer hard disk drive, and once again the resistors soldered onto it are designated with labels beginning with the letter "R":
</para>

<image>50023.jpg</image>

<para>
There are over one hundred surface-mount resistors on this circuit board, and this count of course does not include the number of resistors internal to the black "chips."  These two photographs should convince anyone that resistors -- devices that "merely" oppose the flow of electrons -- are very important components in the realm of electronics!
</para>

<index>Load</index>
<index>Resistor, load</index>

<para>
In schematic diagrams, resistor symbols are sometimes used to illustrate any general type of device in a circuit doing something useful with electrical energy.  Any non-specific electrical device is generally called a <italic>load</italic>, so if you see a schematic diagram showing a resistor symbol labeled "load," especially in a tutorial circuit diagram explaining some concept unrelated to the actual use of electrical power, that symbol may just be a kind of shorthand representation of something else more practical than a resistor.
</para>

<para>
To summarize what we've learned in this lesson, let's analyze the following circuit, determining all that we can from the information given:
</para>

<image>00044.png</image>

<index>Subscript</index>

<para>
All we've been given here to start with is the battery voltage (10 volts) and the circuit current (2 amps).  We don't know the resistor's resistance in ohms or the power dissipated by it in watts.  Surveying our array of Ohm's Law equations, we find two equations that give us answers from known quantities of voltage and current:
</para>

<image>10022.png</image>

<para>
Inserting the known quantities of voltage (E) and current (I) into these two equations, we can determine circuit resistance (R) and power dissipation (P):
</para>

<image>10023.png</image>

<para>
For the circuit conditions of 10 volts and 2 amps, the resistor's resistance must be 5 <OMEGA>.  If we were designing a circuit to operate at these values, we would have to specify a resistor with a minimum power rating of 20 watts, or else it would overheat and fail.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Devices called <italic>resistors</italic> are built to provide precise amounts of resistance in electric circuits.  Resistors are rated both in terms of their resistance (ohms) and their ability to dissipate heat energy (watts).</item>
<item>Resistor resistance ratings cannot be determined from the physical size of the resistor(s) in question, although approximate power ratings can.  The larger the resistor is, the more power it can safely dissipate without suffering damage.</item>
<item>Any device that performs some useful task with electric power is generally known as a <italic>load</italic>.  Sometimes resistor symbols are used in schematic diagrams to designate a non-specific load, rather than an actual resistor.</item>
</itemize>

</section>




<section>
<sectiontitle>Nonlinear conduction</sectiontitle>

<quotation>

<para>
<italic>"Advances are made by answering questions.  Discoveries are made by questioning answers."</italic>
</para>

<para>
<bold>Bernhard Haisch, Astrophysicist</bold>
</para>

</quotation>

<para>
Ohm's Law is a simple and powerful mathematical tool for helping us analyze electric circuits, but it has limitations, and we must understand these limitations in order to properly apply it to real circuits.  For most conductors, resistance is a rather stable property, largely unaffected by voltage or current.  For this reason we can regard the resistance of many circuit components as a constant, with voltage and current being directly related to each other.
</para>

<para>
For instance, our previous circuit example with the 3 <OMEGA> lamp, we calculated current through the circuit by dividing voltage by resistance (I=E/R).  With an 18 volt battery, our circuit current was 6 amps.  Doubling the battery voltage to 36 volts resulted in a doubled current of 12 amps.  All of this makes sense, of course, so long as the lamp continues to provide exactly the same amount of friction (resistance) to the flow of electrons through it: 3 <OMEGA>.
</para>

<image>00045.png</image>

<para>
However, reality is not always this simple.  One of the phenomena explored in a later chapter is that of conductor resistance <italic>changing</italic> with temperature.  In an incandescent lamp (the kind employing the principle of electric current heating a thin filament of wire to the point that it glows white-hot), the resistance of the filament wire will increase dramatically as it warms from room temperature to operating temperature.  If we were to increase the supply voltage in a real lamp circuit, the resulting increase in current would cause the filament to increase temperature, which would in turn increase its resistance, thus preventing further increases in current without further increases in battery voltage.  Consequently, voltage and current do not follow the simple equation "I=E/R" (with R assumed to be equal to 3 <OMEGA>) because an incandescent lamp's filament resistance does not remain stable for different currents.
</para>

<para>
The phenomenon of resistance changing with variations in temperature is one shared by almost all metals, of which most wires are made.  For most applications, these changes in resistance are small enough to be ignored.  In the application of metal lamp filaments, the change happens to be quite large.
</para>

<index>Linear</index>
<index>Nonlinear</index>

<para>
This is just one example of "nonlinearity" in electric circuits.  It is by no means the only example.  A "linear" function in mathematics is one that tracks a straight line when plotted on a graph.  The simplified version of the lamp circuit with a constant filament resistance of 3 <OMEGA> generates a plot like this:
</para>

<image>00046.png</image>

<para>
The straight-line plot of current over voltage indicates that resistance is a stable, unchanging value for a wide range of circuit voltages and currents.  In an "ideal" situation, this is the case.  Resistors, which are manufactured to provide a definite, stable value of resistance, behave very much like the plot of values seen above.  A mathematician would call their behavior "linear."  
</para>

<para>
A more realistic analysis of a lamp circuit, however, over several different values of battery voltage would generate a plot of this shape:
</para>

<image>00047.png</image>

<para>
The plot is no longer a straight line.  It rises sharply on the left, as voltage increases from zero to a low level.  As it progresses to the right we see the line flattening out, the circuit requiring greater and greater increases in voltage to achieve equal increases in current.
</para>

<para>
If we try to apply Ohm's Law to find the resistance of this lamp circuit with the voltage and current values plotted above, we arrive at several different values.  We could say that the resistance here is <italic>nonlinear</italic>, increasing with increasing current and voltage.  The nonlinearity is caused by the effects of high temperature on the metal wire of the lamp filament.
</para>

<index>Ionization</index>
<index>Electric current, in a gas</index>

<para>
Another example of nonlinear current conduction is through gases such as air.  At standard temperatures and pressures, air is an effective insulator.  However, if the voltage between two conductors separated by an air gap is increased greatly enough, the air molecules between the gap will become "ionized," having their electrons stripped off by the force of the high voltage between the wires.  Once ionized, air (and other gases) become good conductors of electricity, allowing electron flow where none could exist prior to ionization.  If we were to plot current over voltage on a graph as we did with the lamp circuit, the effect of ionization would be clearly seen as nonlinear:
</para>

<image>00048.png</image>

<para>
The graph shown is approximate for a small air gap (less than one inch).  A larger air gap would yield a higher ionization potential, but the shape of the I/E curve would be very similar: practically no current until the ionization potential was reached, then substantial conduction after that.
</para>

<index>Lightning</index>
<index>Ionization potential</index>
<index>Potential, ionization</index>

<para>
Incidentally, this is the reason lightning bolts exist as momentary surges rather than continuous flows of electrons.  The voltage built up between the earth and clouds (or between different sets of clouds) must increase to the point where it overcomes the ionization potential of the air gap before the air ionizes enough to support a substantial flow of electrons.  Once it does, the current will continue to conduct through the ionized air until the static charge between the two points depletes.  Once the charge depletes enough so that the voltage falls below another threshold point, the air de-ionizes and returns to its normal state of extremely high resistance.
</para>

<index>Breakdown, insulation</index>
<index>Insulation breakdown</index>
<index>High voltage breakdown of insulation</index>

<para>
Many solid insulating materials exhibit similar resistance properties: extremely high resistance to electron flow below some critical threshold voltage, then a much lower resistance at voltages beyond that threshold.  Once a solid insulating material has been compromised by high-voltage <italic>breakdown</italic>, as it is called, it often does not return to its former insulating state, unlike most gases.  It may insulate once again at low voltages, but its breakdown threshold voltage will have been decreased to some lower level, which may allow breakdown to occur more easily in the future.  This is a common mode of failure in high-voltage wiring: insulation damage due to breakdown.  Such failures may be detected through the use of special resistance meters employing high voltage (1000 volts or more).
</para>

<index>Varistor</index>

<para>
There are circuit components specifically engineered to provide nonlinear resistance curves, one of them being the <italic>varistor</italic>.  Commonly manufactured from compounds such as zinc oxide or silicon carbide, these devices maintain high resistance across their terminals until a certain "firing" or "breakdown" voltage (equivalent to the "ionization potential" of an air gap) is reached, at which point their resistance decreases dramatically.  Unlike the breakdown of an insulator, varistor breakdown is repeatable: that is, it is designed to withstand repeated breakdowns without failure.  A picture of a varistor is shown here:
</para>

<image>50011.jpg</image>

<para>
There are also special gas-filled tubes designed to do much the same thing, exploiting the very same principle at work in the ionization of air by a lightning bolt.
</para>

<index>Negative resistance</index>
<index>Resistance, negative</index>

<para>
Other electrical components exhibit even stranger current/voltage curves than this.  Some devices actually experience a <italic>decrease</italic> in current as the applied voltage <italic>increases</italic>.  Because the slope of the current/voltage for this phenomenon is negative (angling down instead of up as it progresses from left to right), it is known as <italic>negative resistance</italic>. 
</para>

<image>00362.png</image>

<index>Electron tube</index>
<index>Tetrode</index>
<index>Esaki diode</index>
<index>Tunnel diode</index>

<para>
Most notably, high-vacuum electron tubes known as <italic>tetrodes</italic> and semiconductor diodes known as <italic>Esaki</italic> or <italic>tunnel</italic> diodes exhibit negative resistance for certain ranges of applied voltage.
</para>

<para>
Ohm's Law is not very useful for analyzing the behavior of components like these where resistance  varies with voltage and current.  Some have even suggested that "Ohm's Law" should be demoted from the status of a "Law" because it is not universal.  It might be more accurate to call the equation (R=E/I) a <italic>definition of resistance</italic>, befitting of a certain class of materials under a narrow range of conditions.
</para>

<para>
For the benefit of the student, however, we will assume that resistances specified in example circuits <italic>are</italic> stable over a wide range of conditions unless otherwise specified.  I just wanted to expose you to a little bit of the complexity of the real world, lest I give you the false impression that the whole of electrical phenomena could be summarized in a few simple equations.
</para>


<itemize>
<item><bold>REVIEW:</bold></item>
<item>The resistance of most conductive materials is stable over a wide range of conditions, but this is not true of all materials.</item>
<item>Any function that can be plotted on a graph as a straight line is called a <italic>linear</italic> function.  For circuits with stable resistances, the plot of current over voltage is linear (I=E/R).</item>
<item>In circuits where resistance varies with changes in either voltage or current, the plot of current over voltage will be <italic>nonlinear</italic> (not a straight line).</item>
<item>A <italic>varistor</italic> is a component that changes resistance with the amount of voltage impressed across it.  With little voltage across it, its resistance is high.  Then, at a certain "breakdown" or "firing" voltage, its resistance decreases dramatically.</item>
<item><italic>Negative resistance</italic> is where the current through a component actually decreases as the applied voltage across it is increased.  Some electron tubes and semiconductor diodes (most notably, the <italic>tetrode</italic> tube and the <italic>Esaki</italic>, or <italic>tunnel</italic> diode, respectively) exhibit negative resistance over a certain range of voltages.</item>
</itemize>

</section>




<section>
<sectiontitle>Circuit wiring</sectiontitle>

<para>
So far, we've been analyzing single-battery, single-resistor circuits with no regard for the connecting wires between the components, so long as a complete circuit is formed.  Does the wire length or circuit "shape" matter to our calculations?  Let's look at a couple of circuit configurations and find out:
</para>

<image>00049.png</image>

<para>
When we draw wires connecting points in a circuit, we usually assume those wires have negligible resistance.  As such, they contribute no appreciable effect to the overall resistance of the circuit, and so the only resistance we have to contend with is the resistance in the components.  In the above circuits, the only resistance comes from the 5 <OMEGA> resistors, so that is all we will consider in our calculations.  In real life, metal wires actually <italic>do</italic> have resistance (and so do power sources!), but those resistances are generally so much smaller than the resistance present in the other circuit components that they can be safely ignored.  Exceptions to this rule exist in power system wiring, where even very small amounts of conductor resistance can create significant voltage drops given normal (high) levels of current.
</para>

<index>Electrically common points</index>
<index>Points, electrically common</index>

<para>
If connecting wire resistance is very little or none, we can regard the connected points in a circuit as being <italic>electrically common</italic>.  That is, points 1 and 2 in the above circuits may be physically joined close together or far apart, and it doesn't matter for any voltage or resistance measurements relative to those points.  The same goes for points 3 and 4.  It is as if the ends of the resistor were attached directly across the terminals of the battery, so far as our Ohm's Law calculations and voltage measurements are concerned.  This is useful to know, because it means you can re-draw a circuit diagram or re-wire a circuit, shortening or lengthening the wires as desired without appreciably impacting the circuit's function.  All that matters is that the components attach to each other in the same sequence.
</para>

<para>
It also means that voltage measurements between sets of "electrically common" points will be the same.  That is, the voltage between points 1 and 6 (directly across the battery) will be the same as the voltage between points 3 and 4 (directly across the resistor).  Take a close look at the following circuit, and try to determine which points are common to each other:
</para>

<image>00050.png</image>

<para>
Here, we only have 2 components excluding the wires: the battery and the resistor.  Though the connecting wires take a convoluted path in forming a complete circuit, there are several electrically common points in the electrons' path.  Points 1, 2, and 3 are all common to each other, because they're directly connected together by wire.  The same goes for points 4, 5, and 6. 
</para>

<para>
The voltage between points 1 and 6 is 10 volts, coming straight from the battery.  However, since points 5 and 4 are common to 6, and points 2 and 3 common to 1, that same 10 volts also exists between these other pairs of points:
</para>

<bigspace>

<literal>
Between points 1 and 4 = 10 volts                             
Between points 2 and 4 = 10 volts                               
Between points 3 and 4 = 10 volts (directly across the resistor) 
Between points 1 and 5 = 10 volts                              
Between points 2 and 5 = 10 volts                              
Between points 3 and 5 = 10 volts                               
Between points 1 and 6 = 10 volts (directly across the battery)  
Between points 2 and 6 = 10 volts                             
Between points 3 and 6 = 10 volts                      
</literal>

<bigspace>

<para>
Since electrically common points are connected together by (zero resistance) wire, there is no significant voltage drop between them regardless of the amount of current conducted from one to the next through that connecting wire.  Thus, if we were to read voltages between common points, we should show (practically) zero:
</para>

<bigspace>

<literal>
Between points 1 and 2 = 0 volts    Points 1, 2, and 3 are  
Between points 2 and 3 = 0 volts     electrically common    
Between points 1 and 3 = 0 volts                          
                                                             
Between points 4 and 5 = 0 volts    Points 4, 5, and 6 are 
Between points 5 and 6 = 0 volts     electrically common   
Between points 4 and 6 = 0 volts                         
</literal>

<bigspace>

<para>
This makes sense mathematically, too.  With a 10 volt battery and a 5 <OMEGA> resistor, the circuit current will be 2 amps.  With wire resistance being zero, the voltage drop across any continuous stretch of wire can be determined through Ohm's Law as such:
</para>

<image>10267.png</image>

<para>
It should be obvious that the calculated voltage drop across any uninterrupted length of wire in a circuit where wire is assumed to have zero resistance will always be zero, no matter what the magnitude of current, since zero multiplied by anything equals zero.
</para>

<para>
Because common points in a circuit will exhibit the same relative voltage and resistance measurements, wires connecting common points are often labeled with the same designation.  This is not to say that the <italic>terminal</italic> connection points are labeled the same, just the connecting wires.  Take this circuit as an example:
</para>

<image>00051.png</image>

<para>
Points 1, 2, and 3 are all common to each other, so the wire connecting point 1 to 2 is labeled the same (wire 2) as the wire connecting point 2 to 3 (wire 2).  In a real circuit, the wire stretching from point 1 to 2 may not even be the same color or size as the wire connecting point 2 to 3, but they should bear the exact same label.  The same goes for the wires connecting points 6, 5, and 4.
</para>

<para>
Knowing that electrically common points have zero voltage drop between them is a valuable troubleshooting principle.  If I measure for voltage between points in a circuit that are supposed to be common to each other, I should read zero.  If, however, I read substantial voltage between those two points, then I know with certainty that they cannot be directly connected together.  If those points are <italic>supposed</italic> to be electrically common but they register otherwise, then I know that there is an "open failure" between those points.
</para>

<index>Voltage, between common points</index>

<para>
One final note: for most practical purposes, wire conductors can be assumed to possess zero resistance from end to end.  In reality, however, there will always be some small amount of resistance encountered along the length of a wire, unless its a superconducting wire.  Knowing this, we need to bear in mind that the principles learned here about electrically common points are all valid to a large degree, but not to an <italic>absolute</italic> degree.  That is, the rule that electrically common points are guaranteed to have zero voltage between them is more accurately stated as such: electrically common points will have <italic>very little</italic> voltage dropped between them.  That small, virtually unavoidable trace of resistance found in any piece of connecting wire is bound to create a small voltage across the length of it as current is conducted through.  So long as you understand that these rules are based upon <italic>ideal</italic> conditions, you won't be perplexed when you come across some condition appearing to be an exception to the rule.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>Connecting wires in a circuit are assumed to have zero resistance unless otherwise stated.</item>
<item>Wires in a circuit can be shortened or lengthened without impacting the circuit's function -- all that matters is that the components are attached to one another in the same sequence.</item>
<item>Points directly connected together in a circuit by zero resistance (wire) are considered to be <italic>electrically common</italic>.</item>
<item>Electrically common points, with zero resistance between them, will have zero voltage dropped between them, regardless of the magnitude of current (ideally).</item>
<item>The voltage or resistance readings referenced between sets of electrically common points will be the same.</item>
<item>These rules apply to <italic>ideal</italic> conditions, where connecting wires are assumed to possess absolutely zero resistance.  In real life this will probably not be the case, but wire resistances should be low enough so that the general principles stated here still hold.</item>
</itemize>

</section>




<section>
<sectiontitle>Polarity of voltage drops</sectiontitle>

<index>Voltage polarity</index>
<index>Polarity, voltage</index>

<para>
We can trace the direction that electrons will flow in the same circuit by starting at the negative (-) terminal and following through to the positive (+) terminal of the battery, the only source of voltage in the circuit.  From this we can see that the electrons are moving counter-clockwise, from point 6 to 5 to 4 to 3 to 2 to 1 and back to 6 again. 
</para>

<para>
As the current encounters the 5 <OMEGA> resistance, voltage is dropped across the resistor's ends.  The polarity of this voltage drop is negative (-) at point 4 with respect to positive (+) at point 3.  We can mark the polarity of the resistor's voltage drop with these negative and positive symbols, in accordance with the direction of current (whichever end of the resistor the current is <italic>entering</italic> is negative with respect to the end of the resistor it is <italic>exiting</italic>:
</para>

<image>00052.png</image>

<para>
We could make our table of voltages a little more complete by marking the polarity of the voltage for each pair of points in this circuit:
</para>

<bigspace>

<literal>
Between points 1 (+) and 4 (-) = 10 volts                     
Between points 2 (+) and 4 (-) = 10 volts  
Between points 3 (+) and 4 (-) = 10 volts 
Between points 1 (+) and 5 (-) = 10 volts                        
Between points 2 (+) and 5 (-) = 10 volts                       
Between points 3 (+) and 5 (-) = 10 volts  
Between points 1 (+) and 6 (-) = 10 volts 
Between points 2 (+) and 6 (-) = 10 volts                         
Between points 3 (+) and 6 (-) = 10 volts                          
</literal>

<bigspace>

<para>
While it might seem a little silly to document polarity of voltage drop in this circuit, it is an important concept to master.  It will be critically important in the analysis of more complex circuits involving multiple resistors and/or batteries.
</para>

<para>
It should be understood that polarity has nothing to do with Ohm's Law: there will never be negative voltages, currents, or resistance entered into any Ohm's Law equations!  There are other mathematical principles of electricity that do take polarity into account through the use of signs (+ or -), but not Ohm's Law.
</para>

<itemize>
<item><bold>REVIEW:</bold></item>
<item>The polarity of the voltage drop across any resistive component is determined by the direction of electron flow through it: <italic>negative</italic> entering, and <italic>positive</italic> exiting.</item>
</itemize>

</section>




<section>
<sectiontitle>Computer simulation of electric circuits</sectiontitle>

<index>Simulation, computer</index>
<index>Computer simulation</index>

<para>
Computers can be powerful tools if used properly, especially in the realms of science and engineering.  Software exists for the simulation of electric circuits by computer, and these programs can be very useful in helping circuit designers test ideas before actually building real circuits, saving much time and money.
</para>

<para>
These same programs can be fantastic aids to the beginning student of electronics, allowing the exploration of ideas quickly and easily with no assembly of real circuits required.  Of course, there is no substitute for actually building and testing real circuits, but computer simulations certainly assist in the learning process by allowing the student to experiment with changes and see the effects they have on circuits.  Throughout this book, I'll be incorporating computer printouts from circuit simulation frequently in order to illustrate important concepts.  By observing the results of a computer simulation, a student can gain an intuitive grasp of circuit behavior without the intimidation of abstract mathematical analysis.
</para>

<index>SPICE</index>

<para>
To simulate circuits on computer, I make use of a particular program called SPICE, which works by describing a circuit to the computer by means of a listing of text.  In essence, this listing is a kind of computer program in itself, and must adhere to the syntactical rules of the SPICE language.  The computer is then used to process, or "run," the SPICE program, which interprets the text listing describing the circuit and outputs the results of its detailed mathematical analysis, also in text form.  Many details of using SPICE are described in volume 5 ("Reference") of this book series for those wanting more information.  Here, I'll just introduce the basic concepts and then apply SPICE to the analysis of these simple circuits we've been reading about.
</para>

<para>
First, we need to have SPICE installed on our computer.  As a free program, it is commonly available on the internet for download, and in formats appropriate for many different operating systems.  In this book, I use one of the earlier versions of SPICE: version 2G6, for its simplicity of use.  
</para>

<para>
Next, we need a circuit for SPICE to analyze.  Let's try one of the circuits illustrated earlier in the chapter.  Here is its schematic diagram:
</para>

<image>00053.png</image>

<para>
This simple circuit consists of a battery and a resistor connected directly together.  We know the voltage of the battery (10 volts) and the resistance of the resistor (5 <OMEGA>), but nothing else about the circuit.  If we describe this circuit to SPICE, it should be able to tell us (at the very least), how much current we have in the circuit by using Ohm's Law (I=E/R).
</para>

<index>Node number, SPICE</index>

<para>
SPICE cannot directly understand a schematic diagram or any other form of graphical description.  SPICE is a text-based computer program, and demands that a circuit be described in terms of its constituent components and connection points.  Each unique connection point in a circuit is described for SPICE by a "node" number.  Points that are electrically common to each other in the circuit to be simulated are designated as such by sharing the same number.  It might be helpful to think of these numbers as "wire" numbers rather than "node" numbers, following the definition given in the previous section.  This is how the computer knows what's connected to what: by the sharing of common wire, or node, numbers.  In our example circuit, we only have two "nodes," the top wire and the bottom wire.  SPICE demands there be a node 0 somewhere in the circuit, so we'll label our wires 0 and 1:  
</para>

<image>00054.png</image>

<para>
In the above illustration, I've shown multiple "1" and "0" labels around each respective wire to emphasize the concept of common points sharing common node numbers, but still this is a graphic image, not a text description.  SPICE needs to have the component values and node numbers given to it in text form before any analysis may proceed.
</para>

<index>Text editor</index>

<para>
Creating a text file in a computer involves the use of a program called a <italic>text editor</italic>.  Similar to a word processor, a text editor allows you to type text and record what you've typed in the form of a file stored on the computer's hard disk.  Text editors lack the formatting ability of word processors (no <italic>italic</italic>, <bold>bold</bold>, or <underline>underlined</underline> characters), and this is a good thing, since programs such as SPICE wouldn't know what to do with this extra information.  If we want to create a plain-text file, with absolutely nothing recorded except the keyboard characters we select, a text editor is the tool to use.
</para>

<para>
If using a Microsoft operating system such as DOS or Windows, a couple of text editors are readily available with the system.  In DOS, there is the old <italic>Edit</italic> text editing program, which may be invoked by typing <typewriter>edit</typewriter> at the command prompt.  In Windows (3.x/95/98/NT/Me/2k/XP), the <italic>Notepad</italic> text editor is your stock choice.  Many other text editing programs are available, and some are even free.  I happen to use a free text editor called <italic>Vim</italic>, and run it under both Windows 95 and Linux operating systems.  It matters little which editor you use, so don't worry if the screenshots in this section don't look like yours; the important information here is <italic>what you type</italic>, not <italic>which editor</italic> you happen to use.
</para>

<para>
To describe this simple, two-component circuit to SPICE, I will begin by invoking my text editor program and typing in a "title" line for the circuit:
</para>

<image>20001.png</image>

<para>
We can describe the battery to the computer by typing in a line of text starting with the letter "<typewriter>v</typewriter>" (for "Voltage source"), identifying which wire each terminal of the battery connects to (the node numbers), and the battery's voltage, like this:
</para>

<image>20002.png</image>

<para>
This line of text tells SPICE that we have a voltage source connected between nodes 1 and 0, direct current (DC), 10 volts.  That's all the computer needs to know regarding the battery.  Now we turn to the resistor: SPICE requires that resistors be described with a letter "r," the numbers of the two nodes (connection points), and the resistance in ohms.  Since this is a computer simulation, there is no need to specify a power rating for the resistor.  That's one nice thing about "virtual" components: they can't be harmed by excessive voltages or currents!
</para>

<image>20003.png</image>

<para>
Now, SPICE will know there is a resistor connected between nodes 1 and 0 with a value of 5 <OMEGA>.  This very brief line of text tells the computer we have a resistor ("<typewriter>r</typewriter>") connected between the same two nodes as the battery (1 and 0), with a resistance value of 5 <OMEGA>.
</para>

<index>Netlist, SPICE</index>
<index>SPICE netlist</index>

<para>
If we add an <typewriter>.end</typewriter> statement to this collection of SPICE commands to indicate the end of the circuit description, we will have all the information SPICE needs, collected in one file and ready for processing.  This circuit description, comprised of lines of text in a computer file, is technically known as a <italic>netlist</italic>, or <italic>deck</italic>:
</para>

<image>20004.png</image>

<para>
Once we have finished typing all the necessary SPICE commands, we need to "save" them to a file on the computer's hard disk so that SPICE has something to reference to when invoked.  Since this is my first SPICE netlist, I'll save it under the filename "<typewriter>circuit1.cir</typewriter>" (the actual name being arbitrary).  You may elect to name your first SPICE netlist something completely different, just as long as you don't violate any filename rules for your operating system, such as using no more than 8+3 characters (eight characters in the name, and three characters in the extension: <typewriter>12345678.123</typewriter>) in DOS.
</para>

<para>
To invoke SPICE (tell it to process the contents of the <typewriter>circuit1.cir</typewriter> netlist file), we have to exit from the text editor and access a command prompt (the "DOS prompt" for Microsoft users) where we can enter text commands for the computer's operating system to obey.  This "primitive" way of invoking a program may seem archaic to computer users accustomed to a "point-and-click" graphical environment, but it is a very powerful and flexible way of doing things.  Remember, what you're doing here by using SPICE is a simple form of computer programming, and the more comfortable you become in giving the computer text-form commands to follow -- as opposed to simply clicking on icon images using a mouse -- the more mastery you will have over your computer.
</para>

<para>
Once at a command prompt, type in this command, followed by an [Enter] keystroke (this example uses the filename <typewriter>circuit1.cir</typewriter>; if you have chosen a different filename for your netlist file, substitute it):
</para>

<bigspace>

<literal>
spice <lt> circuit1.cir
</literal>

<bigspace>

<para>
Here is how this looks on my computer (running the Linux operating system), just before I press the [Enter] key:
</para>

<image>20005.png</image>

<para>
As soon as you press the [Enter] key to issue this command, text from SPICE's output should scroll by on the computer screen.  Here is a screenshot showing what SPICE outputs on my computer (I've lengthened the "terminal" window to show you the full text.  With a normal-size terminal, the text easily exceeds one page length):
</para>

<image>20006.png</image>

<para>
SPICE begins with a reiteration of the netlist, complete with title line and <typewriter>.end</typewriter> statement.  About halfway through the simulation it displays the voltage at all nodes with reference to node 0.  In this example, we only have one node other than node 0, so it displays the voltage there: 10.0000 volts.  Then it displays the current through each voltage source.  Since we only have one voltage source in the entire circuit, it only displays the current through that one.  In this case, the source current is 2 amps.  Due to a quirk in the way SPICE analyzes current, the value of 2 amps is output as a negative (-) 2 amps.
</para>

<para>
The last line of text in the computer's analysis report is "total power dissipation," which in this case is given as "2.00E+01" watts: 2.00 x 10<superscript>1</superscript>, or 20 watts.  SPICE outputs most figures in scientific notation rather than normal (fixed-point) notation.  While this may seem to be more confusing at first, it is actually less confusing when very large or very small numbers are involved.  The details of scientific notation will be covered in the next chapter of this book.
</para>

<para>
One of the benefits of using a "primitive" text-based program such as SPICE is that the text files dealt with are extremely small compared to other file formats, especially graphical formats used in other circuit simulation software.  Also, the fact that SPICE's output is plain text means you can direct SPICE's output to another text file where it may be further manipulated.  To do this, we re-issue a command to the computer's operating system to invoke SPICE, this time redirecting the output to a file I'll call "<typewriter>output.txt</typewriter>":
</para>

<image>20007.png</image>

<para>
SPICE will run "silently" this time, without the stream of text output to the computer screen as before.  A new file, <typewriter>output1.txt</typewriter>, will be created, which you may open and change using a text editor or word processor.  For this illustration, I'll use the same text editor (<italic>Vim</italic>) to open this file:
</para>

<image>20008.png</image>

<para>
Now, I may freely edit this file, deleting any extraneous text (such as the "banners" showing date and time), leaving only the text that I feel to be pertinent to my circuit's analysis:
</para>

<image>20009.png</image>

<para>
Once suitably edited and re-saved under the same filename (<typewriter>output.txt</typewriter> in this example), the text may be pasted into any kind of document, "plain text" being a universal file format for almost all computer systems.  I can even include it directly in the text of this book -- rather than as a "screenshot" graphic image -- like this:
</para>

<bigspace>

<literal>
my first circuit                                                                
v 1 0 dc 10     
r 1 0 5 
.end    
</literal>

<bigspace>

<literal>
 node   voltage
(  1)   10.0000
</literal>

<bigspace>

<literal>
voltage source currents
name       current
v        -2.000E+00
</literal>

<bigspace>

<literal>
total power dissipation   2.00E+01  watts 
</literal>

<bigspace>

<para>
Incidentally, this is the preferred format for text output from SPICE simulations in this book series: as real text, not as graphic screenshot images.
</para>

<para>
To alter a component value in the simulation, we need to open up the netlist file (<typewriter>circuit1.cir</typewriter>) and make the required modifications in the text description of the circuit, then save those changes to the same filename, and re-invoke SPICE at the command prompt.  This process of editing and processing a text file is one familiar to every computer programmer.  One of the reasons I like to teach SPICE is that it prepares the learner to think and work like a computer programmer, which is good because computer programming is a significant area of advanced electronics work.
</para>

<para>
Earlier we explored the consequences of changing one of the three variables in an electric circuit (voltage, current, or resistance) using Ohm's Law to mathematically predict what would happen.  Now let's try the same thing using SPICE to do the math for us.
</para>

<para>
If we were to triple the voltage in our last example circuit from 10 to 30 volts and keep the circuit resistance unchanged, we would expect the current to triple as well.  Let's try this, re-naming our netlist file so as to not over-write the first file.  This way, we will have <italic>both</italic> versions of the circuit simulation stored on the hard drive of our computer for future use.  The following text listing is the output of SPICE for this modified netlist, formatted as plain text rather than as a graphic image of my computer screen:
</para>

<bigspace>

<literal>
second example circuit 
v 1 0 dc 30     
r 1 0 5 
.end    
</literal>

<bigspace>

<literal>
node    voltage
(  1)   30.0000
</literal>

<bigspace>

<literal>
voltage source currents
name       current
v        -6.000E+00
total power dissipation   1.80E+02  watts
</literal>

<bigspace>

<para>
Just as we expected, the current tripled with the voltage increase.  Current used to be 2 amps, but now it has increased to 6 amps (-6.000 x 10<superscript>0</superscript>).  Note also how the total power dissipation in the circuit has increased.  It was 20 watts before, but now is 180 watts (1.8 x 10<superscript>2</superscript>).  Recalling that power is related to the square of the voltage (Joule's Law: P=E<superscript>2</superscript>/R), this makes sense.  If we triple the circuit voltage, the power should increase by a factor of nine (3<superscript>2</superscript> = 9).  Nine times 20 is indeed 180, so SPICE's output does indeed correlate with what we know about power in electric circuits.
</para>

<para>
If we want to see how this simple circuit would respond over a wide range of battery voltages, we can invoke some of the more advanced options within SPICE.  Here, I'll use the "<typewriter>.dc</typewriter>" analysis option to vary the battery voltage from 0 to 100 volts in 5 volt increments, printing out the circuit voltage and current at every step.  The lines in the SPICE netlist beginning with a star symbol ("<typewriter>*</typewriter>") are <italic>comments</italic>.  That is, they don't tell the computer to do anything relating to circuit analysis, but merely serve as notes for any human being reading the netlist text.
</para>

<bigspace>

<literal>
third example circuit  
v 1 0   
r 1 0 5 
*the ".dc" statement tells spice to sweep the "v" supply
*voltage from 0 to 100 volts in 5 volt steps.   
.dc v 0 100 5   
.print dc v(1) i(v)  
.end    
</literal>

<pagebreak>

<para>
The <typewriter>.print</typewriter> command in this SPICE netlist instructs SPICE to print columns of numbers corresponding to each step in the analysis:
</para>

<bigspace>

<literal>
v             i(v)            
0.000E+00     0.000E+00
5.000E+00    -1.000E+00
1.000E+01    -2.000E+00
1.500E+01    -3.000E+00
2.000E+01    -4.000E+00
2.500E+01    -5.000E+00
3.000E+01    -6.000E+00
3.500E+01    -7.000E+00
4.000E+01    -8.000E+00
4.500E+01    -9.000E+00
5.000E+01    -1.000E+01
5.500E+01    -1.100E+01
6.000E+01    -1.200E+01
6.500E+01    -1.300E+01
7.000E+01    -1.400E+01
7.500E+01    -1.500E+01
8.000E+01    -1.600E+01
8.500E+01    -1.700E+01
9.000E+01    -1.800E+01
9.500E+01    -1.900E+01
1.000E+02    -2.000E+01
</literal>

<pagebreak>

<para>
If I re-edit the netlist file, changing the <typewriter>.print</typewriter> command into a <typewriter>.plot</typewriter> command, SPICE will output a crude graph made up of text characters:
</para>

<bigspace>

<literal>
Legend:  + = v#branch         
------------------------------------------------------------------------
sweep      v#branch-2.00e+01             -1.00e+01                 0.00e+00
---------------------|------------------------|------------------------|
0.000e+00  0.000e+00 .                        .                        + 
5.000e+00 -1.000e+00 .                        .                     +  . 
1.000e+01 -2.000e+00 .                        .                   +    . 
1.500e+01 -3.000e+00 .                        .                +       . 
2.000e+01 -4.000e+00 .                        .              +         . 
2.500e+01 -5.000e+00 .                        .           +            . 
3.000e+01 -6.000e+00 .                        .         +              . 
3.500e+01 -7.000e+00 .                        .      +                 . 
4.000e+01 -8.000e+00 .                        .    +                   . 
4.500e+01 -9.000e+00 .                        . +                      . 
5.000e+01 -1.000e+01 .                        +                        . 
5.500e+01 -1.100e+01 .                     +  .                        . 
6.000e+01 -1.200e+01 .                   +    .                        . 
6.500e+01 -1.300e+01 .                +       .                        . 
7.000e+01 -1.400e+01 .              +         .                        . 
7.500e+01 -1.500e+01 .           +            .                        . 
8.000e+01 -1.600e+01 .         +              .                        . 
8.500e+01 -1.700e+01 .      +                 .                        . 
9.000e+01 -1.800e+01 .    +                   .                        . 
9.500e+01 -1.900e+01 . +                      .                        . 
1.000e+02 -2.000e+01 +                        .                        . 
---------------------|------------------------|------------------------|
sweep      v#branch-2.00e+01             -1.00e+01                 0.00e+00 
</literal>

<bigspace>

<para>
In both output formats, the left-hand column of numbers represents the battery voltage at each interval, as it increases from 0 volts to 100 volts, 5 volts at a time.  The numbers in the right-hand column indicate the circuit current for each of those voltages.  Look closely at those numbers and you'll see the proportional relationship between each pair: Ohm's Law (I=E/R) holds true in each and every case, each current value being 1/5 the respective voltage value, because the circuit resistance is exactly 5 <OMEGA>.  Again, the negative numbers for current in this SPICE analysis is more of a quirk than anything else.  Just pay attention to the absolute value of each number unless otherwise specified.
</para>

<para>
There are even some computer programs able to interpret and convert the non-graphical data output by SPICE into a graphical plot.  One of these programs is called <italic>Nutmeg</italic>, and its output looks something like this:
</para>

<image>20010.png</image>

<para>
Note how Nutmeg plots the resistor voltage <typewriter>v(1)</typewriter> (voltage between node 1 and the implied reference point of node 0) as a line with a positive slope (from lower-left to upper-right).
</para>

<para>
Whether or not you ever become proficient at using SPICE is not relevant to its application in this book.  All that matters is that you develop an understanding for what the numbers mean in a SPICE-generated report.  In the examples to come, I'll do my best to annotate the numerical results of SPICE to eliminate any confusion, and unlock the power of this amazing tool to help you understand the behavior of electric circuits.
</para>

</section>




<section>
<sectiontitle>Contributors</sectiontitle>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Larry Cramblett</bold> (September 20, 2004): identified serious typographical error in "Nonlinear conduction" section.
</para>

<para>
<bold>James Boorn</bold> (January 18, 2001): identified sentence structure error and offered correction.  Also, identified discrepancy in netlist syntax requirements between SPICE version 2g6 and version 3f5.
</para>

<para>
<bold>Ben Crowell, Ph.D.</bold> (January 13, 2001): suggestions on improving the technical accuracy of <italic>voltage</italic> and <italic>charge</italic> definitions.
</para>

<para>
<bold>Jason Starck</bold> (June 2000): HTML document formatting, which led to a much better-looking second edition.
</para>

</section>


</chapter>

<pagebreak>

