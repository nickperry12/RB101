=begin
---------------- Problem

Write a method named to_weird_case that accepts a string, and returns the same
sequence of characters with every 2nd character in every third word converted to
uppercase. Other characters should remain the same.

Restate the problem:

Create a method that accepts a string for an argument, and returns a modified
string, where every 2nd letter in every 3rd word is upcased, with all other
characters remaining the same.


Input: String

Output: String




Explicit Rules:
- only modifying the 2nd letter of every 3rd word



Implicit Rules:
- assume that we're returning a new string


Modelling:

I: 'Lorem Ipsum is simply dummy text of the printing'
O: 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'

['Lorem', 'Ipsum', 'is'....]

0... 1... 2 (third word) => modify every 2nd char = ['i', 's']


---------------- Examples

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

---------------- Data Structures

I: String
Intermediate: Array
O: String



---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split `str` into a collection of single words
  - Step through the indices, and on each 3rd index, modify the word
    - Break the word apart into a collection of letters
      - Iterate through the collection of letters with the indices
        - If the current index is odd, upcase the letter, if not, leave as is
      - Join the group of letters back together to form a string
    - Repeat these steps for every third word

Join the collection of words back together, separating each word with a space


=end

def to_weird_case(str)
  words = str.split

  (2...words.size).step(3) do |idx|
    words[idx] = words[idx].chars.map.with_index do |char, idx2|
      idx2.odd? ? char.upcase : char
    end.join
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