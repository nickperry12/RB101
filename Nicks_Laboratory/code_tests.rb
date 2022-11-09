=begin 
Nick: 
P:

Given a lowercase substring with both vowels and consonants with no
spaces
- return length of the longest consecutive vowel substring (e.g, codewarriors =>
  2)

- We aren't trying to count each vowel, we're trying to return the longest
  length of consecutive vowels (in the given string codewarriors, the return
  would be 2, the longest substring of vowels would be 'io' == 2)

Explicit Rules:
- Input: a string that contains alphabetic characters
- Output: integer representing the longest amount of vowels in the given String

Implicit Rules:
- string doesn't contain any spaces
- no integers in string
- string doesn't have to be a word, just contain letterse

E:

solve("codewarriors") == 2
solve('ybd') == 0
solve('caeioucu') == 5
solve('aaa') == 3

D:

A:

create a method `solve` that takes one argument (a string)
- create an empty collection (a hash)
- iterate through the given string and collect any vowels
- if a vowel is a found, add to an empty Array
- after iterating through the string and collecting all the vowels
    - iterate through the array
      - add vowels to the empty hash, with a key for each vowel
      - set the value of each key to the counted amount of each vowel
- return the vowel with the highest value (must be an integer)

=end 

# def solve(string)
#   collected_vowels = []
#   vowels = 'aeiouAEIOU'

#   string.split(//).each do |letter|
#     if vowels.include?(letter)
#       collected_vowels << letter
#     end
#   end

#   collected_vowels.each_with_object({}) do |vowel, hash|
#     hash[vowel] = collected_vowels.count(vowel)
#   end
# end


p solve("codewarriors")