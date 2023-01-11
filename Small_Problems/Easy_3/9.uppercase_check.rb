=begin

Uppercase Check

Write a method that takes a string argument, and returns true if all of the
alphabetic characters inside the string are uppercase, false otherwise.
Characters that are not alphabetic should be ignored.

P:

Restate the problem:

- Create a method that takes a string as an argument, and returns a boolean;
it should return true if all the characters inside the string are uppercase,
and should return false if they are not. Non-alphabetic characters should be
ignored

Input: String
Output: Boolean

Explicit Rules:

- method should return true or false dependent on whether all the characters
in the string are upcase

- method should ignore all non-alphabetical characters

D:

- Working with strings, but we want to remove all non-alphabetical characters
- We can use gsub to handle to remove non-alphabetical chars

gsub[/^A-Za-z/]

A:

/* given a string */

1. create a copy of the given string and remove all non-alphabetical chars
2. compare the string with the uppercased version of it, return true
if they are equal, return false if not

Examples:

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=end

def uppercase?(str)
  mod_str = str.gsub(/[^A-Za-z]/, '')
  mod_str == mod_str.upcase
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true