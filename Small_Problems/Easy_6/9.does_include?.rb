=begin

Does My List Include This?

Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

P:

Restate the problem:

Create a method that takes two arguments, one being an array and the other being
the value we are checking to see is included in the array. We may not use the
built-in `#include?` method

Input: Array
Output: Boolean

Explicit Rules:
- cannot use built-in `#include?` method

Implicit Rules:
- none identified

Examples:

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

D:

- might be a good time to use the `#select` method

A:

/* given an array and a search value */

1. iterate through the given array
2. select any item that is the same as the search value
3. store it in a new array
4. if the item in the new array is the same as the search value, return true
5. if that value is not found, return false

=end

def include?(array, value)
  match = array.select { |item| item == value }
  if array.empty?
    false
  elsif match[0] == value
    true
  else
    false
  end
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false