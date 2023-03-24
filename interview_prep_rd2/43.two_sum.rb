# Write a function that takes an array of numbers (integers for the tests) and a
# target number. It should find two different items in the array that, when
# added together, give the target value. The indices of these items should then
# be returned in a tuple / list (depending on your language) like so: (index1,
# index2).

# For the purposes of this kata, some tests may have multiple answers; any valid
# solutions will be accepted.

# The input will always be valid (numbers will be an array of length 2 or
# greater, and all of the items will be numbers; target will always be the sum
# of two different items from that array).
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array and an integer for arguments, and finds
the two integers within the array that sum to the target integer. The method
should then return the index positions for those two integers. 


Input: Array

Output: Array

Explicit Rules:
- find the two integers that sum to the target, and return their index positions
  in an array


Implicit Rules:
- none implied


Modelling:

I: [1, 2, 3], 4
O: [0, 2]

Iterate through elements (nested) => If the two current elements on iteration
sum to target => add those indices to an array => return the indices


---------------- Examples

p two_sum([1, 2, 3], 4) == [0, 2]
p two_sum([1234, 5678, 9012], 14690) == [1, 2]
p two_sum([2, 2, 3], 4) == [0, 1]

---------------- Data Structures

I: Array, integer
Intermediate: Array
O: Array

---------------- Algorithm

/* given an array `arr` and an integer `target` */

Iterate through the nums from 1 to the size of `arr` (exclusive)
  - Iterate through the nums from the outer idx + 1 to `arr` size (exclusive)
    - Return the outer index and inner idx if the elements they reference sum to
      the target

=end

def two_sum(arr, target)
  (0...arr.size).each do |i|
    (i+1...arr.size).each do |ii|
      return [i, ii] if arr[i] + arr[ii] == target
    end
  end
end


p two_sum([1, 2, 3], 4) == [0, 2]
p two_sum([1234, 5678, 9012], 14690) == [1, 2]
p two_sum([2, 2, 3], 4) == [0, 1]