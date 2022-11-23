=begin

Squaring an Argument

Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

P:

Write a program that does the following:
- has one paramter
- takes a given integer and squares it
- returns the result

Example:

square(5) == 25
square(-8) == 64

D:

Input: Integer
Output: Integer

A (High Level):

create a method called `square_number` that takes one argument (an integer)
- multiply the given integer by self
- output the result

=end

def square(num)
  num *= num
end

p square(5) == 25