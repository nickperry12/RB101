=begin
---------------- Problem

A triangle is classified as follows:

right: One angle of the triangle is a right angle (90 degrees)
acute: All 3 angles of the triangle are less than 90 degrees
obtuse: One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and
all angles must be greater than 0: if either of these conditions is not
satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a
symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is
a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating
point errors. You may also assume that the arguments are specified in degrees.

Restate the problem:

Create a method that accepts three intergers for its arguments, with each
integer representing the angles of a triangle. The method should return whether
the triangle is a right, acute or obtuse triangle. If the angles provided don't
satisfy these two conditions, it's invalid:

1. all angles must be greater than 0
2. all angles must sum to exactly 180


Input: Integers x3

Output: Symbol




Explicit Rules:
- return what kind of triangle it is dependent on the angles provided
- angles must be greater than 0 and sum to exactly 180 to be valid



Implicit Rules:
- none identified


Modelling:

I: 60, 70, 50
O: :acute

60 + 70 + 50 => 180
all greater than 0? => true

valid

All less than 90? => true => acute


---------------- Examples

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given 3 integers `angleOne` `angleTwo` `angleThree` */

Validate the triangle
  - Check to see if the sum to exactly 180
  - Check if all are greater than 0

If any angles are equal to 90
  - it's a right triangle, return :right

If all angles are less than 90
  - it's an acute triangle, return :acute

If any angles are greater than 90
  - it's an obtuse triangle, return :obtuse

=end

def triangle(angleOne, angleTwo, angleThree)
  angles = [angleOne, angleTwo, angleThree]
  if angles.sum != 180 || angles.any? { |angle| angle == 0 }
    return :invalid
  end

  if angles.any? { |angle| angle > 90 }
    :obtuse
  elsif angles.any? { |angle| angle == 90 }
    :right
  elsif angles.any? { |angle| angle < 90 }
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid