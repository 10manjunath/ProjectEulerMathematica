Project Euler Problem 2
Largest prime factor

(*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*)

Max@Select[Divisors[600851475143], PrimeQ]