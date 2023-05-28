# Encrypt this!

# You want to create secret messages which can be deciphered by the Decipher
# this! kata. Here are the conditions:

# Your message is a string containing space separated words.
# You need to encrypt each word in the message using the following rules:
# The first letter must be converted to its ASCII code.
# The second letter must be switched with the last letter
# Keepin' it simple: There are no special characters in the input.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and encrypts the string.
To encrypt the string, replace the first letter of each word with it's ASCII
code, and swap the letters at the second and last position.

Input: String

Output: String

Explicit Rules:
- Swap the first letter with it's ASCII code for each word
- Swap the letter at the second and last position for each word


Implicit Rules:
- none implied


Modelling:

I: "hello world"
O: "104olle 119drlo"

['hello', 'world'] => [['h', 'e', 'l'...], ['w', 'o', ...]]

Iterate over each subarray with it's indices
['h', 'e', 'l'...]
  0    1    2

If the idx is 0 => get the ASCII code for the char
If the idx is 1 => Swap second and last letters, return the char
Else, return the char

[[104, 'o', 'l', 'l', 'e'], .... ]

Join all subarrays together => ["104olle", ... ]

---------------- Examples

p encrypt_this("Hello") == "72olle"
p encrypt_this("good") == "103doo"
p encrypt_this("hello world") == "104olle 119drlo"

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Algorithm

/* given a string `str` */

Initialize `words` to the collection of words in `str`
Iterate over and transform `words`
  - Split each word into an array of chars

Iterate over `words` again
  - Transform each collection of letters with its indices
    - If the current idx is 0
      - Find the current chars ASCII code and return it
    - If the current idx is 1
      - Swap idx 1 and -1 with each other
      - Return the resulting char at idx 1
    - Else, return the current char
  
Join all the subarrays within `words` together

Join `words` together and split with a space
  - Return the resulting string


=end

def encrypt_this(str)
  words = str.split
  words.map!(&:chars)

  words.each do |word|
    word.map!.with_index do |char, idx|
      if idx == 0
        char.ord
      elsif idx == 1
        word[1], word[-1] = word[-1], word[1]
        word[1]
      else
        char
      end
    end
  end

  words.map!(&:join)
  words.join(' ')
end


p encrypt_this("Hello") == "72olle"
p encrypt_this("good") == "103doo"
p encrypt_this("hello world") == "104olle 119drlo"