=begin
---------------- Problem

(https://www.codewars.com/kata/528d9adf0e03778b9e00067e/train/ruby)

6 kyu

You've just discovered a square (NxN) field and you notice a warning sign. The
sign states that there's a single bomb in the 2D grid-like field in front of
you. Write a function mineLocation/MineLocation that accepts a 2D array, and
returns the location of the mine. The mine is represented as the integer 1 in
the 2D array. Areas in the 2D array that are not the mine will be represented as
0s. The location returned should be an array (Tuple<int, int> in C#) where the
first element is the row index, and the second element is the column index of
the bomb location (both should be 0 based). All 2D arrays passed into your
function will be square (NxN), and there will only be one mine in the array.


Restate the problem:

Create a method that accepts a nested array as an argument and returns an array
containing the 2 elements, where the elements is the index of the subarray, and
the second element is the index within the subrray. The indexes should reflect
where the number in the subarray is not == 0


Input: Array

Output: Array




Explicit Rules:

- looking for the subarray that contains the mine, which is referenced by the
  integer 1

- the returned array should contain two elements, the first element referencing
  the index of the subarray, and the second element referencing the index within
  the subarray that is == 1



Implicit Rules:



Modelling:

I:  [1, 0, 0], [0, 0, 0], [0, 0, 0] ] O: [0, 0]

idx 0 of the outter array == [1, 0, 0] idx 0 of the subarray == [1]

Returned array => [0, 0]

Select the subarray, where not all numbers are equal to 0 Once we have that, we
need to find the index of that subarray And then we need to find the index
within that subarray that is the mine


---------------- Examples

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ] ) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ] ) == [2, 2]

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` */

Initialize `mine_array`

  - Iterate through `arr` and select the array where not all elements are equal
    to zero, and assign that subarray to `mine_array`

Initialize result

  - The first element will be the index of `mine_array` within `arr`
  - The second element will be the index of the integer `1` within `mine_array`




=end

def mineLocation(arr)
  mine_array = arr.select { |subarr| !subarr.all? { |item| item.zero? } }.flatten
  result = [arr.index(mine_array), mine_array.index(1)]
end




p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]