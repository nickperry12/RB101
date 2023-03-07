=begin
---------------- Problem

6 kyu

Your goal in this kata is to implement a difference function, which subtracts
one list from another and returns the result.

It should remove all values from list a, which are present in list b.

array_diff([1,2],[1]) == [2]

If a value is present in b, all of its occurrences must be removed from the
other:

array_diff([1,2],[1]) == [2]



Restate the problem:

Create a method that accepts two arrays as an argument. The method should return
a new array, where the common elements in the `arr1` are removed, so that `arr1`
contains no elements that are shared with `arr2`. 


Input: Two Arrays

Output: Array




Explicit Rules:
- remove all elements in `arr1` that appear in `arr2`



Implicit Rules:
- none identified


Modelling:

I: [1, 2]
O: [2]

[1, 2] => select the nums that don't appear in arr2 => [2]


---------------- Examples

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []

---------------- Data Structures

I: 2x Array
Intermediate: Array
O: Array



---------------- Scratchboard






---------------- Algorithm

/* given two arrays `arr1` and `arr2` */

Select all the elements from `arr1` that do not appear in `arr2`
  - Return those elements in the resulting collection


=end

def array_diff(arr1, arr2)
  arr1.select { |item| !arr2.include?(item) }
end


p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
