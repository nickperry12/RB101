=begin
Combine Two Lists

Write a method that combines two Arrays passed in as arguments, and returns a
new Array that contains all elements from both Array arguments, with the
elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same
number of elements.

P:

Restate the problem:

Write a method that takes two arrays and combines them, adding elements in an
alternating fashion to a new array. The method should take an element from 
the first array, and then an element from the second array.

Input: Two Arrays
Output: Combined Array

Explicit Rules:
- elements in the new array should be added from the two given arrays in an
alternating fashion
- given arrays have the same amount of elements and are non-empty

Implicit Rules:
- none identified

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

D:

- use a range from 0 to index size - 1 to grab the elements at each index

A:

/* given two arrays */

using range 0 to the size of the array - 1
1. initialize `combined` and set it to []
2. iterate through the range of numbers and use the num to represent the index
3. append the element at the current index from array1 to `combined`
4. append the element at the current index from array2 to `combined`
5. move onto the next number
6. return the combined array

=end

# def interleave(arr, arr2)
#   combined = []
#   (0..arr.size - 1).each do |num|
#     combined << arr[num]
#     combined << arr2[num]
#   end

#   combined
# end

# Further Exploration
def interleave(arr, arr2)
  arr.zip(arr2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']