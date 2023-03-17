=begin
---------------- Problem

# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

Restate the problem:

Create a method that accepts an array of integers and finds the
two numbers that are closest together in value.


Input: Array

Output: Array




Explicit Rules:
- we're returning an array containing the two integers who have the closest
  value



Implicit Rules:
- the two integers selected do not need to be consecutive


Modelling:

I: [5, 25, 15, 11, 20]
O: [15, 11]

[[5, 25], [5, 15], [5, 11], [5, 20], [25, 15], [25, 11], [25, 20] .... ]

=> sort resulting array by the delta of the two numbers => return the first
subarray 

---------------- Examples

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

---------------- Data Structures

I: Array
Intermediate: Array of arrays
O: Array


---------------- Scratchboard






---------------- Algorithm

/* given an array of integers `arr` */

Initialize `pairs` to an empty collection

From 0 to the size of `arr` (exclusive)
  - From the current index + 1 to the size of `arr` (exclusive)
    - Initialize `pair` to the collection of the integer referenced by the outer
      index and the integer referenced by the inner index
    - Add `pair` to `pairs`

Sort `pairs` by the difference of the two integers with each pair (low to high)
  - Return the pair at index 0


=end

def closest_numbers(arr)
  pairs = []

  (0...arr.size).each do |idx|
    (idx+1...arr.size).each do |idx2|
      pairs << [arr[idx], arr[idx2]]
    end
  end

  pairs.sort_by! { |pair| (pair[0] - pair[1]).abs }
  pairs[0]
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".