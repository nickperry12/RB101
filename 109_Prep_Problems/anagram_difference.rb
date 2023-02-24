=begin

---------------- Problem

Given two words, how many letters do you have to remove from them to make them
anagrams?

Example

First word : c (od) e (w) ar (s) (4 letters removed)

Second word :(ha) c (k) er (r) a (nk) (6 letters removed)

Result : 10

Hints 

A word is an anagram of another word if they have the same letters (usually in a
different order). Do not worry about case. All inputs will be lowercase.

Restate the problem:

Create a method that takes two strings, and removes letters from each string
until both strings are an anagram of each other. An anagram can be defined as
two words having the same letters as each other. For example, the string "abba"
is an anagram of "baba". Our method should return the amount of letters removed
from each word. 


Input: Two Strings
Output: Integer


Explicit Rules:
- must remove letters from each string to create anagrams of each other
- must return the total amount of letters removed from each string



Implicit Rules:
- return 0 if the string is empty
- count removed letters if one string is empty as implied from our given test
cases


---------------- Modelling

two given strings == 'codewars', 'hackerrank'

['c', 'o', 'd', 'e', 'w', 'a', 'r', 's']
['h', 'a', 'c', 'k', 'e', 'r', 'r', 'a', 'n', 'k']

comparing the second string to the first string

chars to remove from the first string:
[h] => not included in string 1, remove that char
[a] => included once in first string, leave it
[c] => included, leave it
[k] => not included in string 1, remove that char
[e] => included, leave it
[r] => included once, leave it
[r] => not included a second, remove second instance of the char
[a] => not included a second time, remove second instance of that char
[n] => not included, remove char
[k] => not included, remove char

total items removed => 6

compare the first to the second string:
[c] => appears once, leave it
[o] => not included, remove it
[d] => not included, remove it
[e] => included, leave it
[w] => not included, remove it
[a] => appears once, leave it
[r] => appears once, leave it
[s] => not included, remove it

=> total items removed => 4

total of totals => 10



---------------- Examples

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10




---------------- Data Structures

Array to store removed chars in
Strings



---------------- Scratchboard






---------------- Algorithm

/* given two strings */

Create a duplicate of the first given string
 - Iterate through the characters of this duplicate string
  - If the character on the current iteration is included in the second string,
    replace the first instance of that character with an empty string in both
    original strings
    - Repeat this for every character
 - Find the sum of the sizes of both original strings
 - Return the result

=end

def anagram_difference(str1, str2)
  str1.dup.each_char do |char|
    if str2.include?(char)
      str1.sub!(char, '')
      str2.sub!(char, '')
    end
  end

  str1.size + str2.size
end



p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10