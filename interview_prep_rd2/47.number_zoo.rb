# You're working in a number zoo, and it seems that one of the numbers has gone
# missing!

# Zoo workers have no idea what number is missing, and are too incompetent to
# figure it out, so they're hiring you to do it for them.

# In case the zoo loses another number, they want your program to work
# regardless of how many numbers there are in total.

# Task: Write a function that takes a shuffled list of unique numbers from 1 to
# n with one element missing (which can be any number including n). Return this
# missing number.

# Note: huge lists will be tested.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array of shuffled unique numbers and a given
integer, with the array containing shuffled unique numbers from 1 to `int`. The
method should return the number that is missing from range of nums.

Input: Array, Integer

Output: Integer

Explicit Rules: 
- find the missing number in the range of nums contained in the array


Implicit Rules:
- none implied


Modelling:

I: [2, 3, 4]
O: 1

min: 1
max: largest num in given array

(1..max) => check if each num is not included => if not included =>
  return that number

if (1..max).to_a == arr.sort
  max += 1
else
  (1..max).each do |i|
    result = i if !(arr[i-1] == i)


---------------- Examples

p find_missing_number([2, 3, 4]) == 1
p find_missing_number([1, 3, 4]) == 2
p find_missing_number([1, 2, 4]) == 3
p find_missing_number([1, 2, 3]) == 4

---------------- Data Structures

I: Array
Intermediate: Range
O: Integer


---------------- Algorithm

/* given an array `arr` */

Initialize `max` to the largest number in `arr`

Iterate through the range of 1 to `max`
  - If the current number is not included in `arr`, return that number

=end

def find_missing_number(arr)
  # max = arr.max
  # result = nil
  # (1..max).each do |num|
  #   result = num if !(arr.include?(num))
  # end

  # result.nil? ? max += 1 : result
  (1..arr.size + 1).sum - arr.sum
end

p find_missing_number([2, 3, 4]) #== 1
p find_missing_number([1, 3, 4]) #== 2
p find_missing_number([1, 2, 4]) #== 3
p find_missing_number([1, 2, 3]) #== 4