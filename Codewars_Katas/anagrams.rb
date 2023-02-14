=begin
What is an anagram? Well, two words are anagrams of each other if they both
contain the same letters. For example:

'abba' & 'baab' == true
'abba' & 'bbaa' == true
'abba' & 'abbba' == false
'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will
be given two inputs a word and an array with words. You should return an array
of all the anagrams or an empty array if there are none

---------------- Problem

Restate the problem:

Create a method that takes two arguments, argument1 is a string, argument2 will
be an array of strings. And our method should return an array of all the
anagrams possible from the given string, and return an empty array if there are
none.



Input: String, Array
Output: Array of Strings




Explicit Rules:
- find all the possible anagrams of the given String
- return an empty array if there are no possible anagrams


Implicit Rules:
- none identified

---------------- Modelling

'racer', ['crazer', 'carer', 'racar', 'caers', 'racer']

given string => 'racer'
result => ['carer', 'racer']

string at index 0 => 'crazer'




---------------- Examples

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []




---------------- Data Structures

Array



---------------- Scratchboard






---------------- Algorithm

/* given a string and an array of strings */

Initialize `result` to an empty array []
Initialize `chars` to given string split into single characters, and sort it from a-z

Iterate through our given array `arr`, and starting with the first string:
  - split that string into single chars, and sort it from a-z
    - compare the characters at each index to the characters in `chars`
      - if each character is the same, add that string to `result`
        - repeat for each string in `arr`

Return `result`


=end

def anagrams(str, arr)
  chars = str.chars.sort.join

  arr.each_with_object(result = []) do |string, result|
    if chars.include?(string.chars.sort.join)
      result << string
    end
  end
end

# each_with_object


p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []