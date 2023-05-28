=begin
---------------- Problem

# Given a string of integers, return the number of odd-numbered substrings that
# can be formed.

# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a
# total of 7 numbers.

# solve("1341") = 7. See test cases for more examples.

Restate the problem:

Create a method that accepts a string for an argument, and returns the amount
of digit substrings, that when converted to an integer, are an odd value.


Input: String

Output: Integer




Explicit Rules:
- Finding the digit substrings that have an odd value



Implicit Rules:
- when checking for odd value, must be converted to an integer


Modelling:

I: "1341"
O: 7

['1', '13', '134', '1341', '3', '34', '341', '4', '41', '1']

Select all the substrings that are odd numbers => return the count


---------------- Examples

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

---------------- Data Structures

I: String
Intermediate: Array
O: Integer

---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `digits` to an empty collection

From 0 up to the str size - 1
 - From the current idx to the str size - 1
    - Add the characters from the outer idx to the inner idx to `digits`

Select all the substrings from `digits` that when converted to an int are odd
  - Return the size of the resulting array

=end

def solve(str)
  digits = []

  0.upto(str.size - 1) do |i|
    i.upto(str.size - 1) do |ii|
      digits << str[i..ii]
    end
  end

  digits.select! { |digit| digit.to_i.odd? }
  digits.size
end


p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28