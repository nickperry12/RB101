=begin

29. Split Strings (https://www.codewars.com/kata/515de9ae9dcfc28eb6000001)

6 kyu

Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace the
missing second character of the final pair with an underscore ('_').

P:

Restate the question:

Create a method that takes a string as an argument, and splits the string into
pairs of 2 characters. If the size of the string is odd, pair the last character
in the string with an underscore ('_')

Input: String Output: Array

Explicit Rules:

- Characters must be paired in groups of 2
- Pair the last character with an underscore if the string size is odd

Implict Rules:

- Return an empty array if the string is empty

D:

- Break down the string into characters using `#chars`
- Iterate over the array using `each`
- Create an empty array to store the pairs in

A:

/* given a string */

1. initialize var `chars` and store the chars of the given string in it
2. initialize var pairs and set to []
3. initialize var `first_idx` and set to 0
4. initialize var `last_idx` and set to 1
5. add the chars at the range of indexes to `pairs`
6. if the string size is odd, pair the last char with an underscore


=end

def solution(str)
  chars = str.chars
  pairs = []
  first_idx = 0
  last_idx = 1

  if chars.size.even?
    loop do
      break if chars[first_idx] == nil
      pairs << chars[first_idx..last_idx].join
      first_idx += 2
      last_idx += 2
    end
  elsif chars.size.odd?
    loop do
      if chars[last_idx] == nil
        pairs << chars[first_idx] + '_'
        break
      end
      pairs << chars[first_idx..last_idx].join
      first_idx += 2
      last_idx += 2
    end
  end
    
  pairs
end

# Solution 2

def solution(str)
  pairs = []
  str << '_' if str.size.odd?
  (0..str.size - 1).step(2) do |i|
    break if i > str.size - 1
    pairs << str[i..i+1]
  end

  pairs
end



p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []