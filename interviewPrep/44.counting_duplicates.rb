=begin
---------------- Problem

6 kyu
Count the number of Duplicates

Write a function that will return the count of distinct case-insensitive
alphabetic characters and numeric digits that occur more than once in the input
string. The input string can be assumed to contain only alphabets (both
uppercase and lowercase) and numeric digits.

Example

"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice


Restate the problem:

Create a method that accepts a string as an argument, and returns the number
of chars that have a count of greater than 1.


Input: String

Output: Integer




Explicit Rules:
- Count chars that have a count of more than 1
- we may assume that the string only contains letters and digits
  - no special chars
- when counting, case is not relevant


Implicit Rules:
- none identified


Modelling:

I: "abcde"
O: 0

"a" => 1
"b" => 1
"c" => 1
....

I: "abcdeaB"
O: 2

"a" => 2
"b" => 2 
"c" => 1
"d" => 1
"e" => 1

2 chars with duplicates => return 2


---------------- Examples

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Downcase all chars in `str`

Split `str` into a collection of individual chars
  - Select all characters that have a count of greater than 1
    - Store the chars into a separate collection

Return the size of the collection of selected chars

=end

def duplicate_count(str)
  str = str.downcase
  str.chars.each_with_object(result = Hash.new(0)) do |char, hash|
    hash[char] += 1
  end

  result.select do |k, v|
    v > 1
  end.size

end




p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
