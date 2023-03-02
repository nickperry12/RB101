=begin
---------------- Problem

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a
= 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the
original string.

All letters will be lowercase and all inputs will be valid.

Restate the problem:

Create a method that accepts a string as an argument, and returns a word from
the given string that has the most points. Each letter in the alphabet has a
point value determined by its place in the alphabet e.g., 'b' is worth 2 points
as it is the second letter in the alphabet. If two words are scored the same,
return the word that appears first


Input: String

Output: String




Explicit Rules:
- each letters point value is determined by its position in the alphabet
- if two words have the same score, return the one that appears first
- all inputs will be lowercase


Implicit Rules:
- none identified


Modelling:

I: 'man i need a taxi up to ubud'
O: 'taxi'

alphas = ['a', 'b', 'c', ... ]
letter_points = {'a' => 1, 'b' => 2, 'c' => 3, ... }

hash[letter] = alphas.index(letter) + 1

['man', 'i', 'need', 'a', 'taxi', 'up', 'to', 'ubud']

=> 'man' => ['m', 'a', 'n'] => [13, 1, 4] => 18

Do this for every word


---------------- Examples

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `alphas` to the letter of the alphabet
Build a hash where each key is letter and the value is its index position in
`alphas` + 1 and assign to `letter_points`

Split the `str` into an array of words
  - transform each word
    - Split the word into an array of chars
      - Map that array, and convert each char to it's value from `letter_points`
        - Sum the array

Find the index in the resulting array with the highest number, and find the word
at that same index from the array of split words

=end

def high(str)
  alphas = ('a'..'z').to_a
  alphas.each_with_object(letter_points = {}) do |letter, hash|
    hash[letter] = alphas.index(letter) + 1
  end

  words = str.split
  word_points = words.dup

  word_points.map! do |word|
    word.chars.map { |char| letter_points[char] }.sum
  end

  words.select { |word| words.index(word) == word_points.index(word_points.max) }[0]
end



p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
