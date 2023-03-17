# Given a list of integers and a single sum value, return the first two values
# (parse from the left please) in order of appearance that add up to form the
# sum.

# If there are two or more pairs with the required sum, the pair whose second
# element has the smallest index is the solution.

# sum_pairs([11, 3, 7, 5],         10) == [3, 7]
#              ^--^      3 + 7 = 10

# sum_pairs([4, 3, 2, 3, 4],         6) == [4, 2]
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * the correct answer is the pair whose second value has the smallest index
=begin
---------------- Problem

Restate the problem:

Create a method that accepts an array of integers and a target integer, that
finds and returns the two elements that sum to the target integer. If there are
more than 1 pair that sum to the target, return the pair who's second value has
the lower index value.


Input: Array

Output: Array

Explicit Rules:
- find the pair that sums to the target
- if more than one pair, return the pair who's second value has the lower idx


Implicit Rules:



Modelling:

I: [1, 4, 8, 7, 3, 15]
O: [1, 7]

[[1, 4], [1,8], [1,7], [1,3] ... ]

=> select pairs that sum to the target

[1, 7] => return value

I: [10, 5, 2, 3, 7, 5]
O: [3, 7]

[[10, 5, 1], [10, 2, 2], [10, 3, 3] ... ]

=> select the pairs that sum to the target

[[5, 5, 5], [3, 7, 4]]

=> sort the array by the value at index -1

[[3, 7, 4], [5, 5, 5]]

[3, 7, 4] => remove last element => return the array


---------------- Examples

p sum_pairs(l1, 8) == [1, 7]
p sum_pairs(l2, -6) == [0, -6]
p sum_pairs(l3, -7) == nil
p sum_pairs(l4, 2) == [1, 1]
p sum_pairs(l5, 10) == [3, 7]
p sum_pairs(l6, 8) == [4, 4]
p sum_pairs(l7, 0) == [0, 0]
p sum_pairs(l8, 10) == [13, -3]

---------------- Data Structures

I: Array
Intermediate: Array
O: Array



---------------- Algorithm

/* given an array of integers `arr` and a target sum `sum` */

Initialize `pairs` to an empty collection

From 0 to the size of `arr` (exclusive), use the parameter `i`
  - From `i+1` to the size of `arr` (exclusive), use the parameter `ii`
    - Create subarrays consisting of the elements of `arr` referenced by `i`
      and `ii`, as well as the index referenced by `ii`
    - Add this subarray to `pairs` if the elements refernced by `i` and `ii`
      sum to `sum`

Sort `pairs` by the value at the last index
  - Take the first subarray from this sorted array, remove the last element,
    and return the subarray

=end

def sum_pairs(arr, sum)
  pairs = []

  (0...arr.size).each do |i|
    (i+1...arr.size).each do |ii|
      if arr[i] + arr[ii] == sum
        pairs << [arr[i], arr[ii], ii]
      end
    end
  end

  return nil if pairs.empty?
  pairs.sort_by! { |subarr| subarr[-1] }
  pairs[0].pop
  pairs[0]
end



l1 = [1, 4, 8, 7, 3, 15]
l2 = [1, -2, 3, 0, -6, 1]
l3 = [20, -13, 40]
l4 = [1, 2, 3, 4, 1, 0]
l5 = [10, 5, 2, 3, 7, 5]
l6 = [4, -2, 3, 3, 4]
l7 = [0, 2, 0]
l8 = [5, 9, 13, -3]

p sum_pairs(l1, 8) == [1, 7]
p sum_pairs(l2, -6) == [0, -6]
p sum_pairs(l3, -7) == nil
p sum_pairs(l4, 2) == [1, 1]
p sum_pairs(l5, 10) == [3, 7]
p sum_pairs(l6, 8) == [4, 4]
p sum_pairs(l7, 0) == [0, 0]
p sum_pairs(l8, 10) == [13, -3]
