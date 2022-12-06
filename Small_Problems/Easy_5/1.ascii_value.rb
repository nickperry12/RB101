=begin

ASCII Value

Write a method that determines and returns the ASCII string value of a string
that is passed in as an argument. The ASCII string value is the sum of the ASCII
values of every character in the string. (You may use String#ord to determine
the ASCII value of a character.)

P:

Create a method that finds the ASCII vallue of the given string and returns the
sum of the values. 

Rules:

- Must sum all the ASCII values of each character in a string
- If the given string is empty, return 0

Clarification:

- Do we need to include the ASCII value of spaces? Assumption is yes.

Notes:

- We can split the characters of the given string and store them in an array
- From there, we can transform each element in the array by reassigning each
element the value of it's ASCII character
- We can use the `String#ord` method to find the ASCII value

E/TC:

ascii_value('Four score') == 984 
ascii_value('Launch School') == 1251
ascii_value('a') == 97 
ascii_value('') == 0

D:

Input: String
Output: Integer, found by the sum of ASCII values

Algo (High Lvl):

Given a string
- split the word or sentence into individual characters. Include spaces if it's
a sentence
- Find the ASCII value of each character
- Sum all the values and return it

C:
=end

def ascii_value(string)
  string.chars.map! { |char| char = char.ord }.sum
end

p ascii_value('Four score') == 984 
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97 
p ascii_value('') == 0