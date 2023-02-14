=begin
---------------- Problem

Write a method that takes one argument, an array containing integers, and
returns the average of all numbers in the array. The array will never be empty
and the numbers will always be positive integers. Your result should also be an
integer.

Don't use the Array#sum method for your solution - see if you can solve this
problem using iteration more directly.

Restate the problem:

Create a method that takes an array of integers as an argument, and return the
average of all the numbers in the given array. Do not use the `#sum` method and
instead try to iterate more directly


Input: Array of integers

Output: Integer




Explicit Rules:
- Find the average
- Don't use the `#sum` method



Implicit Rules:
- None identified


Modelling: 




---------------- Examples

p average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
p average([1, 5, 87, 45, 8, 8]) == 25
p average([9, 47, 23, 95, 16, 52]) == 40




---------------- Data Structures

Array


---------------- Scratchboard






---------------- Algorithm

/* given an array of integers */

Initialize `sum` to the number 0

Iterate through the given array
  - Add the current number on iteration to `sum`

Once iteration is complete, divide `sum` by the size of the given array
Return the result


=end

def average(arr)
  sum = 0

  arr.each do |num|
    sum += num
  end

  sum / arr.size
end


# Further Exploration

def average(arr)
  arr.map!(&:to_f)
  arr.inject(&:+) / arr.size
end




p average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
p average([1, 5, 87, 45, 8, 8]) #== 25
p average([9, 47, 23, 95, 16, 52]) #== 40