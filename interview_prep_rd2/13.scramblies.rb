=begin
---------------- Problem

# Complete the function scramble(str1, str2) that returns true if a portion of
# str1 characters can be rearranged to match str2, otherwise returns false.

Restate the problem:

Create a method that accepts two strings for arguments, and returns `true` if a
portion of `str1` can be rearranged to match `str2`


Input: String

Output: Boolean

Explicit Rules:
- if a portion of `str1` can be rearranged to match `str2`, return `true`



Implicit Rules:
- none implied


Modelling:

I: 'rkqodlw', 'world'
O: true

'kq', ''

matching_chars = [r, o, d, l, w] => ['d', 'l', 'o', 'r', 'w'] => str2 chars sorted

check for a match



---------------- Examples

p scramble('rkqodlw', 'world')== true
p scramble('cedewaraaossoqqyt', 'codewars')== true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Scratchboard






---------------- Algorithm

/* given two strings `str1` and `str2` */

Initialize `str1Copy` to a shallow copy of `str1`
Initialize `str2Copy` to a shallow copy of `str2`
Initialize `matching_chars` to an empty collection

Iterate through the chars of `str1`
  - If the current char is included in `str2`
    - Add that char to `matching_chars` and sub out the first instance of that
      char in both `str1Copy` and `str2Copy`

Sort `matching_chars`
  - If this sorted array of chars is equal to the sorted chars of `str2`
    - Return true, false if not

=end

def scramble(str1, str2)
  str1Copy = str1.dup
  str2Copy = str2.dup
  matching_chars = []

  str1Copy.each_char do |char|
    if str2Copy.include?(char)
      matching_chars << char
      str1Copy.sub!(char, '')
      str2Copy.sub!(char, '')
    end
  end

  matching_chars.sort == str2.chars.sort
end


p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true