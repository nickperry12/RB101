=begin

Most frequently used words in a text

Write a function that, given a string of text (possibly with punctuation and
line-breaks), returns an array of the top-3 most occurring words, in descending
order of the number of occurrences.

Assumptions:

A word is a string of letters (A to Z) optionally containing one or more
apostrophes (') in ASCII. (No need to handle fancy punctuation.) Matches should
be case-insensitive, and the words in the result should be lowercased. Ties may
be broken arbitrarily.

If a text contains fewer than three unique words, then either the top-2 or top-1
words should be returned, or an empty array if a text contains no words.


P:

Restate the question:

Create a method that takes a string as an argument which can possibly contain
punctuation and line-breaks, and returns an array of the most occuring words.
The order of the words should go from highest to lowest. 

Input: String
Output: Array of integers, sorted from highest to lowest

Explicit Rules:

- A word is a string of letters (a-z, A-Z) that can possibly contain one or more
apostrophes.

- Word matches should be case insensitive (we will want to downcase all chars)

- Words in our result should be lowercased

- If there are fewer than 3 unique words in the given string, return the top 2
or top 1 word

- If the given string is empty, return an empty array

Implicit Rules:

- We want to remove any special characters that aren't an apostrophe, as shown
in the 3rd given example

- Do new lines count as special characters? How would we go about removing that
if so? Something to think about. Taking a look at example 2, there are new lines
in our string to make sure they fit within the 81 character limit

- if a word is the same as another but one word has an apostrophe, consider them
to be different words, as per example 3

- We aren't counting spaces, this can be inferred from our first example, as
spaces would have the highest character count, so we we will want to remove
those from the string as well

D:

- Using an array to return the top most counted words
- To count the actual words, we can use a hash where the key represents the word
and the value represents the counted instances of that word

E:

Examples:

top_3_words("In a village of La Mancha, the name of which I have no desire to
call to mind, there lived not long since one of those gentlemen that keep a
lance in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most nights,
scraps on Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays,
made away with three-quarters of his income.") == ["a", "of", "on"]`

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]

top_3_words("  //wont won't won't") == ["won't", "wont"]

A:

/* given a string */

1. remove all special characters that aren't an apostophe including new lines
2. initialize a variable 'counted_words' and assign an empty hash to it
3. after removing all the special characters from the given string, split the
string into separate words
4. iterate over the collection of words and set each unique word as key for the
counted words hash
5. set the value of each key in the counted_words hash to the counted instances
of each one of those words
6. create an array that contains three words with highest counted instances in a
order that goes from highest to lowest
=end

def top_3_words(str)
  mod_str = str.downcase.gsub(/[^a-z ']/, '')
  mod_str.split.each_with_object(counted_words = {}) do |word, hash|
    counted_words[word] = mod_str.split.count(word)
  end
  counted_words.sort_by { |key, value| -value }.to_h.keys[0..2]
end


p top_3_words("In a village of La Mancha, the name of which I have no desire to
  call to mind, there lived not long since one of those gentlemen that keep a
  lance in the lance-rack, an old buckler, a lean hack, and a greyhound for
  coursing. An olla of rather more beef than mutton, a salad on most nights,
  scraps on Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays,
  made away with three-quarters of his income.") == ["a", "of", "on"]
  
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
  
p top_3_words("  //wont won't won't") == ["won't", "wont"]

p top_3_words('') == []