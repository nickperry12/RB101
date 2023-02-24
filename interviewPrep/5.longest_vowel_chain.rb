=begin
---------------- Problem

The vowel substrings in the word codewarriors are o,e,a,io. The longest of these
has a length of 2. Given a lowercase string that has alphabetic characters only
and no spaces, return the length of the longest vowel substring. Vowels are any
of aeiou.


Restate the problem:

Create a method that accepts a single string as an argument, and returns the
size of the longest chain of vowels in the given string. For example, in the
string "codewarriors" the longest vowel substring would be 'io', with a length
of 2.


Input: String

Output: Integer




Explicit Rules:
- Trying to find the longest vowel substring
- Vowels are a e i o u



Implicit Rules:
- we may assume that each string is lowercase only, and has no spaces


Modelling:




---------------- Examples

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8


---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize `substrings` to an empty array
Initialize vowels to %w(a e i o u)

From index 0 to str.size (non-inclusive) iterate through the chars of `str`
  - From current index to str.size (non-inclusive) iterate through the chars of
    `str`
    - Create substrings from index 0 to the current index
      - If all of the chars in the create substring are vowels, append that
        substring to `substrings`

Sort `substrings` by the length of the strings
  - Return the size of the largest substring

=end

def solve(str)
  substrings = []
  vowels = %w(a e i o u)

  (0...str.size).each do |i|
    (i...str.size).each do |ii|
      substring = str[i..ii]
      substrings << substring if substring.chars.all? { |char| vowels.include?(char) }
    end
  end

  substrings.max_by { |substr| substr.size }.size
end



p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

