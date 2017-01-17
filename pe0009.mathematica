Project Euler Problem 9
Special Pythagorean triplet

(*
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*)

Clear[PythCheck, a, b, c]
PythCheck[a_, b_, c_] := 
 If[a < b < c, 
  If[((a^2 + b^2) === c^2) && ((a + b + c) == 1000), True, False], 
  False]
Times @@@ 
 Select[IntegerPartitions[1000, {3}], 
  Apply[Or, Apply[PythCheck, Permutations[#], 1]] &]