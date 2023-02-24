=begin
---------------- Problem

A pangram is a sentence that contains every single letter of the alphabet at
least once.

For example, the sentence "The quick brown fox jumps over the lazy dog" is a
pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is,
False if not. Ignore numbers and punctuation


Restate the problem:

Create a method that accepts a string for an argument, and returns true if the
given string is a pangram, and false if not. A pangram can be defined as a
sentence that contains every letter of the alphabet at least once. 


Input: String

Output: Boolean




Explicit Rules:
- must return true if the given string contains every letter of the alphabet
- false if not


Implicit Rules:
- none identified


Modelling:




---------------- Examples


p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false


---------------- Data Structures

String



---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `alpha` to a hash, where each key is a letter from the alphabet
and each value is set to 0

Split `str` into a collection letters
  - Iterate through the collection of chars, and if the char is a key in the
    `alpha` hash, increment that key's value by 1

Return true if each value in `alpha` has a value of 1 or greater, and return
false if not


=end

def panagram?(str)
  alphas = ('a'..'z').each_with_object({}) { |char, hsh| hsh[char] = 0 }
  letters = str.downcase.chars

  letters.each do |letter|
    if alphas.keys.include?(letter)
      alphas[letter] += 1
    end
  end

  alphas.values.all? { |num| num >= 1 }
end

p panagram?("Cwm fjord bank glyphs vext quiz") == true
p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
