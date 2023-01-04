=begin
Letter Counter (Part 2)

Modify the word_sizes method from the previous exercise to exclude non-letters
when determining word size. For instance, the length of "it's" is 3, not 4.

P:

Need to modify our previous method 'word_sizes' to now account for special non-
alphabetical characters. 

Explicit Rules:

- Character sizes should not include non-alphabetical characters
- Need to remove them before counting the characters in a word
  - E.g., the word "what's" should return a count of 5 characters, not 6

Implicit Rules:

- None identified

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

D:

Input: String
Output: Hash, where the key is the size of the word, and the value is the count
of those words

A:

/* given a string */

- split the string into individual words
- initialize a empty hash
- iterate over all the words in the given string
  a) remove all non-alphabetical characters from the string, and replace with ''
  b) set the current hash key on iteration to the size of the current word
  c) set the current hash value on iteration to the amount of words that are 
     equal to that size

=end

def word_sizes(str)
  words = str.split

  words.each_with_object({}) do |word, hsh|
    word.gsub!(/[^a-z0-9]/i, '')
    hsh[word.size] = words.count { |item| item.size == word.size }
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
