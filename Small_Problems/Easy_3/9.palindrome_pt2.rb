=begin

Palindromic Strings pt. 2

Write another method that returns true if the string passed as an argument is a
palindrome, false otherwise. This time, however, your method should be
case-insensitive, and it should ignore all non-alphanumeric characters. If you
wish, you may simplify things by calling the palindrome? method you wrote in the
previous exercise.

P:

Once again we're creating a method that takes one argument (a string or array),
that checks to see if the given collection is palindromic. Howeever, this method
should be case insensitive, meaning it should ignore whether a character is
upcased, and should also ignore all alphanumeric characters.

Explicit Rules:
- case doesn't matter
- non-alphanumeric characters should be ignored, meaning that the use of an
apostrophe shouldn't affect whether the given collection is a palindrome or not

Implicit Rules:
- collection can contain numbers and letters

Mental Model:

- a palindrome is a string or collection that reads the same both forward
and backwards
- we need to iterate through the collection and remove any non-alphanumeric
characters
- we can do this by initializing a constant variable `ALPHANUMERICS` and assigning
the range of letters `a` - `z`, and the range of numbers `0` - `9`
- we can then compare each character in our collection to this range and see
if that character is included within it, if it isn't, it should be removed

D:
Input: String or Array
Output: Boolean

A:

Initialize a constant variable `ALPHANUMERICS` and assign the ranges `a-z` and
`0-9` to it, the object stored should be an array

Create a method called 'palindromic?' that takes one argument (string or array)
- initialize local variable `reverse_collection` set it to the same collection
object that is passed
- if the collection is a string
  1) split that string into characters
  2) compare each character to the characters stored in ALPHANUMERICS
  3) if a character is not included in ALPHANUMERICS, delete it
- initialize local variable `counter` and set it to collection size - 1
- iterate through the given collection
a) append the last element into `reverse_collection`
b) stop once `reverse_collection` is equal to the size of the original
- downcase both `reverse_collection` and `collection`
- check to see if `reverse_collection` is equal to the original
- return true if it is
=end

ALPHANUMERICS = ('a'..'z').to_a + (0..9).to_a

def palindrome?(string)
  new_string = ""
  string.downcase.each_char do |char|
    new_string << char if ALPHANUMERICS.include?(char)
  end
  new_string == new_string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == true           # (case does not matter)
p palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p palindrome?('356653') == true
p palindrome?('356a653') == true
p palindrome?('123ab321') == false