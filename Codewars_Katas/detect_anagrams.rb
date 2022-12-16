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

E:

Example

First word : c (od) e (w) ar (s) (4 letters removed)

Second word :(ha) c (k) er (r) a (nk) (6 letters removed)

Result : 10

D: 

Input: two strings
Intermediate: Array
Output: Integer

A:

given two strings
- split each string into letters and store into separate arrays
- create an empty array for rejected letters
- iterate through the first string and compare each letter with the split
letters of string two
a) if the letters aren't included in string two, add that letter to rejected letters
b) however, if the letter is inlcuded but there is more than one, add it to
rejected letters and delete that character from the string
- repeat previous steps for string two
- return the count of rejected letters array


=end

def anagram_difference(str1, str2)
  letters_one = str1.chars
  letters_two = str2.chars
  rejected_letters = Array.new

  str1.chars.each do |letter|
    if letters_two.include?(letter) == false
      rejected_letters << letter
    elsif letters_two.include?(letter) && letters_one.count(letter) > 1
      rejected_letters << letter
    end
  end

  letters_one = str1.chars
  str2.chars.each do |letter|
    if letters_one.include?(letter) == false
      rejected_letters << letter
    elsif letters_one.include?(letter) && letters_two.count(letter) > 1
      rejected_letters << letter
      letters_two.delete(letter)
    end
  end

  rejected_letters.count
end

p anagram_difference("aab", "a")