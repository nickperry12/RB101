=begin
---------------- Problem

Given an integer n, find the maximal number you can obtain by deleting exactly
one digit of the given number.

Example

For n = 152, the output should be 52;
For n = 1001, the output should be 101.


Restate the problem:

Create a method that takes an integer for an argument, and returns the highest
value possible by deleting exactly one digit. 


Input: Integer

Output: Integer




Explicit Rules:
- find the highest value by deleting one digit from the given int



Implicit Rules:
- none identified


Modelling:

I: 152
O: 52

152 => [15, 12, 52] => 52


---------------- Examples

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

---------------- Data Structures

I: Integer
Intermediate: Array
O: Integer

---------------- Scratchboard






---------------- Algorithm

/* given an integer `int` */

Convert `int` to a string, and split into an array of single digits
  - Find all possible combinations where the size of the combination is the size
    of the `int` minus 1
    - Iterate over the collection of combos, join them together
      - Transform all combos and convert to integers
        - Return the highest integer


=end

# def delete_digit(int)
#   digits = int.to_s.chars
#   digits = digits.combination(digits.size - 1).to_a
#   digits.map! { |subarr| subarr.join.to_i }.max
# end

def delete_digit(int)
  str = int.to_s
  digits = []
  idx = 0

  until idx > str.size
    nums = str.chars
    nums.delete_at(idx)
    digits << nums.join if nums.join.size == str.size - 1
    idx += 1
  end

  digits.map(&:to_i).max
end

p delete_digit(152) #== 52
p delete_digit(1001) #== 101
p delete_digit(10) #== 1