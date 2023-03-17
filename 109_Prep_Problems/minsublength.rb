# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

=begin
---------------- Problem 


Create a method that takes an array of positive integers as argument1 and a
single positive integer as argument2. Find subarrays that have a sum >= to the
2nd argument. Return the length of the smallest of those subarrays.

Input: Array of positive integers 
Output: A single integer

Rules:
- We can have a subarray of a single digit
- If there are no possible subarrays that are greater than or equal argument2,
  return 0

---------------- Modelling

[1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280 == 4 
[250, 200] ... ==> minimal
length is 2

---------------- Data Structures


---------------- Scratchpad Great Idea!! Methods

---------------- Algorithm 

Initialize variable `result` to an empty array

Create helper method Iterate through the given array and find all the contiguous
  subarrays
  - Iterate through the given array from the first index to the last
    - Iterate through the given array (again) from the current index to the last
      - Slice the given array from the outer index to the inner index - Add that
        slice to `result`

Reassign result to the same array but with only the subarrays >= argument2
integer
  - Iterate through this new array and sort the subarrays by length
    - Return the length of the subarray at index 0

=end


# def minSubLength(arr, int)
#   result = []

#   0.upto(arr.size - 1) do |i|
#     i.upto(arr.size - 1) do |ii|
#       result << arr[i..ii]
#     end
#   end

#   result = result.select do |subarr|
#     subarr.sum >= int
#   end

#   return 0 if result.empty?
#   result.sort_by { |subarr| subarr.size }[0].size
# end


# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

=begin
---------------- Problem

# Given an array of n positive integers and a positive integer, find the minimal
# length of a contiguous subarray for which the sum >= integer.

Restate the problem:

Create a method that accepts an array of integers and a positive integer as an
argument, that finds the minimal length of consecutive numbers, where the sum of
those numbers is greater >= the given integer. 


Input: Array of integers `arr`, positive integer `n`

Output: Array




Explicit Rules:
- find the smallest subarray of continuous elements, where the sum is greater than `n`



Implicit Rules:
- If there is no possible subarray, return 0


Modelling:

I: [2, 3, 1, 2, 4, 3], 7
O: 2

[2, 3] => sum not greater
[2, 3, 1] => sum not greater
[2, 3, 1, 2] => sum greater => result


---------------- Examples

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0
---------------- Data Structures

I: Array, Integer
Itermediate: Integer
O: Integer



---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` and an integer `int` */

Initialize `result` to an empty array

From idx 0 up to the size of `arr` (exclusive)
  - From the current idx + 1 up the sizeof `arr`
    - Initialize `subarr` to the value at outer idx and the value at the
      inner idx
    - Add `subarr` to `result` if the sum of that `subarr` is greater than or
      equal to the `int`
Select the smallest sized `subarr` 

=end

def minSubLength(arr, int)
  result = []

  (0...arr.size).each do |i|
    (i+1...arr.size).each do |ii|
      subarr = arr[i..ii]
      result << subarr if subarr.sum >= int
    end
  end

  result.min_by { |subarr| subarr.size }.size
end




p minSubLength([2, 3, 1, 2, 4, 3], 7) #== 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0