=begin

Write a method that takes one argument, a positive integer, and
returns the sum of its digits.

For a challenge, try writing this without any basic
looping constructs (while, until, loop, and each).

--- PEDAC Solution: ---

Understanding the Problem:

Create a method that take's an integer for an argument. The
method should add up the sum of all the digits in the integer.
For example, if the integer passed to the method is 62, the 
result should be 8.

Explicit Rules:
Method takes one argument, an integer. Result should also be an integer.

Implicit Rules:
Digits can be separated with an underscore if using larger numbers.

Clarification:
Are we able to pass negative numbers or positive only?

Examples / Test Cases:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
The tests above should print true.

Data Structure:

Input: Integer
Output: Integer


Algorithm:

Create a method called 'sum' that takes one argument (number)
1. Initialize a collection called 'digits'
1b. Split the given number into single digits
1c. Store the digits into this collection
2. Sum up all the digits stored in the collection
3. Return the result in the form of an integer

Coding with intent:

=end

def sum(number)
  digits = number.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45