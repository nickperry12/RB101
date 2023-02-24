=begin
---------------- Problem

The Fibonacci series is a sequence of numbers starting with 1 and 1 where each
number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1
= 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical
terms:

F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2

Sequences like this translate naturally as "recursive" methods. A recursive
method is one in which the method calls itself. For example:

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

sum is a recursive method that computes the sum of all integers between 1 and n.

Recursive methods have three primary qualities:

They call themselves at least once.
They have a condition that stops the recursion (n == 1 above).
They use the result returned by themselves.
In the code above, sum calls itself once; it uses a condition of n == 1 to stop
recursing; and, n + sum(n - 1) uses the return value of the recursive call to
compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where nth is an
argument to the method.

Restate the problem:

Create a recursive method that accepts one argument, an integer (`n`) that finds
the `n`th Fibonacci number. 


Input: Integer

Output: Integer




Explicit Rules:
- the method should use recursion



Implicit Rules:
- none identified


Modelling:

We know that a recursive method should satisfy these 3 qualities:

They call themselves at least once.
They have a condition that stops the recursion (n == 1 above).
They use the result returned by themselves.

We know that the first 2 fibonacci numbers are 1. So if the given integer is
less than or equal to 2, our method should return 1.


---------------- Examples

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

If the given integer is less than or equal to 2, return 1

Reassign `n` to the sum of the return value of fibonacci(`n` - 1) + fibonacci(`n` - 2)


=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n-1) + fibonacci(n-2)
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(80)