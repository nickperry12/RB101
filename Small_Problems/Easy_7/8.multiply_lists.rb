=begin

Multiply Lists

Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

P:

Restate the problem:

Create a method that takes two arguments, both arrays. The method should
multiply the numbers with the same index from each array, and add the
result to a new array. 

Explicit Rules:
- the numberes multipled together from each array should have the same index
- we can assume that the given arrays have the same amount of numbers

Implicit Rules:
- none identified

Examples:
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

D:

Array#[] to reference our indexes
Array#each_with_index to iterate through the arrays
Use an array to store our results

A:

/* given two arrays */

1. initialize `result` to an empty collection
2. iterate through the first given array, and multiply the current number
with the number at the same index in the second array
3. add the resulting number to `result`
4. repeat until all numbers have been multiplied together
5. return `result`

=end

# def multiply_list(arr_one, arr_two)
#   result = []

#   arr_one.each_with_index do |num, idx|
#     result << num * arr_two[idx]
#   end

#   result
# end

=begin

Second Solution

A:

/* given two arrays */

1. intialize result to an empty collection
2. intialize `counter` to 0
3. create a loop with the following steps:
3b. multiply the numbers at the index referenced by counter in both given arrays
and add the result to `result`
3c. increment `counter` by 1
3d. stop the loop when `counter` is equal to the size of the given arrays
4. return `result`

=end

# def multiply_list(arr_one, arr_two)
#   result = []
#   counter = 0

#   while counter < arr_one.size
#     result << arr_one[counter] * arr_two[counter]
#     counter += 1
#   end

#   result
# end

def multiply_list(arr_one, arr_two)
  arr_one.zip(arr_two).map { |subarr| subarr.inject(&:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
