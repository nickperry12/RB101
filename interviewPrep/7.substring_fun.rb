=begin
---------------- Problem

Complete the function that takes an array of words. You must concatenate the nth
letter from each word to construct a new word which should be returned as a
string, where n is the position of the word in the list.

For example: ["yoda", "best", "has"] --> "yes" ^ ^ ^ n=0 n=1 n=2

Note: Test cases contain valid input only - i.e. a string array or an empty
array; and each word will have enough letters.



Restate the problem:

Create a method that accepts an array of strings as an argument, and returns a
new string created from the letters at the `n`th index of the `n`th word


Input: Array of strings

Output: String




Explicit Rules:
- Creating a new word using a letter from each string
- Grabbing the `n`th index from `n`th word



Implicit Rules:
- may assume that array contains only letters
- return '' if the given array is empty


Modelling:




---------------- Examples

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'


---------------- Data Structures

Array
String



---------------- Scratchboard






---------------- Algorithm

/* given a array of strings */

Initialize `result` to ''

Iterate through the array with indexes
  - Grab the current index from the curren char, and append it to `result`
  - Repeat until iteration through all elements in array is complete

Return `result`


=end

def nth_char(arr)
  result = ''

  arr.each_with_index do |char, idx|
    result << char[idx]
  end

  result
end


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'
