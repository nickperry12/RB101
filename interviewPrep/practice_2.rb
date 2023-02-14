=begin
---------------- Problem

There is an array with some numbers. All numbers are equal except for one. Try
to find it!

It’s guaranteed that array contains at least 3 numbers.

Restate the problem:

Given an array of integers, create a method that finds the integer in the that
is unique (it only appears once in the array)


Input: Array of integers

Output: Integer




Explicit Rules:
- the number returned by the method should only appear once in the given array



Implicit Rules:
- none identified


Modelling: 

Given array:
[ 1, 1, 1, 2, 1, 1 ]

1 => appears 5 times => not unique
2 => appears once => unique

return 2


---------------- Examples

find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55





---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array of integers */

Iterate through the array
  - Count the occurences of the current number on iteration
    - If the count is equal to 1, return that number
      - If it is not equal to 1, move on to the next Integer
  - Stop iterating when we've iterated through the whole array


=end

def find_uniq(arr)
  arr.each do |num|
    return num if arr.count(num) == 1
  end
end


p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55