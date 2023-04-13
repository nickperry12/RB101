=begin
---------------- Problem

Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is
"aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need
to be efficient. The input will only consist of lowercase characters and will be
at least one letter long. If there are multiple solutions, return the one that
appears first.


Restate the problem:

Create a method that accepts a string as an argument, and returns the longest
alphabetical substring from the given string. For example, with the given string
"asdfaaaabbbbcttavvfffffdf", the output should be "aaaabbbbctt". The returned
string should maintain alphabetical order. 


Input: String

Output: String




Explicit Rules:
- looking for the longest substring that maintains alphabetical order



Implicit Rules:
- none identified


Modelling:

I: 'asd'
O: 'as'

'asd' => ['a', 'as', 'd'] => select substrings where the array of chars of that
substring are equal to an array of it's sorted chars => return the longest substr


---------------- Examples

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'


---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Starting at index 0 up to the last index of `str`
  - Starting at the current index up to the last index of `str`
    - Create substrings from starting index to current index
     - Append substrings to `result`

Iterate over `result` and select all substrings that when split into an array
of chars, is equal to the sorted array of it's chars
  - Return the longest substring


=end

def longest(str)
  result = []

  (0...str.size).each do |i|
    (i...str.size).each do |ii|
      result << str[i..ii] if str[i..ii] == str[i..ii].chars.sort.join
    end
  end

  result.max_by { |substr| substr.size }
end



p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
