=begin
---------------- Problem

Write a method which takes a grocery list (array) of fruits with quantities and
converts it into an array of the correct number of each fruit.

Examples:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]



Restate the problem:

Create a method that takes an array of arrays, with each subarray containing a
fruit and an integer representing the amount of fruit, and returns a new array
containing `n` amount of fruit names, with `n` being the integer in the original
array



Input: Array of arrays

Output: Array




Explicit Rules:
- Must return an array with the given quantities of each fruit



Implicit Rules:
- Returned array is a single layered array


Modelling: 




---------------- Examples

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]




---------------- Data Structures

Array



---------------- Scratchboard






---------------- Algorithm

/* given an array of nested arrays */

Initialize `result` to an empty array

Iterate through the given array
- Iterate through each subarray
  - Append the element at index 0 `n` amount of times, with `n` being reference
    to the element at index 1

Return result


=end

def buy_fruit(arr)
  result = []

  arr.each do |subarr|
    subarr[1].times do
      result << subarr[0]
    end
  end

  result
end



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]