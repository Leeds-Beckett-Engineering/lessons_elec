<comment>modified 10/29/2005 (DC) added torque conversions </comment>

<chapter>
<chaptertitle>USEFUL EQUATIONS AND CONVERSION FACTORS</chaptertitle>

<section>
<sectiontitle>DC circuit equations and laws</sectiontitle>

<subsection>
<subsectiontitle>Ohm's and Joule's Laws</subsectiontitle>

<index>Ohm's Law</index>
<index>Joule's Law</index>
<index>E, symbol for voltage</index>
<index>I, symbol for current</index>
<index>R, symbol for resistance</index>
<index>P, symbol for power</index>

<image>11001.png</image>

<para>
NOTE: the symbol "V" ("U" in Europe) is sometimes used to represent voltage instead of "E".  In some cases, an author or circuit designer may choose to exclusively use "V" for voltage, never using the symbol "E."  Other times the two symbols are used interchangeably, or "E" is used to represent voltage from a power source while "V" is used to represent voltage across a load (voltage "drop").  

</para>
                     
<bigspace>

</subsection>




<subsection>
<subsectiontitle>Kirchhoff's Laws</subsectiontitle>
                            
<quotation>

<para>
<italic>"The algebraic sum of all voltages in a loop must equal zero."</italic>
</para>

<para>
<bold>Kirchhoff's Voltage Law (KVL)</bold>
</para>

</quotation>

<bigspace>

                            
<quotation>

<para>
<italic>"The algebraic sum of all currents entering and exiting a node must equal zero."</italic>
</para>

<para>
<bold>Kirchhoff's Current Law (KCL)</bold>
</para>

</quotation>
                                                               
</subsection>

</section>




                                                                  
<section>
<sectiontitle>Series circuit rules</sectiontitle>

<itemize>
<item>Components in a series circuit share the same current.  I<subscript>total</subscript> = I<subscript>1</subscript> = I<subscript>2</subscript> = . . . I<subscript>n</subscript></item>
<item>Total resistance in a series circuit is equal to the sum of the individual resistances, making it <italic>greater</italic> than any of the individual resistances.  R<subscript>total</subscript> = R<subscript>1</subscript> + R<subscript>2</subscript> + . . . R<subscript>n</subscript></item>
<item>Total voltage in a series circuit is equal to the sum of the individual voltage drops.  E<subscript>total</subscript> = E<subscript>1</subscript> + E<subscript>2</subscript> + . . . E<subscript>n</subscript></item>
</itemize>

</section>




<section>
<sectiontitle>Parallel circuit rules</sectiontitle>

<itemize>
<item>Components in a parallel circuit share the same voltage.  E<subscript>total</subscript> = E<subscript>1</subscript> = E<subscript>2</subscript> = . . . E<subscript>n</subscript></item>
<item>Total resistance in a parallel circuit is <italic>less</italic> than any of the individual resistances.  R<subscript>total</subscript> = 1 / (1/R<subscript>1</subscript> + 1/R<subscript>2</subscript> + . . . 1/R<subscript>n</subscript>)</item>
<item>Total current in a parallel circuit is equal to the sum of the individual branch currents.  I<subscript>total</subscript> = I<subscript>1</subscript> + I<subscript>2</subscript> + . . . I<subscript>n</subscript></item>
</itemize>

</section>



 
<section>
<sectiontitle>Series and parallel component equivalent values</sectiontitle>

<index>Series circuits</index>
<index>Parallel circuits</index>

<subsection>
<subsectiontitle>Series and parallel resistances</subsectiontitle>

<image>11002.png</image>

<bigspace>

</subsection>

                                                                  
 
<subsection>
<subsectiontitle>Series and parallel inductances</subsectiontitle>
 
<image>11003.png</image>

<bigspace>

</subsection>

 
 
                                                                   
<subsection>
<subsectiontitle>Series and Parallel Capacitances</subsectiontitle>

<image>11004.png</image>

</subsection>

</section>








<section>
<sectiontitle>Capacitor sizing equation</sectiontitle>

<index>Capacitance equation</index>

<image>10230.png</image>

<para>
<image>11095.png</image>
</para>

