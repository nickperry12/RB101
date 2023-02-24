=begin

---------------- Problem

Write a method that takes one argument, a string, and returns a new string with
the words in reverse order.

Restate the problem:

Create a method that takes a string, and returns a new string with the words
placed in a reverse order


Input: String

Output: String




Explicit Rules:
- the words contained in the string must be returned in a reversed order



Implicit Rules:
- return an empty string, if the string contains only spaces



---------------- Examples

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''




---------------- Data Structures

String
Array to split the string up




---------------- Scratchboard






---------------- Algorithm

/* given a string */

If the given string only contains spaces, return an empty string

Split the given string into a collection of words
  - reverse the order of all the words
  - join the words back together separated by a space

Return the new string

=end

def reverse_sentence(str)
  str.split.reverse.join(' ')
end



p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'
p reverse_sentence('') == ''
p reverse_sentence('    ') == '' # Any number of spaces results in ''