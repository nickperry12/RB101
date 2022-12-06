=begin

Trolls are attacking your comment section!

A common way to deal with this situation is to remove all of the vowels from the
trolls' comments, neutralizing the threat.

Your task is to write a function that takes a string and return a new string
with all vowels removed.

Note: for this kata y isn't considered a vowel.

P:

Notes:
- Need to split the words and iterate over them, check to see if they contain
any vowels
- Can split the string into an array to iterate over it 
- Will need to make sure to we are returning a new string, not a modified
version of the original string
- Don't use any mutating methods

Explicit Rules:
- remove all the vowels from each word contained in the string
- Need to return a new string, not a modified one
- 'y' is not included in list of vowels
Implict Rules:
- case insenitive

Example/Test Cases: 

the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs
LL!".

Data Structure:

Input: String
Output: New string

Algo (High Lvl):

- take a given sentence and split it into individual words
- check each word for any vowels
- if the word contains any vowels, remove them
- return the new sentence

C:
=end

def disemvowel(str)
  new_str = str.gsub(/[aeiou]/i, "")
  new_str
end

p disemvowel("hello there")