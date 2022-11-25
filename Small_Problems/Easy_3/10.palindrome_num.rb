=begin

Palindromic Numbers

Write a method that returns true if its integer argument is palindromic, false
otherwise. A palindromic number reads the same forwards and backwards.

P:

Create a method that accepts one argument (an integer) and returns a boolean.
Similar to the prior palindrome methods, this method should take the given
integer and return true if the given number is a palindrome, meaning the number
reads the same forward and back.

Explicit Rules:
- Only integer objects
- Return true if the number reads the same forward and back

Implicit Rules:
- Objects passed in must be integers, not a string containing numbers

Mental Model:

We won't be able to call the reverse method this time around, as it is not
available for integer objects.

Examples:

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

D:

Input: integer
Output: boolean

- need to find a way to reverse the given integer
- possibly split the integer into single digits?

A (High Level):

create a method `palindromic_number?` that accepts one argument (an integer)
- take the given intger and split into single digits
- store the digits into an array
- compare the original array to its reverse
a) return true if it's equal to the reverse
b) return false if not

C:
=end

def palindromic_number?(number)
  number.digits == number.digits.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true