# Write a method that takes an array of consecutive (increasing) letters as
# input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter
# be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array of letters, either upcased or downcased,
and returns the missing letter in that range of letters.


Input: Array of strings

Output: String

Explicit Rules:
- find the missing letter in the range of letters from the given array


Implicit Rules:
- none implied


Modelling:

I: ["a","b","c","d","f"]
O: "e"

first element of array to the last element
=> iterate through range
=> find the missing char and return it


---------------- Examples

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

---------------- Data Structures

I: Array
Intermediate: Range
O: String

---------------- Algorithm

/* given an array `arr` */

Iterate through the range of letters from the first letter in the array to the
last
  - If the current letter on iteration is not included in the array
    - Return that letter


=end

def find_missing_letter(arr)
  (arr[0]..arr[-1]).each do |let|
    return let if !(arr.include?(let))
  end
end


p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"