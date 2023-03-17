=begin
---------------- Problem

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an
odd integer that is supplied as an argument to the method. You may assume that
the argument will always be an odd integer.

Restate the problem:

Create a method that accepts an odd integer for an argument, and returns a
string representation of a 4 pointed diamond in an n x n grid.


Input: Integer

Output: String

Explicit Rules:
- take the integer and return a diamond in an n x n grid


Implicit Rules:
- each row increments by 2
- the largest row contains an amount of stars equal to `n`


Modelling:

I: 9
O: Diamond with 9 rows

Row 1 => 1 Star
Row 2 => 3 stars
Row 3 => 5 stars
Row 4 => 7 stars
Row 5 => 9 stars
Row 6 => 7 stars
Row 7 => 5 stars
Row 8 => 3 stars
Row 9 => 1 star

Number of stars increments by 2 until we reach the maximum number of stars which
is determined by `n`. The center row will always have the largest number fo stars

[1, 3, 5, 7, 9] + arr[0..-1].reverse
[1, 3, 5, 7, 9, 7, 5, 3, 1]

---------------- Examples

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

---------------- Data Structures

I: Integer
Intermediate: Array
O: String



---------------- Algorithm

/* given an integer `int` */

Create an array of numbers from 1..int, only adding in every second number
  - Initialize this to `rows`

Modify `rows` and replace each element with a '*' * the current num

Iterate over `rows`
  - output each row, centering it by `n` amount of characters (whitespace)

=end

def diamonds(int)
  rows = []
  (1..int).step(2) { |num| rows << num }
  rows += rows[0..-2].reverse

  rows.map! { |row| "*" * row }
  rows.each { |row| puts row.center(int) }
end

p diamonds(9)