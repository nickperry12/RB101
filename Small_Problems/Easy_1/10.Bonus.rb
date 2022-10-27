=begin

What's my Bonus?
Write a method that takes two arguments, a positive integer and a boolean,
and calculates the bonus for a given salary. If the boolean is true,
the bonus should be half of the salary. If the boolean is false, the
bonus should be 0.

--- PEDAC SOLUTION ---

Understaning the Problem:

- We want to create a method that takes two arguments
- The arguments should be a positive integer and a boolean value
- If the boolean is true, the bonus should be half the given integer
- If the boolean is false, the bonus is 0

Explicit Rules:

- The bonus is half of the salary (the given number)
- The bonus is only given if the boolean is true
- If the boolean is false then there is no bonus (result is 0)
- Given number must be positive

Implicit Rules:

- Method should return an integer
- Number can be any size
- Salary must be number greater than zero

Examples / Test Cases:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.

Data Structure:

Input: Integer, boolean
Output: Integer

Possibly use ternary operator in method

Algorithm:

Create a method called 'calculate_bonus'
- should have two parameters: 'salary' and 'boolean'
- if the boolean is true, divide the salary by 2
- if the boolean is false, bonus is equal to 0

Coding with intent:
=end

def calculate_bonus(salary, boolean)
  bonus = boolean == true ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)