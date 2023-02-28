=begin
---------------- Problem

What is an anagram?

Well, two words are anagrams of each other if they both contain the same
letters.

For example:

'abba' & 'baab' == true
'abba' & 'bbaa' == true
'abba' & 'abbba' == false
'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will
be given two inputs a word and an array with words. You should return an array
of all the anagrams or an empty array if there are none.

Restate the problem:

Create a method that accepts a string as the first argument, and an array of
strings as the second argument. The method should iterate through the array of
strings, and return an array with strings that are anagrams of the given string


Input: String, Array

Output: Array




Explicit Rules:
- only select strings from the array that are anagrams of the given string



Implicit Rules:
- return [] if no anagrams


Modelling:

I: 'abba', ['aabb', 'abcd', 'bbaa', 'dada']
O: ['aabb', 'bbaa']

'abba' => sort the chars => 'aabb' => iterate through array => select strings
that when broken into chars, sorted and joined, are the same as given string


---------------- Examples

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` and array `arr` */

Iterate through the array
  - Select all strings that when split into chars, are sorted and then joined
    are the same as `str` when split into chars and sorted and joined


=end

def anagrams(str, arr)
  arr.select { |word| word.chars.sort.join == str.chars.sort.join }
end


p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []