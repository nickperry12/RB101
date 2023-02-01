=begin

---------------- Problem

Write a method that returns a list of all substrings of a string. The returned
list should be ordered by where in the string the substring begins. This means
that all substrings that start at position 0 should come first, then all
substrings that start at position 1, and so on. Since multiple substrings will
occur at each position, the substrings at a given position should be returned in
order from shortest to longest.



Restate the problem:

Given a string as an argument, create a method that returns an array of all
substrings of the given string. The substrings should be returned from shortest
to longest. 


Input: String Output: Array of substrings




Explicit Rules:
- created substrings must start at index 0
- order should go from shortest to longest



Implicit Rules:
- the last substring should be the last character in our given string
- the return substrings should create all substrings from index 0 to the last
  index, then create all substrings starting at index 1 to the last index, and
  repeat until its the last index to the last index

Modeling

str => 'abcde' start idx = 0 current_idx = 0 start idx..current idx ['a']

start idx = 0 current idx = 1 ['a', 'ab']

start idx = 0 current idx = 2 ['a', 'ab', 'abc']....

start idx = 1 current idx = 1 ['b']

start idx = 1 current idx = 2 ['b', 'bc']....



---------------- Examples

substrings('abcde') == [ 'a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', 'bcd',
  'bcde', 'c', 'cd', 'cde', 'd', 'de', 'e' ]


---------------- Data Structures

Array Need some sort of looping structure



---------------- Scratchboard






---------------- Algorithm

/*given a string */

Initialize var `substrs` to an empty collection

Start the outer iteration at idx 0
  - Start the inner iteration at the current idx
    - Add the chars at outer idx to the current idx (in the nested iteration) to
      `substrs`

Return `substrs`

=end

def substrings(str)
  substrs = []

  0.upto(str.size - 1).each do |i|
    i.upto(str.size - 1).each do |ii|
      substrs << str[i..ii]
    end
  end

  substrs
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
