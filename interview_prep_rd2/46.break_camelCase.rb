# Complete the solution so that the function will break up camel casing, using a
# space between words.

# Example
# "camelCasing"  =>  "camel Casing"
# "identifier"   =>  "identifier"
# ""             =>  ""
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a camelCased string as an argument, and returns the
non-camelcased version of the string


Input: String

Output: String

Explicit Rules:
- non-camelcaseify the given string


Implicit Rules:
- upcased chars should remain upcased


Modelling:

I: 'camelCasing'
O: 'camel Casing'

['c', 'a', 'm', 'e', 'l' ... ]

=> create slices, slicing when the next char is upcased

[['c', 'a', 'm', 'e', 'l'], ['C', 'a', 's', 'i', 'n', 'g']]



---------------- Examples

p solution('camelCasing') == 'camel Casing'
p solution('camelCasingTest') == 'camel Casing Test'

---------------- Data Structures

I: String
Intermediate: Array
O: String



---------------- Algorithm

/* given a string `str` */

Split `str` into chars and make slices of chars, slicing when the next char is upcased
  - Assign to `chars`

Join `chars` together
  - Separate by a space


=end

def solution(str)
  chars = str.chars.slice_when { |_, ii| ii == ii.upcase }.to_a
  chars.map! { |slice| slice.join }
  chars.join(' ')
end

p solution('camelCasing') == 'camel Casing'
p solution('camelCasingTest') == 'camel Casing Test'