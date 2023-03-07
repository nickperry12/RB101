=begin
---------------- Problem

6 kyu
The alphabetized kata

Re-order the characters of a string, so that they are concatenated into a new
string in "case-insensitively-alphabetical-order-of-appearance" order.
Whitespace and punctuation shall simply be removed! The input is restricted to
contain no numerals and only words containing the english alphabet letters.

Example:
alphabetized("The Holy Bible") # "BbeehHilloTy"


Restate the problem:

Create a method that accepts a string as an argument, and returns a new string
with all whitespace removed, and the characters now being arranged in a
case-insensitive alphabetical order. Two of the chars that are the same should
be placed in order of appearance.


Input: String

Output: String




Explicit Rules:
- sort by case-insensitive alphabetical order as well as order of appearance



Implicit Rules:
- remove all whitespace


Modelling:

I: "AbBa"
O: "AabB"

['A', 'b', 'B', 'a']

['A', 'a', 'b', 'B'] => "AabB"


---------------- Examples

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z")
== "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"

---------------- Data Structures

I: String
Intermediate: Array
O: String


---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split `str` into a collection of characters
  - Sort the characters within this collection
    - Sort by alphabetical order (case insensitive), and sort by order of
      appearance

Join the resulting collection to form a string
  - Return the result

=end

def alphabetized(str)
  chars = str.gsub(' ', '').chars
  chars.sort_by! { |char| char.downcase }
  chars.join
end


p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") ==
"aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
