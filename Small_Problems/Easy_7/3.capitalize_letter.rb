=begin

Capitalize Words

Write a method that takes a single String argument and returns a new string that
contains the original value of the argument with the first character of every
word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

P:

Restate the problem: 

Create a method that takes a string argument, and returns a new string that 
has a capitalized first letter for each word.

Input: String
Output: String

Explicit Rules:
- only capitalize the first leter of each word
- words are any sequence of non-blank characters

Implicit Rules:
- don't worry about spaces
- if a letter in the middle of the word is capitalized, change it to lowercase,
  this can be inferred from the second example
- if a word is in quotations, do not capitalize it

Examples:

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

D:

- #split to split the string into words
- #map to iterate over the array of words and modify them
- #join to put together into one string

A:

/* given a string */

1. split the string into separate words
2. iterate over the collection of words
3. capitalize the first letter of each word, unless it's in lowercase
4. if the word has a uppercase letter in the middle, downcase it
5. join the words back together and separate with a space

=end

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

# further exploration

def word_cap(string)
  string.split.map do |word|
    word.chars.map do |letter|
      if word.index(letter) == 0
        letter.upcase
      else
        letter.downcase
      end
    end.join
  end.join(' ')
end

def word_cap(string)
  string.downcase.split.map do |word|
    word[0] = word[0].upcase
    word
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'