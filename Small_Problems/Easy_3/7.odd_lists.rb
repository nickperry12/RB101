=begin
Odd Lists

Write a method that returns an Array that contains every other element of an
Array that is passed in as an argument. The values in the returned list should
be those values that are in the 1st, 3rd, 5th, and so on elements of the
argument Array.

P:

Create a method that takes one argument, an array, that returns a new array that
contains every other element from the given array starting at index 0.

Explicit Rules:
- Values in the new array should be at the 1st, 3rd, 5th etc. positions
of the array (first value will be at index 0)

Implicit Rules:
- Can pass in arrays with any number of elements, even just one.
- Arrays passed in can be empty, the return should be an empty array

E:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

D:
Input: Array
Output: New array

A (High Level):

Create a method called `odditities` that takes an array as an argument
- initialize a local variable called `new_array` and assign an empty aray as
the value
- iterate through the given array
- append every value at an even index to the new array
- iterate until all values have been evaluated
- return the new array

C:
=end

# def oddities(array)
#   array.each_with_object(new_array = []) do |element, new_arr|
#    new_arr << element if array.index(element).even?
#   end
#   new_array
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
# p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# Further Exploration

=begin
Write a companion method that returns the 2nd, 4th, 6th, and so on elements
of an array.

Try to solve this in at least two ways:
=end

# def oddities(array)
#   new_array = []
#   counter = 1
#   while counter < array.size
#     new_array << array[counter]
#     counter += 2
#   end
#   new_array
# end

def oddities(array)
  array.each_with_object(new_array = []) do |element, new_arr|
   new_arr << element if array.index(element).odd?
  end
  new_array
end

p oddities([1, 3, 5, 6, 7, 10, 23])