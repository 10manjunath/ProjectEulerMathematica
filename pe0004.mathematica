Project Euler Problem 4
Largest palindrome product

(*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
*)

Max[Select[Times[#[[1]], #[[2]]] & /@ Tuples[Range[100, 999], {2}], 
  PalindromeQ]]