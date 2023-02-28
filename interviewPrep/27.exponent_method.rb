=begin
---------------- Problem

5 kyu

Create a method called "power" that takes two integers and returns the value of
the first argument raised to the power of the second. Return nil if the second
argument is negative. Note: The ** operator has been disabled.

Restate the problem:

Create a method that accepts two integers for an argument (`int1`, `int2`) and
returns the result of `int1` to the power of `int2`. The method should return
`nil` if the `int2` is negative


Input: Integer

Output: Integer




Explicit Rules:
- cannot use the `#**` method
- must return `nil` if the second argument is negative



Implicit Rules:
- return 1 if `int2` is 0


Modelling:




---------------- Examples

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two integers `int1` `int2` */

Return `nil` if `int2` is negative
Return 1 if `int2` is 0
Initialize `result` to []

Repeat this step the number of times referenced by `int2`
  - add `int1` to result

Sequentially multiply all numbers within `result`
  - Return the result


=end

def power(int1, int2)
  return nil if int2.negative?
  return 1 if int2.zero?
  ([int1] * int2).inject(&:*)
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil