=begin
---------------- Problem

Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace the
missing second character of the final pair with an underscore ('_').


Restate the problem:

Create a method that accepts a string for an argument, and splits the characters
into an array of pairs. If the string is an odd size, the last character should
be paired with an underscore


Input: String

Output: Array




Explicit Rules:
- if the string size is odd, the last char should be paired with an underscore



Implicit Rules:
- none identified


Modelling:

I: "abcdefg"
O: ["ab", "cd", "ef", "g_"]

"ab" => place into arr => "cd" => place into arr

...


---------------- Examples

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

If the string size is odd
  - Append an underscore

Split `str` into an array of chars
  - Slice chars when the index of the current char is odd

Return the resulting array

=end

def solution(str)
  return [] if str.empty?
  str << "_" if str.size.odd?

  str.chars.each_slice(2).map(&:join)
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []