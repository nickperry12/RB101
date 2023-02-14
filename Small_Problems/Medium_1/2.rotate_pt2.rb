=begin
---------------- Problem

Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want.
(Recommended!)

You may assume that n is always a positive integer.

Restate the problem:

Create a method that accepts two arguments, both integers, with the second
argument being the amount of digits we want to rotate in the first argument.


Input: Integer

Output: Integer




Explicit Rules:
- only rotate the amount of digits specified by the second argument
- if the second argument is 1, return the original integer


Implicit Rules:
- none identified


Modelling: 

(735291, 5)

[7, 3, 5, 2, 9, 1]
Idx -5 => 3
Delete 3,
Then add to end of the array => 7, 5, 2, 9, 1, 3 => 752913





---------------- Examples


rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917



---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two integer */

Conver the given Integer into a string
  - Split the string into a collection of characters
    - Remove the item at the index referenced by the negative value of the
      second argument
    - Add the integer at the index referenced by the negative value of arg2 to
      the end of the array
    - Join the chars back together and convert to an integer


=end

def rotate_rightmost_digits(arg1, arg2)
  digits = arg1.to_s.chars
  digitsCopy = arg1.to_s.chars

  digits.delete(digits[-arg2])
  digits << digitsCopy[-arg2]
  digits.join.to_i
end



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917