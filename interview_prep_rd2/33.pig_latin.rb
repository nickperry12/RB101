# Move the first letter of each word to the end of it, then add "ay" to the end
# of the word. Leave punctuation marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string, and returns a new string where the first
letter of each word is attached to the end followed by "ay". Punctuation marks
at the end should remain untouched

Input: String

Output: String

Explicit Rules:
- take the first letter and add to the end of the word followed by "ay"
- punctuation marks should remain untouched

Implicit Rules:
- none implied


Modelling:

I: 'Pig latin is cool'
O: 'igPay atinlay siay oolcay'

['Pig', 'latin', 'is', 'cool']

['P', 'i', 'g'] => call shift => Add the return value to the end of the array
Join the word, return the word on each iteration

I: 'Hello world !'
O: "elloHay orldway !"

['Hello', 'world', ' !']
split each word on iteration, modify, join, return


---------------- Examples

p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'
p pig_it('Hello world !') == "elloHay orldway !"

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Algorithm

/* given a string `str` */

Split the string at the word boundaries and assign to `words`

Iterate through `words` and transform each one
  - Split the word into an array of chars
    - Remove the first char and add to the end
      - Add "ay" to the end of the array
  - Join the word back together and return the word
  - If the current word is a punctuation mark, return the word with no
    modification

Join `words` back into a String
  - Return the resulting string


=end

def pig_it(str)
  words = str.split(/\b/)

  words.map! do |word|
    if !(word =~ /[A-Za-z]/)
      word
    else
      chars = word.chars
      chars << chars.shift + "ay"
      chars.join
    end
  end

  words.join
end


p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'
p pig_it('Hello world !') == "elloHay orldway !"