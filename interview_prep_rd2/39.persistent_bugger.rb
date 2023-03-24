# Write a function, persistence, that takes in a positive parameter num and
# returns its multiplicative persistence, which is the number of times you must
# multiply the digits in num until you reach a single digit.

# For example (Input --> Output):

# 39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
# 999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
# 4 --> 0 (because 4 is already a one-digit number)
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an integer for an argument, and returns the amount
of times you must multiply the digits of int together until you get a single
digit.


Input: Integer

Output: Integer

Explicit Rules:
- Find the amount of times you must multiply the digits of the given integer
  together to get a single digit


Implicit Rules:
- none implied


Modelling:

I: 39
O: 3

multiplicative = 0

initialize a loop
=> split `int` into digits [3, 9] => int = digits.inject => 12 => increase 
multiplicative by 1 => repeat until size of digits is 1 => return multiplicative


---------------- Examples

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
p persistence(444) == 3

---------------- Data Structures

I: Integer
Intermediate: Array
O: Integer

---------------- Algorithm

/* given an integer `int` */

Initialize `multiplicative` to 0

Loop through these steps
  - Reassign `int` to the return value of splitting `int` into `digits` and
    multiplying each digit with each other
  - Increment `multiplicative` by 1
  - Break out of the loop if the size of spliting `int` into digits is 1

Return `multiplicative`
=end

def persistence(int)
  multiplicative = 0

  loop do
    break if int.digits.size == 1
    int = int.digits.inject(&:*)
    multiplicative += 1
  end

  multiplicative
end


p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
p persistence(444) == 3