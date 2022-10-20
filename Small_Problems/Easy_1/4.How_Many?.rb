# Write a method that counts the number of occurrences of each
# element in a given array.

# The words in the array are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

# Solution using PEDAC
#
# Understand the problem:
# We want to count each occurence of an element in an array and then
# print the element and the number of times it occured
#
# Explicit Rules:
# Our output should be the number of occurences for each element
# The elements should be store in an array to begin with
# 
# Implicit Rules:
# There should be multiple elements with the same value
# Your method should take one parameter
#
# Clarification:
# Can elements be strings only? Or can they be different objects?
# Do you want the result stored in another data structure?
#
# Examples/Test Cases
#
# Input: 
# An array with either single or multiple elements of the same value
#
# Output:
# The element and the number of times it occured
#
# Algorith
# /* Given an array filled with elements */
#
# Define the method 'count_occurences'
#   Initialize empty hash 'occurrences'
#   Iterate through the given array
#     Assign the elements in the array to the occurrence key
#     Assign the count of the elements to the occurrence value
#   End the iteration 
#
#   Iterate through the hash
#     Print each key along with its value
#   End iteration
# End method definition

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  occurrences = {}
  arr.each do |element|
    occurrences[element] = arr.count(element)
  end

  occurrences.each do |key, value|
    puts "There is #{value} of each #{key}"
  end
end

count_occurrences(vehicles)