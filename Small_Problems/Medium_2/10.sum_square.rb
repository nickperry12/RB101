=begin
Write a method that computes the difference between the square of the sum of
the first n positive integers and the sum of the squares of the first n positive
integers.

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

sum_square_difference(3) == 22 # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Data Structures: 

Input: Integer
Output: Integer

Algorithm:

Create a method called sum_square_difference that takes on argument
- First calculation
  - take the given integer and use it as the end range number with the range
 being 1 to n
  - sum that range and square it
- Second calculation
  - square every number in that range
  - find the sum
- Third calculation
  - Find the difference between calculation 1 and calculation 2
- Return the result
=end

# def sum_square_difference(int)
#   calculation_one = (1..int).sum**2
  
#   second_range = (1..int).map { |num| num ** 2 }
#   calculaton_two = second_range.sum

#   result = calculation_one - calculation_two
#   result
# end

# sum_square_difference(5)

=begin

=begin
---------------- Problem

Write a method that computes the difference between the square of the sum of the
first n positive integers and the sum of the squares of the first n positive
integers.


Restate the problem:

Create a method that accepts an integer for an argument, converts the given int
to a range of numbers (1..int), and finds the difference between the squared sum
of all numbers in that range, and the sum of the squared nums. 


Input: Integer

Output: Integer




Explicit Rules:
- find the squared sum of the numbers in the range
- find the sum of squares of the nums in the range
- then find the difference


Implicit Rules:
- none identified


Modelling:

I: 3
O: 22

(1 + 2 + 3)**2 - (1**2 + 2**2 + 3 ** 2) => 22


---------------- Examples

sum_square_difference(3) == 22 # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

---------------- Data Structures

I: Integer
Intermediate: Array
O: Integer

---------------- Scratchboard






---------------- Algorithm

/* given an integer `int` */

Initialize `nums` and assign the numbers from 1 to `int`

Initialize `squared_sum`
  - Find the sum of `nums`, square it, and assign to `squared_sum`

Initialize `sum_of_squares`
  - Square each number in `nums`, and then find the sum, assign to `sum_of_squares`

Return the result of `squared_sum` - `sum_of_squares`


=end

def sum_square_difference(int)
  nums = (1..int).to_a

  squared_sum = nums.sum**2
  sum_of_squares = nums.map { |num| num**2 }.sum

  squared_sum - sum_of_squares
end

p sum_square_difference(3) == 22 # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150