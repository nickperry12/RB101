=begin
---------------- Problem

Write a method that returns an Array that contains every other element of an
Array that is passed in as an argument. The values in the returned list should
be those values that are in the 1st, 3rd, 5th, and so on elements of the
argument Array.




Restate the problem:

Create a method that takes an array as an argument, and returns a new array that
contains every other element from the given array. 



Input: Array

Output: Array




Explicit Rules:
- The new array should only contain every other element starting at the first
  index



Implicit Rules:
- None identified


Modelling: 




---------------- Examples

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array */

Return an empty array if the given array is empty

Otherwise,

Iterate through the given array
- If the index is even, add that element to our new array
  - Ignore that element if the index is odd

Return the array


=end

def oddities(arr)
  arr.select.with_index do |_, idx|
    idx.even?
  end
end



p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]