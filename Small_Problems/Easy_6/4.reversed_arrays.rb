=begin

Reversed Arrays (Part 1)

Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

P:

Create a method that takes an array as an argument, and returns the same array with
the elements put in a reversed order. You may not use the built in methods 
`#reverse` or `#reverse!`. 

Explicit Rules:

- returned array should have the same elements as the given array, but in a reversed
order

- cannot use the built in `#reverse` and `#reverse!` methods

- must return the same array

Implicit Rules:

- given array and returned array must have the same object id

Input: Array
Output: Array


E:

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true

list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

D:

- Can reassign the values of each element, this won't affect the object id
of the given array

A:

/* given an array */

- initialize counter and set it to -1
- create a duplicate of the given array
- iterate through the duplicate array
- set array[counter] to the current element on iteration
- increment counter by -1
- return the original array

=end

def reverse!(list)
  counter = -1

  list.dup.each do |item|
    list[counter] = item
    counter -= 1
  end

  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true

list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true