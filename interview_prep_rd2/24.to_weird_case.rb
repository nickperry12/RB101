# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and
# returns the same string with all even indexed characters in each word upper
# cased, and all odd indexed characters in each word lower cased. The indexing
# just explained is zero based, so the zero-ith index is even, therefore that
# character should be upper cased and you need to start over for each word.

# The passed in string will only consist of alphabetical characters and spaces('
# '). Spaces will only be present if there are multiple words. Words will be
# separated by a single space(' ').
=begin
---------------- Problem



Restate the problem:

Create a method that accepts a string, and returns the same string but with all
even indexed chars converted to upcase, and all odd indexed chars converted to
downcase. 


Input: String

Output: String

Explicit Rules:
- even indexed chars get upcased
- odd indexed chars get downcased


Implicit Rules:



Modelling:

I: String
O: StRiNg

"S" => even indexed => convert to upcase => "S"
"t" => odd indexed => convert to downcase => "t"
"r" => even indexed => conver to upcase => "R"

....

"StRiNg"
---------------- Examples

p weirdcase("String") == "StRiNg"
p weirdcase("Weird string case") == "WeIrD StRiNg CaSe"

---------------- Data Structures

I: String
Intermediate: String
O: String

---------------- Algorithm

/* given a string `str` */

Initialize `words` to the split words of `str`
  - Iterate over each word
    - Iterate over the chars of the current word with it's indices
      - If the current chars idx is even, upcase it, if not, downcase it
Join the words together separated by a space

Return the resulting string

=end

def weirdcase(str)
  words = str.split

  words.each do |word|
    word.each_char.with_index do |char, idx|
      idx.even? ? word[idx] = word[idx].upcase : word[idx] = word[idx].downcase
    end
  end

  words.join(' ')
end

p weirdcase("String") == "StRiNg"
p weirdcase("Weird string case") == "WeIrD StRiNg CaSe"