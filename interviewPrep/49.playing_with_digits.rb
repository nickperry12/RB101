=begin
---------------- Problem

Some numbers have funny properties.
For example:

89 --> 8¹ + 9² = 89 * 1
695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2
46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

Given a positive integer n written as abcd... (a, b, c, d... being digits) and a
positive integer p we want to find a positive integer k, if it exists, such as
the sum of the digits of n taken to the successive powers of p is equal to k *
n.

In other words:

Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...)
= n * k

If it is the case we will return k, if not return -1.

Note: n and p will always be given as strictly positive integers.

dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals 92 *
k

dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2

dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288
* 51

Restate the problem:

Create a method that accepts an two integers as an argument, `base` and `exp`,
that splits `base` into digits and puts each digit to the successive power of
`exp`, sums each result, and divides it by `base` to find `k`. If `k` is an
even number, return `k`, if not, return -1.


Input: Integer (base, exp)

Output: Integer (`k` or -1)




Explicit Rules:
- if `k` is not evenly divisible by `base`, return -1, if it is, retrn `k`
- `base` increments by 1 with each iteration



Implicit Rules:
- none identified


Modelling:

I: 89, 1
O: 1

8**1 + 9**2 = 89 / 89 = 1

---------------- Examples

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2

---------------- Data Structures

I: Integers
Intermediate: Array
O: Integer


---------------- Scratchboard






---------------- Algorithm

/* given two integers `base` and `exp` */

Split `base` into a collection of digits
  - Iterate over each digit and put it to the power of `exp` + the current idx
  - Sum the new collection of transformed digits
  - Divide the sum by `base`
    - If it is a whole number, return the result
    - If not, return -1


=end

def dig_pow(base, exp)
  digits = base.digits.reverse

  digits.map!.with_index { |digit, idx| digit**(exp + idx) }
  sum = digits.sum

  sum % base == 0 ? sum / base : -1
end



p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2
