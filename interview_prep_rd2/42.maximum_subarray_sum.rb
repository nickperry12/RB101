# The maximum sum subarray problem consists in finding the maximum sum of a
# contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4] -- should be 6: [4, -1, 2, 1] Easy
# case is when the list is made up of only positive numbers and the maximum sum
# is the sum of the whole array. If the list is made up of only negative
# numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. Note that the empty list
# or array is also a valid sublist/subarray.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an integer for an argument, and returns the highest
sum of a contiguous subarray. If array contains only negative numbers, the
method should return 0, as well as if the given array is empty.


Input: Array

Output: Integer 

Explicit Rules:
- find the highest sum of a contiguous subarray
- return 0 if given array is empty or only contains negative numbers


Implicit Rules:
- none implied


Modelling:

I: [-2, 1, -3, 4, -1, 2, 1, -5, 4]
O: 6

[[-2]]
[[-2], [-2, 1]]
[[-2], [-2, 1], [-2, 1, -3]] ...

Get all subarrays => find the sum => return highest sum


---------------- Examples

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

---------------- Data Structures

I: Array
Intermediate: Array
O: Integer

---------------- Algorithm

/* given an array of integers `arr` */

Return 0 if `arr` is empty or only contains negative numbers

Initialize `subarrays` to an empty collection

Iterate through the nums of the range 0 to the size of `arr` exclusive
  - Iterate through the nums of the current index + 1 to the size of `arr`
    exclusive
    - Add the elements from the outer index to the inner index to `subarrays`

Iterate over and transform each element in `subarrays`
  - Transform each subarray to it's sum

Return the highest sum

=end

def max_sequence(arr)
  return 0 if arr.empty? || arr.all? { |num| num.negative? }

  subarrays = []

  (0...arr.size).each do |i|
    (i...arr.size).each do |ii|
      subarrays << arr[i..ii]
    end
  end

  subarrays.map! { |subarr| subarr.sum }.max
end


p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12