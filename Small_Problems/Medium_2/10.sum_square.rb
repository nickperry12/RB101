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

def sum_square_difference(int)
  calculation_one = (1..int).sum**2
  
  second_range = (1..int).map { |num| num ** 2 }
  calculaton_two = second_range.sum

  result = calculation_one - calculation_two
  result
end

sum_square_difference(5)