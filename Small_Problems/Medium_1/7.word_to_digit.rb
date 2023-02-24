=begin
---------------- Problem

Write a method that takes a sentence string as input, and returns the same
string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Restate the problem:

Create a method that takes a single string as an argument, and returns the same
string but with each word-digit replaced by the string numerical of that digit.


Input: String

Output: String




Explicit Rules:
- only replace words that represent a number e.g. zero replaced with 0



Implicit Rules:
- none identified


Modelling: 




---------------- Examples

p word_to_digit('Please call me at five five five one two three four. Thanks.')
== 'Please call me at 5 5 5 1 2 3 4. Thanks.'




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize `digits` to a hash, where each key is a string digit from the numbers
0..9, and each value is the english word for that digit

Iterate through the `digits` hash
  - If the given string includes the current value, replace that word with the
    associated hash key from `digits`
  - If it doesn't leave the word unmodified

Return the modified string

=end

def word_to_digit(str)
  digits = ('0'..'9').to_a.zip(%w(zero one two three four five six seven eight nine)).to_h

  digits.each do |key, val|
    if str.include?(val)
      str.gsub!(/\b#{val}\b/, key)
    end
  end

  str
end



p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
'Please call me at 5 5 5 1 2 3 4. Thanks.'