<para>
<image>11096.png</image>
</para>

<para>
A formula for capacitance in picofarads using practical dimensions:
</para>

<image>10277.png</image>
</section>



 

                                                                     

<section>
<sectiontitle>Inductor sizing equation</sectiontitle>

<index>Inductance equation</index>

<image>11102.png</image>

 
<para>
Wheeler's formulas for inductance of air core coils which follow are useful for radio frequency inductors. The following formula for the inductance of a single layer air core solenoid coil is accurate to approximately 1% for 2r/l <lt> 3. The thick coil formula is 1% accurate when the denominator terms are approximately equal. Wheeler's spiral formula is 1% accurate for c<gt>0.2r. While this is a "round wire" formula, it may still be applicable to printed circuit spiral inductors at reduced accuracy.
</para>

<image>11098.png</image>

<para>
The inductance in henries of a square printed circuit inductor is given by two formulas where p=q, and p<neq>q.
</para>

<image>11100.png</image>



<subsubsection>
<subsubsectiontitle>Wire sizing for inductors </subsubsectiontitle>

<hypertarget>AWGcm[]</hypertarget>

<para>
The wire table provides "turns per inch" for enamel magnet wire for use with the inductance formulas for coils.  The circular-mil cross-section area determines current carrying capacity of wires.
</para>

<image>11099.png</image>

</subsubsection>


</section>



 



<section>
<sectiontitle>Time constant equations</sectiontitle>

<index>Time constant equations</index>

 
<subsection>
<subsectiontitle>Value of time constant in series RC and RL circuits</subsectiontitle>

<para>
Time constant in seconds = RC
</para>
 
<para>
Time constant in seconds = L/R
</para>
 
<bigspace>

</subsection>



<subsection>
<subsectiontitle>Calculating voltage or current at specified time</subsectiontitle>

<image>10245.png</image>

 
<bigspace>

</subsection>



<subsection>
<subsectiontitle>Calculating time at specified voltage or current</subsectiontitle>

<image>10264.png</image>

 
</subsection>
 
</section>






<section>
<sectiontitle>AC circuit equations</sectiontitle>

<index>Reactance</index>
<index>Impedance</index>
<index>Resonance</index>
<index>Power factor</index>
   
<subsection>
<subsectiontitle>Inductive reactance</subsectiontitle>

<image>11005.png</image>

 
<bigspace>

</subsection>


                                                                 
 

<subsection>
<subsectiontitle>Capacitive reactance</subsectiontitle>

<image>11006.png</image>

 
<bigspace>

</subsection>



 

<subsection>
<subsectiontitle>Impedance in relation to R and X</subsectiontitle>

<quotation>
Z<subscript>L</subscript> = R + jX<subscript>L</subscript>
</quotation>

<quotation>
Z<subscript>C</subscript> = R - jX<subscript>C</subscript>
</quotation>

<bigspace>

</subsection>



 

<subsection>
<subsectiontitle>Ohm's Law for AC</subsectiontitle>

<index>Ohm's Law, AC</index>

<image>11009.png</image>

 
<bigspace>

</subsection>


 


<subsection>
<subsectiontitle>Series and Parallel Impedances</subsectiontitle>

<image>11008.png</image>

 
<para>
NOTE: All impedances must be calculated in <italic>complex</italic> number form for these equations to work.
</para>
                                                   
<bigspace>

</subsection>


                                                      
 
                                       
<subsection>
<subsectiontitle>Resonance</subsectiontitle>

<image>11010.png</image>

 
<para>
NOTE: This equation applies to a non-resistive LC circuit.  In circuits containing resistance as well as inductance and capacitance, this equation applies only to series configurations and to parallel configurations where R is very small. 
</para>

<bigspace>

</subsection>


                                                   
 
                                             
                                                        
<subsection>
<subsectiontitle>AC power</subsectiontitle>

<image>12123.png</image>

<para>

</para>

<bigspace>

<image>11011.png</image>

 
</subsection>
 
</section>







<section>
<sectiontitle>Decibels</sectiontitle>

<image>11063.png</image>

 
</section>




<pagebreak>


