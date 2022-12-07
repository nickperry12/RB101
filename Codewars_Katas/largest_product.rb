require 'pry'

=begin

Complete the greatestProduct method so that it'll find the greatest product of
five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

Adapted from Project Euler.

P:

Need to create a method that takes one argument, a string of digits, and returns
the greatest possible product of five consecutive digits. For example, if we
have the string "123834539327238239583", the greatest possible product would be
3240. 

Notes:

We're working with a string of digits, and will need to covert them to integers
before we're able to start doing any calculations with them. Easiest way would
be to split the string into single chars and store into an array, and then use
the destructive `map!` method to iterate over the array and convert all the
to integers.

Rules:

- Input string always has >5 digits
- Must return greatest product of 5 CONSECUTIVE integers

Implicit Rules:

- Use only positive numbers
- Given numbers are string objects
- Objects must be converted to integers to use calculations
- Must return an integer

E/Test Case:

greatestProduct("123834539327238239583") == 3240 # should return true

D: 

Input: String of digits
Output: Integer, greatest product of 5 consecutive integers

Algo:

Given a string of digits
- split the string into individual characters and store in a collection
- convert each string into integer objects
- take each set of 5 numbers, starting with the first index, and find the product
  a) place the product in a new array
  b) when all the possible products are placed in the array, sort it from low
  to high
  c) return the greatest product
=end

def greatest_product(n)
  array_of_nums = n.chars.map { |digits| digits.to_i}
  array_of_products = Array.new
  first_num = 0
  last_num = first_num + 4
  
  loop do
    array_of_products << array_of_nums[first_num..last_num]
    first_num += 1
    last_num += 1
    binding.pry
    break if last_num == array_of_nums.size
  end

  array_of_products = array_of_products.map { |sub_array| sub_array.inject(:*)}.sort
  array_of_products[-1]
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240