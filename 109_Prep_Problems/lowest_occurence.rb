=begin

Write a method that takes a string as an argument and returns the character that
occurs least often in the given string. If there are multiple characters with
the equal lowest number of occurrences, then return the one that appears first
in the string. When counting characters, consider the uppercase and lowercase
version to be the same.

P:

We're creating a method that iterates over a string and finds the char that
appears the least. If there are two chars that appear an equal amount of times
that have the same lowest value, return the one that appears first. Upper and
lower case letters should be considered to be the same

Explicit Rules:

Find the character that appears the most amount of times
Upper and lower case letters should be considered the same

Implicit Rules:

Spaces count as characters

Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

D:

Input: String
Intermediate: Hash
Output: String

We can use a hash to store our letters and letter counts; the key in our hash
will be the letter, and the value will be the amount of appearances of that
letter.

A:

/* given a string */

1. convert all chars in the string to lowercase
2. split the string into chars
3. initialize a hash to `char_count`
4. set the keys to represent each char in the `char_count` array
5. set the value to represent the count those chars
6. return the key with the smallest value

=end

def least_common_char(str)
  chars = str.downcase.chars
  chars.uniq.each_with_object(counted_chars = {}) do |char, hash|
    hash[char] = chars.count(char)
  end

  counted_chars.min_by { |k, v| v }[0]
end
  

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'