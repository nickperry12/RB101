=begin
Multiplying Two Numbers

Create a method that takes two arguments, multiplies them together, and returns
the result.

P:
Need to create a method that takes two arguments (both integers)
- the method should multiply the given integers by each other
- after calculating, the method should return the product

Explicit Rules:
- Method multiplies the given integers by themselves

Implicit Rules:
- Arguments given should be integers
- Only work with whole numbers

E:

multiply(5, 3) == 15

D:
Input: Integer
Output: Integer

A (High Level):

Create a method called `multiply` that takes two arguments (both integers)
- multiply the first argument by the second argument
- return the result

C:
=end

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3) == 15