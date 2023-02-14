=begin
---------------- Problem

Write a method that takes a string as an argument, and returns an Array that
contains every word from the string, to which you have appended a space and the
word length.

You may assume that words in the string are separated by exactly one space, and
that any substring of non-space characters is a word.


Restate the problem:

Create a method that takes one argument, a string, that returns an array where
each element in the array is a word from the string along with the length of the
word. The word and the length of the word must be separated by a string


Input: String

Output: Array




Explicit Rules:
- Each element is a word from the string + that words length
- Word and length must be separated by a space



Implicit Rules:
- None implied


Modelling: 




---------------- Examples

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []




---------------- Data Structures

Array



---------------- Scratchboard






---------------- Algorithm

/* given a string */

Return an empty collection if the given string is empty

Split the given string into a collection of separate words
  - Iterate through this collection append a space and the length of the element
    on current iteration to every element in the array
Return the new collection of words


=end

def word_lengths(str)
  str.split.map { |word| word + " #{word.length}"}
end


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []