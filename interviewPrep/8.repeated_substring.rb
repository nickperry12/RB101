=begin
---------------- Problem

For a given nonempty string `s` find a minimum substring `t` and the maximum
number `k`, such that the entire string `s` is equal to `t` repeated `k` times.
The input string consists of lowercase latin letters. Your function should
return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:
for string
s = "ababab"
the answer is
["ab", 3]

Example #2:
for string
s = "abcde"

the answer is because for this string "abcde" the minimum substring t, such that
s is t repeated k times, is itself.

Restate the problem:

Create a method that accepts a string as an argument, and returns a 2 element
array, where the first element is a substring `t`, and the second element is
an integer `k`. The substring `t` multiple by `k` should result in the original
string. 


Input: String

Output: Array




Explicit Rules:
- return an array containing `t` and `k`, where `t` is a substring and `k` is
  integer we can multiply `t` by and get our original string



Implicit Rules:
- none implied



Modelling:

Given string "abcde" => ["abcde", 1]

Iterating to find a substring, that when multiplied by a number, returns the
given string



---------------- Examples

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]


---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize `result` to []

Starting at index 0 of the given string up to the size of the string
 - Starting at the current index up to the size of the string
  - Create substrings from index 0 to the current index of `str`
    - Initialize multiple to str.size / substr.size
      - If substring * multiple == `str`
        - Add substring to `result`
        - Add multiple to `result`

Return `result`

=end

def f(str)
  (0...str.size).each do |i|
    (i...str.size).each do |ii|
      substr = str[i..ii]
      multiple = str.size / substr.size
      return [substr, multiple] if substr * multiple == str
    end
  end

  result
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
