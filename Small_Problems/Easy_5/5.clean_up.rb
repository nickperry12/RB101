=begin

Clean up the words

Given a string that consists of some words (all lowercased) and an assortment of
non-alphabetic characters, write a method that returns that string with all of
the non-alphabetic characters replaced by spaces. If one or more non-alphabetic
characters occur in a row, you should only have one space in the result (the
result should never have consecutive spaces).

P:

Create a method that takes a string and replaces all non-alphabetical characters
with spaces. All consecutive symbols are replaced with a single space.

Explicit Rules:

- must remove all non-alphabetical characters and replace with a single space
- all words are lower-cased

Implicit Rules:

- none to be identified

D: 

Input: String
Output: String

Possible methods: `String#gsub`

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

Algo:

/* given a string */

1) iterate through the string
2) identify all non-alphabetical characters
3) replace them with a space

=end

def cleanup(str)
  str.gsub(/[^a-z0-9]/i, ' ').squeeze(' ')
end

def cleanup_two(str)
  alphabet = ('a'..'z').to_a
  new_string = []

  str.chars.each do |char|
    if alphabet.include?(char)
      new_string << char
    else
      new_string << ' '
    end
  end

  new_string.join.squeeze(' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup_two("---what's my +*& line?") == ' what s my line '