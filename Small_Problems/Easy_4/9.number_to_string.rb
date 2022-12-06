=begin

Convert A Number to a String!

In the previous two exercises, you developed methods that convert simple numeric
strings to signed Integers. In this exercise and the next, you're going to
reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a
string representation.

You may not use any of the standard conversion methods available in Ruby, such
as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
old-fashioned way and construct the string by analyzing and manipulating the
number.

P:

We want this method to take a given integer and convert it to a string without
using any of the built in conversion methods. The give integer can be either
zero or a positive integer.

Rules:

- Given integer must be postive or zero, don't worry about negative integers
- Need to convert the integer to the string representation
- Can't use built in conversion methods

Mental Model:

- In previous methods we used a hash with key-value pairs, where the keys were
the string representation and the values were the integer representation. Is it
possible to do the same thing here? How can we go about it differently?

E/TC:

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

D:

Input: Integer
Output: String

- What kind of data structures can we use in or outside of our method?

Algo (High Lvl):

Solution 1:

Given an integer
- split the integer into individual digits and store into a collection
- reverse the order of that collection to match the original order
- join the digits and return the value

Solution 2:

Given an integer
- split the integer into individual digits and store in a collection
and reverse the order to match the original integer
- go through the collection of digits and add each one into a sentence
- once all the digits are added, return the sentence
=end

def integer_to_string(num)
  num.digits.reverse.join
end

def integer_to_string(num)
  str_digits = ('0'..'9').to_a
  int_array = num.digits.reverse
  str = ""
  int_array.each do |int|
    str << str_digits[int]
  end

  str
end


p integer_to_string(4321) == "4321"
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'