# Given a string that includes alphanumeric characters ("3a4B2d") return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string.

# Notes
# The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears
# If there are multiple consecutive numeric characters, only the last one should be used (ignore the previous ones)
# Empty strings should return an empty string.
# Your code should be able to work for both lower and capital case letters.

# "3D2a5d2f"  -->  "DDDaadddddff"    # basic example: 3 * "D" + 2 * "a" + 5 * "d" + 2 * "f"
# "3abc"      -->  "aaabbbccc"       # not "aaabc", nor "abcabcabc"; 3 * "a" + 3 * "b" + 3 * "c"
# "3d332f2a"  -->  "dddffaa"         # multiple consecutive digits: 3 * "d" + 2 * "f" + 2 * "a"
# "abcde"     -->  "abcde"           # no digits
# "1111"      -->  ""                # no characters to repeat
# ""          -->  ""                # empty string
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string as an argument, and returns a new string
where the character in front of an alphanumerical is replaced by that same
character times the digit behind it. All digits should be removed from the fina
string.


Input: String

Output: String

Explicit Rules:
- multiply the characters by the digit that character is in front of


Implicit Rules:
- if there are consecutive strings in front of a digit, multiply them all


Modelling:

I: '3abc'
O: 'aaabbbccc'

['3', 'a', 'b', 'c']

Iterate through => if the char is a digit => convert to integer

[3, 'a', 'b', 'c']

If char == digit, return the char, if the char is a letter, multiply it by the
item at index 0 of that subarray

[3, 'aaa', 'bbb', 'ccc']

Remove the first index

['aaa', 'bbb', 'ccc']


---------------- Examples

p string_expansion('3abc') == 'aaabbbccc'
p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('0d0a0v0t0y') == ''
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('abcde') == 'abcde'

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Algorithm

/* given a string `str` */

Initialize `multiplier` to 0
Initialize `result` to an empty string

Split `str` into a collection of chars and assign to `chars`
  - If the current char converted to an integer, converted back to a String is
    equal to the current char
    - Reassign multiplier to that char converted to an integer
    - If the current char is an alphabetical character, multiply that char by
      `multiplier` and add it to `result`

Return `result`

=end

def string_expansion(str)
  multiplier = 1
  chars = str.chars
  result = ''

  chars.each do |char|
    if char =~ /[0-9]/
      multiplier = char.to_i
    else
      result << char * multiplier
    end
  end

  result
end



p string_expansion('3abc') == 'aaabbbccc'
p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('0d0a0v0t0y') == ''
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('abcde') == 'abcde'
p string_expansion("A4g1b4d") == "Aggggbdddd"