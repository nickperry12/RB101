# Write a method that takes one argument, a string containing one or more words, and returns the
# given string with words that contain five or more characters reversed. Each string will consist
# of only letters and spaces. Spaces should be included only when more than one word is present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
#
# Understand the problem:
# We want to create a method that takes a string as an argument, and reverse any words with a
# length of 5 or more. 
#
# Explicit Rules:
# Only words with a length of 5 or more should be reversed. Spaces should only be included when
# there are multiple words. String should only contain letters or spaces, no numbers. 
#
# Implcit Rules:
# Capitalized letters should remain capitalized
#
# Clarification questions:
# Should we be mutating the original string? (Assumption is yes)
#
# Algorithm:
#
# /* Given a string */
#
# define methond 'reverse_words' that takes one argument
#   split the given string into an array
#   iterate through the new array
#     if the length of a string in the array is 5 or more, reverse it permanently
#   end the iteration
#   join the strings from the array and separate them with a space
# end method definition
#
# print output

def reverse_words(string)
  words = string.split
  words.each do |element|
    if element.length >= 5
      element.reverse!
    end
  end
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

