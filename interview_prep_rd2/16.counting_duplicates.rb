# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive
# alphabetic characters and numeric digits that occur more than once in the
# input string. The input string can be assumed to contain only alphabets (both
# uppercase and lowercase) and numeric digits.

# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice
=begin
---------------- Problem



Restate the problem:

Create a method that takes a string, and returns the amount of characters (case
insensitive, alphabetical and alpha numeric) that occur more than once


Input: String

Output: Integer

Explicit Rules:
- find the amount of chars that have duplicates
- only counting alphabetical and numerical chars


Implicit Rules:
- none implied


Modelling:

I: ""
O: 0

I: "abcde"
O: 0

['a', 'b', 'c', 'd', 'e'] => iterate through and find the count => 0

I: "abcdeaa"
O: 1

{"a" => 3, "b" => 1, "c" => 1, "d" => 1, "e" => 1 }

...

{"a" => 3}

return the size of the selected hash


---------------- Examples

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2

---------------- Data Structures

I: String
Intermediate: Hash
O: Integer



---------------- Algorithm

/* given a string `str` */

Split `str` into a collection of chars and assign to `chars`
  - Iterate through this collection while building a hash `char_count`
    - Set the current char to the hash key, and the value to it's count

Select the key-value pairs from `char_count` who's values are greater than 1
  - Return the size of the resulting hash

=end

def duplicate_count(str)
  chars = str.downcase.chars
  chars.each_with_object(char_count = Hash.new(0)) do |char, hash|
    hash[char] += 1
  end

  char_count.select { |_, v| v > 1 }.size
end


p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2