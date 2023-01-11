=begin

Always Return Negative

Write a method that takes a number as an argument. If the argument is a positive
number, return the negative of that number. If the number is 0 or negative,
return the original number.

P:

Input: Integer
Output: Integer

Restate the question:

Create a method that takes an integer as an argument and returns the negative
of that integer. If the number is 0 or already negative, return the original
integer

Explicit Rules:

- Must return the negative of the given integer
- If given number is negative or 0, return given integer

Implicit Rules:

- None identified


Examples:
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

D:

- Can use an if/else statement to handle what the method will return
- If positive, turn into negative
- If 0 or negative, return self

A:

/* given an integer */

1. if the given integer is positive, multiply by -1 and return result
2. if the given integer is 0 or negative, return given int

=end

def negative(int)
  int.positive? ? int * -1 : int
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 