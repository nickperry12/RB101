=begin
---------------- Problem

If you take a number like 735291, and rotate it to the left, you get 352917. If
you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to
321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to
get 321579. The resulting number is called the maximum rotation of the original
number.

Write a method that takes an integer as argument, and returns the maximum
rotation of that argument. You can (and probably should) use the
rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

Restate the problem:

Create a method that takes a single argument, an integer, and returns the max
rotation of the given number. 


Input: Integer

Output: Integer


Explicit Rules:
- must find the final number that represents the max rotation of the given
  number
- do not need to handle multipe 0s



Implicit Rules:



Modelling: 

max_rotation(735291) == 321579

Start: 735291
=> 352917
=> 329175
=> 321759
=> 321597
=> 321579

max_rotation(8_703_529_146) == 7_321_609_845

8_703_529_146
7_035_291_468
7_352_914_680
7_329_146_805
7_321_468_059
7_321_680_594
7_321_605_948
7_321_609_485
7_321_609_854
7_321_709_845 => done

The size of our number minus 1 == the times we are iterating


---------------- Examples

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845




---------------- Data Structures

Array



---------------- Scratchboard






---------------- Algorithm

/* given an integer */

Convert the given integer to a String and assign to `digits`
  - Split the string into characters

Create a copy of the collection of digits and assign to `digitsCopy`

Initialize `counter` to the size of `digits`

Until counter is equal to -1
  - Remove the element at negative index `counter` from `digits`
  - Append the element at negative index `counter` from `digitsCopy`
  - Decrement `counter` by 1

Join `digits` into a single string and convert to an Integer

=end

def max_rotation(int)
  digits = int.to_s.chars
  digitsCopy = digits.dup
  counter = -(digits.size)

  until counter == 0
    digits.delete(digits[counter])
    digits << digitsCopy[counter]
    digitsCopy = digits.dup
    counter += 1
  end

  digits.join.to_i
end



p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845