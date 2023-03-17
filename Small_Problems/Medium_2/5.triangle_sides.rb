=begin
---------------- Problem

A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be
greater than the length of the longest side, and all sides must have lengths
greater than 0: if either of these conditions is not satisfied, the triangle is
invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments,
and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending
on whether the triangle is equilateral, isosceles, scalene, or invalid.

Restate the problem:

Create a method that accepts 3 integers as it's arguments, and returns what kind
of triangle we have. To be a triangle, two conditions must be sastisfied:

1. all sides must be greater than 0
2. the sum of two sides must be greater than the length of the longest side


Input: Integers x3

Output: Symbols (:isosceles, :equilateral, :scalene, :invalid)




Explicit Rules:




Implicit Rules:



Modelling:

I: 3, 3, 3
O: :equilateral

[3, 3, 3] => all equal => equilateral

I: 0, 3, 3
O: Invalid

[0, 3, 3] => largest num == 3 => 3 + 0 == 3 => not greater => invalid




---------------- Examples

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

---------------- Data Structures

I: Integers
Intermediate: Array
O: Symbol



---------------- Scratchboard






---------------- Algorithm

/* given 3 integers `numOne` `numTwo` `numThree` */

Initialize `sides` to a collection containing the integers being passed in

Initialize `max` to the largest number in `sides`
  - select the numbers that are less than equal to `max` from `sides`
    - find the sum
      - if the sum is not greater than `max` return :invalid

If `numOne` is equal to both `numTwo` and `numThree`
  - Return :equilateral

If `numOne` is equal to `numTwo` and not `numThree`, or `numTwo` is equal to
`numThree` but not `numOne`
  - Return :isosceles

If none of the given numbers are equal
  - Return :scalene

=end

def triangle(numOne, numTwo, numThree)
  sides = [numOne, numTwo, numThree].sort { |a, b| b <=> a }
  return :invalid if sides[1] + sides[2] <= sides[0]
  
  if numOne == numTwo && numTwo == numThree
    :equilateral
  elsif (numOne == numTwo && numTwo != numThree) || (numTwo == numThree && numOne != numTwo)
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid