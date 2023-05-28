# For a given string s find the character c (or C) with longest consecutive
# repetition and return:

# [c, l]
# where l (or L) is the length of the repetition. If there are two or more
# characters with the same l return the first in order of appearance.

# For empty string return:

# ["", 0]
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and returns an array
containing:

the character with the longest consecutive repetitions

the characters length

If there are two results with the same length, return the one that appears first
within the string


Input: String

Output: Array

Explicit Rules:
- find the character with the longest repetition
- if multiple have the same length, return the one that appears first


Implicit Rules:
- none implied


Modelling:

I: "cbdeuuu900"
O: ['u', 3]

substrings = []

(0...str.size) |i|
(i...str.size) |ii|

substring = str[i..ii]

substrings << substring if substring.chars.all? { |char| char == substring[0] }

Sort the substrings by length

Return [substrings[0][0], substrings[0].size]

---------------- Examples

p longest_repetition("aaaabb") == ['a', 4]
p longest_repetition("bbbaaabaaaa") == ['a', 4]
p longest_repetition("cbdeuuu900") == ['u', 3]
p longest_repetition("abbbbb") == ['b', 5]
p longest_repetition("aabb") == ['a', 2]
p longest_repetition("ba") == ['b', 1]
p longest_repetition("") == ['', 0]
p longest_repetition("aaabbcccddd") == ['a', 3]

---------------- Data Structures

I: String
Intermediate: Array
O: Array

---------------- Algorithm

/* given a string `str` */

Initialize `substrings` to an empty collection

From 0 to the size of `str` (exclusive) |i|
  - From `i` to the size of `str` (exclusive) |ii|
    - Initialize `substring` to the letters contained from `i` to `ii`
    - If all the chars in substring are the same, add `substring` to `substrings`

Sort `substrings` by the length of each substring

Return in a collection:
  - The character of the longest substring
  - The length of the longest substring

=end

def longest_repetition(str)
  return ['', 0] if str.empty?
  substrings = []
  (0...str.size).each do |i|
    (i...str.size).each do |ii|
      substr = str[i..ii]
      substrings << substr if substr.chars.all? { |char| char == substr[0] }
    end
  end

  substrings.sort_by! { |substring| -substring.length }
  [substrings[0][0], substrings[0].length]
end


p longest_repetition("aaaabb") == ['a', 4]
p longest_repetition("bbbaaabaaaa") == ['a', 4]
p longest_repetition("cbdeuuu900") == ['u', 3]
p longest_repetition("abbbbb") == ['b', 5]
p longest_repetition("aabb") == ['a', 2]
p longest_repetition("ba") == ['b', 1]
p longest_repetition("") == ['', 0]
p longest_repetition("aaabbcccddd") == ['a', 3]