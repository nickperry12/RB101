=begin

Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid
(2010) and After Earth (2013). Jaden is also known for some of his philosophy
that he delivers via Twitter. When writing on Twitter, he is known for almost
always capitalizing every word. For simplicity, you'll have to capitalize each
word, check out how contractions are expected to be in the example below.

Your task is to convert strings to how they would be written by Jaden Smith. The
strings are actual quotes from Jaden Smith, but they are not capitalized in the
same way he originally typed them.

P:

Our method needs to take the given string and "Jaden Case" it; we need it to
capitalize the first letter of each word in the sentence. 

Explicit Rules:
- The first letter of each word needs to be capitalized

Implicit Rules:
- n/a

Examples/Test Cases:

Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"

D: 

Input: String
Output: Modified string with the first letter of each word capitalzied

We can split the sentences into an array to iterate through the words and modify them

Algo (High Lvl):

take the given string and split into separate words
iterate over collection of words and capitalize the first letter
join the words back together into a sentence and return it

C:
=end

class String
  def toJadenCase
    self.split.map { |word| word.capitalize}.join(" ")
end