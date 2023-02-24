=begin
---------------- Problem

Write a program that reads the content of a text file and then prints the
longest sentence in the file based on number of words. Sentences may end with
periods (.), exclamation points (!), or question marks (?). Any sequence of
characters that are not spaces or sentence-ending characters should be treated
as a word. You should also print the number of words in the longest sentence. 

Restate the problem:

Create a method that finds the longest sentence in a text file, and then prints
the longest sentence. The length of each sentence should be determined by the
amount of words in it. Sentences can end with a `.`, `!` or `?`.



Input: Text file

Output: String




Explicit Rules:
- must find the sentence with the most amount of words



Implicit Rules:
- none identified


Modelling:

Can regex to split our sentences: /\.|\?|!/



---------------- Examples






---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a text file */

Split the contents of the text file into an array of strings, separating each
sentence by either a (!), (.) or (?)
  - Iterate through the array of sentences, and transform each element into
    a subarray of split strings
    - Each split string should split into an array of words
  - Sort this array of arrays by the length of each array
  - Return the joined array at index -1


=end

text = File.read('sample_text.txt')

def longest_sentence(str)
  arr = str.split(/(?<=[.?!])\s*/)
  arr.map! do |sentence|
    sentence.split
  end.sort_by! { |item| item.length }

  longest_sentence = arr[-1].join(' ')
  sentence_count = longest_sentence.split.count
  
  p longest_sentence
  p "The longest sentence has #{sentence_count} words."
end


p longest_sentence(text)