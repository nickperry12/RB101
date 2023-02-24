=begin
---------------- Problem

Write a function that, given a string of text (possibly with punctuation and
line-breaks), returns an array of the top-3 most occurring words, in descending
order of the number of occurrences. Assumptions: A word is a string of letters
(A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to
handle fancy punctuation.) Matches should be case-insensitive, and the words in
the result should be lowercased. Ties may be broken arbitrarily. If a text
contains fewer than three unique words, then either the top-2 or top-1 words
should be returned, or an empty array if a text contains no words.

Examples:

top_3_words("In a village of La Mancha, the name of which I have no desire to
call to mind, there lived not long since one of those gentlemen that keep a
lance in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most nights,
scraps on Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays,
made away with three-quarters of his income.")

# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")

# => ["e", "ddd", "aa"]

top_3_words(" //wont won't won't")

# => ["won't", "wont"]

Bonus points (not really, but just for fun):

Avoid creating an array whose memory footprint is roughly as big as the input
text. Avoid sorting the entire array of unique words.


Restate the problem:

Create a method that accepts a string for an argument, and returns an array of
the most frequently used words in the string. The top 3 most occuring words
should be returned.


Input: String

Output: Array of strings




Explicit Rules:
- If the array size is greater than 3, return the top 3 most used words
- If the array size is 3 or less, return the top 2 or top 1 most used words



Implicit Rules:
- none identified


Modelling:

I: " //wont won't won't "
O: ["won't", "wont"]

I: "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"
O: ["e", "ddd", "aa"]

We can infer from these examples, that each word has has all special chars
removed unless they're an apostrophe

We need to:

Remove non-apostrophes from all words
Remove words that only consist of spaces and apostrophes
Sort the array from high to low
Remove all duplicate values
Return the highest to lowest


---------------- Examples


p top_3_words("a a a b c c d d d d e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words(" //wont won't won't ") == ["won't", "wont"]
p top_3_words(" , e .. ") == ["e"]
p top_3_words(" ... ") == []
p top_3_words(" ' ") == []
p top_3_words(" ''' ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]




---------------- Data Structures

Array
String


---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Define a helper method `remove_non_words` with the paramter `arr`
  - Iterate through the array and remove all strings that aren't words

In the main method `top_3_words`
  - split the string into words
  - downcase all words in the collection and remove special characters that
    arent apostrophes
  - remove all non words from the collection
  - sort the collection by the word count and sort from high to low
  - return the elements from index 0 - 2


=end

def get_array_of_words(str)
  arr = str.split
  arr.map!(&:downcase).map! { |word| word.gsub(/[^'A-Za-z]/, '')}
  arr.delete_if { |s| s.match(/\A[\W ]+\z/) || s == '' }
end


def top_3_words(str)
  words = get_array_of_words(str)
  words.sort_by! { |word| -words.count(word) }.uniq!
  words[0..2]
end


p top_3_words("a a a b c c d d d d e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words(" //wont won't won't ") == ["won't", "wont"]
p top_3_words(" , e .. ") == ["e"]
p top_3_words(" ... ") == []
p top_3_words(" ' ") == []
p top_3_words(" ''' ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
