# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.
=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of integers, that finds and returns the
integer that appears an odd number of times


Input: Array

Output: Integer

Explicit Rules:
- Find and return the integer that occurs an odd number of times
- Only one integer will appear an odd number of times


Implicit Rules:
- None implied


Modelling:

I: [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]
O: 5

[20, 1, -1, 2, -2, 3, 3, 4, 4, 1 .... ]

Select the integers where the count is odd, return the first elemet of the resulting array


---------------- Examples

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10

---------------- Data Structures

I: Array
Intermediate: Array
O: Integr

---------------- Algorithm

/* given an array `arr` */

Iterate through `arr`
  - Count the occurence of each integer and select the ones with an odd count of
    occurences
  - Return the item at index 0


=end

def find_it(arr)
  arr.select { |int| arr.count(int).odd? }.first
end


p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10