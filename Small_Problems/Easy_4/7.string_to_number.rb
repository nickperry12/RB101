=begin

Convert a String to a Number!

The String#to_i method converts a string of numeric characters (including an
optional plus or minus sign) to an Integer. String#to_i and the Integer
constructor (Integer()) behave similarly. In this exercise, you will create a
method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number
as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about
invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to
convert a string to a number, such as String#to_i, Integer(), etc. Your method
should do this the old-fashioned way and calculate the result by analyzing the
characters in the string.

P:

We need to create a method that takes a string of numbers and converts it to
the integer equivalent. For example, if we had a given string `"21432"`, we
need the method to convert it to an integer object `21432`. However, we are not
allowed to use the built-in Ruby methods `String#to_i` or `Integer()`. We need to
anazlyze the characters in the string and get the result based off of that.

We can split the string into individual characters but need to find a way to
join the integers together once we have the conversion.

Explicit Rules:
- cannot use built in conversion methods
- strings passed in need to be converted to an integer

Implicit Rules:
- none implied

Mental Model:

Once we have the characters split, need to match the characters with the
respective key in our hash. Once we have the integer equivalent of each
character, we have to join them. The `Array#join` method will not work here as
it returns a string; we need it to return an integer. We can use the following
formula to get our final integer:

x * 10 + y

For example: Given string "4321" convert to integers
[4,3,2,1]
4 * 10 + 3 = 43
43 * 10 + 2 = 432
432 * 10 + 1 = 4321

We can implement this formula into a loop to perform this calculation

E/TC:

string_to_integer('4321') == 4321
string_to_integer('570') == 570

D:

Input: String
Output: String

- Can use a hash with the key being the string representation of a digit, and
the value being the integer object referenced by that string (e.g., "1" => 1)

- Use a loop with the following formula to get our final integer: x * 10 + y

A (High Level):

initialize a constant variable `DIGITS` and assign a hash with key-value pairs
where the keys are the string representation of a digit, and the value is the
integer object equivalent. Do this for 0-9. 

create a method `string_to_integer` that has one parameter `str_number`
- create an empty collection called `numbers`
- split the string into individual characters
- iterate through the collection of characters and compare them to the values in
the DIGITS collection
  1) if the current character is the same as the value in DIGITS, store the value
  into the numbers collection
- perform the following sequence
  1) multiply the first number in the collection by 10 and add the second number
  to the result
  2) repeat this sequence until you reach the second to last number in the
  collection of numbers
- return the final result

C:
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

def string_to_integer(str_number)
  numbers = Array.new
  str_number.chars.each do |num|
    numbers << DIGITS.values_at(num)
  end
  numbers.flatten!

  numbers.inject { |num1, num2| num1 * 10 + num2}
end

p string_to_integer("4321")

# Further Exploration - Converting Hexadecimal to Integer

=begin

P: 

Need to create a method that not only converts string digits to their integer
equivalent, but hexadecimals as well. Hexadecimals and the integer equivalents
are as follows:

'10' = 'a'
'11' = 'b'
'12' = 'c'
'13' = 'd'
'14' = 'e'
'15' = 'f'

Notes:

Previously, when converting, we used the `inject` method and used the following
formula: `num1 * 10 + num2` where `num1` and `num2` had elements from an array
bound to them, e.g., on the first iteration `num1` was bounded to index 0, and
`num2` was bounded to index 1. This repeated until `num2` was finally bound to
the element at the last index.

E/TC:

hexadecimal_to_integer('4D9f') == 19871

Notes:
- Looking at the output, we can see that the formula we used previously won't
work

- If we took each hexadecimal character and plugged in the integer equivalent,
we would have '413915'

- How did we get this number then?

- Hexadecimals are a 16 point system. So to get the decimal equivalent, we need
to multiply each number by 16**n, with `n` starting at 0 and increasing by 1 as
you multiply each number. 

- Using our test case, it would loko like this:
'4D9F'
F * 16**0
9 * 16**1
D * 16**2
4 * 16**3

D: 

Input: String
Output: Integer

- Within our method we can use an array to store the split hexadecimals
and then iterate over them

- If you look at the formula to get the integer equivalent of th hexadecimals,
notice that the first number is multiple by 16**0. `n` starts at 0, much like
the indexes of arrays. We can reverse the order of our given hexadecimal and
multiply 16 by the index.

A:

Given a hexadecimal number
Split the number into individual digits
Convert the letter digits to their integer equivalents
Reverse the order the given digits
Multiply each digit by 16**n, with `n` being the digits index number
Return the sum

=end

HEXADECIMALS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(hex)
  digits = hex.chars
  digits.map! do |digit|
    digit = HEXADECIMALS[digit]
  end
  digits.reverse!

  counter = 0
  loop do
    digits[counter] = digits[counter] * 16**counter
    counter += 1
    break if counter == digits.size
  end

  digits.sum
end

p hexadecimal_to_integer("4D9F")