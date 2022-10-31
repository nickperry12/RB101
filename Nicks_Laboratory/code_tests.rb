=begin
Write a method that computes the difference between the square of the sum of the first n positive integers
and the sum of the squares of the first n positive integers.

Understanding the problem:
- (sum of first n positive integers) ** 2 - (sum of the squared first n positive integers)
- Explicit Rules:
  - Should take one argument - an integer
  - Integer will provide n positive integers
    - Range between 1 and given integer (includes 1 and int)

- Implicit Rules:
  - result should be an integer
  - test cases provided should return true

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Data Structures: 
Input: Integer
Output: Integer

Algorithm:

Create a method called sum_square_difference that takes on argument
- First calculation
  - take the given integer and use it as the end range number with the range being 1 to n
  - sum that range and square it

- Second calculation
  - square every number in that range
  - find the sum

- Third calculation
  - Find the difference between calculation 1 and calculation 2

- Return the result

=end

def sum_square_difference(int)
  calculation_one = (1..int).sum**2
  
  second_range = (1..int).map { |num| num ** 2 }
  calculaton_two = second_range.sum

  result = calculation_one - calculation_two
  result
end

sum_square_difference(5)

=begin

Combine Two Lists
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Understanding the problem:
- Method will take two arguments, both arrays
- Return a new array containg all elements from both arrays
- Elements in the new array should take in elements from previous by alternating
- Assume that both arrays contain elements and have the same amount

Data Structure:
- Input: two arrays
- Output: new array with combined elements

Example: 
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Algorithm:
- Create a method that take two arguments (two arrays)
- Initialze an empty array
- Iterate through each array and alternate storing elements from the input arrays into the new Array
- return the new Array

Sub-algorithm:
- if index of final array is even
  - add element from array 1
- if index of final array is odd
  - add element from array 2

=end

def interleave(array_one, array_two)
  final_array = []

  # loop do
  #   final_array << array_one.shift
  #   final_array << array_two.shift
  #   break if array_one.empty? && array_two.empty?
  # end

  array_two.each_with_index do |_, index|
    final_array << array_one[index]
    final_array << array_two[index]
  end 

  final_array
end


p interleave([1,3,5], [2,4,6])

=begin

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an
odd integer that is supplied as an argument to the method. You may assume that the argument
will always be an odd integer.

Understanding the problem:
- Create a method that takes one argument
  - argument is an odd integer
  - we are safe to assume the integer provided will always be odd

- The method should create a diamond consisting of rows of stars
- The diamond should be 4 pointed

Mental Model:

- The start and end rows will always contain one diamond. The rows then increment
by 2 until the reach the given integer, which will be the amount of diamonds in
the center row. The rows then decrease by 2 until the reach the bottom row. 

Explicit Rules:
- Integer given is always odd
- Should print out a 4 point diamond

Implicit Rules:
- Rows contain leading and trailing white spaces
- Center row should be the largest
- Given integer should represent the center row in the context of the output
- The size of the rows increment by two until it reaches the center, at which point
they begin to decrease by two
- The first and last row will always end with 1 diamond

Examples/Test Cases:

diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Data Structure:

Input: odd integer
Output: Multiple strings shaping the diamond, filled with diamonds (*)

Algorithm:

create a method called 'diamond' that takes one argmuent
- intialize a variable called 'diamond' and set it to "*"
- initialize a variable called center
  - the variable will represent the center of the diamonds length, which is equal to 
  the given integer
- create rows starting with one diamond
- the subsequent rows should contain the previous rows amount of diamonds + 2
- once the center length has been reached
  - decrease the length of the subsequent rows will be the previous rows amount - 2
  - once the final row is reached, stop substracting stars
- return the final result
    

=end

def diamond(int)
  diamond = "*"
  center = "*" * int

  loop do
    puts diamond
end

p diamond (5)