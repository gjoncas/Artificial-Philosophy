# Oulipian Cube Poems

Christian Bök’s <i>Crystallography</i> (1994: 123) contains ‘square poems’ structured as follows.

&nbsp;A &nbsp;T &nbsp;&thinsp;O &nbsp;M &nbsp; &nbsp; &nbsp;&thinsp;C U B E &nbsp; &nbsp; &nbsp;W O R D &nbsp; &nbsp; &nbsp;U N &thinsp;I &thinsp;T &nbsp; &nbsp; &nbsp;Z &nbsp;O &thinsp;N &nbsp;E &nbsp; &nbsp; &nbsp; a  &nbsp;1 &nbsp;2 &nbsp;3
<br>&nbsp;T &nbsp;&thinsp;Y &nbsp;&thinsp;P &nbsp; E &nbsp; &nbsp; &nbsp; U P O N &nbsp; &nbsp; &nbsp;O B O E &nbsp; &nbsp; &nbsp;N O D E &nbsp; &nbsp; &nbsp;O &nbsp;K &nbsp;A &nbsp;Y &nbsp; &nbsp; &nbsp; 1  &nbsp;b  &nbsp;4 &nbsp;5
<br>O &nbsp;&thinsp;P &nbsp;&thinsp;A &nbsp; L &nbsp; &nbsp; &nbsp; B O L D &nbsp; &nbsp; &nbsp; R O S E &nbsp; &nbsp; &nbsp; &nbsp;I &thinsp;D E A &nbsp; &nbsp; &nbsp;N &nbsp;A &thinsp;M &nbsp;E &nbsp; &nbsp; &nbsp;&thinsp;2  &nbsp;4  &nbsp;c  &nbsp;6
<br>M &nbsp;E &nbsp;&thinsp;&thinsp;L &nbsp; T &nbsp; &nbsp; &nbsp; E N D S &nbsp; &nbsp; &nbsp; D E &nbsp;E P &nbsp; &nbsp; &nbsp; T &thinsp;E A R &nbsp; &nbsp; &nbsp;E &nbsp;&thinsp;Y &nbsp;&thinsp;E &nbsp;&thinsp;S &nbsp; &nbsp; &nbsp;&thinsp;3  &nbsp;5  &nbsp;6  &nbsp;d
 
<b>The Project</b>: 
<br>Find a dictionary, extract all 4-letter words.
<br>Encode rules about the off-diagonal letters.
<br>Generate combinations of 4×4 squares that satisfy these constraints.
<br>Find combinations of these square poems that can combine into a 4×4×4 cube.

There are problems with combining ‘square poems’ to form a cube. 
<br>Consider: given a poem like the rightmost one above, the poem on the face to its right must start with 356d going down. 
<br>But the poem above the main face must have a123 on the bottom (horizontal), and also a123 going down on the right side. 
<br>So the square poem to the right of the main face must start with 321a on the top (horizontal) and 356d on the right (vertical).
<br>This involves two constraints: first, a123 and 321a must both be words. Second, 356d = 321a.

It's possible to write a cube poem, but hard to do a non-trivial one.
<br>A cheap way out is to let a123 = 321a = 356d, i.e. use palindromes. But that’s unsatisfying.

Maybe start with 3×3×3 cubes, and work my way up to 4×4×4 and (if possible) bigger.
<br>It shouldn’t be possible to do 2×2×2 cubes, since any letters need to be palindromes (e.g. aa)

An interesting extension is to encode ‘higher-dimensional’ poems (e.g. 5×5×5×5×5), unrepresentable geometrically.
<br>This would require a general algebraic formula for square/cube poems’ constraints, extended for <i>n</i> dimensions.

I plan to do this in Python. It should be a nice excuse to practice regular expressions.

&nbsp;

<b>4-letter palindromes</b>: 
<br>abba, alla, amma, anna, boob, deed, dood, goog, keek, kook, lool, ma'am, naan, noon, otto, peep, poop, sees, toot

<b>5-letter palindromes</b>: 
<br>Aeaea = mythical island said to be the home of Circe
<br>Alala = a goddess, personification of the war cry/battle cry
<br>alula = bastard wing; a small projection on the anterior edge of the wing on some birds
<br>dewed = past of dew
<br>dioid = an idempotent semiring
<br>dixid = any member of the Dixidae
<br>eirie = alternative form of eyrie
<br>enone = any ketone having a neighbouring double bond
<br>enyne = any compound having both a double bond and a triple bond
<br>finif = a five-dollar bill 
<br>irori = a traditional sunken hearth common in Japan, used to heat the home and to cook food
<br>kaiak, kayak, Kazak, koyok, lemel, level, madam, maqam, minim, mmhmm, neven, put-up, radar, refer, rotor, sagas, semes, sexes, shahs, solos, Soros, stats, stots, tenet, xanax

&nbsp;

<b>References</b>
<ul>
<li>Bök, C. (1994). <i>Crystallography</i>. Toronto, ON: Coach House Books.
</ul>
