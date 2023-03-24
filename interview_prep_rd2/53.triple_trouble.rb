# Write a function

# triple_double(num1, num2)
# which takes numbers num1 and num2 and returns 1 if there is a straight triple
# of a number at any place in num1 and also a straight double of the same number
# in num2.

# If this isn't the case, return 0
=begin
---------------- Problem
Restate the problem:

Create a method that accepts two integers, and returns 1 if there are 3
consecutive digits in num1 that are the same, that also appear as 2 consecutive
digits in num2. Return 0 if not.


Input: Two Integers

Output: Integer (1 or 0)

Explicit Rules:
- the three consecutive integers within num1 must appear as a double in num2


Implicit Rules:
- none implied


Modelling:

I: 451999277, 41177722899
O: 1

Convert to a string
Iterate over chars => return 1 if the current char * 3 appears in num2 as char * 2



---------------- Examples

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0

---------------- Data Structures

I: Two integers
Intermediate: Array
O: Integer

---------------- Algorithm

/* given two integers `num1` and `num2` */

Convert `num1` and `num2` to strings

Iterate through each char of `num1`
  - If the current char * 3 is included in `num1` and the current char * 2 is
    included in `num2`, return 1

Return 0 if no possible char exists

=end

def triple_double(num1, num2)
  num1 = num1.to_s
  num2 = num2.to_s

  num1.each_char do |char|
    return 1 if num1.include?(char * 3) && num2.include?(char * 2)
  end

  0
end


p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0