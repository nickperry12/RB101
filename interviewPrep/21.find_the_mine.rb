=begin
---------------- Problem

You've just discovered a square (NxN) field and you notice a warning sign. The
sign states that there's a single bomb in the 2D grid-like field in front of
you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns
the location of the mine. The mine is represented as the integer 1 in the 2D
array. Areas in the 2D array that are not the mine will be represented as 0s.
The location returned should be an array (Tuple<int, int> in C#) where the first
element is the row index, and the second element is the column index of the bomb
location (both should be 0 based). 

All 2D arrays passed into your function will be square (NxN), and there will
only be one mine in the array.


Restate the problem:

Create a method that accepts an array of arrays as an argument, that iterates
through the given array and returns a 1D array containing two elements, the
first element referencing the index of the nested array containing the int `1`
within the array, and the second element referencing the index at with the
int `1` is at.


Input: Array of arrays

Output: Array




Explicit Rules:
- need to find the subarray containing the mine, and return an array containing
the index of the subarray, and the index of the mine



Implicit Rules:
- none identified


Modelling:

I: [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]
O: [0, 0]

Idx 0 => [1, 0, 0] => idx 0 of subarr => 1


---------------- Examples

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]


---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` */

Iterate through the given array, and select the subarray that does NOT contain
all zeroes
  - Iterate through the selected subarray and find the index at which the int 1
    is at

Return an array containing the index for the selected subarr, and the index for
the integer 1


=end

def mineLocation(arr)
  mine_arr = arr.select { |subarr| !subarr.all? { |num| num.zero? } }.flatten
  [arr.index(mine_arr), mine_arr.index(1)]
end




p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
