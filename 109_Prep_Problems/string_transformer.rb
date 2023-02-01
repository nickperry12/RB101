=begin

Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

You may assume the input only contain English alphabet and spaces.

P:

Restate the problem:

Create a method that takes a string argument, and outputs a new string where
the case of the words are switched (upper to lower and vice versa) and the
order of the words are switched.

Input: String
Output: New String

Explicit Rules:
- reverse the order of the words
- switch the case of each word
- can assume input only contains english alphabet and spaces

Implicit Rules:
- none identified


Example:

p solve("Example_Input") == "iNPUT eXAMPLE"

D:

- use an array to store split words
- map to modify them

A:

/* given a string */

1. initialize `words` and set to []
2. spit the string into separate words and store in `words`
3. reverse the order of the items in `words`
4. iterate through the chars of each word and switch their case
5. join the words back together and separate them with a space

=end

def solve(string)
  words = string.split
  words.reverse!

  words.map do |word|
    word.chars.map do |char|
      if char == char.upcase
        char.downcase
      elsif char == char.downcase
        char.upcase
      end
    end.join
  end.join(' ')

end

p solve("Example Input") == "iNPUT eXAMPLE"
