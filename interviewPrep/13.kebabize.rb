=begin
---------------- Problem

Modify the kebabize function so that it converts a camel case string into a
kebab case.

kebabize('camelsHaveThreeHumps') == "camels-have-three-humps"
kebabize('camelsHave3Humps') == "camels-have-humps"

Notes:

The returned string should only contain lowercase letters

Restate the problem:

Create a method that takes a string, and returns a new string that is kebabized.
The returned string should only contain lowercase letters that are separated by
a "-". 


Input: String

Output: String




Explicit Rules:
- remove all digits from the given string if any
- all characters must be lowercase
- all words must be separated by a dash



Implicit Rules:



Modelling:

TODO:

remove digits
lowercase the chars
separate words by dash


---------------- Examples

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split `str` into an array of letter
  - iterate through the array and delete any chars that aren't letters

Iterate through the array again
  - slice when the next character is a uppercased letter
  - iterate through the new collection and join the elements in the subbarrays
  - join the elements in the array and separate with a "-"


=end

def kebabize(str)
  letters = str.chars
  letters.delete_if { |letter| letter == letter.to_i.to_s}
  letters = letters.slice_before { |letter| letter == letter.upcase }.to_a
  letters.map! { |subarr| subarr.map!(&:downcase).join }
  letters.join("-")
end


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'