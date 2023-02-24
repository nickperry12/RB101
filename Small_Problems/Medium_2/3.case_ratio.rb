=begin
---------------- Problem

In the easy exercises, we worked on a problem where we had to count the number
of uppercase and lowercase characters, as well as characters that were neither
of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the percentage of characters in the string that are
lowercase letters, one the percentage of characters that are uppercase letters,
and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Restate the problem:

Create a method that takes a string for an argument, and returns a hash that
contains keys for uppercase letters, lowercase letters and characters that are
neither. The values should represent the percentage of the respective characters
in the given string. 


Input: String

Output: Hash




Explicit Rules:
- need to find the percentages of lowercase, uppercase and neither




Implicit Rules:
- our values should us floats not integers
- spaces count as characters, should be counted as neither


Modelling:

To find the ratio, we can take the amount of chars and divide it by the total
amount of chars


---------------- Examples

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither:
40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5,
neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0,
neither: 100.0 }

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize `chars` to a collection of the characters in the given string
Initialize `result` to a hash with the following keys:
  - lowercase, uppercase, neither

Iterate through `chars`
  - if the current char on iteration is lowercase, increment lowercase value by
    1
  - if the char is uppercase, increment uppercase value by 1
  - if it is either, increment neither value by 1
    - After iteration, divide each value by the size of `chars`

Return `result`

=end

def letter_percentages(str)
  chars = str.chars
  alphas = ('a'..'z').to_a + ('A'..'Z').to_a
  result = { lowercase: 0, uppercase: 0, neither: 0}

  chars.each_with_object(result) do |char, result|
    if !alphas.include?(char)
      result[:neither] += 1.0
    elsif char == char.downcase
      result[:lowercase] += 1.0
    elsif char == char.upcase
      result[:uppercase] += 1.0
    end
  end

  result.transform_values { |value| ((value / chars.size) * 100).round(1) }
end



p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}