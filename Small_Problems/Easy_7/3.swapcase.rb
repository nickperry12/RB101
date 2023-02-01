=begin

Swap Case

Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

P:

Restate the problem:

Create a method that takes a string for an argument, and returns a new string where the characters have their case swapped, e.g., if its lowercase, swap it to uppercase and vice versa. 

Input: String
Output: New String

Explicit Rules:
- swap the case of all alphabetical characters
- leave non-alpha characters unchanged

Implicit Rules:
- none identified


Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

D:

- use an array to store the characters of the string
- regex to make sure we're only modifying alphabetical characters

A:

/* given a string */

1. initialize `words` and split the string and store each word into it
2. iterate over each word
3. for each word, iterate over the characters
4. if the char is an alphabetical char, swap the case, if not, leave it unchanged
5. join the chars together
6. repeat for each word
7. join the words together and separate each one with a space

=end

def swapcase(string)
  string.chars.map do |char|
    if char == char.downcase
      char.upcase
    elsif char == char.upcase
      char.downcase
    else
      char
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
