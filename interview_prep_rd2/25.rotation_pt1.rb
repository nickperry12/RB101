=begin
---------------- Problem

Write a method that rotates an array by moving the first element to the end of
the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Restate the problem:

Create a method that accepts an array, and returns a new array with the element
at index 0 switched to the last index. 


Input: Array

Output: Array

Explicit Rules:
- take the element at idx 0 and place it at idx -1
- cannot use the #rotate or #rotate! methods

Implicit Rules:
- none implied


Modelling:

I: [7, 3, 5, 2, 9, 1]
O: [3, 5, 2, 9, 1, 7]

[7] => element at idx 0 => remove and place at idx -1 => [3, 5, 2, 9, 1, 7]


---------------- Examples

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

---------------- Data Structures

I: Array
Intermediate: Array
O: Array



---------------- Algorithm

/* given an array `arr` */

Initialize `item_to_switch` to the element at idx 0 of `arr`
Initialize `arr_copy` to a shallow copy of `arr`

Remove the first element of `arr_copy`
  - Add `item_to_switch` to `arr_copy`
  - Return the modified array

=end

def rotate_array(arr)
  item_to_switch = arr[0]
  arr_copy = arr[1..]
  arr_copy << item_to_switch
end

def rotate_string(str)
  new_str = str[1..-1] + str[0]
end

def rotate_integer(int)
  digits = int.digits.reverse
  digits = digits[1..-1] + [digits[0]]
  digits.join.to_i
end

p rotate_string("hello") == "elloh"
p rotate_integer(72135) == 21357
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true