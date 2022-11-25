=begin

Short Long Short

Write a method that takes two strings as arguments, determines the longest of
the two strings, and then returns the result of concatenating the shorter
string, the longer string, and the shorter string once again. You may assume
that the strings are of different lengths.

P:

Need to create a method that has two parameters. The method will take two
strings as arguments. We can assume that both strings will have different
lengths. This method should compare the length of the two given strings,
and return a new string that concatenates the shorter string, the longer
string and then the shorter string again. 

Explicit Rules:
- can assume that both strings are equal length
- the shorter string will appear in the new string twice
- the longer string will appear in the new string once
- the longer string must be placed in between both sets of the shorter string

Implicit Rules:
- string can only contain letters
- lower case only (assumption from test cases)
- if either string is empty, return the non-empty string

E/TC:

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

Data Structure:
Input: Two strings
Output: New string

A (High Level):

create a method called `short_long_short` that has two parameters (string_one
and string_two)
- find the length of the two strings
- if `string_one` has a greater length than `string_two`
  a) assign `string_one` to `long_string` and `string_two` to `short_string`
  b) else, assign `string_one` to short string and `string_two` to `long_string`
- output the following string: `short_string` + `long_string` + `short_string`

C:
=end

def short_long_short(string_one, string_two)
  a = string_one + string_two + string_one
  b = string_two + string_one + string_two
  string_one.length > string_two.length ? b : a
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"