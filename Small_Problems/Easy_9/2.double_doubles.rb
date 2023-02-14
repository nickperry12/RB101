=begin
---------------- Problem

A double number is a number with an even number of digits whose left-side digits
are exactly the same as its right-side digits. For example, 44, 3333, 103103,
7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless
the argument is a double number; double numbers should be returned as-is.


Restate the problem:

Create a method that takes an integer for an argument, and returns 2 times the
given number, unless that number is a double number, which should be returned as
is. A double number can be defined as a number with an even number of digits
where the left side is the same as the numbers to the right side. 


Input: Integer

Output: Integer




Explicit Rules:
- Double the number if the number is not a double number
- Return double numbers as is



Implicit Rules:
- none identified


Modelling: 

twice(103103)

Split this into digits [1, 0, 3, 1, 0, 3]

(0..(arr.size / 2) - 1) grabs the first half
(arr.size / 2..-1) grabs the second half

Need to check if they are equal



---------------- Examples

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

If the given integer is of even size, convert the given integer to a string
  - If the elements from index 0 to the index at arr.size / 2 - 1 are equal to
    the elements from index arr.size / 2 to the last index, return the given
    integer
  - Otherwise, if not equal, return the given integer

If the given integer is off an odd size, double it and return that result

=end

def twice(int)
  str_num = int.to_s.chars
  return int * 2 if int.digits.size == 1

  if str_num[0..(str_num.size / 2) - 1] == str_num[(str_num.size / 2)..-1]
    return int
  else
    int * 2
  end
end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10