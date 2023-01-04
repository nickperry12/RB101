=begin

Letter Counter (Part 1)

Write a method that takes a string with one or more space separated words and
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

P:

Create a method that takes a string (can be either a single word, or multiple
words separated by spaces) that returns a hash where the key is the size of a
word, and the value is the amount of words of that size

Examples:

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

D:

Input: String
Output: Hash

Possible methods: 

`#each_with_object` where the object is the hash we want to create.

The key for our hash with be the size of each element passed into the block,
and the value of the hash will be the count of those elements who's size are
equal to the size of the element passed in

Algo:

/* given a string */

1) split the string in separate words
2) iterate through the collection of words and create a new hash
  a) set the current key of the hash to the size of the current word
  b) set the value of the current key to the counted instances of the word of
  that size
3) return the hash

=end 

def word_sizes(str)
  str.split.each_with_object({}) do |word, hsh|
    hsh[word.size] = str.split.count { |element| element.size == word.size}
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}