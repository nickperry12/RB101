=begin

Leading Substrings

Write a method that returns a list of all substrings of a string that start at
the beginning of the original string. The return value should be arranged in
order from shortest to longest substring.

---------------- Problem

Restate the problem:

Create a method that takes a string as an argument, and returns an array of
substrings that start at the first index of the original string. The substrings
should start with a single character, the first one, with the next substrings
having characters sequentially added. The final string in our returned array
should be the same as the given array.


Input: String
Output: Array of substrings




Explicit Rules:
- the returned array should have strings arranged in order from shortest to
  longest
- need to sequentially add characters from our given string to each new
  substring


Implicit Rules:
- the final string in the array should be the same as the original string, as
  implied from our examples

Modeling:

On iteration - first idx to current idx(i)

'xyzzy' first substring => 'x' [0..i] => i = 0
second substring => 'xy' [0..i] => i = 1 
third substring => 'xyz'.... [0..i] => i = 2



---------------- Examples

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


---------------- Data Structures

Array to store substrings Range to iterate through the given string



---------------- Scratchboard






---------------- Algorithm

/*given a string*/

Initialize var `result` to an empty collection

Iterate through the characters of the string
  - starting at the first index, add the characters from the first index to the
    current index to our collection `result`
    - repeat until you reach the end of the string

Return `result`

=end

def leading_substrings(str)
  result = []

  (0...str.size).each do |i|
    result << str[0..i]
  end

  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']