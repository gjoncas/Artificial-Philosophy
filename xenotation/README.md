# Tic Xenotation & Number Theory

Nick Land’s tic xenotation (TX) for natural numbers is intended as “a maximally abstracted or ultimately decoded numerical semiotic, 
stripped of all nonconstructive (or symbolic) conventions (and initially named ‘Gödelian hypercode’)” (2011: 610).

TX has two parts. The first is tics, written ‘:’ or ‘.’ — signifying ‘2’ or ‘×2’. Thus, : = 2, :: = 4, ::: = 8, and so on.

The second part is ‘(im)plexions’, written as brackets ‘()’. Here, ‘(n)’ = the <i>n</i>th prime. Thus:

<blockquote>
(:) = 3 (2nd prime), 
<br>((:)) = 5 (3rd prime)
<br>(((:))) = 11 (5th prime ),
<br>((((:)))) = 31 (11th prime) 
<br>(((((:))))) = 127 (31st prime)
</blockquote>

The fundamental theorem of arithmetic states that every number is uniquely decomposable into a product of primes. 
In TX, we arrange these from smallest to largest (‘lexiconographic order’), which is clearly also unique. 
We add an <i>ad hoc</i> operator <br>‘−P’ for the numbers 0 and 1. 
Thus, every non-negative integer can be uniquely represented using TX.

Even after arranging numbers in order, no clear pattern exists unless you already know the secret.

<blockquote>
[0] ((-P)):
<br>[1] (-P):
<br>[2] :
<br>[3] (:)
<br>[4] ::
<br>[5] ((:))
<br>[6] :(:)
<br>[7] (::)
<br>[8] :::
<br>[9] (:)(:)
</blockquote>

This xenotation closely parallels Land's interest in Qabbala. Each amount to “segregating the semiotics of digit definition from 
the semantics of numerical construction, delinking digitisability from computability, nomination from numeration” (2011: 402). 

If TX is “the most radically decoded semiotic ever to exist upon the earth” (2011: 608), then the question is precisely <i>how</i> this 
process of decoding takes place. An algorithm for TX should also shed light on Land’s cryptic statements about other aspects of TX. 
(See especially Land's diagrams on pp. 641-44.)

&nbsp;

<b>The Project</b>:

Write a program to convert from numerals to tic xenotation, and from TX to numerals. 

An open question, also worth exploring, is whether there is any way to add or multiply numbers in tic xenotation 
beyond the trivial method of converting them back to numerals.

Since (n) = the <i>n</i>th prime, it's necessary both to check that a number is prime, and if so, its position within the primes. 
<br>Thus, the TX algorithm combines several smaller algorithms.

In and of itself, the project shouldn't be that hard — mostly a matter of identifying the right recursive structures.
<br>I plan to use Python for this, though it might also be fun to write this in Haskell.

Further extensions to this project may try to combine TX with combinatorial game theory.

&nbsp;

<b>References</b>
<ul>
<li>Land, N. (2011). <i>Fanged Noumena: Collected Writings, 1987-2007</i>. Falmouth, UK: Urbanomic.</li>
</ul>
