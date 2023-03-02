=begin
---------------- Problem

An anagram is the result of rearranging the letters of a word to produce a new
word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of
each other; return false otherwise.

Examples "foefet" is an anagram of "toffee"
"Buckethead" is an anagram of "DeathCubeK"

Restate the problem:

Create a method that accepts two strings for arguments, and returns `true` if
the strings are anagrams, and `false` if not


Input: String

Output: String




Explicit Rules:
- return true if anagrams, false if not
- case doesn't matter



Implicit Rules:



Modelling:




---------------- Examples

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two strings `str1` `str2` */

Split both strings into collections of chars
  - downcase all the chars
  - sort the collections
  - check to see if the collections are equal to each other




=end

def is_anagram(str1, str2)
  str1.downcase.chars.sort == str2.downcase.chars.sort
end


p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
