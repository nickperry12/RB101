=begin

8.Repeated Substring
(https://www.codewars.com/kata/5491689aff74b9b292000334/train/ruby) 6 kyu

For a given nonempty string s find a minimum substring t and the maximum number
k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :

a tuple (t, k) (in Python) an array [t, k] (in Ruby and JavaScript) in C, return
k and write to the string t passed in parameter

P:

Restate the question:

Create a method that takes a string as an argument, and returns an array with
the minimum substring (t) and the maximum number (k) the substring can be
repeated to form the original string.

Explicit Rules:

- the given string is not empty and lowercase
- the minimum substring must form the original string when repeated (k) times

Implicit Rules:

- If the string cannot be broken up into smaller substrings that can be repeated
  to form the original string, the returned array should contain the original
  string and the integer 1. This can be inferred from the second example

Input: String Output: 2 Element Array containg a string and integer

Mental Model:

We can create an array of substrings, and from that array select the substring
that, when multipled by the result of substring.size / string.size is equal to
the given string

That substring will be `t`, and then use the value of substring.size /
string.size as our `k` value

Examples:

p f("ababab") == ["ab", 3] p f("abcde") == ["abcde", 1]

D:

- Create substrings using a range: (0..string.size) to grab our first and second
  index
- Can use the `#upto` method for this

A:

/* given a string */

1. Initialize var `substrings` and set to []
2. Use the range 0 up to string size to grab our first index
3. Use the range 0 up to string size to grab our second index
4. Add string[first_idx..sec_idx] to substrings
5. Select the substring that, if multiplied by the length of the string divided
   by the length of substring, equals the given string
6. Append the value of string size divided by substring size to the substring
   array
7. Return the array

=end

def f(str)
  substrings = []
  0.upto(str.size - 1).each do |first_idx|
    first_idx.upto(str.size - 1).each do |second_idx|
      substrings << str[first_idx..second_idx]
    end
  end

  substrings = substrings.select do |substring|
    substring * (str.size / substring.size) == str
  end

  [substrings[0], str.size / substrings[0].size]
end


p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
