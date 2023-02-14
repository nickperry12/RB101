=begin
---------------- Problem

Write a method that takes an integer argument, and returns an Array of all
integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater
than 0.


Restate the problem:

No need


Input: Integer

Output: Integer




Explicit Rules:
- create an array with the element starting at 1 counting up to the given int



Implicit Rules:
- each int should increment by 1


Modelling: 




---------------- Examples

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

Initialize `result` to an empty collection

Starting at the number `1`
  - Add numbers from 1 to the given integer to result
  - Return the resulting collection



=end

def sequence(int)
  result = []

  1.upto(int) do |num|
    result << num
  end

  result
end


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]