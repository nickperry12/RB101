# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and returns a modified
string where each letter is changed to the 3rd letter ahead in the alphabet.
The lowercase letters can be changed to uppercased dependent on position in the
alphabet ('x', 'y', 'z')


Input: String

Output: String

Explicit Rules:
- move every alphabetical letter 3 positions ahead in the alphabet
- if the letters are uppercased and are the last 3 (x, y, z), loop around back
  to the beginning of the uppercased alphas


Implicit Rules:
- ignore all special characters
- only processing letters


Modelling:

I: "this long cake@&"
O: "wklv orqj fdnh@&"

['t', 'h', 'i', 's', ' ' .... ]

Iterate/transform => if it's a letter => transform => 't' => order number: 116
  => add three => 119 => convert back to a char => 'w'

I: "EMAILZ@gmail.com"
O: "HPDLOC@jpdlo.frp"

handling (X, Y, Z) differently => if we're iterating over these chars =>
  subtract 23 from their order number => 'X' => 88 => subtract 23 => 55 => 'A'

---------------- Examples

p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')

---------------- Data Structures

I: String
Intermediate: Array
O: String


---------------- Algorithm

/* given a string `str` */

Initialize `chars` to collection of the individual characters of `str`

Iterate over and transform the elements within `chars`
  - If the char is an alphabetical letter
    - If the char is 'X', 'Y' or 'Z'
      - Convert the char to its order number in the ASCII table, and subtract 23
        and then convert back to a character
    - If the char is 'x', 'y', 'z'
      - Convert the char to its order number and substract 55, and convert to
        a char
    - For every other letter, convert to it's order number, add 3, convert back
      to a char
  - Else if not a letter, just return the character

Join `chars` back together
  - Return the resulting string
=end

def letter_changes(str)
  chars = str.chars

  chars.map! do |char|
    if char == 'X' || char == 'Y' || char == 'Z'
      (char.ord - 23).chr
    elsif char == 'x' || char == 'y' || char == 'z'
      (char.ord - 23).chr
    elsif ('A'..'z').include?(char)
      (char.ord + 3).chr
    else
      char
    end
  end

  chars.join
end




p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')
