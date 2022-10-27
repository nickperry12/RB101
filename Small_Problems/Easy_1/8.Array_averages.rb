=begin

Write a method that takes one argument, an array containing
integers, and returns the average of all numbers in the array.
The array will never be empty and the numbers will always be
positive integers. Your result should also be an integer.

Examples:

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

The tests above should print true.

PEDAC Solution
Understand the Problem:

We want to create a method that takes an array for an argument.
The array should be filled with numbers and never be empty. 
The method will take the numbers of the array and return the average.
The numbers should always be positive integers and should return
an integer.

Explicit Rules:
Input: Array (filled with integers)
Output: Integer

Array should only contain positive integers and the method should
return the average of the integers in the array. 
The array can't be empty.

Implicit Rules:
Formula should be sum of array / size of the array
Array can be any size

Clarificaton:
What if the result has a decimal value e.g. 10.5?

Algorithm:

Given a collection of numbers
1. Add up the numbers in the collection
2. Divide the sum by the numerical size of the collection
3. Return the result

=end

def average(array)
  sum = 0
  sum.to_f
  array.each do |num|
    sum += num
  end
  sum / (array.count).to_f
end

puts average([50, 100, 43, 22])
puts average([10, 5, 100, 10])