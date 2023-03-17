=begin

Write a method that takes one argument: an array of integers. The method should
return the minimum sum of 5 consecutive numbers in the array. If the array
contains fewer than 5 elements, the method should return nil.

P:

Going to create a method that takes an array of integers, and returns the sum of
5 consecutive numbers in that array. The method should return `nil` if the array
contains fewer than 5 numbers. 

We need to iterate through each set of 5 integers in the array, find the sum of
those 5 integers, and then find the lowest sum

Explicit Rules:

Must find the lowest sum of 5 consecutive integers in the array

Implicit Rules:

None identified

E:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

D:

Input: Array of integers
Intermediate: Sorted array of integers
Output: Integer

A:

/* given an array of integers */

1. return `nil` if the size of the given array is less than 5
2a. set start_index to 0
2b. set end_index to 4
2c. iterate through the array and find the sum of 5 consecutive numbers starting
with the first number
2d. add 1 to start_index and end_index after each iteration
2e. stop iterating when end_index is equal to the index of the last number in
the array
4. store each result into a separate array
5. return the small number in the resulting array


=end

# def minimum_sum(arr)
#   return nil if arr.size < 5

#   sums = []
#   start_index = 0
#   last_index = 4

#   loop do
#     sums << arr[start_index..last_index].sum
#     start_index += 1
#     last_index += 1
#     break if last_index == arr.size - 1
#   end

#   sums.min
# end

# Write a method that takes one argument: an array of integers. The method should
# return the minimum sum of 5 consecutive numbers in the array. If the array
# contains fewer than 5 elements, the method should return nil.

=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of integers, and returns a subarray of 5
consecutive integers with the smallest sum. If the size of the given array is
smaller than 5, return `nil`


Input: Array

Output: Array




Explicit Rules:
- Find the 5 consecutive numbers with the smallest sum and return them in an
  array



Implicit Rules:
- none implied


Modelling:

I: [1, 2, 3, 4, 5, 6]
O: 15

[1, 2, 3, 4, 5] => 15
[2, 3, 4, 5, 6] => 16

15 


---------------- Examples

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

---------------- Data Structures

I: Array
Intermediate: Array
O: Array



---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` */

Initialize `result` to an empty collecton

Iterate through each index of `arr`
  - Add the elements from the current idx to idx + 4 to `result`
    - Stop when idx+4 is equal to `nil`

Find the subarray with `result` with the smallest sum


=end

def minimum_sum(arr)
  return nil if arr.size < 5
  result = []

  arr.each_index do |idx|
    result << arr[idx..idx+4] if arr[idx..idx+4].size == 5
  end

  #result.min_by { |subarr| subarr.sum }.sum
  result.sort_by! { |subarr| subarr.sum }
  result[0].sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10