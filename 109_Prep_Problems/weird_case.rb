=begin

Write a method named to_weird_case that accepts a string, and returns the same
sequence of characters with every 2nd character in every third word converted to
uppercase. Other characters should remain the same.

P:

Create a method that takes a string, and returns the a string with the same
sequence of characters/words with every 2nd char in every third word being
changed to uppercase. Everything else should remain the same. 

Explicit Rules:

Only changing every 2nd character in every third word
Those characters should be changed to uppercase
All other words and characters should remain unchanged

Implicit Rules:

If every third word contains an uppcase character already, we should still
upcase the 2nd char

E:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

D:

Input: String
Intermediate: Array of strings
Output: Modified String

Can `split` to split the string into an array of strings
Use map to modify the strings in the array

A:

/* given a string */

1. split the string into separate words
2. set counter to 2
3a. iterate over the array of words
3b. split the word at index referenced by counter into chars
3c. iterate over the chars of that word
3d. if the index of that word is negative, permanently upcase that character
4. return the modified string

=end

def to_weird_case(string)
  words = string.split

  (2..words.size - 1).step(3) do |x|
    (1..words[x].size - 1).step(2) { |n| words[x][n] = words[x][n].upcase! }
  end

  words.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'