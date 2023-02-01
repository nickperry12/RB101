=begin

The End Is Near But Not Here

Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

P:

Restate the problem:

Create a method that takes a string as an argument, and returns the second last
word in the String. 

Explicit Rules:
- Words are any sequence of non-blank chars
- Can assume that our given string will always have at least two words

Implicit Rules:
- ignore all spaces when finding the word to return

Input: String
Output: String

Examples:

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

D:

String#split to separate all the words in the given string

A:

/* given a string */

1. split the string into substrings of individual words (defined in `P`) and
store in a collection
2. return the second last substring in the collection

=end

# def penultimate(str)
#   str.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

=begin

Further Exploration

Our solution ignored a couple of edge cases because we explicitly stated that
you didn't have to handle them: strings that contain just one word, and strings
that contain no words.

Suppose we need a method that retrieves the middle word of a phrase/sentence.
What edge cases need to be considered? How would you handle those edge cases
without ignoring them? Write a method that returns the middle word of a phrase
or sentence. It should handle all of the edge cases you thought of.

P:

Modify our method to handle edge cases, and to now get the middle wod of the
given string.

D:

Use #split again to create an array of words
Divide the size of the array by 2 to get the middle index of an odd sized array
Do the same for even sized arrays and then subtract 1

A:

/* given a string */

1. split the string into words and store in a collection
2. if the size of that collection is less than 2, output a message saying
the given string only has one word
3. initialize index to the returned value of dividing your collection size by 2
3b. if the size of the collection is even, divide it by 2 and subtract 1
4. return the string at the index referenced by the value of `index`

=end

def penultimate(str)
  if str.split.size < 2 || str.empty?
    return "The given string only has either 1 word or is empty."
  end

  if str.split.size.odd?
    index = str.split.size / 2
  else
    index = str.split.size / 2 - 1
  end

  str.split[index]

end

p penultimate('Find the middle word here') == 'middle'
p penultimate('Launch School is great!') == 'School'
p penultimate('') == "The given string only has either 1 word or is empty."
p penultimate('Hello') == "The given string only has either 1 word or is empty."