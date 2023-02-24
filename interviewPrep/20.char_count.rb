=begin
---------------- Problem

Write a method that takes a string as an argument and groups the number of times
each character appears in the string as a hash sorted by the highest number of
occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}

You should ignore spaces, special characters and count uppercase letters as
lowercase ones.


Restate the problem:

Create a method that accepts a string as an argument, and returns a hash where
each key is an integer, and the value is an array of chars from the given string
that have a count equal to the int value of the key


Input: String

Output: Hash




Explicit Rules:
- ignore all special characters and count uppercase chars as lowercase



Implicit Rules:
- none identified 


Modelling:

Need to remove all non alphabetical chars and downcase the chars before counting
the characters and building our hash


---------------- Examples






---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split the string into individual characters and assign to `chars`
  - Iterate through this and remove any characters that aren't an alphabetical
    letter
  - transform the collection and downcase all the characters

Iterate through `chars` while building a hash
  - select all the chars with the same number of occurences
  - set the hash key to the count of the chars
  - set the value to an array containing those chars

Sort the `result` hash by the value of the key

Return the hash


=end

def get_char_count(str)
  chars = str.chars.map!(&:downcase).delete_if do |char|
                                      !(('0'..'9').to_a + ('a'..'z').to_a).include?(char)
                                    end

  chars.each_with_object(result = {}) do |char, hsh|
    hsh[chars.count(char)] = 0
  end

  result.each do |k, v|
    result[k] = chars.select { |char| chars.count(char) == k }.uniq.sort
  end.sort.reverse.to_h
end


p get_char_count("Mississippi") #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") #== {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") #== {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") #== {3=>["a", "b", "c"]}
p get_char_count("abc123") #== {1=>["1", "2", "3", "a", "b", "c"]}
