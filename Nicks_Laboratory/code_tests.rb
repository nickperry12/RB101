=begin
Write a method that computes the difference between the square of the sum of the
first n positive integers and the sum of the squares of the first n positive
integers.

P:

Going to write a method that takes an integer as an argument, and computes the
difference of the squared sum of the of the first `n` positive integers and the
sum of the squared first `n` positive integers

Squared sum of first `n` positive integers:

(n + n + n) ** 2

Sum of squared first `n` positive integers

(n ** 2 + n ** 2 + n ** 2)

Find the result of both of these calculations and then find the difference

Explicit Rules:

First operand is the squared sum of `n` positive integers
Second operand is the sum of squared `n` positive integers

Implicit Rules:

The given integer is the end number in a range of integers used in our
calulation

E.g., given integer is 3, our range of numbers is 1, 2, 3

E:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640 sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

D:

Input: Integer
Intermediate: Range
Output: Integer

Algo:

/* given an integer */

1) create a range of numbers (inclusive) of 1 to given int
2) sum the range, and then square it, assign it to variable `a`
3) take each number in the range and square them, then find the sum assign it 
variable `b`
4) find the difference between `a` and `b`
5) return the result

=end

def sum_square_difference(int)
  a = (1..int).sum ** 2
  b = (1..int).to_a.map { |num| num ** 2 }.sum
  a - b
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640 
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150