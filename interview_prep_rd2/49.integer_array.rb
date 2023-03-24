# Write a function with the signature shown below:

# def is_int_array(arr)
#   true
# end
# returns true  / True if every element in an array is an integer or a float
# with no decimals.
# returns true  / True if array is empty.
# returns false / False for every other input.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array as an argument, and returns true if the array contins only integers or floats that do not have any decimal values, and true of the array is empty. Otherwise, it should return false


Input: Array

Output: Boolean

Explicit Rules:
- must return true if all elements within the array are integers, or floats with no decimal values
- must return true if the given array is empty
- otherwise return false


Implicit Rules:
- none implied


Modelling:

I: [1, 2, 3, 4]
O: true

all integers? => yes
all whole numbers? => yes
=> true

I: [1.0, 2.0, 3.0001]
O: false

all floats? => yes
all whole numbers? => no

3.0001 & 1 != 0


---------------- Examples

p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false

---------------- Data Structures

I: Array
Intermediate: Array
O: Boolean


---------------- Algorithm

/* given an array `arr` */

Check for the following:
 - Are all array elements integers?
 - Are all array elements floats that are whole numbers?
 - Is the array empty?

If any of the above conditions are satisfied, return `true`
  - Else return false


=end

def is_int_array(arr)
  return false if !(arr.class == Array)

  if arr == [] || arr.all? { |item| item.class == Integer } ||
    arr.all? { |item| item.class == Float && item % 1 == 0}
    true
  else
    false
  end
end


p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false