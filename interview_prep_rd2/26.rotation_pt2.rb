=begin
---------------- Problem

Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want.
(Recommended!)

You may assume that n is always a positive integer.

Restate the problem:

Create a method that accepts two integers for arguments, and returns an integer
with the last `n` digits rotated by 1 position


Input: Integer

Output: Integer

Explicit Rules:
- rotate the amount of digits referenced by `n`


Implicit Rules:
- none implied


Modelling:

I: 735291, 2
O: 735219

[7, 3, 5, 2, 9, 1]
Take the element at -`n` and remove it
Add -`n` back to the end of the array
Join, convert to int


---------------- Examples

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

---------------- Data Structures

I: Integer
Intermediate: Array
O: Integer

---------------- Algorithm

/* given two integers `int` and `n` */

Initialize `digits` to the digist of `int`

Remove the element at the index referenced by -`n`
  - Add this element to the end of the array
  - Join the array and conver to integer
  - Return the result




=end

def rotate_rightmost_digits(int, n)
  digits = int.digits.reverse
  rotated_int = digits[-n]
  digits.delete_at(-n)
  digits << rotated_int
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917