# Modify the kebabize function so that it converts a camel case string into a kebab case.

# "camelsHaveThreeHumps"  -->  "camels-have-three-humps"
# "camelsHave3Humps"  -->  "camels-have-humps"
# "CAMEL"  -->  "c-a-m-e-l"
# Notes:

# the returned string should only contain lowercase letters
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and returns the string in
kebab case. All non-alphabetical chars should be removed, and all chars
downcased


Input: String

Output: String

Explicit Rules:
- letters must be converted to downcase


Implicit Rules:
- all non-alphabetical chars should be removed


Modelling:

I: 'myCamelHas3Humps'
O: 'my-camel-has-humps'

str => remove non alphabeticals => myCamelHasHumps

[['m', 'y'], ['C', 'a', 'm', 'e', 'l'], ... ]

Join separate by a '-'

Downcase the str

---------------- Examples

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Algorithm

/* given a string `str` */

Remove all non-alphabetical chars from the string

Split `str` into chars and assign to `chars`
  - Create subarrays of chars, slicing at the point where the next letter is an
    uppercase letter
  - Modify the array, join subarrays together
  - Modify the array further, and downcase each string

Join `chars` and separate each word by a dash


=end

def kebabize(str)
  str = str.gsub(/[^A-Za-z]/, '')
  chars = str.chars.slice_when { |_, item| item == item.upcase }.to_a
  chars.map! { |word| word.join.downcase }
  chars.join('-')
end


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'