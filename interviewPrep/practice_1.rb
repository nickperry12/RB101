=begin
---------------- Problem


Given a non empty string, check if it can be constructed by taking a substring
of it and appending multiple copies of the substring together. You may assume
the given string is lowercase and English letters only

Example 1

Input: "abab"
Returns: true

Restate the problem:

Create a method that takes one argument, a string, and checks to see if there
are any substrings that when multiplied by a copy of itself, will create the
given string. The method should return `true` or `false`


Input: String

Output: Boolean; true or false




Explicit Rules:
- must check to see if a substring contained within the given string is able to
create the given string by multiplying itself `n` number of times



Implicit Rules:
- none identified


Modelling: 

Given string: "abab"
String size == 4

substring "a" => cannot create the given string
substring "ab" * 2 == "abab" => true

Given string: "abaababaab"
String size == 10

"a" => false
"abaab" * 2 == "abaababaab" => true

In both of the above examples, the substring is being multiplied by 2 to give us
the given string, but what about a substring that isn't multiplied by 2?

Given string: "abcabcabc"
String size == 9

"abc" * 3 == "abcabcabc" => true

So, we can see that the number used to multiply the substring will be a multiple
of the size of the given string

---------------- Examples

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabc") == true




---------------- Data Structures

Strings
Arrays within the method itself



---------------- Scratchboard






---------------- Algorithm

/* given a string */

Starting at Index 0, up the the halfway index of the given string
  - Initialize multiple to the return value of dividing the length of the given
    string by the length of the created substring on iteraton
    - Create the substring by taking the chars from the first index to the
      current index and putting them together
  - Multiple the substring by our multiple, and if it creates the given string,
    return true
    - Otherwise, return false

=end

def repeated_substring_pattern(string)
  0.upto(string.size / 2) do |idx|
    substring = string[0..idx]
    multiple = string.size / substring.size

    return true if substring * multiple == string
  end

  false
end



p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabc") == true