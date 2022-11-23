=begin

Running Totals

Write a method that takes an Array of numbers, and returns an Array with the
same number of elements, and each element has the running total from the
original Array.

P:

We're going to create a method that accepts an array of numbers as an argument.
Within the method, we're going to create a new array that will have the same 
number of elements from the previous array. The elements in this array will be
the running total from the original. For example, if we pass in an array that
contains the numbers [2, 5, 13], our new array will start with `2` and then add
the next number of the array to give us the second element `7`, we then add the
third element from the original array to `7` to give us the third element in the
new array; `13` (arr1) + `7` (arr2) = `20` (third element in new arr)

Mental Model:

- The first element in the new array will always == the first element in the original
- To get the value for the subsequent elements, we can use the following formula
arr2[1] == arr1[1] + arr2[0]. Add one to each index for each subsequent element.

Explicit Rules:
- return a new array with the running totals
- the current element in the new array will always add the element ahead in the
first array

Implicit Rules:
- only positive integers
- if the array passed in is empty, return an empty array

E/TC:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

D:

Input: Array
Output: New array

- can use a loop with a counter to get the running totals in the new array
- the counter for the first array will start at 0, with the second array starting at 1
- make sure to initialze the new array and have the first index == to the first
index of the original array

A (High Level):

create method `running_total` that has one parameter (array)
- initialize local variable `running_totals` and assign an empty array to it
- set the first index of `running_totals` to be equal to the first element in
passed in array
- initialize local variable `counter` and set it to 0
- initialize local variable `running_counter` and set it to 1
- repeat the following sequence
1) `running_total` index(running_counter) + array index(counter)
2) `running_counter` plus one
3) `counter` + 1`
4) end the sequence when the size of `running_total` is equal to `array`

C:
=end

# def running_total(array)
#   running_totals = Array.new
#   running_totals[0] = array[0] unless array.empty?
#   counter = 1
#   running_current = 0
#   running_counter = 1

#   loop do
#     break if running_totals.size == array.size || array.size <= 1
#     running_totals[running_counter] = running_totals[running_current] + array[counter]
#     counter += 1
#     running_current += 1
#     running_counter += 1
#   end

#   running_totals
# end

def running_total(array)
  array.map.with_index { |_, i| array[0..i].sum }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []