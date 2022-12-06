=begin

Convert a Signed Number to a String!

In the previous exercise, you developed a method that converts non-negative
numbers to strings. In this exercise, you're going to extend that method by
adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string
representation.

You may not use any of the standard conversion methods available in Ruby, such
as Integer#to_s, String(), Kernel#format, etc. You may, however, use
integer_to_string from the previous exercise.

P:

Working with the same method we created in the previous problem, modify it so
it so that it works with negative numbers as well.

E/TC:

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

=end

def signed_integer_to_string(int)
  if int.negative?
    int *= -1
    integer_to_string(int).prepend("-")
  elsif int == 0 
    integer_to_string(int)
  else
    integer_to_string(int).prepend("+")
  end
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

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == "-123"
p signed_integer_to_string(0) == '0'