=begin
---------------- Problem

# A pangram is a sentence that contains every single letter of the alphabet at
# least once. For example, the sentence "The quick brown fox jumps over the lazy
# dog" is a pangram, because it uses the letters A-Z at least once (case is
# irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is,
# False if not. Ignore numbers and punctuation.

Restate the problem:

Create a method that takes a string, and returns true if given string contains
all of the letters of the alphabet, and false if not. 


Input: String

Output: Boolean




Explicit Rules:
- return true if the chars of the given string contain all the letters of the
  alphabet, false if not



Implicit Rules:
- none implied


Modelling:

I: "The quick brown fox jumps over the lazy dog."
O: true

[array of alphabetical letters]
[array of chars]

{"a" => 0, "b" => 0, "c" => 0 ... }

['t', 'h', 'e', ' ', 'q', 'u' ... ]

if hash keys include the char
  hash[char] += 1

Grab all the hash values, and return true if all the values are > 1



---------------- Examples

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false

---------------- Data Structures

I: String
Intermediate: Hash
O: Boolean

---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `alphabet_count` to a hash where each key is a alphabetical letter
and the value is set to 0

Initialize `chars` to the chars of `str`

Iterate through `chars`
  - If the hash keys include that char
    - Increment the value at hash[char] by 1

Return `true` if all the values in `alphabet_count` are greater than 1

=end

def pangram?(str)
  alphabet_count = ('a'..'z').to_a.zip([0] * ('a'..'z').to_a.size).to_h

  chars = str.downcase.chars
  chars.each do |char|
    if alphabet_count.keys.include?(char)
      alphabet_count[char] += 1
    end
  end

  alphabet_count.values.all? { |value| value >= 1 }
end


p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false