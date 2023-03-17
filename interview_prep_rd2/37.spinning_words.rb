# Write a function that takes in a string of one or more words, and returns the
# same string, but with all five or more letter words reversed (Just like the
# name of this Kata). Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and returns the same
string with all five or greater letter words reversed. 


Input: String

Output: String

Explicit Rules:
- if the word has 5 or more letters, reverse the word


Implicit Rules:
- none implied


Modelling:

I: "Hey fellow warriors"
O: "Hey wollef sroirraw" 

["Hey", "fellow", "warriors"] => check the length of the word => modify if its
5 or greater

---------------- Examples

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw" 
p spinWords("This is a test")  == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Algorithm

/* given a string `str` */

Split `str` into a collection of individual words and assign to `words`

Iterate through `words` transforming the elements
  - Check to see if the current word has a length of 5 or greater
    - If it does, reverse it
  - If not, leave the word as is

Join `words` back into a string
  - Separate by a space

Return the resulting string

=end

def spinWords(str)
  words = str.split

  words.map! { |word| word.length >= 5 ? word.reverse : word }
  words.join(' ')
end



p spinWords("Hey fellow warriors") == "Hey wollef sroirraw" 
p spinWords("This is a test")  == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"