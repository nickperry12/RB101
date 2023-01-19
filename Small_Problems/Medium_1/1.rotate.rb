=begin

Rotation (Part 1) Write a method that rotates an array by moving the first
element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

P:

Restate the problem:

Create a method that swaps the elements at the first and last index without
modifying the original array.

Input: Array Output: New Array

Explicit Rules:
- should not modify the original array (non-mutating)
- cannot use the `#rotate` or `#rotate!` methods

Implicit Rules:
- none identified

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7] rotate_array(['a', 'b',
'c']) == ['b', 'c', 'a'] rotate_array(['a']) == ['a']

x = [1, 2, 3, 4] rotate_array(x) == [2, 3, 4, 1]   # => true x == [1, 2, 3, 4]
# => true

D:

- variable assignment and reassignment, as it is non-mutating
- can use non-destructive `Array#map` to return a new array with the necessary
  changes

A:

/* given an array */

1. create a duplicate of the original array and assign to `new_arr`
2. remove the first element of `new_arr`
3. append the first element of the recieved array to `new_arr`
4. return the new array
=end

def rotate_array(arr)
  new_arr = arr.dup
  new_arr.delete(new_arr[0])
  new_arr << arr[0]
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true