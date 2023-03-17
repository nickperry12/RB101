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

Restate the problem:

Create a method that accepts an integer for its argument, and returns the
resulting integer after the maximum rotation. 


Input: Integer

Output: Integer

Explicit Rules:
- find the maximum rotated integer
- do not have to handle multiple 0s


Implicit Rules:
- none implied


Modelling:

I: 734291
O: 321579

Idx 0 => Starting index for rotaion
735291 => 352917

Idx 1
352917 => 329175

Idx 2
329175 => 321759

Idx 3
321759 => 321597

Idx 4
321597 => 321579

Stop when idx == the size of the integer - 1


---------------- Examples

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

---------------- Data Structures





---------------- Algorithm

/* given an integer `int` */

Spit the integer into an array of digits and assign to `digits`
  - Reverse the array to match the original order

Initialize `counter` to 0

Until `counter` is equal to the size of `digits` minus 1
  - Remove the element at the index referenced by counter
  - Take that element and add it to the end of the `digits`
  - Increment `counter` by 1

After iteration
  - Join the array back together and convert to an integer


=end

def max_rotation(int)
  digits = int.digits.reverse
  counter = 0

  until counter == digits.size - 1
    digit_to_switch = digits[counter]
    digits.delete_at(counter)
    digits << digit_to_switch
    counter += 1
  end

  digits.join.to_i
end




p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(2100034) == 1032004