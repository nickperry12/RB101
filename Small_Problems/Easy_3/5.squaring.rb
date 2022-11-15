=begin
Squaring an Argument

Using the multiply method from the "Multiplying Two Numbers" problem, write a
method that computes the square of its argument (the square is the result of
multiplying a number by itself).

P:

We're going to use the method `multiply` we wrote in the previous argument.
Using that method, write a new method that calculates the square of the given
argument.

Explicit Rules:
- The square is the result of multiplying a number by self
- Need to use the `multiply` method within our method to get our answer

Implicit Rules:
- Numbers provided should be whole numbers
- Numbers can be positive or negative

E:

square(5) == 25
square(-8) == 64

D:

Input: Integer
Output: Integer

A (High Level):

create called `square` that takes one argument (an integer)
- invoke the multiply method, pass in the given argument to this method
- the given inteer will passed as both arguments into the multiply method
- return the result

C:
=end

def multiply(num1, num2)
  num1 * num2
end

def square(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64