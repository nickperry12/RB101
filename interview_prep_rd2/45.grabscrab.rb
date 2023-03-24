# Pirates have notorious difficulty with enunciating. They tend to blur all the
# letters together and scream at people.

# At long last, we need a way to unscramble what these pirates are saying.

# Write a function that will accept a jumble of letters as well as a dictionary,
# and output a list of words that the pirate might have meant.

# For example:

# grabscrab( "ortsp", ["sport", "parrot", "ports", "matey"] ) Should return
# ["sport", "ports"].

# Return matches in the same order as in the dictionary. Return an empty array
# if there are no matches.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string and an array of strings, and selects the
strings from the given array that are anagrams of the given string, and returns
them in an array.


Input: Array, String

Output: Array

Explicit Rules:
- find all anagrams from the given array


Implicit Rules:
- none implied


Modelling:

I: "ainstuomn", ["mountains", "hills", "mesa"]
O: ["mountains"]

sort the given string => "aimnnostu"

Iterate through the given array => select all strings that are the same as the
given string when the current strings chars are sorted


---------------- Examples

p grabscrab("trisf", ["first"]) == ["first"]
p grabscrab("oob", ["bob", "baobab"]) == []
p grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"]
p grabscrab("oolp", ["donkey", "pool", "horse", "loop"]) == ["pool", "loop"]
p grabscrab("ortsp", ["sport", "parrot", "ports", "matey"]) == ["sport", "ports"]
p grabscrab("ourf", ["one","two","three"]) == []

---------------- Data Structures

I: String, Array
Intermediate: Array
O: Array



---------------- Algorithm

/* given a string `str` and an array `arr` */

Reassign `str` to the sorted version of `str`
  - Split `str` into chars
  - Sort the chars
  - Join into a string

Iterate through `arr`
  - Select the strings that when broken into chars, sorted and joined are equal
    to the given string


=end

def grabscrab(str, arr)
  str = str.chars.sort.join

  arr.select { |string| string.chars.sort.join == str }
end





p grabscrab("trisf", ["first"]) == ["first"]
p grabscrab("oob", ["bob", "baobab"]) == []
p grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"]
p grabscrab("oolp", ["donkey", "pool", "horse", "loop"]) == ["pool", "loop"]
p grabscrab("ortsp", ["sport", "parrot", "ports", "matey"]) == ["sport", "ports"]
p grabscrab("ourf", ["one","two","three"]) == []