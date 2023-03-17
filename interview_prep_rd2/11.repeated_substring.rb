=begin
---------------- Problem

# For a given nonempty string s find a minimum substring t and the maximum
# number k, such that the entire string s is equal to t repeated k times.

Restate the problem:

Create a method that takes a string, that returns an array containing a
substring and an integer, where if the substring is repeated the amount of times
referenced by the integer, will result in the formation of the given string.


Input: String

Output: String




Explicit Rules:
- the substring times the integer must equal the string



Implicit Rules:
- none identified


Modelling:

I: "ababab"
O: ["ab", 3]

['a', 'ab', 'aba', 'abab', 'ababa', 'ababab', 'b', 'ba' ... ]

size of input => 6 => the size of current substring => input size / 'a'.size => 6
'a' * 6 == 'aaaaaa' != 'ababab'

'ab', size == 2 => input size 6 => 6 / 2 => 3 * 'ab' => 'ababab' => ['ab', 3]


---------------- Examples

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]

---------------- Data Structures

I: String
Intermediate: Array
O: Array


---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

From 0 up to the size of `str` - 1
  - From the current outer index up to the size of `str` - 1
    - Create a substring using the `chars` from outer idx to inner idx of `str`
    - Initialize `multiple` and assign the resulting value of `str` size /
      `substring` size
    - Return [substring, multiple] if substring * multiple is equal to `str`

=end

def f(str)
  0.upto(str.size - 1) do |i|
    i.upto(str.size - 1) do |ii|
      substring = str[i..ii]
      multiple = str.size / substring.size
      return [substring, multiple] if substring * multiple == str
    end
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]