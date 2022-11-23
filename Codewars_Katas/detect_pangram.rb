=begin 
Detect Pangram

A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The
quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

P:

Create a method that takes one argument (a string) that detects whether the
given string is a pangram. A pangram is a defined as a sentence that contains
every letter of the alphabet at least once. The method should return true if it
is, false if it isn't.

Mental Model:

We want to iterate through the given string and check each character to see if
each character is included in the alphabet. To return true, it needs to contain
every letter from the alphabet. Missing just one letter will cause the method
to return false. 

Explicit Rules:
- must contain all letters of the alphabet to return true
- case does not matter
- numbers and punctuation do not matter and should be ignored

Implicit Rules:
- string length doesn't matter

D: 
Input: String
Output: String

E:

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false

A (High Level):

- initialize a constant variable `ALPHABET` and set to an array that contains
both upper and lowercase letters of the alphabet
- create a method called `panagram?` that accepts one argument
- iterate through the given string
a) check to see if each character is included in the alphabet
b) if each iteration returns true, methd should return true
c) return false otherwise
=end

ALPHABET = ('a'..'z').to_a

def pangram?(string)
  ALPHABET.all? { |letter| string.downcase.count(letter) >= 1 }
end

p pangram?("The quick brown fox jumps over the lazy dog.")
p pangram?("This is not a pangram.")