Project Euler Problem 30
Digit fifth powers

(*
Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

1634 = 14 + 64 + 34 + 44
8208 = 84 + 24 + 04 + 84
9474 = 94 + 44 + 74 + 44
As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
*)

Total@Flatten@Reap[i = 2;
    While[i <= 999999,
     If[i === Total[IntegerDigits[i]^5], Sow[i]]; i++]][[2]]