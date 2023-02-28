=begin
---------------- Problem

The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:
It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.

Examples

" Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"
" Hello World " => "#HelloWorld"
"" => false


Restate the problem:

Create a method that accepts a string for an argument, and returns that string
in the form of a hashtag where the first letter of each word is capitalized, all
words are joined together and the entire string is prepended with a `#`


Input: String

Output: String




Explicit Rules:
- The first letter of each word must be capitalized
- All words are joined together and prepended with a `#`
- A result of 140+ chars should return false
- If input or output is an empty string, return false


Implicit Rules:
- none identified


Modelling:


I: "Do We have A Hashtag"
O: "#DoWeHaveAHashtag"

Input => Split into array of words => Capitalize the first letter of each word
=> Join together and prepend with a `#`

---------------- Examples

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p
generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false

---------------- Data Structures

I: String
Intermediate: Array
O: String


---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `words` to the split words of `str`
 - Iterate and transform each word
  - Capitalize the first letter of each word

Initialize `result` to the the joined collection `words` prepended with a `#`

Return `false` if `result` > 140 chars or if `str` is empty


=end

def generateHashtag(str)
  return false if str == ''
  words = str.split
  words.map!(&:capitalize)
  result = "##{words.join}"
  return false if result.size > 140 || words == []
  result
end



p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
