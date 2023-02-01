=begin

Multiply All Pairs

Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of every pair
of numbers that can be formed between the elements of the two Arrays. The
results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

P:

Restate the question:

Create a method that takes two arrays as arguments. The method should return a
new array that contains the product of every pair of numbers that can be formed
between the two elements of the given arrays. The returned array should be
sorted from lowest to highest

Input: Two Arrays
Output: Array

Explicit Rules:
- find the product of all possible pairs of numbers that can be formed between
the two arrays
- returned array should be sorted from lowest to highest

Implict Rules:
- none identified

E:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

D:

Array#product method to find all combinations of numbers
#inject to multiply all the subarr nums together

A:

/* given two arrays of integers */

0. initialize `result` to an empty collection
1. find all the combinations of nums from the given arrays and add to `result`
2. find the product of all combinations and store the results into a collection
3. sort that collection from low to high
4. return the collection of sorted nums

=end

def multiply_all_pairs(arr_one, arr_two)
  result = arr_one.product(arr_two)
  result = result.map { |subarr| subarr.inject(&:*) }
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
