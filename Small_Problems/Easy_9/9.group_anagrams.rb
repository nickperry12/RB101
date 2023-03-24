=begin
---------------- Problem

Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl',
          'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

Write a program that prints out groups of words that are anagrams. Anagrams are
words that have the same exact letters in them but in a different order. Your
output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)


Restate the problem:

Create a method that takes an array of strings, and returns an arrays that group
strings that are anagrams of each other. 


Input: Array

Output: Array of arrays




Explicit Rules:
- Each subarray must contain strings that are anagrams of each other
- Anagrams are the words that have the same characters




Implicit Rules:



Modelling: 




---------------- Examples

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl',
          'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

=> ["demo", "dome", "mode"]
["neon", "none"]
#(etc)


---------------- Data Structures

Array



---------------- Scratchboard






---------------- Algorithm

/* given an array of strings */

Iterate over the given array
  - Split the current string into chars, sort them and join them back into a
    single string, then set that string as a hash key
    - Set the value of this key to an array where each element is an anagram of
      the key
  - Return each value of the created hash


=end

def words(arr)
  # result = arr.group_by { |k| k.chars.sort.join }
  # result.each_value { |value| p value }
  unique_arr = arr.uniq

  unique_arr.each_with_object(result = Hash.new) do |item, hash|
    sorted_word = item.chars.sort.join
    hash[sorted_word] = arr.select { |word| word.chars.sort.join == sorted_word }
  end

  result.each_value { |val| p val }
end



p words(['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl',
  'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon'])

# => ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)