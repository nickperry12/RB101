# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

# Example:
# repeat('Hello', 3)

# Output:
# Hello
# Hello
# Hello

# PEDAC Solution
# We want the method to take two arguments - a string and a positive integer - with the output
# printing out the string as many times as the integer indicates.
#
# Input: String, Integer
# Output: String
#
# Explicit Rules: 
# String should print out the same amount of times as the integer input
# Method should take two arguments
#
# Implicit Rules:
# Output should be a string and should match the string entered
#
#
# Algorithm
#
# /* Given a string and an integer */
#
# Define method repeat(string, integer)
# Print integer times string
# End method definition

def repeat(str, int)
  int.times { |_| puts str}
end

repeat("hello", 3)