<section>
<sectiontitle>Metric prefixes and unit conversions</sectiontitle>

<index>Metric system</index>
<index>Prefix, metric</index>
<index>Conversion factor</index>
<index>Factor, conversion</index>

<itemize>
<item><bold>Metric prefixes</bold></item>
<item>Yotta = 10<superscript>24</superscript> Symbol: Y</item>
<item>Zetta = 10<superscript>21</superscript> Symbol: Z</item>
<item>Exa = 10<superscript>18</superscript> Symbol: E</item>
<item>Peta = 10<superscript>15</superscript> Symbol: P</item>
<item>Tera = 10<superscript>12</superscript> Symbol: T</item>
<item>Giga = 10<superscript>9</superscript> Symbol: G</item>
<item>Mega = 10<superscript>6</superscript> Symbol: M</item>
<item>Kilo = 10<superscript>3</superscript> Symbol: k</item>
<item>Hecto = 10<superscript>2</superscript> Symbol: h</item>
<item>Deca = 10<superscript>1</superscript> Symbol: da</item>
<item>Deci = 10<superscript>-1</superscript> Symbol: d</item>
<item>Centi = 10<superscript>-2</superscript> Symbol: c</item>
<item>Milli = 10<superscript>-3</superscript> Symbol: m</item>
<item>Micro = 10<superscript>-6</superscript> Symbol: <mu></item>
<item>Nano = 10<superscript>-9</superscript> Symbol: n</item>
<item>Pico = 10<superscript>-12</superscript> Symbol: p</item>
<item>Femto = 10<superscript>-15</superscript> Symbol: f</item>
<item>Atto = 10<superscript>-18</superscript> Symbol: a</item>
<item>Zepto = 10<superscript>-21</superscript> Symbol: z</item>
<item>Yocto = 10<superscript>-24</superscript> Symbol: y</item>
</itemize>

<image>00356.png</image>


<bigspace>

<itemize>
<item><bold>Conversion factors for temperature</bold></item>
<item><superscript>o</superscript>F = (<superscript>o</superscript>C)(9/5) + 32</item>
<item><superscript>o</superscript>C = (<superscript>o</superscript>F - 32)(5/9)</item>
<item><superscript>o</superscript>R = <superscript>o</superscript>F + 459.67</item>
<item><superscript>o</superscript>K = <superscript>o</superscript>C + 273.15</item>
</itemize>

<bigspace>

<para>
<bold>Conversion equivalencies for volume</bold>
</para>

<quotation>
1 US gallon (gal) = 231.0 cubic inches (in<superscript>3</superscript>) = 4 quarts (qt) = 8 pints (pt) = 128 fluid ounces (fl. oz.) = 3.7854 liters (l)
</quotation>

<quotation>
1 Imperial gallon (gal) = 160 fluid ounces (fl. oz.) = 4.546 liters (l)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for distance</bold>
</para>
<quotation>
1 inch (in) = 2.540000 centimeter (cm)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for velocity</bold>
</para>
<quotation>
1 mile per hour (mi/h) = 88 feet per minute (ft/m) = 1.46667 feet per second (ft/s) = 1.60934 kilometer per hour (km/h) = 0.44704 meter per second (m/s) = 0.868976 knot (knot -- international)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for weight</bold>
</para>

<quotation>
1 pound (lb) = 16 ounces (oz) = 0.45359 kilogram (kg)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for force</bold>
</para>

<quotation>
1 pound-force (lbf) = 4.44822 newton (N)
</quotation>

<bigspace>

<para>
<bold>Acceleration of gravity (free fall), Earth standard</bold>
</para>

<quotation>
9.806650 meters per second per second (m/s<superscript>2</superscript>) = 32.1740 feet per second per second (ft/s<superscript>2</superscript>)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for area</bold>
</para>

<quotation>
1 acre = 43560 square feet (ft<superscript>2</superscript>) = 4840 square yards (yd<superscript>2</superscript>) = 4046.86 square meters (m<superscript>2</superscript>)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for pressure</bold>
</para>

<quotation>
1 pound per square inch (psi) = 2.03603 inches of mercury (in. Hg) = 27.6807 inches of water (in. W.C.) = 6894.757 pascals (Pa) = 0.0680460 atmospheres (Atm) = 0.0689476 bar (bar)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for energy or work</bold>
</para>

<quotation>
1 british thermal unit (BTU -- "International Table") = 251.996 calories (cal -- "International Table") = 1055.06 joules (J) = 1055.06 watt-seconds (W-s) = 0.293071 watt-hour (W-hr) = 1.05506 x 10<superscript>10</superscript> ergs (erg) = 778.169 foot-pound-force (ft-lbf) 
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for power</bold>
</para>

<quotation>
1 horsepower (hp -- 550 ft-lbf/s) = 745.7 watts (W) = 2544.43 british thermal units per hour (BTU/hr) = 0.0760181 boiler horsepower (hp -- boiler)
</quotation>

<bigspace>

<para>
<bold>Conversion equivalencies for motor torque</bold>
</para>

<image>11094.png</image>

<para>
Locate the row corresponding to known unit of torque along the left of the table. Multiply by the factor under the column for the desired units. For example, to convert 2 oz-in torque to n-m, locate oz-in row at table left. Locate 7.062 x 10<superscript>-3</superscript>  at intersection of desired n-m units column. Multiply 2 oz-in x  (7.062 x 10<superscript>-3</superscript> ) =  14.12 x 10<superscript>-3</superscript> n-m. 
</para>


<bigspace>



<para>
Converting between units is easy if you have a set of equivalencies to work with.  Suppose we wanted to convert an energy quantity of 2500 calories into watt-hours.  What we would need to do is find a set of equivalent figures for those units.  In our reference here, we see that 251.996 calories is physically equal to 0.293071 watt hour.  To convert from calories into watt-hours, we must form a "unity fraction" with these physically equal figures (a fraction composed of different figures and different units, the numerator and denominator being <italic>physically</italic> equal to one another), placing the desired unit in the numerator and the initial unit in the denominator, and then multiply our initial value of calories by that fraction.
</para>

<para>
Since both terms of the "unity fraction" are physically equal to one another, the fraction as a whole has a <italic>physical</italic> value of 1, and so does not change the true value of any figure when multiplied by it.  When units are canceled, however, there will be a change in units.  For example, 2500 calories multiplied by the unity fraction of (0.293071 w-hr / 251.996 cal) = 2.9075 watt-hours.
</para>


<image>11064.png</image>

<para>
The "unity fraction" approach to unit conversion may be extended beyond single steps.  Suppose we wanted to convert a fluid flow measurement of 175 gallons per hour into liters per day.  We have two units to convert here: gallons into liters, and hours into days.  Remember that the word "per" in mathematics means "divided by," so our initial figure of 175 gallons <italic>per</italic> hour means 175 gallons divided by hours.  Expressing our original figure as such a fraction, we multiply it by the necessary unity fractions to convert gallons to liters (3.7854 liters = 1 gallon), and hours to days (1 day = 24 hours).  The units must be arranged in the unity fraction in such a way that undesired units cancel each other out above and below fraction bars.  For this problem it means using a gallons-to-liters unity fraction of (3.7854 liters / 1 gallon) and a hours-to-days unity fraction of (24 hours / 1 day):
</para>

<image>11065.png</image>

<para>
Our final (converted) answer is 15898.68 liters per day.
</para>

</section>






<section>
<sectiontitle>Data</sectiontitle>

<para>
Conversion factors were found in the 78<superscript>th</superscript> edition of the <italic>CRC Handbook of Chemistry and Physics</italic>, and the 3<superscript>rd</superscript> edition of Bela Liptak's <italic>Instrument Engineers' Handbook -- Process Measurement and Analysis</italic>. 
</para>

</section>



<section>
<sectiontitle>Contributors</sectiontitle>

<para>
Contributors to this chapter are listed in chronological order of their contributions, from most recent to first.  See Appendix 2 (Contributor List) for dates and contact information.
</para>

<para>
<bold>Gerald Gardner</bold> (January 2003): Addition of Imperial gallons conversion.
</para>

</section>




</chapter>

<pagebreak>

