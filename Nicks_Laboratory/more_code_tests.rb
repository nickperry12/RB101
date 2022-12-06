# 7 kyu

# Return substring instance count
# Complete the solution so that it returns the number of times the search_text is found within the full_text.

# # Usage example:
# solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# solution('aaabbbcccc', 'bbb') # should return 1

# p solution('abcdeb','b') == 2
# p solution('abcdeb', 'a') == 1
# p solution('abbc', 'bb') == 1

=begin

We want to create a method that takes two arguments, both strings, and should return the number of occurences of that string. The first argument is the string, the second is the string occurnces we're trying to find and return the count of. For example, given the string 'abcdeb', find the occurces of 'b'. Your method should return 2. 

Notes:

- We don't want to split the string, as in some instances we're looking to match multiple character strings and find the count, not just a single letter

- What if we tried doing this without using the scan method? Could we use `#match?` and count the occurnces of of the returned `true` value?

Rules:

- Ignore punctuation or underscores

D:

Input: String
Output: Integer

Within our method we can use regex to find the occurences.

Algo for second solution:
- initialize a `counter` variable and set it to 0
- iterate through the first string and check if the second string matches any of the single or combination of characters in the first string
- if there is a match, increment the `counte`r by 1
- stop iterating after iterating through the first string and all possible combinations of the characters within it
- return `counter`


Algo (High lvl):
given two strings
- find all occurrences of the second string in the first String
- store each occurence in an Array
- 



=end

# def solution(str1, str2)
#   str1.each do |chars|
#     if str1.match?(str2)
#       counter += 1
#     end
#   end
# end

def solution(str1, str2)
  str1.scan(str2).count
end

p solution('aa_bb_cc_dd_bb_e', 'bb') == 2
p solution('aaabbbcccc', 'bbb') == 1
p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
p solution('abbada', 'z') == 0