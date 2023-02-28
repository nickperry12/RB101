=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase
string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are
any of aeiou.
=end

=begin
---------------- Problem




Restate the problem:

Create a method that accepts a string as an argument (we may assume the given string will be lowercase), and returns the longest vowel substring within that string


Input: String

Output: Integer




Explicit Rules:
- return the count of the longest vowel substring
- vowels = aeiou



Implicit Rules:
- none implied


Modelling:

Given string:
"iiihoovaeaaaoougjyaw"

=> 8 => (aeaaaoou)


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


String


---------------- Scratchboard






---------------- Algorithm

/* given a string */

iiihoovaeaaaoougjyaw

Intialize vowels to an array containing the chars 'aeiou'
Initialize `result` to an empty array

Starting at the first index up the size of the string
  - Starting at the current idx on iteration
    - Grab that chars from the first idx to the current idx build a substring to be sent to `result`
Iterate through `result` and select all substrings that contain only vowels
  - Sort this array of vowel substrings, and find the index that contains the longest substring
    - Return the size of that substring




=end

# def solve(str)
#   result = build_substrings(str)
#   result = find_vowels(result, str)

#   result.sort_by { |substr| substr.size }[-1].size
# end

# def build_substrings(str)
#   result = []

#   (0...str.size).each do |first_idx|
#     (first_idx...str.size).each do |snd_idx|
#       result << str[first_idx..snd_idx]
#     end
#   end

#   result
# end

# def find_vowels(arr, str)
#   vowels = %w(a e i o u)
#   arr = build_substrings(str)
#   arr.select! do |substr|
#     substr.chars.all? { |char| vowels.include?(char)}
#   end
# end

# def solve(str)
#   result = []
#   vowels = %w(a e i o u)
  
#   0.upto(str.size - 1) do |i|
#     i.upto(str.size - 1) do |ii|
#       substr = str[i..ii]
#       if substr.chars.all? { |char| vowels.include?(char) }
#         result << substr
#       end
#     end
#   end

#   result.max_by { |substr| substr.size }.size
# end

=begin

Take given string and split into array of chars
  - Slice groups of vowels from the given array
    - Find the largest subarray in the returned array
      - Return it's size

=end


def solve(str)
  vowels = %w(a e i o u)
  chars = str.chars.chunk_while { | i, ii| vowels.include?(i) && vowels.include?(ii) }.to_a
  chars.select! { |subarr| subarr.all? { |item| vowels.include?(item)} }
  chars.max_by { |subarr| subarr.size }.size
end


p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8