=begin
---------------- Problem

Write a function that takes in a string of one or more words, and returns the
same string, but with all five or more letter words reversed (Just like the name
of this Kata). Strings passed in will consist of only letters and spaces. Spaces
will be included only when more than one word is present.

Examples: 

spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

Restate the problem:

Create a method that accepts a string, and returns the same string but with all
5 or more letter words reversed. 


Input: String

Output: String




Explicit Rules:
- only reversing words that have 5 or more letters



Implicit Rules:
- each word should maintain their case e.g., if it's upper, it stays uppercase


Modelling:




---------------- Examples

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test"
p spinWords("This is another test") == "This is rehtona test"
P spinWords(‘test’) == ‘test’

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split the string into an array of words and assign to var `words`

Iterate through `words` and modify the array
  - If the current word has a size of 5 or more, reverse the order of the word
  - If the current word is less than a size of 5, return the word

Join `words` together and split by a space


=end

def spinWords(str)
  str.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end



p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test"
p spinWords("This is another test") == "This is rehtona test"
p spinWords("test") == "test"
