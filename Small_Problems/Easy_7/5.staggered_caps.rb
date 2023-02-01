=begin

Staggered Caps (Part 1) Write a method that takes a String as an argument, and
returns a new String that contains the original value using a staggered
capitalization scheme in which every other character is capitalized, and the
remaining characters are lowercase. Characters that are not letters should not
be changed, but count as characters when switching between upper and lowercase.

P:

Restate the problem:

Create a method that takes a string as an argument, and take each word in that
string and capitalizes the characters in each word using a staggered
capitalization scheme, where every other character is capitalized.

Explicit Rules:
- capitalize every other character
- non-alphabetical characters should remain the same

Implicit Rules:
- if the first letter of th word is already capitalized, downcase it.

Input: String
Output: String

Example:

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs' 
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

D:

- #split to spit our string into separate words
- iterate over the array of words using map to modify each word
- can use either regex /[a-z]/ for lowercase or /[A-Z]/ for uppercase


A:

/* given a string */

1. take the given string and split it into a collection characters including
spaces
2. iterate over the collection of letters
3. if the current chars index is even, upcase that character
4. if it isn't, lowercase it
5. join the chars back together
6. return the string

=end

def staggered_case(str)
  str.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end.join
end




p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs' 
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'