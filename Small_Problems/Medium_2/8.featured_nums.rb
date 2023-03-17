=begin
---------------- Problem

A featured number (something unique to this exercise) is an odd number that is a
multiple of 7, and whose digits occur exactly once each. So, for example, 49 is
a featured number, but 98 is not (it is not odd), 97 is not (it is not a
multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument. Return an error message if
there is no next featured number.


Restate the problem:

Create a method that accepts an integer for an argument and returns the next
featured number greater than it. In order to be a featured number the following
conditions must be satisfied:

1. the digits are unique
2. the number is odd
3. the number is evenly divisble by 7

If no possible featured num, return an error message


Input: Integer

Output: Integer




Explicit Rules:
- to be a featured num it must satisfy all three conditions listed above
- return an error message of no possible featured num


Implicit Rules:
- none implied


Modelling:

numbers greater than 9_999_999_999 cannot be a featured num

12..max_num => find the first featured num => return it


---------------- Examples

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

---------------- Data Structures

I: Integer
Intermediate: Range
O: Integer

---------------- Scratchboard






---------------- Algorithm

/* given an integer `int` */

Initialize `max_num` to 9_999_999_999

Iterate through a range of nums, `int` to `max_num` (inclusive)
  - if the current number is odd, evenly divisble by 7, and when split into a
    collection of digits with all duplicates removed, is equal to the original
    collection of digits
      - return that number

If there is no possible number within that range that is a featured number
  - return an error message


=end

def featured(int)
  max = 9_999_999_999
  if int > max
    return "There is no possible number that fulfills those requirements"
  end

  (int+1..max).each do |num|
    if num % 7 == 0 && num.odd? && num.digits.uniq == num.digits
      return num
    end
  end

  "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements