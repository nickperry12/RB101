=begin
---------------- Problem

Assume "#" is like a backspace in string. This means that string "a#bc#d"
actually is "bd"
Your task is to process a string with "#" symbols.
Examples
"abc#d##c" ==> "ac"
"abc##d######" ==> ""
"#######" ==> ""
"" ==> ""

Restate the problem:

Create a method that accepts a string for an argument, where the `#` chars
represent a backspace key input. Chars before the backspace should be removed,
and if there are consecutive backspaces, remove the amount equivalent to the
amount of consecutive backspaces.


Input: String

Output: String




Explicit Rules:
- removing chars found directly before a backspace char '#'



Implicit Rules:
- if our string contains nothing but backspace chars, the return shold be an
  empty string


Modelling:

I: 'abc#d##c'
O: "ac"

'' => ['a', 'b', 'c', '#', 'd', '#', '#', 'c'] => 'a' => 'ab' => 'abc' => backspace => 'ab' ....


---------------- Examples

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""


---------------- Data Structures

I: String
Intermediate: String/Array
O: String


---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `result` to an empty string

Split `str` into a collection of individual characters
  - Iterate through each character in this collection
    - If the current character is not a backspace character
      - Add that char to `result`
    - If the current character is a backspace character
      - Remove the last character from `result`

Return `result` after iteration is complete


=end

def clean_string(str)
  result = ''

  str.each_char do |char|
    char != '#' ? result << char : result.chop!
  end

  result
end


p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
