=begin

Reverse the Digits in a Number

Write a method that takes a positive integer as an argument and returns that
number with its digits reversed

P:

Create a method that takes a given integer and returns the reverse of that
integer. E.g, the given integer is 12345 and returns 54321

Explicit Rules:

- Must reverse the give integer
- The returned integer must have no trailing 0's

Implicit Rules:

- None identified

E:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

D:

Input: Integer
Output: Integer

A:

/*given an integer */

1. split the given integer into separate numbers
2. reverse the order of those numbers
3. join the numbers to form a single integer
4. if there are any trailing 0's, remove them

=end

def reversed_number(int)
  int.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1