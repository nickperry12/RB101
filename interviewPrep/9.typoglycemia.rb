=begin
---------------- Problem

Background

There is a message that is circulating via public media that claims a reader can
easily read a message where the inner letters of each words is scrambled, as
long as the first and last letters remain the same and the word contains all the
letters.

Another example shows that it is quite difficult to read the text where all the
letters are reversed rather than scrambled. In this kata we will make a
generator that generates text in a similar pattern, but instead of scrambled or
reversed, ours will be sorted alphabetically

Requirement

return a string where:
1) the first and last characters remain in original place for each word

2) characters between the first and last characters must be sorted
   alphabetically

3) punctuation should remain at the same place as it started, for example:
   shan't -> sahn't

Assumptions

1) words are seperated by single spaces

2) only spaces separate words, special characters do not, for example: tik-tak
   -> tai-ktk

3) special characters do not take the position of the non special characters,
   for example: -dcba -> -dbca

4) for this kata puctuation is limited to 4 characters: hyphen(-),
   apostrophe('), comma(,) and period(.)

5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia


Restate the problem:

Create a method that accepts a string as an argument, and returns a new string
where each word has the characters between the first and last letter sorted
alphabetically. All punctuation should remain in place. 


Input: String

Output: String




Explicit Rules:
- all letters between the first and last must be sorted alphabetically
- must preserve punctuation



Implicit Rules:
- none identified


Modelling:




---------------- Examples

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's
nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul
neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

---------------- Data Structures

String
Array



---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `words` to the collection of words from `str`

Iterate through `words` collection
  - Initialize punctuation to []
  - Iterate through the chars and indices of the current word
    - If the current char is not a letter of the alphabet, add the index and the
      char to `punctuation`
  - replace all puncutation in the `str` with ''
  - alphabetically sort the letters between the first and last letter of each
    word
  - add the punctuation marks back into each word
  - return the word
Join `word` and separate each word with a space

=end

def scramble_words(string)
  words = string.split

  words.map do |word|
    punctuation = []
    word.chars.each_with_index do |char, idx|
      if !char.match?(/[A-Za-z]/)
        punctuation << [idx, char]
      end
    end
    word = word.gsub(/[^A-Za-z]/, '')
    word[1...-1] = word[1...-1].chars.sort.join
    punctuation.each do |idx, char|
      word.insert(idx, char)
    end
    word
  end.join(' ')
end



p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's
nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's\
 nbdooy wachintg, love like ylo'ul\
 neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
