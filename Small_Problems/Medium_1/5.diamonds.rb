=begin
---------------- Problem

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an
odd integer that is supplied as an argument to the method. You may assume that
the argument will always be an odd integer.

diamond(1)

*

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

Restate the problem:

Create a method that takes a negative integer for an argument, and returns a
4-pointed diamon in a `n` x `n` grid, where `n` is an odd integer. 


Input: Integer

Output: String




Explicit Rules:
- The given integer will always be odd
- Diamond must be 4 pointed



Implicit Rules:
- Given integer also represents the center row of diamonds


Modelling: 




---------------- Examples






---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

Initialize `star` to "*"

From 1 up to the given integer, create an array of integers containing every
other number in this range
  - Reverse this array, and append numbers from index 1 to index -1 to the array
    - Iterate over this array of nums, and output stars equivalent to the
      current num, centered between `n` spaces


=end

def diamond(int)
  rows = (1...int).step(2).to_a + int.downto(1).select(&:odd?)
  rows.each { |row| puts ("*" * row).rjust(int) }
end

p diamond(9)

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *