=begin
---------------- Problem

In this kata you are required to, given a string, replace every letter with its
position in the alphabet. If anything in the text isn't a letter, ignore it and
don't return it. 

"a" = 1, "b" = 2, etc.


Restate the problem:

Create a method that accepts a string as an argument, and returns a new string
where each letter has been replaced by its numerical position in the alphabet


Input: String

Output: String




Explicit Rules:
- ignore all non alphabetical characters, don't return them



Implicit Rules:
- none identified


Modelling:




---------------- Examples

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5
15 3 12 15 3 11"
p alphabet_position("-.-'") == ""

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `alphas` to the letter of the alphabet

Remove all non-alphabetical chars from `str`

Split `str` into an array of chars
  - Transform each letter to the value of that letters index in `alphas`
    - Convert resulting number to a string
      - Join the array separating each char by a space


=end

def alphabet_position(str)
  alphas = ('a'..'z').to_a
  str = str.gsub(/[^A-Za-z]/, '').downcase

  str.chars.map { |char| alphas.index(char) + 1 }.join(' ')
end


p alphabet_position("The sunset sets at twelve o' clock.") == 
"20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
