=begin

Clean up the words

Given a string that consists of some words (all lowercased) and an assortment of
non-alphabetic characters, write a method that returns that string with all of
the non-alphabetic characters replaced by spaces. If one or more non-alphabetic
characters occur in a row, you should only have one space in the result (the
result should never have consecutive spaces).

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

P:

Explicit Rules:
- given a string,  remove all non-alphabetic characters (e.g. ', *, - )
- replace all non-alpha characters with a spaces
  - only one space per character, if there are two consecutive characters, keep it one space

Implicit Rules:
- 

Input: String
Output: String

Algorithm:

/* Given a string */

- initialize a variable ALPHABET and assign a collection to it, consisting of each single letter in the alphabet

- take string input, split into separate words
- iterate through it and replace all non-alphabetic characters with a single space (no consecutive space)
- join the words back into a string
- output the result
=end

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  alphabetic_chars = []
  string.chars.each do |char|
    if ALPHABET.include?(char)
      alphabetic_chars << char
    else
      alphabetic_chars << (' ') unless alphabetic_chars.last == (' ')
    end
  end

  alphabetic_chars.join
end

p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '