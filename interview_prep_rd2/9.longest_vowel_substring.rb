# The vowel substrings in the word codewarriors are o,e,a,io. The longest of
# these has a length of 2. Given a lowercase string that has alphabetic
# characters only (both vowels and consonants) and no spaces, return the length
# of the longest vowel substring. Vowels are any of aeiou.

=begin
---------------- Problem



Restate the problem:

Create a method that takes a string, and returns the longest substring made of
only vowels. The vowels are going to be 'aeiou'.


Input: String

Output: String




Explicit Rules:
- find the longest substring consisting only of vowels



Implicit Rules:
- none implied


Modelling:

I: 'codewarriors'
O: 2

['c', 'co', 'code', 'codew', 'codewa', 'codewar', ... ]
['io'] => this has all vowels => size is 2 => return 2

create substrings => select only vowel substrings => sort high to low


---------------- Examples

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2

---------------- Data Structures

I: String
Intermediate: Array
O: Integer



---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `vowels` to a collection containing the vowel letters 'aeiou'
Initialize `substrings` to an empty collection

From 0 to the size of the string (exclusive)
  - From the current idx to the size of the string (exclusive)
    - Grab the chars from the inner idx to the outer idx, and add that substring
      to `substring`

Select all substrings from `substrings` that contain only vowels
  - Reassign the result to `substrings`
    - Sort this new collection by the size of the substrings
      - Return the largest one

=end

def solve(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  substrings = []

  0.upto(str.size - 1) do |i|
    i.upto(str.size - 1) do |ii|
      substrings << str[i..ii]
    end
  end

  substrings.select! do |substring|
    substring.chars.all? { |char| vowels.include?(char) }
  end

  substrings.sort_by! { |substring| -substring.size }
  substrings[0].size
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2