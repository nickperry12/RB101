=begin

A featured number (something unique to this exercise) is an odd number that is a
multiple of 7, and whose digits occur exactly once each. So, for example, 49 is
a featured number, but 98 is not (it is not odd), 97 is not (it is not a
multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument. Return an error message if
there is no next featured number.

P:

Create a method that takes an integer as an argument and returns the next
featured number that is greater than the given integer, if there is no number
that is a featured number, return an error message. 

Properties of a featured number:

- Multiple of 7
- The digits in that number only occur once
- The number must be odd

E.g., 49 is a featured number, it is a multiple of 7 and the digits only appear
once

77 is not a featured number, it is a multiple of 7 but the digits appear more
than once

98 is not a featured number, it is not a multiple of 7

Anything greather than 9_999_999_999 is not a featured number, as there are no
numbers greater that fulfill our requirements

D:

Input: Integer
Intermediate: Loop
Output: Integer

A:

/* given an integer */

1. initiate a variable called current_num
2. set the value to current_num to the given integer plus 1
3. check to see if current_num is evenly divisble by 7
4. if it is evenly divisible by 7, check to see if all the digits in that number
are unique
5. if current_num satisfies both of those requirements, return that number
6. if it doesn't, add 1 to current_num and repeat those steps

=end

def featured(num)
  current_num = num + 1

  loop do
    if current_num % 7 == 0 && current_num.digits == current_num.digits.uniq && current_num.odd?
      return current_num
      break
    elsif current_num > 1_023_456_987
      "There is no possible number that fulfills those requirements"
      break
    else
      current_num += 1
    end
  end

end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements