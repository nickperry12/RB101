=begin

Given two words, how many letters do you have to remove from them to make them
anagrams?

Example

First word : c (od) e (w) ar (s) (4 letters removed)

Second word :(ha) c (k) er (r) a (nk) (6 letters removed)

Result : 10

Hints 

A word is an anagram of another word if they have the same letters (usually in a
different order). Do not worry about case. All inputs will be lowercase. When
you're done with this kata, check out its big brother/sister :

https://www.codewars.com/kata/hardcore-anagram-difference


P:

Need to create a method that takes two strings as an argument, and removes
letters from both strings to make them into an anagram of each other. A word is
considered an anagram of another word if they have the same letters (usually in
a different order).

For example, if we're given the strings "codewars" and "hackerrank", a total
of 10 letters are removed to make them into anagrams; 4 letters from the first
string and 6 letters from the second string.

The letters "o, d, w, s" are removed from "codewars", and the letters "h, a, k,
r, n, k" are removed from "hackerrank" leaving the letters "cear" in each string.

Notes:

Think about how we we're going to compare the two strings. We could use the
`include?` method to compare each letter and remove them if they're not a match.

If a letter appears more than once, remove the second instance of that character.



E:

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10


D: 

Input: two strings
Intermediate: Array
Output: Integer

Methods we can use:

Array#include?
- use this to compare the elements in one array appear in the other

#<<
- can use this to add the selected letters into our array of rejected chars



A:

/* given two strings */
1. split each string into characters
2. create an empty array `rejected`
3. if one string is larger than the other:
  a) iterate through the shorter string
  b) check to see if the chars in the shorter string appear in the larger string
  c) if they do not, store them in the `rejected` array
  d) check to see if there is more than one instance of that char, and if there
  is, store it in the rejected chars array
4. remove multiple instances of chars in the `rejected` array
5. return `rejected` count

=end

def anagram_difference(str1, str2)
  p str1
  p str2
  dissimilar_letters = []
  similar_letter_counter = 0
  str1.chars.select { |item| dissimilar_letters << item if !(str2.include?(item)) }
  str2.chars.select { |item| dissimilar_letters << item if !(str1.include?(item)) } 
  str1 = str1.chars.delete_if { |obj| dissimilar_letters.include?(obj) }.sort
  str2 = str2.chars.delete_if { |obj| dissimilar_letters.include?(obj) }.sort
  str1.uniq.each_with_object(hash1 = {}) { |letter, obj| obj[letter] = str1.count(letter) }
  str2.uniq.each_with_object(hash2 = {}) { |letter, obj| obj[letter] = str2.count(letter) }
  arrs = hash1.values.zip(hash2.values).select { |subarr| subarr if subarr.inject(:-).abs > 0 }
  differences = arrs.map { |subarr| subarr.inject(:-).abs }
  similar_letters_counter = differences.inject(:+)
  similar_letters_counter + dissimilar_letters.count
end

p anagram_difference('codewars', 'hackerrank')