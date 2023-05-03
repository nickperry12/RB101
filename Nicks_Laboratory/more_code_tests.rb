=begin
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is
"aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need
to be efficient. The input will only consist of lowercase characters and will be
at least one letter long. If there are multiple solutions, return the one that
appears first.
=end

=begin
  Breakdown
    - The substring breaks when the next char is smaller
    - The input will be atleast one char long
    - Return the first longest substring
    - Input: String
    - Output: String

  Problem
    - Collect all the valid substrings
    - Filter the first longest substring
    - Return the resultant substring
  
  Data structuring
    - 'nab' => 'n', 'a', 'ab', 'b'
    - Break the inner loop if the next element is smaller than the current

  Algorithm
    - Intialise a variable longest_stringstring & assign it an empty string object
    - Iterate over all the valid substrings
      - If the current substring is longer than current longest
      - Save it as the longest substring
    - Return the longest substring

    - To find valid substrings
    - Iterate from 0 to length of the str - 1, save the current element as index
      - Iterate from 1 to length of the str - index, save the current element as length
        - Add the string formed using str[index, length] to an array object
        - Break if element at str[index, length + 1][-1] < str[index, length][-1]

=end

def longest(str)
  longest_substring = ''

  all_substrings(str).each do |substring|
    longest_substring = substring if substring.length > longest_substring.length
  end

  longest_substring
end

# alternate

def longest(str)
  all_substrings(str).max_by { |substring| substring.length }
end

def all_substrings(str)
  (0...str.length).each_with_object([]) do |index, arr|
    (1..str.length - index).each do |length|
      arr << str[index, length]
      break if str[index, length + 1][-1] < str[index, length][-1]
    end
  end
end