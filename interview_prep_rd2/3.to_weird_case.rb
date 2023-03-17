# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

=begin
---------------- Problem



Restate the problem:

Create a method that accepts a string for an argument, and returns the same
string where every third word has every 2nd letter converted to upcase.
Other characters and words should remain the same


Input: String

Output: String




Explicit Rules:
- only modifying every 2nd letter of every 3rd word



Implicit Rules:
- none identified


Modelling:

I: 'Lorem Ipsum is simply dummy text of the printing'
O: 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
      0     1    2    3     4     5   6   7     8



---------------- Examples

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

---------------- Data Structures

I: String
Intermediate: Array
O: String



---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `words` to a collection of the words in `str`
  - Starting at 2 up to the size of `words` (exclusive), skipping to every 3rd index
    - Modify the current word by splitting into an array of letters
      - Iterate through the letters, and if the it's index is odd, upcase it
    - Join the letters back together
Join `words` together and separate with a space


=end

def to_weird_case(str)
  words = str.split

  (2..words.size).step(3) do |i|
    words[i] = words[i].chars.map.with_index do |char, idx|
                 idx.odd? ? char.upcase : char
                end.join
  end

  words.join(' ')
end 


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".