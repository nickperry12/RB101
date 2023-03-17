# Your goal is to write the group_and_count method, which should receive and
# array as unique parameter and return a hash. Empty or nil input must return
# nil instead of a hash. This hash returned must contain as keys the unique
# values of the array, and as values the counting of each value.
=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array, and returns a hash where the elements of
the array are set to the keys, and the occurrences of those elements are set
to the value. 


Input: Array

Output: Hash

Explicit Rules:
- keys are elements from the array, values are the occurrences
- cannot use the #length or #count methods

Implicit Rules:
- none implied


Modelling:

I: [0, 1, 1, 0]
O: {0 => 2, 1 => 2}

Iterate through the array, set the current element to the hash key, and add 1
to the value when we encounter that element again

---------------- Examples

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}

---------------- Data Structures

I: Array
Intermediate: Hash
O: Hash


---------------- Algorithm

/* given an array `arr` */

Initialize `char_groups` to an empty hash, with default values of 0

Iterate through the elements of `arr`
  - Set the current element to a hash key for `char_groups`
    - Increment the value by 1

Return `char_groups`

=end

def group_and_count(arr)
  arr.each_with_object(char_groups = Hash.new(0)) do |char, hash|
    hash[char] += 1
  end
end


p group_and_count([0,1,1,0]) == {0=>2, 1=>2}