=begin
---------------- Problem

6 kyu

In this simple Kata your task is to create a function that turns a string into a
Mexican Wave. You will be passed a string and you must return that string in an
array where an uppercase letter is a person standing up.

Rules

1. The input string will always be lower case but maybe empty.
2. If the character in the string is whitespace then pass over it as if it was
   an empty seat.


Restate the problem:

Create a method that accepts a string as an argument and returns an array
containing the given string an amount equal to the amount of non-alphabetical
chars in the string. Each string should have exactly one char upcased starting
at idx 0. The next element in the array should have the char at idx 1 upcased.
All non-alphabetical chars should be ignored and skipped over. 


Input: String

Output: Array of strings

Explicit Rules:
- Skip over spaces and non-alphabetical chars
- All input strings wil be lower case


Implicit Rules:
- None identified


Modelling:

I: "hello"
O: ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

"h" => upcase => join the string back together => add to result


---------------- Examples

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars",
"codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two
wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

---------------- Data Structures

I: String
Itermediate: Array
O: Array

---------------- Scratchboard


`#each_char` to iterate over chars



---------------- Algorithm

/* given a string `str` */

Initialize `result` to an empty array
Initialize counter to 0

Until counter is equal to the size of the string
  - Split the string into chars
  - If the character at the index referened by counter is a space, increment
    counter by 1
  - If it is not a space, upcase the char at the index referenced by counter
      - Join the chars back together, and append the string to `result`

Return `result`

=end

def wave(str)
  result = []
  counter = 0

  until counter == str.size
    chars = str.chars
    if chars[counter] == ' '
      counter += 1
    else
      chars[counter].upcase!
      result << chars.join
      counter += 1
    end
  end

  result
end


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs",
"codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs",
"two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

