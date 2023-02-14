=begin

---------------- Problem

Double Char (Part 2)

Write a method that takes a string, and returns a new string in which every
consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
whitespace should not be doubled.

Restate the problem:

Create a method that takes a given string, and doubles all the consonants in
the string. All vowels, digits, punctuation and whitespace should not be doubled


Input: String
Output: String




Explicit Rules:
- only double chars that are consonants, leave everything else



Implicit Rules:
- return an empty string if given string is empty



---------------- Examples

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""


---------------- Data Structures

String
Array for the split characters



---------------- Scratchboard






---------------- Algorithm

/* given a string */

Iterate through the characters of the given string
 - If the current character is a consonant
  - Double that character
 - If the current characeter is a vowel, digit, punctuation or white space
  - Do not modify that character

Return the new string

=end

def double_consonants(str)
  str.chars.map do |char|
    if char =~ /[a-z&&[^aeiou]]/i
      char * 2
    else
      char
    end
  end.join
end




p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""