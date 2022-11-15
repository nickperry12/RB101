=begin

Counting the Number of Characters

Write a program that will ask a user for an input of a word or multiple words
and give back the number of characters. Spaces should not be counted as a
character.

P:

Write a program that does the following:
- prompts the user to enter a word or sentence
- returns the amount of characters in the sentence excluding spaces

Explicit Rules:
- when counting characters, don't count spaces
- output should be a message with the amount of characters

Implicit Rules:
- symbols are counted along with letters
- input has to be a word or sentence, not a single character

E:

Input:
Please write word or multiple words: walk

Output:
There are 4 characters in "walk".

Input:
Please write word or multiple words: walk, don't run

Output:
There are 13 characters in "walk, don't run".

D:

Input: String
Output: String

A (High Level)

create a method called `counting_chars` that takes one argument
- remove all the spaces if any from the given string
- split the string into individual characters
- count the characters
- output the result to the screen in a message

C:
=end

def counting_chars(string)
  chars = string.delete(' ').chars.count
  puts "There are #{chars} characters in '#{string}'."
end

puts "Please enter a word or multiple words:"
input = gets.chomp

counting_chars(input)