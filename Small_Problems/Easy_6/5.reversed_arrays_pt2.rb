=begin

Reversed Arrays (Part 2)

Write a method that takes an Array, and returns a new Array with the elements of
the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you
wrote in the previous exercise.

P:

Restate the problem:

Similar to the last problem, we want to create a method that takes an array as
an argument, and returns an array with the elements in reversed order. The
difference for this method, is it should not alter the original array, but
instead, should return a new array with a different object id.

Input: Array
Output: Array

Explicit Rules:

- Returned array must have a different object id than the given array
- Cannot modifiy the original array

Implicit Rules:

- None Identified


Examples:

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

D:

- create a new array to store the items in reversed order
- can accomplish this by appending the last item on iteration from original
array

A:

/* given an array */

- initialize `counter` and set to -1
- initialize reversed and set to []
- append the item at array[index] to `reversed`
- decrement counter by -1
- repeat until counter is equal to the size of the given array * -1

=end

def reverse(list)
  counter = -1
  reversed = []

  loop do
    reversed << list[counter] unless list.empty?
    counter -= 1
    break if counter < list.size * -1
  end

  reversed
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
