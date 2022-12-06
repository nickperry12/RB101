=begin


Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which
 should be returned as a string, where n is the position of the word in the list

For example:
["yoda", "best", "has"] --> "yes"
^ ^ ^
n=0 n=1 n=2

Note: Test cases contain valid input only - i.e. a string array or an empty
array; and each word will have enough letters.

Notes:

We need to write a method that takes an array filled with string objects, and
the method should take the nth letter from each word and combine them to form
a new word, and then return it as a string.

For example, we have the following array - ['yoda', 'best', 'has'], and we take
the first, second, and third letters from each word, respectively. These letters
joined together form the word 'yes'.

Data Structure:

Input: Array of strings
Output: String combining letters from each string in given array

We can use a range of numbers, with the starting number in the range being 0 and
the end number being the size of the given array - 1
 - Can use this number to represent the index of the string and element
 - From there we can take the current element of the string and array and add it
 to an empty string


Algo:

Given an array of strings:
1) iterate over a range of numbers starting at 0 to the number equal to size of
the given array - 1
2) take the nth letter of the word at the nth position in the array of strings
and add it to an empty string
3) if the passed in array is empty, return and empty string


Examples/Test Cases:

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'

=end

def nth_char(arr_strings)
  word = ""
  if arr_strings.empty?
    return ""
  else
    (0..(arr_strings.size-1)).each do |current_num|
      word += arr_strings[current_num][current_num]
    end
    word
  end
end


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'