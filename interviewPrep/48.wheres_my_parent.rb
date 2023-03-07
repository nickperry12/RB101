=begin
---------------- Problem

6 kyu
Mothers arranged a dance party for the children in school. At that party, there
are only mothers and their children. All are having great fun on the dance floor
when suddenly all the lights went out. It's a dark night and no one can see each
other. But you were flying nearby and you can see in the dark and have ability
to teleport people anywhere you want.

Legend:

-Uppercase letters stands for mothers, lowercase stand for their children, i.e.
"A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their
children, i.e. "aAbaBb" => "AaaBbb"

Restate the problem:

Create a method that accepts a string for an argument, and returns a sorted
string, where the string is sorted alphabetically, with upcased chars being
placed before lowercased.


Input: String

Output: String




Explicit Rules:
- sorting alphabetically, with all uppercased strings coming before the downcase
  counterparts



Implicit Rules:
- none identified


Modelling:

I: "abBA"
O: "AaBb"

['a', 'b', 'B', 'A']

[]




---------------- Examples

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split the string into a collection of chars
  - Sort the chars by their values on the ASCII table
  - Sort the chars once again by the upcased order of chars
  - Join the collection of chars to form a string
    - Return the string


=end

def find_children(str)
  chars = str.chars
  chars.sort!
  chars.sort_by! { |char| char.upcase }
  chars.join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
