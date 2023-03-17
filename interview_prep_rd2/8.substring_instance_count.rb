# Complete the solution so that it returns the number of times the search_text
# is found within the full_text.

# Usage example:

# solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# solution('aaabbbcccc', 'bbb') # should return 1

=begin
---------------- Problem



Restate the problem:

Create a method that accepts two strings, and returns the amount of times the
second string appears in the first string. 


Input: String

Output: String




Explicit Rules:
- find the amount of times the second string appears in the first string



Implicit Rules:
- none implied


Modelling:

I: 'abcdeb', 'b'
O: 2

['a', 'b', 'c', 'd', 'e', 'b']
['a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', ... ]
if the substring is equal to string 2, increment a count by 1 => return count

I: 'abbc', 'bb'
O: 1

['a', 'ab', 'abb', 'abbc', 'b', 'bb', 'bbc', 'b', 'bc', 'c']




---------------- Examples

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1

---------------- Data Structures

I: String x2
Intermediate: Array
O: Integer



---------------- Scratchboard






---------------- Algorithm

/* given two strings, `str1` and `str2` */

Initialize `substrings` to an empty collection
Initialize `count` to 0

Create substrings using the characters in `str1`
  - Starting at idx0 to the size of `str1` (exclusive)
    - Starting at the current index to the size of `str1` (exclusive)
      - Initialize substring to the character at the outer idx + the character
        at the inner index
        - Add the resulting string to `substrings`

Iterate through substrings
  - If the current substring is the same as `str2`, increment `count` by 1

Return `count`


=end

def solution(str1, str2)
  substrings = []
  count = 0

  (0...str1.size).each do |i|
    (i...str1.size).each do |ii|
      substring = str1[i..ii]
      substrings << substring
    end
  end

  substrings.each do |substring|
    count += 1 if substring == str2
  end

  count
end



p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1