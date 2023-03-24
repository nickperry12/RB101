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

Create a method that accepts a string for an argument, and adds the missing
letters of the alphabet to each character in the string. The letters added
should only be the letters from that character to "z". If a string contains
two or more of the same letter, only add the letters to the first occurence
of that letter. All letters added should be uppercase.


Input: String

Output: String

Explicit Rules:
- add missing letters of the alphabet to each first occurence of each char in
  the string
- added letters should be uppercased


Implicit Rules:
- none implied


Modelling:

I: "holly"
O: "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"

["h", "o", "l", "l", "y"]

Iterate through chars => nested iteration through alphabet => if letter is not
included in the string => add to letter => add the resulting string to array

---------------- Examples

p insert_missing_letters("holly") == "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
p insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"
p insert_missing_letters("fred") == "fGHIJKLMNOPQSTUVWXYZrSTUVWXYZeGHIJKLMNOPQSTUVWXYZdGHIJKLMNOPQSTUVWXYZ"
p insert_missing_letters("z") == "z"
p insert_missing_letters("efgh") == "eIJKLMNOPQRSTUVWXYZfIJKLMNOPQRSTUVWXYZgIJKLMNOPQRSTUVWXYZhIJKLMNOPQRSTUVWXYZ"

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Algorithm

/* given a string `str` */

Initialize `result` to an empty collection
Initialize `chars` to each letter in `str`

Iterate through `chars`
  - Initialize `string` to the current char
  - Iterate through the range of letters in the alphabet
    - If `str` does not contain the current letter 
      - Add that letter to `string`
  - After nested iteration completes
    - Add `string` to `result`
      - If `result` alread contains that string, just add the `char`
    
Join `result` into string, and return the string


=end

def insert_missing_letters(str)
  result = []
  chars = str.chars

  chars.each do |char|
    string = char.dup
    (char.."z").each do |let|
      if !(str.include?(let))
        string << let.upcase
      end
    end
    if !(result.include?(string))
      result << string
    else
      result << char
    end
  end

  result.join
end



p insert_missing_letters("holly") == "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
p insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"
p insert_missing_letters("fred") == "fGHIJKLMNOPQSTUVWXYZrSTUVWXYZeGHIJKLMNOPQSTUVWXYZdGHIJKLMNOPQSTUVWXYZ"
p insert_missing_letters("z") == "z"
p insert_missing_letters("efgh") == "eIJKLMNOPQRSTUVWXYZfIJKLMNOPQRSTUVWXYZgIJKLMNOPQRSTUVWXYZhIJKLMNOPQRSTUVWXYZ"