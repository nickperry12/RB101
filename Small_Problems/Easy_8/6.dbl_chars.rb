=begin

P:

Double Char (Part 1)

Write a method that takes a string, and returns a new string in which every
character is doubled.

Restate the problem:

Create a method that takes one argument, a string, and returns a new string that
has every character doubled.

Input: String
Output: String

Explicit Rules:
- Double each character

Implicit Rules:
- Must double the spaces as well


E:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

D:

/* given a string */

Split the string into a collection of its characters, including spaces
  - Iterate through the collection of characters, and double each character
  - Join the characters back together into sentence form
  - Return the sentence

If the given string is empty, return an empty string

=end

def repeater(str)
  str.chars.zip(str.chars).join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''