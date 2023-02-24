=begin
---------------- Problem

Return substring instance count

Complete the solution so that it returns the number of times the search_text is
found within the full_text.

Usage example: solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb
shows up twice solution

('aaabbbcccc', 'bbb') # should return 1


Restate the problem:

Create a method that accepts two arguments, the first argument is a string,
and the second argument is a string we want to search for in argument 1. Our
method should return the amount of times argument 2 is containd within argument1


Input: 2 Strings

Output: Integer




Explicit Rules:
- Return the amount of times arg2 appears in arg1



Implicit Rules:



Modelling:




---------------- Examples

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1



---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two strings */

Initialize `result` to 0

Iterate through the chars of arg1, starting at index 0
  - Starting at the current index, iterate through the chars of arg1
    - Create a substring from the chars at index 0 to the current index
      - If the substring is equal to arg2, then increment `result` by 1

Return `result`

=end

def solution(arg1, arg2)
  result = 0

  (0...arg1.size).each do |i|
    (i...arg1.size).each do |ii|
      substr = arg1[i..ii]
      result += 1 if substr == arg2
    end
  end

  result
end


p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
