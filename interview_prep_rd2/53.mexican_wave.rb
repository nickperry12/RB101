# In this simple Kata your task is to create a function that turns a string into a
# Mexican Wave. You will be passed a string and you must return that string in an
# array where an uppercase letter is a person standing up.

# Rules

# 1. The input string will always be lower case but maybe empty.
# 2. If the character in the string is whitespace then pass over it as if it was
#    an empty seat.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string, and returns an array wher each a letter
in the string is upcased starting at the first letter. The second element in
the array should have the second letter of the string upcased. Whitespace should
be ignored.


Input: String

Output: Array

Explicit Rules:
- successively upcase each letter in the string and add it to an array
- whitespace should be ignored


Implicit Rules:
- none implied


Modelling:

I: " gap "
O: [" Gap ", " gAp ", " gaP "]

Iterate through each char and index => " " => "g" ....

string = shallow copy of given string

If the current char is a whitespace, next
If not => upcase the current char in the string => add string to array



---------------- Examples

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs",
"codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs",
"two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

---------------- Data Structures

I: String
Intermediate: Array
O: Array

---------------- Algorithm

/* given a string `str` */

Initialize `result` to an empty collection

Iterate through each char and index of `str`
  - Initialize `string` to a shallow copy of `str`
  - If the current char is a whitespace
    - Move onto the next char
  - If it's a letter
    - upcase the letter at the current index position
      - Add the resulting string to `result`


=end

def wave(str)
  result = []

  str.each_char.with_index do |char, idx|
    string = str.dup
    if char != ' '
      string[idx] = string[idx].upcase
      result << string
    end
  end

  result
end


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]