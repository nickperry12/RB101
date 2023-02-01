=begin

---------------- Problem

Palindromic Substrings

Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

Restate the problem:

Create a method that takes a string for an argument, and returns an array that contains all substrings that are palindromes. Palindromes are strings that read the same forward and backward. Duplicate palindromes should be included. Assume that single characters are not palindromes. 


Input: String
Output: Array of substrings



Explicit Rules:
- only return the substrings that are palindromes
- single character strings should not be considered palindromes
- must pay attention to both case and non-alphabetical chars



Implicit Rules:
- none identified


Modeling:

palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

str => 'knitting cassettes'
outer idx => 0
inner idx => 0

'k' => single char, don't include

outer idx => 0
inner idx => 1

'kn' => not a palindrome, don't include

...


---------------- Examples

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]




---------------- Data Structures

Array
Looping Structures
  - As well as a nested looping structure



---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize var 'palindrome_substrings' to an empty collection

Start an outer iteration that begins at index 0
  - Start an inner iteration that begins at the current idx
    - Grab the chars from the current idx of the outer iteration to the current idx of the nested iteration to create a substring
      - If the created substring is a palindrome, add it to `palindrome_substrings`, otherwise, move to the next iteration

Return palindrome_substrings

=end

def palindromes(str)
  palindrome_substrings = []

  0.upto(str.size - 1).each do |i|
    i.upto(str.size - 1).each do |ii|
      substr = str[i..ii]
      if substr == substr.reverse && substr.size > 1
        palindrome_substrings << substr
      end
    end
  end

  palindrome_substrings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Further exploration

def palindromes(str)
  palindrome_substrings = []
  str = str.gsub(/[^A-Za-z0-9]/, '')

  0.upto(str.size - 1).each do |i|
    i.upto(str.size - 1).each do |ii|
      substr = str[i..ii]
      if substr.downcase == substr.downcase.reverse && substr.size > 1
        palindrome_substrings << substr
      end
    end
  end

  palindrome_substrings
end

p palindromes('123-21abb-a') == ['12321', '232', 'abba', 'bb']
p palindromes('XYyx--Xz-Zx--011-0') == ['XYyx', 'Yy', 'xX', 'XzZx', 'zZ', '0110', '11']