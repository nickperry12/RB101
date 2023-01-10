=begin

Right Triangles

Write a method that takes a positive integer, n, as an argument, and displays a
right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left of
the triangle, and the other end at the upper-right.

P:

We have to create a method that takes an integer as an argument, and creates
a right sided triangle, where the amount of stars in the bottom row is equal
to given integer

Explicit Rules:

The hypotenuse should have one end at the lower-left and the other at the upper
right end of the triangle

Implicit Rules:

The triangle is composed of stars
The base layer of the triangle has stars equal to the given integer

The top layer of the triangle has 1 star, and the rest spaces

Examples:

triangle(5)

    *
   **
  ***
 ****
*****

amount of rows is = given int

first row = 1 star, 4 spaces
second row = 2 stars, 3 spaces
third row = 3 stars, 2 spaces
fourth row = 4 stars, 1 space
fifth row = 5 stars, 0 spaces

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

D:

Input: Integer
Intermediate: Range
Output: String

A:

/* given an integer */

1. use a range of numbers from 1 to the given integer
2. iterate over the range of numbers
3. print spaces, with the amount equal to integer - the current num in range,
and print stars with the amount equal to the current num in range
4. repeat this for every number in our range of nums

=end

def triangle(n)
  (1..n).each do |num|
    puts (' ' * (n - num)) + ('*' * num)
  end
end

triangle(5)

triangle(9)

# Further Exploration, create an upside down triangle

def reverse_triangle(n)
  (0..n).each do |num|
    puts ('*' * (n-num) + (' ') * num)
  end
end

reverse_triangle(5)

reverse_triangle(9)