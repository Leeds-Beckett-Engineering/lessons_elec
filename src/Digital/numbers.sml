
<chapter>
<chaptertitle>NUMERATION SYSTEMS</chaptertitle>

<quotation>

<para>
<italic>"There are three types of people: those who can count, and those who can't."</italic>
</para>

<para>
<bold>Anonymous</bold>
</para>

</quotation>

<section>
<sectiontitle>Numbers and symbols</sectiontitle>

<para>
The expression of numerical quantities is something we tend to take for granted.  This is both a good and a bad thing in the study of electronics.  It is good, in that we're accustomed to the use and manipulation of numbers for the many calculations used in analyzing electronic circuits.  On the other hand, the particular system of notation we've been taught from grade school onward is <italic>not</italic> the system used internally in modern electronic computing devices, and learning any different system of notation requires some re-examination of deeply ingrained assumptions.
</para>

<para>
First, we have to distinguish the difference between numbers and the symbols we use to represent numbers.  A <italic>number</italic> is a mathematical quantity, usually correlated in electronics to a physical quantity such as voltage, current, or resistance.  There are many different types of numbers.  Here are just a few types, for example:
</para>

<bigspace>

<literal>
WHOLE NUMBERS:
1, 2, 3, 4, 5, 6, 7, 8, 9 . . .
</literal>

<bigspace>

<literal>
INTEGERS:
-4, -3, -2, -1, 0, 1, 2, 3, 4 . . .
</literal>

<bigspace>

<literal>
IRRATIONAL NUMBERS:
<pi> (approx. 3.1415927), <italic>e</italic> (approx. 2.718281828),
square root of any prime
</literal>

<bigspace>

<literal>
REAL NUMBERS:
(All one-dimensional numerical values, negative and positive,
 including zero, whole, integer, and irrational numbers) 
</literal>

<bigspace>

<literal>
COMPLEX NUMBERS:
3 - j4 ,  34.5 <angle> 20<superscript>o</superscript>
</literal>

<bigspace>

<para>
Different types of numbers find different application in the physical world.  Whole numbers work well for counting discrete objects, such as the number of resistors in a circuit.  Integers are needed when negative equivalents of whole numbers are required.  Irrational numbers are numbers that cannot be exactly expressed as the ratio of two integers, and the ratio of a perfect circle's circumference to its diameter (<pi>) is a good physical example of this.  The non-integer quantities of voltage, current, and resistance that we're used to dealing with in DC circuits can be expressed as real numbers, in either fractional or decimal form.  For AC circuit analysis, however, real numbers fail to capture the dual essence of magnitude and phase angle, and so we turn to the use of complex numbers in either rectangular or polar form.
</para>

<para>
If we are to use numbers to understand processes in the physical world, make scientific predictions, or balance our checkbooks, we must have a way of symbolically denoting them.  In other words, we may know how much money we have in our checking account, but to keep record of it we need to have some system worked out to symbolize that quantity on paper, or in some other kind of form for record-keeping and tracking.  There are two basic ways we can do this: analog and digital.  With analog representation, the quantity is symbolized in a way that is infinitely divisible.  With digital representation, the quantity is symbolized in a way that is discretely packaged.
</para>

<para>
You're probably already familiar with an analog representation of money, and didn't realize it for what it was.  Have you ever seen a fund-raising poster made with a picture of a thermometer on it, where the height of the red column indicated the amount of money collected for the cause?  The more money collected, the taller the column of red ink on the poster.  
</para>

<image>04096.png</image> 

<para>
This is an example of an analog representation of a number.  There is no real limit to how finely divided the height of that column can be made to symbolize the amount of money in the account.  Changing the height of that column is something that can be done without changing the essential nature of what it is.  Length is a physical quantity that can be divided as small as you would like, with no practical limit.  The slide rule is a mechanical device that uses the very same physical quantity -- length -- to represent numbers, and to help perform arithmetical operations with two or more numbers at a time.  It, too, is an analog device.
</para>

<para>
On the other hand, a <italic>digital</italic> representation of that same monetary figure, written with standard symbols (sometimes called ciphers), looks like this:
</para>

<bigspace>

<literal>
$35,955.38
</literal>

<bigspace>

<para>
Unlike the "thermometer" poster with its red column, those symbolic characters above cannot be finely divided: that particular combination of ciphers stand for one quantity and one quantity only.  If more money is added to the account (+ $40.12), different symbols must be used to represent the new balance ($35,995.50), or at least the same symbols arranged in different patterns.  This is an example of digital representation.  The counterpart to the slide rule (analog) is also a digital device: the abacus, with beads that are moved back and forth on rods to symbolize numerical quantities:
</para>

<image>04097.png</image> 

<para>

</para>

<bigspace>

<image>04098.png</image> 

<para>
Let's contrast these two methods of numerical representation:
</para>

<bigspace>

<literal>
ANALOG                              DIGITAL
------------------------------------------------------------------
Intuitively understood  ----------- Requires training to interpret
Infinitely divisible -------------- Discrete
Prone to errors of precision ------ Absolute precision
</literal>

<bigspace>

