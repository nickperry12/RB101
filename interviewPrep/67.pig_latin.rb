=begin
Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

Examples
pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('Hello world !')     # elloHay orldway !
=end

=begin
---------------- Problem



Restate the problem:

Create a method that accepts a string as an argument, and rotates the first letter to the end and adds `'ay'` to the end of the string. Punctuation marks should remain untouched


Input: String

Output: String




Explicit Rules:
- rotate the first char the string to the end and add 'ay'
- punctuation should remain in the same position



Implicit Rules:
- characters should keep the same case as the original, only position is changed


Modelling:

I: 'Hello world !'
O: elloHay orldway !

if the last char is punctuation, we should exclude that form any modifications

for each word, rotate the first character and add ay to the end



---------------- Examples

p pig_it('Pig latin is cool')# == 'igPay atinlay siay oolcay'
p pig_it('This is my string')# == 'hisTay siay ymay tringsay'

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

If the last index of the string is a punctuation mark
  - Iterate through the chars up to the last index (non-inclusive)
    - Split each word into a collection of words and modify each one
      - Rotate the char at idx 0 to idx -1, and 'ay' to the string
Repeat these steps but include the last index for strings with no punctuatin mark at the end


=end

def pig_it(str)
  if !(('a'..'z').to_a + ('A'..'Z').to_a).include?(str[-1])
    words = str[0...-1].split
    words.map! { |word| word.chars.rotate.join + 'ay' }
    words.join(' ') + str[-2..-1]
  else
    words = str.split
    words.map! { |word| word.chars.rotate.join + 'ay' }
    words.join(' ')
  end
end

p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'