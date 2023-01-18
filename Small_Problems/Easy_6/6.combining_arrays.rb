=begin

Combining Arrays


Write a method that takes two Arrays as arguments, and returns an Array that
contains all of the values from the argument Arrays. There should be no
duplication of values in the returned Array, even if there are duplicates in the
original Arrays.

P:

Restate the problem:

Given two arrays, write a method that returns an array that conains all values
from both arrays, without any duplicates in the return array.

Input: Array x2
Output: Array

Explicit Rules:

- The return array should contain unique elements, even if they either of the
given arrays contained duplicate elements

Implicit Rules:

- The elements should maintain the same order they had in the array they are
originally found in. This can be inferred from the given example

E:

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

D:

- Can use the `#<<` method to append the values into a new array
- Or can use the `#concat` method

A:

/* given two arrays */

- concatenate the second array into the first array
- remove all duplicate values/elements
- return the merged array

=end

# def merge(arr, arr_two)
#   arr.concat(arr_two).uniq
# end

def merge(arr, arr_two)
  merged = []
  counter = 0

  loop do
    merged << arr[counter]
    counter += 1
    break if counter > arr.size - 1
  end

  counter = 0
  loop do
    merged << arr_two[counter]
    counter += 1
    break if counter > arr_two.size - 1
  end

  merged.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]