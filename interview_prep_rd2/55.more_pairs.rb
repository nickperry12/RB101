=begin 

Write a function that pairs the first number in an array with the last, the
second number with the second to last, etc.
Examples
pairs([1, 2, 3, 4, 5, 6, 7]) ➞ [[1, 7], [2, 6], [3, 5], [4, 4]]
pairs([1, 2, 3, 4, 5, 6]) ➞ [[1, 6], [2, 5], [3, 4]]
pairs([5, 9, 8, 1, 2]) ➞ [[5, 2], [9, 1], [8, 8]]
pairs([]) ➞ []

Notes
If the array has an odd length, repeat the middle element twice for the last pair.
Return an empty array if the input is an empty array.

=end 
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array of integers, and returns an array of
subarrays, with each subarray pair items at opposing indexes. For example, index
0 gets paired with index -1, index 1 gets paired index -2. If the size of the
array is odd, pair the middle index with itself as the last pair.


Input: Array

Output: Array of subarrays

Explicit Rules:
- opposing indexes get paired (first with last, second with second last, etc.)
- if the size of the given array is odd, pair the middle index with itself as
  the last pair

Implicit Rules:
- none implied
- if the size of the array is 1, create a single pair, pairing the items with
  itself


Modelling:

I: [1, 2, 3, 4, 5, 6, 7]
O: [[1, 7], [2, 6], [3, 5], [4, 4]]

counter = 6
idx = 0 and idx + 6 | arr[idx] + arr[idx + 6] => [1, 7]

counter = 4
idx = 1, idx + 4 => [2, 6]

counter = 2
idx = 2, idx + 2 => [3, 5]

counter = 0
idx = 3, idx + 0 => [4, 4]

I: [1, 2, 3, 4, 5, 6]
O: [[1, 6], [2, 5], [3, 4]]

counter = 5
idx = 0, idx + 5 => [1, 6]

counter = 3
idx = 1, idx + 3 => [2, 5]

counter = 1
idx = 2, idx + 1 => [3, 4]


---------------- Examples

p pairs([1, 2, 3, 4, 5, 6]) == [[1, 6], [2, 5], [3, 4]]
p pairs([1, 1, 4, 4, 5, 5]) == [[1, 5], [1, 5], [4, 4]]
p pairs([5, 6]) == [[5, 6]]
p pairs([1, 2, 3, 4, 5, 6, 7]) == [[1, 7], [2, 6], [3, 5], [4, 4]]
p pairs([9, 9, 9, 9, 3, 3, 9]) == [[9, 9], [9, 3], [9, 3], [9, 9]]
p pairs([5, 9, 8, 1, 2]) == [[5, 2], [9, 1], [8, 8]]
p pairs([5, 6, 7]) == [[5, 7], [6, 6]]
p pairs([5]) == [[5, 5]]
p pairs([]) == []

---------------- Data Structures

I: Array
Intermediate: Range, Array
O: Array of subarrays


---------------- Algorithm

/* given an array `arr` */

Initialize `pairs` to an empty collection
Initialize `counter` to the size of `arr` - 1

From 0 to the size of `arr` minus 1, divided by 2 |i|
  - Grab the elements from `arr` at the index referenced by `i` and `i+counter`
  - Add that pair of elements into `pairs`
  - Decrement `counter` by 2

Return `pairs`

=end

def pairs(arr)
  pairs = []
  counter = arr.size - 1

  (0..((arr.size - 1) / 2)).each do |i|
    pairs << [arr[i], arr[counter]]
    counter -= 1
  end

  pairs
end

# test cases
p pairs([1, 2, 3, 4, 5, 6]) == [[1, 6], [2, 5], [3, 4]]
p pairs([1, 1, 4, 4, 5, 5]) == [[1, 5], [1, 5], [4, 4]]
p pairs([5, 6]) == [[5, 6]]
p pairs([1, 2, 3, 4, 5, 6, 7]) == [[1, 7], [2, 6], [3, 5], [4, 4]]
p pairs([9, 9, 9, 9, 3, 3, 9]) == [[9, 9], [9, 3], [9, 3], [9, 9]]
p pairs([5, 9, 8, 1, 2]) == [[5, 2], [9, 1], [8, 8]]
p pairs([5, 6, 7]) == [[5, 7], [6, 6]]
p pairs([5]) == [[5, 5]]
p pairs([]) == []