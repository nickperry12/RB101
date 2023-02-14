=begin
---------------- Problem

Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters
reversed. Each string will consist of only letters and spaces. Spaces should be
included only when more than one word is present.

Restate the problem:

Create a method that takes a string as an argument, where the string conains one
or more words, and returns a new string, where all words that are have 5 or more
characters are reversed. 


Input: String

Output: String




Explicit Rules:
- only words that have 5 or more characters should be reversed



Implicit Rules:
- none identified


---------------- Examples

p reverse_words('Professional') == lanoisseforP
p reverse_words('Walk around the block') == Walk dnuora the kcolb
p reverse_words('Launch School') == hcnuaL loohcS




---------------- Data Structures

String
Array to split the words into



---------------- Scratchboard






---------------- Algorithm

/* given a string */

Split the given string into separate words and store into a collection
  - iterate over the collection of words
    - if the current word on iteration has a size of 5 or more
      - reverse the characters in that string
    - if not, leave the word as is
      - join the words back together and split by a space

Retrun the new string

=end

def reverse_words(str)
  str.split.map do |word|
    word.size >= 5 ? word.chars.reverse.join : word
  end.join(' ')
end


p reverse_words('Professional') == 'lanoisseforP'
p reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
p reverse_words('Launch School') == 'hcnuaL loohcS'