=begin
---------------- Problem

Complete the function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise returns false.

Only lower case letters will be used (a-z). No punctuation or digits will be
included. Performance needs to be considered

Input strings s1 and s2 are null terminated.



Restate the problem:

Create a method that accepts two arguments (str1, str2) and returns a `true` or
`false` if a portion of `str1` can be rearranged to match `str2`, and returns
`false` if not. No punctuation or digits will be used in the given strings. 


Input: String

Output: Boolean




Explicit Rules:
- a portion of `str1` must be rearranged to match `str2` for the method to
  return `true`
- no punctuation or digits will be included in the given strings


Implicit Rules:
- none implied


Modelling:

I: 'cedewaraaossoqqyt'
O: true

str1 = 'cedewaraaossoqqyt'
str2 = 'codewars'

str1 => made a copy => iterate through each char => if char is a match, add to
array of chars => sub out the first instance of that char from both strings

...

final array => sort => split str2 into array of chars => sort => match arrays?




---------------- Examples

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true


---------------- Data Structures

Strings


---------------- Scratchboard






---------------- Algorithm

/* given two strings `str1` and `str2` */

Initialize `str1_copy` to a shallow copy of `str1`
Initialize `str2_copy` to a shallow copy of `str2`

Iterate through the chars of `str1_copy`
  - If the current char is included in `str2_copy`
    - remove the first instance of that char from both `str1` and `str2`
  - If not, move on to the next iteration

Split `str1_copy` into an array of chars
  - Sort the array
    - Compare to a sorted array of chars from `str2`
      - Return true or false if they are the same


=end

def scramble(str1, str2)
  str1_copy = str1.dup
  str2_copy = str2.dup
  match = []

  str1_copy.each_char do |char|
    if str2_copy.include?(char)
      match << char
      str1_copy.sub!(char, '')
      str2_copy.sub!(char, '')
    end
  end

  match.sort == str2.chars.sort
end



p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
