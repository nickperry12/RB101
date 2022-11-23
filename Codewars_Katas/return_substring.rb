=begin

Return substring instance count

Complete the solution so that it returns the number of times the search_text
is found within the full_text.

P:

We want to create a method that accepts two arguments, both string. The first
argument is the string we are comparing to, and the second argument
is the substring. We are checking to see if the substring is included in the
first string, and how many instances of it there are. For example, we have the
string "hello" with the substring "ll". The output should be `1`, as `ll`
appears once in the string. If the substring passed in was `l`, then the return
value would be 2, as `l` appears twice.

Explicit Rules:
- Count all instances of the substring appearing in the main string

Implicit Rules:
- Case doesn't matter
- Punctuation and other characters can be included

E:

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

D:

Input: String
Output: String

A (High Level):

create a method called `solution` that accepts two arguments
- check to see if the substring is included in the first string
a) if it is, count how many instances are included, return that number
b) return 0 if the substring is not included

=end

def solution(string, substring)
  if string.include?(substring)
    string.scan(substring).length
  else
    return 0
  end
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1