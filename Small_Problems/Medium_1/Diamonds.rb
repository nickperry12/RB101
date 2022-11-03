=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an
odd integer that is supplied as an argument to the method. You may assume that
the argument will always be an odd integer.

Understanding the problem:
- Create a method that takes one argument
  - argument is an odd integer
  - we are safe to assume the integer provided will always be odd
- The method should create a diamond consisting of rows of stars
- The diamond should be 4 pointed

Mental Model:
- The start and end rows will always contain one diamond. The rows then
increment by 2 until the reach the given integer, which will be the amount of
diamonds in the center row. The rows then decrease by 2 until the reach the
bottom row.
- We can initialize an empty array called `rows` and add stars to each index
until index is = `row_length` - 1

Explicit Rules:
- Integer given is always odd
- Should print out a 4 point diamond

Implicit Rules:
- Rows contain leading and trailing white spaces with diamonds in the center
- Center row should be the largest
- Given integer should represent the center row in the context of the output
- The size of the rows increment by two until it reaches the center, at which
point they begin to decrease by two
- The first and last row will always end with 1 diamond

Examples/Test Cases:
diamond(1) * diamond(3) *
***
 * diamond(9) *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
Data Structure:

Input: odd integer
Output: Multiple strings shaping the diamond, filled with
stars (*)

Algorithm:

- create a method called `diamond` that takes a single argument `n`
  - initialize an empty array called `rows`
  - add stars to the row, with each subsequent addition adding two more stars
  - stop adding stars when length of `rows` is equal to `n` - 1
  - iterate through the array and output each element with the stars centered
  between leading and trailing spaces
  - initialize an array called `center_row` and add stars * n
  - iterate through `rows` again but this time in reverse
=end

def diamond(n)
  rows = []
  stars = "*"
  number_of_stars = 1

  loop do
    rows << (stars * number_of_stars)
    number_of_stars += 2
    break if rows.length == n / 2
  end

  rows.each { |row| puts row.center(n) }
  puts (stars * n).center(n)
  rows.reverse.each { |row| puts row.center(n) }
end

diamond(17)