=begin

Halvsies

Write a method that takes an Array as an argument, and returns two Arrays (as a
pair of nested Arrays) that contain the first half and second half of the
original Array, respectively. If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.

P:

Restate the problem:

Given an array, write a method that returns a new array consisting of two
subarrays, with the first subarray containing the first half of the original
array, and the second subarray containing the second half. If the size of the
array is odd, the middle element should go into the first subarray.

Input: Array
Output: Array of subarrays

Explicit Rules:
- The first subarray should contain the first half of elements
- the second subarray should contain the second half of elements
- The middle element should go into the first subarray if the size of the given
array is odd

Implicit Rules:
- If the given array only has one element, the first subarray should contain it
and the second subarray should be empty
- If the given array is empty, both subarrays should be empty


Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

D:

- can use the `#each` method to iterate through the given array and grab the
elements to be sent to the new array

- if/else statements to help determine which subarray the elements get sent to

([1, 5, 2, 4, 3].size - 1) / 2 
- use this to get the middle index

A:

/* given an array */

0. initialize `answer` and set to [[], []]
1. iterate through the given array
2. if the index is less than or equal the size of the array - 1, divided by 2,
append those elements to the first subarray
3. if the index is greater, append the elements to the second subarray
4. return the array of subarrays

=end

def halvsies(arr)
  answer = [[], []]
  arr.each_with_index do |item, index|
    if index <= (arr.size - 1) / 2
      answer[0] << item
    else
      answer[1] << item
    end
  end

  answer
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]