=begin

Given two words, how many letters do you have to remove from them to make them
anagrams?

Example

First word : c (od) e (w) ar (s) (4 letters removed)

Second word :(ha) c (k) er (r) a (nk) (6 letters removed)

Result : 10

Hints 

A word is an anagram of another word if they have the same letters (usually in a
different order). Do not worry about case. All inputs will be lowercase. When
you're done with this kata, check out its big brother/sister :

https://www.codewars.com/kata/hardcore-anagram-difference


P:

Need to create a method that takes two strings as an argument, and removes
letters from both strings to make them into an anagram of each other. A word is
considered an anagram of another word if they have the same letters (usually in
a different order).

For example, if we're given the strings "codewars" and "hackerrank", a total
of 10 letters are removed to make them into anagrams; 4 letters from the first
string and 6 letters from the second string.

The letters "o, d, w, s" are removed from "codewars", and the letters "h, a, k,
r, n, k" are removed from "hackerrank" leaving the letters "cear" in each string.

Notes:

Think about how we we're going to compare the two strings. We could use the
`include?` method to compare each letter and remove them if they're not a match.

If a letter appears more than once, remove the second instance of that character.





E:

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10


D: 

Input: two strings
Intermediate: Array
Output: Integer

Methods we can use:

Array#include?
- use this to compare the elements in one array appear in the other

#<<
- can use this to add the selected letters into our array of rejected chars



A:

/* given two strings */

1) initialize `shared_chars` and assign an empty array
2) iterate through a duplicate of the chars of string 1
  a) check to see if the the chars in string 2 include any chars from string 1
  b) if they do, add that char to `shared_chars`
  c) substitute the first instance of that shared char with an empty string

=end

def anagram_difference(str1, str2)
  shared_chars = Array.new
  str1_dup = str1.dup
  str2_dup = str2.dup

  str1.each_char do |char|
    if str2.include?(char)
      shared_chars << char
      str1.sub!(char, '')
    end
    p shared_chars
  end

  str2.each_char do |char|
    if str1_dup.include?(char)
      shar_chars << char
      str2.sub!(char, '')
    end
    p shared_chars
  end
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

=begin

** Solutions to study for better understanding **

def anagram_difference(string1, string2)
  same_chars_count = 0
  string1.chars.each do |char|
    if string2.include?(char)
      string2.sub!(char, '')
      same_chars_count += 1
    end
  end
  string2.size + (string1.size - same_chars_count)
end

def anagram_difference(w1, w2)
  w1.dup.each_char do |char|
    if w2.include?(char)
      w2.sub!(char, '')
      w1.sub!(char, '')
    end
  end
  w1.size + w2.size
end

=end


"mqpzqjjtjenadyspfabuvfmaloswwafcomxivyzqqeeanfnkagkkojnsrembtsgbqmquyzfyvjoiaxkherivdvmszpff"
"gchrxqwdhravjllbpzwqxynxjnqhskazqumgkfpqqgnonauhxwuxuzgcuvtbvgnxbhcdgeabbemqeygqnrvsezlkdjio"

["m", "q", "p", "z", "q", "j", "j", "t", "j", "e", "n", "a", "d", "y", "s", "p", "f", "a", "b", "u", "v", "f", "m",
  "a", "l", "o", "s", "w", "w", "a", "f", "c", "o", "m", "x", "i", "v", "y", "z", "q", "q", "e", "e", "a", "n", "f",
  "n", "k", "a", "g", "k", "k", "o", "j", "n", "s", "r", "e", "m", "b", "t", "s", "g", "b", "q", "m", "q", "u", "y", "z",
  "f", "y", "v", "j", "o", "i", "a", "x", "k", "h", "e", "r", "i", "v", "d", "v", "m", "s", "z", "p", "f", "f"]


132


# Algo:
=begin

/* given two strings */

1) initialize `shared_chars_count` and set value to 0
2) 

=end
def anagram_difference(str1, str2)
  dup_str1 = str1.dup
  dup_str2 = str2.dup
  not_shared_count = 0

  dup_str1.each_char do |char|
    if !(dup_str2.include?(char))
      not_shared_count += 1
      dup_str1.gsub!(char, '')
      dup_str2.gsub!(char, '')
    elsif dup_str2.include?(char) && dup_str2.count(char) > 1
      not_shared_count += 1
      dup_str1.gsub!(char, '')
      dup_str2.gsub!(char, '')
    end
  end

  str2.each_char do |char|
    if !(str1.include?(char))
      not_shared_count += 1
      str1.gsub!(char, '')
      str2.gsub!(char, '')
    elsif str1.include?(char) && str1.count(char) > 1
      not_shared_count += 1
      str1.sub!(char, '')
      str2.sub!(char, '')
    end
  end

  not_shared_count
  
end

"uuxxihikobfdnvgegpqizwphczeoifbwhcrlexgaemnxvntatrivskqvuxavwwxiptvdjwydavawixolvunrzuje"
"qfnsiyjyzimybbkndtwfifawenvloecgyyhduaruvjjujszzshqfanlkqstlpmoydszuqgmkrcrslzpvwgapmyux"
 