<para>
Interpretation of numerical symbols is something we tend to take for granted, because it has been taught to us for many years.  However, if you were to try to communicate a quantity of something to a person ignorant of decimal numerals, that person could still understand the simple thermometer chart!
</para>

<para>
The infinitely divisible vs. discrete and precision comparisons are really flip-sides of the same coin.  The fact that digital representation is composed of individual, discrete symbols (decimal digits and abacus beads) necessarily means that it will be able to symbolize quantities in precise steps.  On the other hand, an analog representation (such as a slide rule's length) is not composed of individual steps, but rather a continuous range of motion.  The ability for a slide rule to characterize a numerical quantity to infinite resolution is a trade-off for imprecision.  If a slide rule is bumped, an error will be introduced into the representation of the number that was "entered" into it.  However, an abacus must be bumped much harder before its beads are completely dislodged from their places (sufficient to represent a different number).
</para>

<para>
Please don't misunderstand this difference in precision by thinking that digital representation is necessarily more <italic>accurate</italic> than analog.  Just because a clock is digital doesn't mean that it will always read time more accurately than an analog clock, it just means that the <italic>interpretation</italic> of its display is less ambiguous.
</para>

<para>
Divisibility of analog versus digital representation can be further illuminated by talking about the representation of irrational numbers.  Numbers such as <pi> are called irrational, because they cannot be exactly expressed as the fraction of integers, or whole numbers.  Although you might have learned in the past that the fraction 22/7 can be used for <pi> in calculations, this is just an approximation.  The actual number "pi" cannot be exactly expressed by any finite, or limited, number of decimal places.  The digits of <pi> go on forever:
</para>

<bigspace>

<literal>
3.1415926535897932384 . . . . .
</literal>

<bigspace>

<para>
It is possible, at least theoretically, to set a slide rule (or even a thermometer column) so as to perfectly represent the number <pi>, because analog symbols have no minimum limit to the degree that they can be increased or decreased.  If my slide rule shows a figure of 3.141593 instead of 3.141592654, I can bump the slide just a bit more (or less) to get it closer yet.  However, with digital representation, such as with an abacus, I would need additional rods (place holders, or digits) to represent <pi> to further degrees of precision.  An abacus with 10 rods simply cannot represent any more than 10 digits worth of the number <pi>, no matter how I set the beads.  To perfectly represent <pi>, an abacus would have to have an infinite number of beads and rods!  The tradeoff, of course, is the practical limitation to adjusting, and reading, analog symbols.  Practically speaking, one cannot read a slide rule's scale to the 10th digit of precision, because the marks on the scale are too coarse and human vision is too limited.  An abacus, on the other hand, can be set and read with no interpretational errors at all.
</para>

<para>
Furthermore, analog symbols require some kind of standard by which they can be compared for precise interpretation.  Slide rules have markings printed along the length of the slides to translate length into standard quantities.  Even the thermometer chart has numerals written along its height to show how much money (in dollars) the red column represents for any given amount of height.  Imagine if we all tried to communicate simple numbers to each other by spacing our hands apart varying distances.  The number 1 might be signified by holding our hands 1 inch apart, the number 2 with 2 inches, and so on.  If someone held their hands 17 inches apart to represent the number 17, would everyone around them be able to immediately and accurately interpret that distance as 17?  Probably not.  Some would guess short (15 or 16) and some would guess long (18 or 19).  Of course, fishermen who brag about their catches don't mind overestimations in quantity!
</para>

<para>
Perhaps this is why people have generally settled upon digital symbols for representing numbers, especially whole numbers and integers, which find the most application in everyday life.  Using the fingers on our hands, we have a ready means of symbolizing integers from 0 to 10.  We can make hash marks on paper, wood, or stone to represent the same quantities quite easily:
</para>

<image>04281.png</image> 

<para>
For large numbers, though, the "hash mark" numeration system is too inefficient.
</para>
 
</section>






<section>
<sectiontitle>Systems of numeration</sectiontitle>

<index>Cipher</index>

<para>
The Romans devised a system that was a substantial improvement over hash marks, because it used a variety of symbols (or <italic>ciphers</italic>) to represent increasingly large quantities.  The notation for 1 is the capital letter <typewriter>I</typewriter>.  The notation for 5 is the capital letter <typewriter>V</typewriter>.  Other ciphers possess increasing values:
</para>

<bigspace>

<literal>
X = 10
L = 50
C = 100
D = 500
M = 1000
</literal>

<bigspace>

<para>
If a cipher is accompanied by another cipher of equal or lesser value to the immediate right of it, with no ciphers greater than that other cipher to the right of that other cipher, that other cipher's value is added to the total quantity.  Thus, <typewriter>VIII</typewriter> symbolizes the number 8, and <typewriter>CLVII</typewriter> symbolizes the number 157.  On the other hand, if a cipher is accompanied by another cipher of lesser value to the immediate left, that other cipher's value is <italic>subtracted</italic> from the first.  Therefore, <typewriter>IV</typewriter> symbolizes the number 4 (<typewriter>V</typewriter> minus <typewriter>I</typewriter>), and <typewriter>CM</typewriter> symbolizes the number 900 (<typewriter>M</typewriter> minus <typewriter>C</typewriter>).  You might have noticed that ending credit sequences for most motion pictures contain a notice for the date of production, in Roman numerals.  For the year 1987, it would read: <typewriter>MCMLXXXVII</typewriter>.  Let's break this numeral down into its constituent parts, from left to right:
</para>

<bigspace>

<literal>
M = 1000
+
CM = 900
+
L = 50
+
XXX = 30
+
V = 5
+
II = 2
</literal>

<bigspace>

<para>
Aren't you glad we don't use this system of numeration?  Large numbers are very difficult to denote this way, and the left vs. right / subtraction vs. addition of values can be very confusing, too.  Another major problem with this system is that there is no provision for representing the number zero or negative numbers, both very important concepts in mathematics.  Roman culture, however, was more pragmatic with respect to mathematics than most, choosing only to develop their numeration system as far as it was necessary for use in daily life.
</para>

<index>Place value</index>

<para>
We owe one of the most important ideas in numeration to the ancient Babylonians, who were the first (as far as we know) to develop the concept of cipher position, or place value, in representing larger numbers.  Instead of inventing new ciphers to represent larger numbers, as the Romans did, they re-used the same ciphers, placing them in different positions from right to left.  Our own decimal numeration system uses this concept, with only ten ciphers (0, 1, 2, 3, 4, 5, 6, 7, 8, and 9) used in "weighted" positions to represent very large and very small numbers.
</para>

<index>Weight, numeration system</index>

<para>
Each cipher represents an integer quantity, and each place from right to left in the notation represents a multiplying constant, or <italic>weight</italic>, for each integer quantity.  For example, if we see the decimal notation "1206", we known that this may be broken down into its constituent weight-products as such:
</para>

<bigspace>

<literal>
1206 = 1000 + 200 + 6
1206  =  (1 x 1000) + (2 x 100) + (0 x 10) + (6 x 1)
</literal>

<bigspace>

<index>Digit</index>
<index>Place value, numeration system</index>

<para>
Each cipher is called a <italic>digit</italic> in the decimal numeration system, and each weight, or <italic>place value</italic>, is ten times that of the one to the immediate right.  So, we have a <italic>ones</italic> place, a <italic>tens</italic> place, a <italic>hundreds</italic> place, a <italic>thousands</italic> place, and so on, working from right to left.
</para>

<para>
Right about now, you're probably wondering why I'm laboring to describe the obvious.  Who needs to be told how decimal numeration works, after you've studied math as advanced as algebra and trigonometry?  The reason is to better understand other numeration systems, by first knowing the how's and why's of the one you're already used to.
</para>

<para>
The decimal numeration system uses ten ciphers, and place-weights that are multiples of ten.  What if we made a numeration system with the same strategy of weighted places, except with fewer or more ciphers?
</para>

<index>Binary numeration</index>

<para>
The binary numeration system is such a system.  Instead of ten different cipher symbols, with each weight constant being ten times the one before it, we only have <italic>two</italic> cipher symbols, and each weight constant is <italic>twice</italic> as much as the one before it.  The two allowable cipher symbols for the binary system of numeration are "1" and "0," and these ciphers are arranged right-to-left in doubling values of weight.  The rightmost place is the <italic>ones</italic> place, just as with decimal notation.  Proceeding to the left, we have the <italic>twos</italic> place, the <italic>fours</italic> place, the <italic>eights</italic> place, the <italic>sixteens</italic> place, and so on.  For example, the following binary number can be expressed, just like the decimal number 1206, as a sum of each cipher value times its respective weight constant:
</para>

<bigspace>

<literal>
11010 = 2 + 8 + 16 = 26
11010 = (1 x 16) + (1 x 8) + (0 x 4) + (1 x 2) + (0 x 1)
</literal>

<bigspace>

<para>
This can get quite confusing, as I've written a number with binary numeration (11010), and then shown its place values and total in standard, decimal numeration form (16 + 8 + 2 = 26).  In the above example, we're mixing two different kinds of numerical notation.  To avoid unnecessary confusion, we have to denote which form of numeration we're using when we write (or type!).  Typically, this is done in subscript form, with a "2" for binary and a "10" for decimal, so the binary number 11010<subscript>2</subscript> is equal to the decimal number 26<subscript>10</subscript>.
</para>

<para>
The subscripts are not mathematical operation symbols like superscripts (exponents) are.  All they do is indicate what system of numeration we're using when we write these symbols for other people to read.  If you see "3<subscript>10</subscript>", all this means is the number three written using <italic>decimal</italic> numeration.  However, if you see "3<superscript>10</superscript>", this means something completely different: three to the tenth power (59,049).  As usual, if no subscript is shown, the cipher(s) are assumed to be representing a decimal number.
</para>

<index>Base, numeration system</index>
<index>Digit, decimal</index>
<index>Bit, binary</index>

<para>
Commonly, the number of cipher types (and therefore, the place-value multiplier) used in a numeration system is called that system's <italic>base</italic>.  Binary is referred to as "base two" numeration, and decimal as "base ten."  Additionally, we refer to each cipher position in binary as a <italic>bit</italic> rather than the familiar word <italic>digit</italic> used in the decimal system.
</para>

<para>
Now, why would anyone use binary numeration?  The decimal system, with its ten ciphers, makes a lot of sense, being that we have ten fingers on which to count between our two hands.  (It is interesting that some ancient central American cultures used numeration systems with a base of twenty.  Presumably, they used both fingers and toes to count!!).  But the primary reason that the binary numeration system is used in modern electronic computers is because of the ease of representing two cipher states (0 and 1) electronically.  With relatively simple circuitry, we can perform mathematical operations on binary numbers by representing each bit of the numbers by a circuit which is either on (current) or off (no current).  Just like the abacus with each rod representing another decimal digit, we simply add more circuits to give us more bits to symbolize larger numbers.  Binary numeration also lends itself well to the storage and retrieval of numerical information: on magnetic tape (spots of iron oxide on the tape either being magnetized for a binary "1" or demagnetized for a binary "0"), optical disks (a laser-burned pit in the aluminum foil representing a binary "1" and an unburned spot representing a binary "0"), or a variety of other media types.
</para>

<para>
Before we go on to learning exactly how all this is done in digital circuitry, we need to become more familiar with binary and other associated systems of numeration.
</para>
 
</section>






<section>
<sectiontitle>Decimal versus binary numeration</sectiontitle>

<para>
Let's count from zero to twenty using four different kinds of numeration systems: hash marks, Roman numerals, decimal, and binary:
</para>

<bigspace>

<literal>
System:    Hash Marks               Roman     Decimal     Binary
-------    ----------               -----     -------     ------
Zero       n/a                       n/a         0          0 
One        |                          I          1          1 
Two        ||                         II         2          10
Three      |||                        III        3          11
Four       ||||                       IV         4          100
Five       /|||/                      V          5          101
Six        /|||/ |                    VI         6          110
Seven      /|||/ ||                   VII        7          111
Eight      /|||/ |||                  VIII       8          1000
Nine       /|||/ ||||                 IX         9          1001
Ten        /|||/ /|||/                X          10         1010
Eleven     /|||/ /|||/ |              XI         11         1011
Twelve     /|||/ /|||/ ||             XII        12         1100
Thirteen   /|||/ /|||/ |||            XIII       13         1101
Fourteen   /|||/ /|||/ ||||           XIV        14         1110
Fifteen    /|||/ /|||/ /|||/          XV         15         1111
Sixteen    /|||/ /|||/ /|||/ |        XVI        16         10000
Seventeen  /|||/ /|||/ /|||/ ||       XVII       17         10001
Eighteen   /|||/ /|||/ /|||/ |||      XVIII      18         10010
Nineteen   /|||/ /|||/ /|||/ ||||     XIX        19         10011
Twenty     /|||/ /|||/ /|||/ /|||/    XX         20         10100
</literal>

<bigspace>

<para>
Neither hash marks nor the Roman system are very practical for symbolizing large numbers.  Obviously, place-weighted systems such as decimal and binary are more efficient for the task.  Notice, though, how much shorter decimal notation is over binary notation, for the same number of quantities.  What takes five bits in binary notation only takes two digits in decimal notation.
</para>

<para>
This raises an interesting question regarding different numeration systems: how large of a number can be represented with a limited number of cipher positions, or places?  With the crude hash-mark system, the number of places IS the largest number that can be represented, since one hash mark "place" is required for every integer step.  For place-weighted systems of numeration, however, the answer is found by taking base of the numeration system (10 for decimal, 2 for binary) and raising it to the power of the number of places.  For example, 5 digits in a decimal numeration system can represent 100,000 different integer number values, from 0 to 99,999 (10 to the 5th power = 100,000).  8 bits in a binary numeration system can represent 256 different integer number values, from 0 to 11111111 (binary), or 0 to 255 (decimal), because 2 to the 8th power equals 256.  With each additional place position to the number field, the capacity for representing numbers increases by a factor of the base (10 for decimal, 2 for binary).
</para>

<index>Eniac computer</index>
<index>Ring counter</index>
<index>Counter, ring</index>

<para>
An interesting footnote for this topic is the one of the first electronic digital computers, the Eniac.  The designers of the Eniac chose to represent numbers in decimal form, digitally, using a series of circuits called "ring counters" instead of just going with the binary numeration system, in an effort to minimize the number of circuits required to represent and calculate very large numbers.  This approach turned out to be counter-productive, and virtually all digital computers since then have been purely binary in design.
</para>

<para>
To convert a number in binary numeration to its equivalent in decimal form, all you have to do is calculate the sum of all the products of bits with their respective place-weight constants.  To illustrate:
</para>

<bigspace>

<literal>
Convert 11001101<subscript>2</subscript>  to decimal form:
bits =         1  1  0  0  1  1  0  1             
.              -  -  -  -  -  -  -  -
weight =       1  6  3  1  8  4  2  1 
(in decimal    2  4  2  6
notation)      8    
</literal>

<bigspace>

<index>Bit, least significant</index>
<index>LSB</index>
<index>Bit, most significant</index>
<index>MSB</index>

<para>
The bit on the far right side is called the Least Significant Bit (LSB), because it stands in the place of the lowest weight (the one's place).  The bit on the far left side is called the Most Significant Bit (MSB), because it stands in the place of the highest weight (the one hundred twenty-eight's place).  Remember, a bit value of "1" means that the respective place weight gets added to the total value, and a bit value of "0" means that the respective place weight does <italic>not</italic> get added to the total value.  With the above example, we have:
</para>

<bigspace>

<literal>
128<subscript>10</subscript>  + 64<subscript>10</subscript>  + 8<subscript>10</subscript>  + 4<subscript>10</subscript>  + 1<subscript>10</subscript>  = 205<subscript>10</subscript>
</literal>

<bigspace>

<index>Point, decimal</index>
<index>Point, binary</index>
<index>Decimal point</index>
<index>Binary point</index>

<para>
If we encounter a binary number with a dot (.), called a "binary point" instead of a decimal point, we follow the same procedure, realizing that each place weight to the right of the point is one-half the value of the one to the left of it (just as each place weight to the right of a <italic>decimal</italic> point is one-tenth the weight of the one to the left of it).  For example:
</para>

<bigspace>

<literal>
Convert 101.011<subscript>2</subscript>  to decimal form:
.
bits =         1  0  1  .  0  1  1               
.              -  -  -  -  -  -  -  
weight =       4  2  1     1  1  1   
(in decimal                /  /  /
notation)                  2  4  8
</literal>

<bigspace>

<literal>
4<subscript>10</subscript>  + 1<subscript>10</subscript>  + 0.25<subscript>10</subscript>  + 0.125<subscript>10</subscript>  = 5.375<subscript>10</subscript>
</literal>

<bigspace>
 
</section>





<section>
<sectiontitle>Octal and hexadecimal numeration</sectiontitle>

<para>
Because binary numeration requires so many bits to represent relatively small numbers compared to the economy of the decimal system, analyzing the numerical states inside of digital electronic circuitry can be a tedious task.  Computer programmers who design sequences of number codes instructing a computer what to do would have a very difficult task if they were forced to work with nothing but long strings of 1's and 0's, the "native language" of any digital circuit.  To make it easier for human engineers, technicians, and programmers to "speak" this language of the digital world, other systems of place-weighted numeration have been made which are very easy to convert to and from binary.
</para>

<index>Octal numeration</index>

<para>
One of those numeration systems is called <italic>octal</italic>, because it is a place-weighted system with a base of eight.  Valid ciphers include the symbols 0, 1, 2, 3, 4, 5, 6, and 7.  Each place weight differs from the one next to it by a factor of eight.
</para>

<index>Hexadecimal numeration</index>

<para>
Another system is called <italic>hexadecimal</italic>, because it is a place-weighted system with a base of sixteen.  Valid ciphers include the normal decimal symbols 0, 1, 2, 3, 4, 5, 6, 7, 8, and 9, plus six alphabetical characters A, B, C, D, E, and F, to make a total of sixteen.  As you might have guessed already, each place weight differs from the one before it by a factor of sixteen.
</para>

<para>
Let's count again from zero to twenty using decimal, binary, octal, and hexadecimal to contrast these systems of numeration:
</para>

<bigspace>

<literal>
Number       Decimal      Binary        Octal      Hexadecimal
------       -------      -------       -----      -----------
Zero            0           0             0             0
One             1           1             1             1 
Two             2           10            2             2
Three           3           11            3             3
Four            4           100           4             4
Five            5           101           5             5
Six             6           110           6             6
Seven           7           111           7             7
Eight           8           1000          10            8
Nine            9           1001          11            9            
Ten             10          1010          12            A
Eleven          11          1011          13            B
Twelve          12          1100          14            C
Thirteen        13          1101          15            D
Fourteen        14          1110          16            E
Fifteen         15          1111          17            F
Sixteen         16          10000         20            10
Seventeen       17          10001         21            11
Eighteen        18          10010         22            12
Nineteen        19          10011         23            13
Twenty          20          10100         24            14
</literal>

<bigspace>

<para>
Octal and hexadecimal numeration systems would be pointless if not for their ability to be easily converted to and from binary notation.  Their primary purpose in being is to serve as a "shorthand" method of denoting a number represented electronically in binary form.  Because the bases of octal (eight) and hexadecimal (sixteen) are even multiples of binary's base (two), binary bits can be grouped together and directly converted to or from their respective octal or hexadecimal digits.  With octal, the binary bits are grouped in three's (because 2<superscript>3</superscript> = 8), and with hexadecimal, the binary bits are grouped in four's (because 2<superscript>4</superscript> = 16):
</para>

<bigspace>

<literal>
BINARY TO OCTAL CONVERSION
Convert 10110111.1<subscript>2</subscript>  to octal:
.
.                         implied zero       implied zeros
.                              |                  ||
.                              010   110   111   100
Convert each group of bits     ###   ###   ### . ###
to its octal equivalent:        2     6     7     4
.
Answer:     10110111.1<subscript>2</subscript>  =  267.4<subscript>8</subscript>      
</literal>

<bigspace>

<para>
We had to group the bits in three's, from the binary point left, and from the binary point right, adding (implied) zeros as necessary to make complete 3-bit groups.  Each octal digit was translated from the 3-bit binary groups.  Binary-to-Hexadecimal conversion is much the same:
</para>

<bigspace>

<literal>
BINARY TO HEXADECIMAL CONVERSION
Convert 10110111.1<subscript>2</subscript>  to hexadecimal:
.
.                                        implied zeros
.                                             |||
.                              1011   0111   1000
Convert each group of bits     ----   ---- . ----
to its hexadecimal equivalent:   B      7      8
.
Answer:     10110111.1<subscript>2</subscript>  =  B7.8<subscript>16</subscript>      
</literal>

<bigspace>

<para>
Here we had to group the bits in four's, from the binary point left, and from the binary point right, adding (implied) zeros as necessary to make complete 4-bit groups:
</para>

<para>
Likewise, the conversion from either octal or hexadecimal to binary is done by taking each octal or hexadecimal digit and converting it to its equivalent binary (3 or 4 bit) group, then putting all the binary bit groups together.
</para>

<para>
Incidentally, hexadecimal notation is more popular, because binary bit groupings in digital equipment are commonly multiples of eight (8, 16, 32, 64, and 128 bit), which are also multiples of 4.  Octal, being based on binary bit groups of 3, doesn't work out evenly with those common bit group sizings.  
</para>
 
</section>






<section>
<sectiontitle>Octal and hexadecimal to decimal conversion</sectiontitle>

<para>
Although the prime intent of octal and hexadecimal numeration systems is for the "shorthand" representation of binary numbers in digital electronics, we sometimes have the need to convert from either of those systems to decimal form.  Of course, we could simply convert the hexadecimal or octal format to binary, then convert from binary to decimal, since we already know how to do both, but we can also convert directly.
</para>

<para>
Because octal is a base-eight numeration system, each place-weight value differs from either adjacent place by a factor of eight.  For example, the octal number 245.37 can be broken down into place values as such:
</para>

<bigspace>

<literal>
octal
digits =       2  4  5  .  3  7            
.              -  -  -  -  -  -
weight =       6  8  1     1  1
(in decimal    4           /  /
notation)                  8  6
.                             4
</literal>

<bigspace>

<para>
The decimal value of each octal place-weight times its respective cipher multiplier can be determined as follows:
</para>

<bigspace>

<literal>
(2 x 64<subscript>10</subscript>)  +  (4 x 8<subscript>10</subscript>)  +  (5 x 1<subscript>10</subscript>)  +  (3 x 0.125<subscript>10</subscript>)  +
(7 x 0.015625<subscript>10</subscript>)  =  165.484375<subscript>10</subscript>
</literal>

<bigspace>

<para>
The technique for converting hexadecimal notation to decimal is the same, except that each successive place-weight changes by a factor of sixteen.  Simply denote each digit's weight, multiply each hexadecimal digit value by its respective weight (in decimal form), then add up all the decimal values to get a total.  For example, the hexadecimal number 30F.A9<subscript>16</subscript> can be converted like this:
</para>

<bigspace>

<literal>
hexadecimal
digits =       3  0  F  .  A  9            
.              -  -  -  -  -  -
weight =       2  1  1     1  1
(in decimal    5  6        /  /
notation)      6           1  2
.                          6  5
.                             6
</literal>

<bigspace>

<literal>
(3 x 256<subscript>10</subscript>)  +  (0 x 16<subscript>10</subscript>)  +  (15 x 1<subscript>10</subscript>)  +  (10 x 0.0625<subscript>10</subscript>)  +  
(9 x 0.00390625<subscript>10</subscript>)  = 783.66015625<subscript>10</subscript>
</literal>

<bigspace>

<para>
These basic techniques may be used to convert a numerical notation of <italic>any</italic> base into decimal form, if you know the value of that numeration system's base.
</para>

</section>





<section>
<sectiontitle>Conversion from decimal numeration</sectiontitle>

<para>
Because octal and hexadecimal numeration systems have bases that are multiples of binary (base 2), conversion back and forth between either hexadecimal or octal and binary is very easy.  Also, because we are so familiar with the decimal system, converting binary, octal, or hexadecimal to decimal form is relatively easy (simply add up the products of cipher values and place-weights).  However, conversion from decimal to any of these "strange" numeration systems is a different matter.
</para>

<para>
The method which will probably make the most sense is the "trial-and-fit" method, where you try to "fit" the binary, octal, or hexadecimal notation to the desired value as represented in decimal form.  For example, let's say that I wanted to represent the decimal value of 87 in binary form.  Let's start by drawing a binary number field, complete with place-weight values:
</para>

<bigspace>

<literal>
.
.              -  -  -  -  -  -  -  -
weight =       1  6  3  1  8  4  2  1
(in decimal    2  4  2  6
notation)      8   
</literal>

<bigspace>

<para>
Well, we know that we won't have a "1" bit in the 128's place, because that would immediately give us a value greater than 87.  However, since the next weight to the right (64) is less than 87, we know that we must have a "1" there.
</para>

<bigspace>

<literal>
.              1
.              -  -  -  -  -  -  -    Decimal value so far = 64<subscript>10</subscript>
weight =       6  3  1  8  4  2  1                              
(in decimal    4  2  6
notation)       

</literal>

<bigspace>

<para>
If we were to make the next place to the right a "1" as well, our total value would be 64<subscript>10</subscript> + 32<subscript>10</subscript>, or 96<subscript>10</subscript>.  This is greater than 87<subscript>10</subscript>, so we know that this bit must be a "0".  If we make the next (16's) place bit equal to "1," this brings our total value to 64<subscript>10</subscript> + 16<subscript>10</subscript>, or 80<subscript>10</subscript>, which is closer to our desired value (87<subscript>10</subscript>) without exceeding it:
</para>

<bigspace>

<literal>
.              1  0  1
.              -  -  -  -  -  -  -    Decimal value so far = 80<subscript>10</subscript>
weight =       6  3  1  8  4  2  1   
(in decimal    4  2  6
notation)       
</literal>

<bigspace>

<para>
By continuing in this progression, setting each lesser-weight bit as we need to come up to our desired total value without exceeding it, we will eventually arrive at the correct figure:
</para>

<bigspace>

<literal>
.              1  0  1  0  1  1  1
.              -  -  -  -  -  -  -    Decimal value so far = 87<subscript>10</subscript>
weight =       6  3  1  8  4  2  1  
(in decimal    4  2  6
notation)       
</literal>

<bigspace>

<para>
This trial-and-fit strategy will work with octal and hexadecimal conversions, too.  Let's take the same decimal figure, 87<subscript>10</subscript>, and convert it to octal numeration:
</para>

<bigspace>

<literal>
.
.              -  -  -  
weight =       6  8  1  
(in decimal    4  
notation)       
</literal>

<bigspace>

<para>
If we put a cipher of "1" in the 64's place, we would have a total value of 64<subscript>10</subscript> (less than 87<subscript>10</subscript>).  If we put a cipher of "2" in the 64's place, we would have a total value of 128<subscript>10</subscript> (greater than 87<subscript>10</subscript>).  This tells us that our octal numeration must start with a "1" in the 64's place:
</para>

<bigspace>

<literal>
.              1
.              -  -  -    Decimal value so far = 64<subscript>10</subscript>
weight =       6  8  1 
(in decimal    4  
notation)       
</literal>

<bigspace>

<para>
Now, we need to experiment with cipher values in the 8's place to try and get a total (decimal) value as close to 87 as possible without exceeding it.  Trying the first few cipher options, we get:
</para>

<bigspace>

<literal>
"1" = 64<subscript>10</subscript> + 8<subscript>10</subscript>  = 72<subscript>10</subscript>
"2" = 64<subscript>10</subscript> + 16<subscript>10</subscript> = 80<subscript>10</subscript>
"3" = 64<subscript>10</subscript> + 24<subscript>10</subscript> = 88<subscript>10</subscript> 
</literal>

<bigspace>

<para>
A cipher value of "3" in the 8's place would put us over the desired total of 87<subscript>10</subscript>, so "2" it is!
</para>

<bigspace>

<literal>
.              1  2
.              -  -  -    Decimal value so far = 80<subscript>10</subscript>   
weight =       6  8  1 
(in decimal    4  
notation)       
</literal>

<bigspace>

<para>
Now, all we need to make a total of 87 is a cipher of "7" in the 1's place:
</para>

<bigspace>

<literal>
.              1  2  7
.              -  -  -    Decimal value so far = 87<subscript>10</subscript>   
weight =       6  8  1  
(in decimal    4  
notation)       
</literal>

<bigspace>

<para>
Of course, if you were paying attention during the last section on octal/binary conversions, you will realize that we can take the binary representation of (decimal) 87<subscript>10</subscript>, which we previously determined to be 1010111<subscript>2</subscript>, and easily convert from that to octal to check our work:
</para>

<bigspace>

<literal>
.          Implied zeros
.               ||
.               001 010 111   Binary
.               --- --- --- 
.                1   2   7    Octal
.
Answer: 1010111<subscript>2</subscript> = 127<subscript>8</subscript>
</literal>

<bigspace>

<para>
Can we do decimal-to-hexadecimal conversion the same way?  Sure, but who would want to?  This method is simple to understand, but laborious to carry out.  There is another way to do these conversions, which is essentially the same (mathematically), but easier to accomplish.
</para>

<para>
This other method uses repeated cycles of division (using decimal notation) to break the decimal numeration down into multiples of binary, octal, or hexadecimal place-weight values.  In the first cycle of division, we take the original decimal number and divide it by the base of the numeration system that we're converting to (binary=2 octal=8, hex=16).  Then, we take the whole-number portion of division result (quotient) and divide it by the base value again, and so on, until we end up with a quotient of less than 1.  The binary, octal, or hexadecimal digits are determined by the "remainders" left over by each division step.  Let's see how this works for binary, with the decimal example of 87<subscript>10</subscript>:
</para>

<bigspace>

<literal>
.   87               Divide 87 by 2, to get a quotient of 43.5
.  --- = 43.5        Division "remainder" = 1, or the < 1 portion
.   2                of the quotient times the divisor (0.5 x 2)
.
.   43               Take the whole-number portion of 43.5 (43)
.  --- = 21.5        and divide it by 2 to get 21.5, or 21 with 
.   2                a remainder of 1
.
.   21               And so on . . . remainder = 1 (0.5 x 2)
.  --- = 10.5
.   2
.
.   10               And so on . . . remainder = 0
.  --- = 5.0
.   2
.
.   5                And so on . . . remainder = 1 (0.5 x 2)
.  --- = 2.5
.   2
.
.   2                And so on . . . remainder = 0
.  --- = 1.0
.   2
.
.   1                . . . until we get a quotient of less than 1
.  --- = 0.5         remainder = 1 (0.5 x 2)
.   2
</literal>

<bigspace>

<para>
The binary bits are assembled from the remainders of the successive division steps, beginning with the LSB and proceeding to the MSB.  In this case, we arrive at a binary notation of 1010111<subscript>2</subscript>.  When we divide by 2, we will always get a quotient ending with either ".0" or ".5", i.e. a remainder of either 0 or 1.  As was said before, this repeat-division technique for conversion will work for numeration systems other than binary.  If we were to perform successive divisions using a different number, such as 8 for conversion to octal, we will necessarily get remainders between 0 and 7.  Let's try this with the same decimal number, 87<subscript>10</subscript>:
</para>

<bigspace>

<literal>
.   87               Divide 87 by 8, to get a quotient of 10.875 
.  --- = 10.875      Division "remainder" = 7, or the < 1 portion
.   8                of the quotient times the divisor (.875 x 8)
.
.   10
.  --- = 1.25        Remainder = 2 
.   8
.
.   1
.  --- = 0.125       Quotient is less than 1, so we'll stop here.
.   8                Remainder = 1
.
.  RESULT:   87<subscript>10</subscript>   = 127<subscript>8</subscript>
</literal>

<bigspace>

<para>
We can use a similar technique for converting numeration systems dealing with quantities less than 1, as well.  For converting a decimal number less than 1 into binary, octal, or hexadecimal, we use repeated multiplication, taking the integer portion of the product in each step as the next digit of our converted number.  Let's use the decimal number 0.8125<subscript>10</subscript> as an example, converting to binary:
</para>

<bigspace>

<literal>
.  0.8125 x 2 = 1.625     Integer portion of product = 1
.
.  0.625 x 2 = 1.25       Take < 1 portion of product and remultiply
.                         Integer portion of product = 1
.
.  0.25 x 2 = 0.5         Integer portion of product = 0
.
.  0.5 x 2 = 1.0          Integer portion of product = 1
.                         Stop when product is a pure integer 
.                         (ends with .0)
.
.  RESULT:   0.8125<subscript>10</subscript>   = 0.1101<subscript>2</subscript>
</literal>

<bigspace>

<para>
As with the repeat-division process for integers, each step gives us the next digit (or bit) further away from the "point."  With integer (division), we worked from the LSB to the MSB (right-to-left), but with repeated multiplication, we worked from the left to the right.  To convert a decimal number greater than 1, with a < 1 component, we must use <italic>both</italic> techniques, one at a time.  Take the decimal example of 54.40625<subscript>10</subscript>, converting to binary:
</para>

<bigspace>

<literal>
REPEATED DIVISION FOR THE INTEGER PORTION:
.   
.     54
.    --- = 27.0          Remainder = 0
.     2 
.
.     27
.    --- = 13.5          Remainder = 1  (0.5 x 2)
.     2
.
.     13
.    --- = 6.5           Remainder = 1 (0.5 x 2)
.     2
.
.     6
.    --- = 3.0           Remainder = 0 
.     2
.
.     3
.    --- = 1.5           Remainder = 1 (0.5 x 2) 
.     2
.
.     1
.    --- = 0.5           Remainder = 1 (0.5 x 2)
.     2
.
PARTIAL ANSWER:  54<subscript>10</subscript>   = 110110<subscript>2</subscript>
</literal>

<bigspace>

<literal>
REPEATED MULTIPLICATION FOR THE < 1 PORTION:
.  
.  0.40625 x 2 = 0.8125  Integer portion of product = 0
.
.  0.8125 x 2 = 1.625    Integer portion of product = 1
.
.  0.625 x 2 = 1.25      Integer portion of product = 1
.
.  0.25 x 2 = 0.5        Integer portion of product = 0
.
.  0.5 x 2 = 1.0         Integer portion of product = 1
.
.  PARTIAL ANSWER:  0.40625<subscript>10</subscript>  = 0.01101<subscript>2</subscript>
.
.  COMPLETE ANSWER: 54<subscript>10</subscript>  + 0.40625<subscript>10</subscript>  = 54.40625<subscript>10</subscript>
.
.                   110110<subscript>2</subscript> + 0.01101<subscript>2</subscript> = 110110.01101<subscript>2</subscript>
</literal>

</section>

</chapter>

<pagebreak>

