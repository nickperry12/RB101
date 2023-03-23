=begin 
Each letter in a sentence is worth its position in the alphabet (i.e. a = 1, b =
2, c = 3, etc...). However, if a word is all in UPPERCASE, the value of that
word is doubled.

Create a function which returns the value of a sentence.

get_sentence_value("abc ABC Abc") ➞ 24
# a = 1, b = 2, c = 3

# abc = 1 + 2 + 3 = 6
# ABC = (1+2+3) * 2 = 12 (ALL letters are in uppercase)
# Abc = 1 + 2 + 3 = 6 (NOT ALL letters are in uppercase)

# 6 + 12 + 6 = 24

Examples
get_sentence_value("HELLO world") ➞ 176
get_sentence_value("Edabit is LEGENDARY") ➞ 251
get_sentence_value("Her seaside sea-shelling business is really booming!") ➞ 488

Notes
  Ignore spaces and punctuation.
  Remember that the value of a word isn't doubled unless all the letters in it
  are uppercase.
=end 
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string, and returns an integer that represents
the value of the string. Each letter is worth the equivalent to it's position in
the alphabet, e.g., a = 1pt, b = 2pts, c = 3pts etc.. The method should ignore
punctuation. If all the letters in a word are uppercased, the points are worth
double. 


Input: String

Output: Integer

Explicit Rules:
- if all letters in a word are upcased, they're worth double the points
- letters are worth the equivalent to their position in the alphabet


Implicit Rules:
- none implied


Modelling:

I: "abc ABC Abc"
O: 24

Remove all punctuation/non-alphabetical chars from the string, replace with empty string

["a", "b", "c"....]
["abc", "ABC", "Abc"]

Iterate through words => "abc" => chars => transform each char into an integer
value => chars index position in alphabet + 1 => find the sum

---------------- Examples

p get_sentence_value("abc ABC Abc") == 24
p get_sentence_value("HELLO world") == 176
p get_sentence_value("Edabit is Legendary") == 160
p get_sentence_value("Her seaside sea-shelling business is really booming!") == 488
p get_sentence_value("edabit Edabit EDABIT") == 164
p get_sentence_value("expensive words") == 198
p get_sentence_value("FISH AND CHIPS") == 232
p get_sentence_value("this sentence is like a piece of hay in a needle stack") == 423
p get_sentence_value("CAN YOU STOP SHOUTING?! I CAN'T HEAR MYSELF THINK!!!") == 966
p get_sentence_value("a whisper in the wind...") == 205
p get_sentence_value("Isn't it funny how the word BIG is physically smaller than the word small?") == 777
p get_sentence_value("this is a really pricey sentence: ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ") == 2503
p get_sentence_value("Oranges and APPLES") == 236
p get_sentence_value("Edabit is LEGENDARY") == 251

p get_sentence_value(",.;[,.;][,.;[,.][,.;,.][") == 0
p get_sentence_value("                    ") == 0
p get_sentence_value("") == 0

---------------- Data Structures

I: String
Intermediate: Array
O: Integer

---------------- Algorithm

/* given a string `str` */

Remove all non-alphabetical chars from `str`

Initialize `alphabet` to a collection of the letters of the alphabet
Initialize `words`
  - Split `str` into words and store in this collection

Iterate and transform each word in `words`
  - If the word is equal to the word upcased
    - Iterate through each char in the word
      - Transform each char into it's index position in `alphabet` + 1 * 2
  - If the word is lowercased
    - Iterate through each char
      - Transform each char to the index position in alphabet + 1

Iterate and transform `words`
  - Transform each subarray to the sum of the contained integers

Find the sum of `words` and return the integer value

=end

def get_sentence_value(str)
  alphabet_lowcase = ("a".."z").to_a
  alphabet_upcase = ("A".."Z").to_a
  str.gsub!(/[^A-Za-z ]/, '')

  words = str.split

  words.map! do |word|
    if word == word.upcase
      word.chars.map! { |let| (alphabet_upcase.index(let) + 1) * 2}.sum
    else
      word.downcase.chars.map! { |let| (alphabet_lowcase.index(let) + 1) }.sum
    end
  end

  words.sum
end



p get_sentence_value("abc ABC Abc") == 24
p get_sentence_value("HELLO world") == 176
p get_sentence_value("Edabit is Legendary") == 160
p get_sentence_value("Her seaside sea-shelling business is really booming!") == 488
p get_sentence_value("edabit Edabit EDABIT") == 164
p get_sentence_value("expensive words") == 198
p get_sentence_value("FISH AND CHIPS") == 232
p get_sentence_value("this sentence is like a piece of hay in a needle stack") == 423
p get_sentence_value("CAN YOU STOP SHOUTING?! I CAN'T HEAR MYSELF THINK!!!") == 966
p get_sentence_value("a whisper in the wind...") == 205
p get_sentence_value("Isn't it funny how the word BIG is physically smaller than the word small?") == 777
p get_sentence_value("this is a really pricey sentence: ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ") == 2503
p get_sentence_value("Oranges and APPLES") == 236
p get_sentence_value("Edabit is LEGENDARY") == 251

p get_sentence_value(",.;[,.;][,.;[,.][,.;,.][") == 0
p get_sentence_value("                    ") == 0
p get_sentence_value("") == 0