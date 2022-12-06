=begin

Convert String to a Signed Number

In the previous exercise, you developed a method that converts simple numeric
strings to Integers. In this exercise, you're going to extend that method to
work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number
as an integer. The String may have a leading + or - sign; if the first character
is a +, your method should return a positive number; if it is a -, your method
should return a negative number. If no sign is given, you should return a
positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such
as String#to_i, Integer(), etc. You may, however, use the string_to_integer
method from the previous lesson.

P:

Using the method we created in the previous problem, modify it so that it will
appened the appropriate sign signifying whether it is a positive or negative
integer. If there is no sign on the given integer, then it is safe to assume
it is positive.

Rules:
- If the sign on the given integer is "+", then it is positive and there is
no need to have that sign on the return integer

- If the sign on the given integer is ("-"), this should be incuded on the
returned integer.


E/TC:

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

=end

DIGITS = {"0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
  }
  
def string_to_signed_integer(str_number)
  numbers = Array.new
  str_number.chars.each do |num|
    numbers << DIGITS.values_at(num)
  end
  numbers.flatten!
  int = numbers.select { |item| item.class == Integer}
  int = int.inject { |num1, num2| num1 * 10 + num2}
  if str_number.include?("-")
    int * -1
  else
    int
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100