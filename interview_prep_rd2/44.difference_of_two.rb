# The objective is to return all pairs of integers from a given array of
# integers that have a difference of 2.

# The result array should be sorted in ascending order of values.

# Assume there are no duplicate integers in the array. The order of the integers
# in the input array should not matter.

# Examples [1, 2, 3, 4]  should return [[1, 3], [2, 4]]

# [4, 1, 2, 3]  should also return [[1, 3], [2, 4]]

# [1, 23, 3, 4, 7] should return [[1, 3]]

# [4, 3, 1, 5, 6] should return [[1, 3], [3, 5], [4, 6]]
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array of integers, that finds all the pairs that
have a difference of 2. The integers in the subarrays should be sorted in
ascending order, as well as the array as a whole.


Input: Array

Output: Array

Explicit Rules:
- find all pairs that have a difference of 2
- must be sorted in ascending order


Implicit Rules:
- none implied


Modelling:

I: [1, 2, 3, 4]
O: [[1, 3], [2, 4]]

[[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
=> select pairs with a differnce of 2

[1, 3] => -2 => convert to absolute val => 2
[2, 4] => -2 => convert to absolute val => 2




---------------- Examples

p twos_difference([1, 2, 3, 4]) == [[1, 3], [2, 4]]
p twos_difference([1, 3, 4, 6]) == [[1, 3], [4, 6]]
p twos_difference([0, 3, 1, 4]) == [[1, 3]]
p twos_difference([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p twos_difference([6, 3, 4, 1, 5]) == [[1, 3], [3, 5], [4, 6]]
p twos_difference([3, 1, 6, 4]) == [[1, 3], [4, 6]]
p twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]) == [[1, 3], [3, 5],
[6, 8], [8, 10], [10, 12], [12, 14]]
p twos_difference([1, 4, 7, 10]) == []
p twos_difference([]) == []

---------------- Data Structures

I: Array
Intermediate: Array
O: Array

---------------- Algorithm

/* given an array `arr` */

Initialize `pairs` to an empty collection
Sort the given array in ascending order

On the outer iteration, iterate from 0 to `arr` size (exclusive)
  - On the inner iteration, iterate from current idx + 1 to `arr` size
    (exclusive)
    - Add the elements referenced by the outer and inner indices as an array to
      `pairs`

Select all the pairs from `pairs` that have a difference of 2
  - Must convert difference to an absolute value

Return the selected pairs

=end

def twos_difference(arr)
  pairs = []
  arr = arr.sort

  (0...arr.size).each do |i|
    (i+1...arr.size).each do |ii|
      pairs << [arr[i], arr[ii]] if (arr[i] - arr[ii]).abs == 2
    end
  end

  pairs
end


p twos_difference([1, 2, 3, 4]) == [[1, 3], [2, 4]]
p twos_difference([1, 3, 4, 6]) == [[1, 3], [4, 6]]
p twos_difference([0, 3, 1, 4]) == [[1, 3]]
p twos_difference([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p twos_difference([6, 3, 4, 1, 5]) == [[1, 3], [3, 5], [4, 6]]
p twos_difference([3, 1, 6, 4]) == [[1, 3], [4, 6]]
p twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]) == [[1, 3], [3, 5], [6, 8], [8, 10], [10, 12], [12, 14]]
p twos_difference([1, 4, 7, 10]) == []
p twos_difference([]) == []