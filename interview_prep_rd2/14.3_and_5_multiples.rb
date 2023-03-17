=begin
---------------- Problem

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get
3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5
below the number passed in. Additionally, if the number is negative, return 0
(for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.



Restate the problem:

Create a method that accepts two integers, and finds the numbers that are
multiples of 3 or 5 between those two numbers and returns their sum. If the
given number is negative, return 0


Input: Integers

Output: Integer

Explicit Rules:
- Only count a number once even if it's a multiple of both
- Only find the numbers up to the target number (non inclusive)
- Return 0 if the given number is negative


Implicit Rules:
- none identified


Modelling:

I: 10
O: 23

[3, 5, 6, 9] => 3 + 5 + 6 + 9 => 23

I: 20
O: 78

[3, 5, 6, 9, 10, 12, 15, 18] => find sum => 78


---------------- Examples

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168

---------------- Data Structures

I: Integer
Intermediate: Array
O: Integer



---------------- Algorithm

/* given an integer `int` */

Initialize `nums` to an empty array

From 1 up to `int`, iterate through the numbers in this range (exclusive)
  - If the number is a multiple of 3 or 5, add that number to `nums`

Return the sum of `nums`


=end

def solution(int)
  nums = []

  (1...int).each do |i|
    if i % 3 == 0 || i % 5 == 0
      nums << i
    end
  end

  nums.sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
p solution(-20) == 0