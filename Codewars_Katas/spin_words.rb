=begin

Write a function that takes in a string of one or more words, and returns the
same string, but with all five or more letter words reversed (Just like the name
of this Kata). Strings passed in will consist of only letters and spaces. Spaces
will be included only when more than one word is present.

P:

Need to create a method that takes in a string as an argument, and returns a
modified string. The modified string should take all words that are 5 or more
characters in length and reverse them.

Explicit Rules:
- Reverse all words with a length of 5 or more
- Strings passed in should only contain letters or spaces (no non-alphabetical
characters)

Implicit Rules:
- Case insensitive

Mental Model/Notes:
- Need to think about how we're going to iterate over each word in the string
- We can't call iterating methods on strings, so think about how we can take the
string, split it into individual words, and then iterate over them

Data Structure:

Input: String
Output: modified string

Examples/Test Cases:

spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
spinWords( "This is a test") => returns "This is a test" 
spinWords( "This is another test" )=> returns "This is rehtona test"

Algo (High Lvl):

separate the given sentence into individual words
check the length of each word
if the length of each word is equal to or greater than 5, reverse that word
join the words back together
return the final sentence

C:
=end

def spinWords(string)
  split_words = string.split
  split_words.map do |word|
    if word.length >= 5
      word.reverse!
    end
  end

  split_words.join(" ")
end

p spinWords("Hey fellow warriors")  #=> returns "Hey wollef sroirraw" 