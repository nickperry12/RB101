=begin

List of Digits

Write a method that takes one argument, a positive integer, and returns a list
of the digits in the number.

P:

Input: Integer
Output: Array of integers

Restate the problem:

Create a method that takes an integer and returns an array of each number

Explicit Rules:

- The numbers in the array must be included in the given integer

Implicit Rules:

- the numbers in the returned array must match the order they apear in in the
given integer. This can be inferred by the provided examples

D:

- can use the `#digits` method to split the integer into an array of numbers,
and the `#reverse` method to reverse the order and match the original

A:

/* given an integer */

1. split the given integer into individual digits
2. match the order of the collection of digits to match the order in which they
appear in the original integer
3. return the collection of numbers


Examples:

p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true

=end

def digit_list(int)
  int.digits.reverse
end

p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true