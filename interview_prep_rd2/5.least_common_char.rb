=begin
---------------- Problem

Write a method that takes a string as an argument and returns the character that
occurs least often in the given string. If there are multiple characters with
the equal lowest number of occurrences, then return the one that appears first
in the string. When counting characters, consider the uppercase and lowercase
version to be the same.

Restate the problem:

Create a method that accepts a string, and returns the character from the string
that occurs the least often. If two characters have the same low value, then
return the character that occurs first. Case is irrelevant. 


Input: String

Output: String

Explicit Rules:
- if two characters have the same low value, return the one that occurs first



Implicit Rules:
- spaces count as characters


Modelling:

I: "Hello World"
O: "h"

"hello world" => ['h', 'e', 'l', 'l', 'o', ' ', .... ]

hash = { "h" => 1, "e" => 1, "l" => 2 ... }

sort hash by values (low to high)

return the first key


---------------- Examples

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

---------------- Data Structures

I: string
Intermediate: hash
O: string



---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `chars` to the downcased chars of `str`

Iterate through these char while building a hash
  - Set the current char to the hash key, and current value to that chars count

Sort the hash by the values from low to high
  - Return the first key


=end

def least_common_char(str)
  chars = str.downcase.chars

  chars.each_with_object(result = Hash.new(0)) do |char, hash|
    hash[char] += 1
  end

  result = result.sort_by { |_, v| v }.to_h
  result.keys[0]
end


p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".