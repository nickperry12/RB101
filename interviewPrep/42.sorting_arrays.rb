=begin
---------------- Problem

Sort the given strings in alphabetical order, case insensitive.

For example:

["Hello", "there", "I'm", "fine"] --> ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"]) --> ["a", "B", "C", "d"]


Restate the problem:

Create a method that accepts an array of strings and sorts alphabetically while
ignoring string case


Input: Array of strings

Output: Array of strings




Explicit Rules:
- ignore character case when sorting



Implicit Rules:
- none identified


Modelling:




---------------- Examples






---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array of strings `arr` */

Take the given array
  - sort it by the downcase version of the strings

Return the resulting array


=end

def sortme(arr)
  arr.sort_by! { |string| string.downcase }
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]

