# You have to create a method that takes in a string
# and outputs the same string processed in a particular way.
#
# The method should insert ONLY after the first occurence of each character of the input string
# all the alphabet letters that:
#
# -are NOT in the original string
# -come after the letter of the string you are processing
#
# Each added letter should be in uppercase,
# the letters of the original string will always be in lowercase.
#
# Example:
#
# input: "holly"
#
# missing letters: "a,b,c,d,e,f,g,i,j,k,m,n,p,q,r,s,t,u,v,w,x,z"
#
# output: "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
#
# You don't need to validate input,
# the input string will always contain a certain amount of lowercase letters
# (min 1 / max 50).
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and returns a new string where we are adding in the letters of the alphabet that aren't contained in the string. The missing letters should be the ones that come after each letter contained in the original string. For example, if we have the letter 'h' in our original string, 'IJKMNPQRSTUVWXZ' should come after it. 


Input: String

Output: String

Explicit Rules:
- we're only adding in the missing letters of the alphabet
- only adding the letters that come after the current letter


Implicit Rules:
- none implied


Modelling:

I: "holly"
O: "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"

["h", "o", "l", "l", "y"]

iterate through chars

"h" => "h".."z" => check if current letter in the range is included in the given string => if not append it to "h" => "hIJKMNPQRSTUVWXZ" 

"o" => same thing

"l" => same thing

"l" => already been done, skip it

"y" => same as previous

Iterated through each char

"h" + missing letters => add to an array

---------------- Examples

p insert_missing_letters("holly") == "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
p insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"
p insert_missing_letters("fred") == "fGHIJKLMNOPQSTUVWXYZrSTUVWXYZeGHIJKLMNOPQSTUVWXYZdGHIJKLMNOPQSTUVWXYZ"
p insert_missing_letters("z") == "z"
p insert_missing_letters("efgh") == "eIJKLMNOPQRSTUVWXYZfIJKLMNOPQRSTUVWXYZgIJKLMNOPQRSTUVWXYZhIJKLMNOPQRSTUVWXYZ"

---------------- Data Structures

I: String
Intermediate: Array, Range
O: String



---------------- Algorithm

/* given a string `str` */

Split `str` into a collection of chars and assign `chars`
Initialize `result` to an empty collection
Initialize `missing_letters` to an array
  - Find the missing letters of the alphabet that are not included in `str` and store in this collection

Iterate through `chars`
  - Combine the current `char` with the missing letters from the index of the current char in `missing_letters` to the last element in the `missing_letters` array
  - If the current char is already included in `result`, only add the current char

Join `result` and return the string


=end

def insert_missing_letters(str)
  chars = str.chars
  missing_letters = []
  result = []

  ("a".."z").each { |let| missing_letters << let if str.include?(let) == false }

   chars.each do |char|
    string = char + missing_letters.select { |let| let.ord > char.ord }.join.upcase
    if result.include?(string) == false
      result << string
    else
      result << char
    end
   end

   result.join
end


# test cases 
p insert_missing_letters("holly") == "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
p insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"
p insert_missing_letters("fred") == "fGHIJKLMNOPQSTUVWXYZrSTUVWXYZeGHIJKLMNOPQSTUVWXYZdGHIJKLMNOPQSTUVWXYZ"
p insert_missing_letters("z") == "z"
p insert_missing_letters("efgh") == "eIJKLMNOPQRSTUVWXYZfIJKLMNOPQRSTUVWXYZgIJKLMNOPQRSTUVWXYZhIJKLMNOPQRSTUVWXYZ"