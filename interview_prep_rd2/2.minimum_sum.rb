# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of integers, and creates groups of 5
consecutive numbers, and returns the group with the lowest sum. If the size of
the given array is less than 5, the method should return `nil`.


Input: Array of integers

Output: Array




Explicit Rules:
- create subarrays of 5 consecutive elements starting at idx 0
- find the subarray with the lowest sum
- return `nil` if the given array has a size of less than 5



Implicit Rules:
- handling both positive and negative integers


Modelling:

I: [55, 2, 6, 5, 1, 2, 9, 3, 5, 100]
O: 16

[55, 2, 6, 5, 1] => add to an empty array
[2, 6, 5, 1, 2] => add to the same array as above
[6, 5, 1, 2, 9] => add that array


....

---------------- Examples

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

---------------- Data Structures

I: Array
Intermediate: Array
O: Integer



---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` */

Return `nil` if the size of the given array is less than 5
Initialize `result` to an empty collection

Iterate over the indices of `arr`
  - Grab the integers from the current index to the current index+4 (inclusive)
  - Append them to `result`
  - Break out of the iteration when the current idx + 4 is equal to `nil`

Sort the `result` by the sum of it's subarrays from low to high
  - return the sum of the subarray at index 0


=end

def minimum_sum(arr)
  return nil if arr.size < 5

  result = []
  arr.each_index do |idx|
    result << arr[idx..idx+4] if arr[idx..idx+4].size == 5
  end

  result
  result.sort_by! { |subarr| subarr.sum }
  result[0].sum
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) #== 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".