# Write a method that takes one argument, a positive integer, and returns a
# list of the digits in the number.

# Examples:

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true
#
# Solution using PEDAC
#
# Understand the problem:
# We want to take a given number, split that number into single digits, and store them
# into an array
#
# Input: 
# Integer
#
# Output:
# Array filled with single digits from given integer
#
# Explicit rules:
# The input must be an integer, must be positive
# The method must return an array with the digits that make up the given integer
#
# Implicit Rules:
# Must return an array
# Objects in an array must be integers, not strings
#
# Algorith
#
# /* Given an integer */
#
# Define method 'digit_list'
#   Convert the integer to a string
#   Split the string into digits into an array
#   Convert the objects in the array to integers
# End method definition

def digit_list(number)
  string = number.to_s
  array = string.split(//)
  array.map! { |str| str.to_i }
end

p digit_list(1234567)