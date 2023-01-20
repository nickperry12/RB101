=begin

Return substring instance count

Complete the solution so that it returns the number of times the search_text
is found within the full_text.

P:

Restate the problem:

- Create a method that takes two arguments, both strings. The method should find
the amount of times the second string appears in the first string, and return
that number

Input: String
Output: Integer

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

D:

str_one = 'abcdeb'
str_two = 'b'

str_two appears 2x in str_one

`#include?` method to check if str_two is included in str_one
`#count` to find the amount of times its included

A:

- find all instances of str_two appearing in str_one
- count all instances
- return the number of times it appears
=end

def solution(str_one, str_two)
  if str_one.include?(str_two)
    str_one.scan(str_two).count(str_two)
  end
end

p solution('abcdeb','b') #== 2
p solution('abcdeb', 'a') #== 1
p solution('abbc', 'bb') #== 1