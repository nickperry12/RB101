=begin
---------------- Problem

Write a method that takes one argument, a positive integer, and returns the sum
of its digits.

Restate the problem:

Create a method that takes an integer and returns the sum of the digits it
contains


Input: Integer

Output: Integer




Explicit Rules:
- Must find and return the sum of the digits contain in the given integer



Implicit Rules:
- None identified


Modelling: 




---------------- Examples

p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

Split the given integer into a collection of its digits
  - Sequentially add each digit together
    - Return the result


=end

def sum(int)
  int.digits.inject(&:+)
end



p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45