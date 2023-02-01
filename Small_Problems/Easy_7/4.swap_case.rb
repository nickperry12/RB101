=begin

Swap Case

Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version, and every
lowercase letter by its uppercase version. All other characters should be
unchanged.

You may not use String#swapcase; write your own version of this method.

P:

Restate the problem: 

Create a method that takes a string as an argument, and returns a new string
that swaps the case for all of the characters; uppercased chars should be
converted to lowercase, and vice versa.

Explicit Rules:
- cannot use the built-in `#swapcase` method
- uppercase must be converted to lowercase
- lowercase must be converted to uppecase

Implicit Rules:
- none identified

Input: String
Output: String

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

D:

- `#split` to split into words
- `#chars` to split into characters
- `#map` to iterate over

A:

/* given a string */

1. split the string into words
2. split the words into chars
3. iterate over the chars of each word and swap their case
4. join the chars back together
5. join the words back together and separate each word with a space

=end

def swapcase(string)
  string.split.map do |word|
    word.chars.map do |char|
      if char == char.downcase
        char.upcase
      elsif char == char.upcase
        char.downcase
      end
    end.join
  end.join(' ')
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'