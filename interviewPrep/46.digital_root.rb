=begin
---------------- Problem

6 kyu

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take
the sum of the digits of n. If that value has more than one digit, continue
reducing in this way until a single-digit number is produced. This is only
applicable to the natural numbers.

Here's how it works:

digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

Restate the problem:

Create a method that accepts an integer for an argument, splits it into single
digits, sums the digits, and repeats these steps until the sum consists of a
single digit.


Input: Integer

Output: Integer




Explicit Rules:
- sum all digits until a single digit is returned



Implicit Rules:
- none implied


Modelling:

I: 16
O: 7

16 => [1, 6] => 7

I: 456
O: 6

[4, 5, 6] => sum: 15 => not a single digit => repeat => [1, 5] => sum: 6


---------------- Examples

p digital_root(16) == 7
p digital_root(456) == 6

---------------- Data Structures

I: Integer
Intermediate: Array
O: Integer



---------------- Scratchboard






---------------- Algorithm

/* given an integer `int` */

Initialize `digits` to the split digits of `int`

Until the size of `digits` is equal to 1
  - sum `digits`
  - split the sum into a collection of digits
  - if there is more than 1 digit
    - repeat the steps
  - If there is exactly one digit, return the digit


=end

def digital_root(int)
  return int if int.digits.size == 1
  digits = int.digits

  until digits.size == 1
    sum = digits.sum
    digits = sum.digits
  end

  sum
end



p digital_root(16) == 7
p digital_root(456) == 6
