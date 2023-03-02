=begin
---------------- Problem

Given two words, how many letters do you have to remove from them to make them
anagrams?

Example

First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10


Restate the problem:

Create a method that accepts two string arguments (`str1`, `str2`), and returns
the number of letters that need to be removed from both strings to create an
anagram


Input:

Output:




Explicit Rules:
- return the amount of numbers needed to create an anagram of each other



Implicit Rules:
- case doesn't matter, all inputs will be lowercase


Modelling:

I: 'ab', 'a'
O: 1

Iterate through chars of 'ab' => if current char is included in 'a', remove that
char from both strings => 'b', '' => add the size of both strings together => 1


---------------- Examples

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two strings `str1` `str2` */

Initialize copyOne to a shallow copy of `str1`

Iterate through each char of `copyOne`
  - If the current char is included in `str2`
    - Replace the first instance of that char in `str1` and `str2` with ''

Return the result of `str1` + `str2`

=end

def anagram_difference(str1, str2)
  str1.each_char do |char|
    if str2.include?(char)
      str1.sub!(char, '')
      str2.sub!(char, '')
    end
  end

  str1.size + str2.size
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
