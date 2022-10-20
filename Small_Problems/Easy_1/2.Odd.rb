# Write a method that takes one integer argument, which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

# Examples:

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# PEDAC Solution

# We must write a method that takes an integer as an argument, and returns either true
# if its odd, or false if its even.
#
# Input: Integer
# Output: Boolean (true or false)
#
# Explicit Rules:
# We aren't allowed to use the methods #odd? or #even? in our method.
# The input must be an integer.
#
# Implicit Rules: 
# Output should be a boolean value (true or false)
#
# Possible questions for clarification:
# What should happen if an object other than a integer is entered?
#
# Algorith:
#
# /* Given an integer */
#
# If the integer modulo 2 is equal to 0
#   the integer is odd
#   output true
# If the integer modulo 2 is not equal to 0
#   the integer is even
#   output false
# End method definition

def is_odd?(num)
  if num % 2 != 0
    true
  else false
  end
end

# Further Exploraton

def is_odd_alt?(num)
  if num.remainder(2) != 0
    true
  else false
  end
end

puts is_odd?(5)
puts is_odd?(4)
puts is_odd_alt?(-5)
puts is_odd_alt?(-4)