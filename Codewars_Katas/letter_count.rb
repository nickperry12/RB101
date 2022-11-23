=begin
Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key
and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

P:

Create a method that takes one argument (a string), and counts all the lowercase
letters in the string. The method should store the results in a hash, with the
letter being the key, and the value being the counted instances of that letter.
The key also must be a symbol, not a string.

Essentially, we want to split the string into individual chars, iterate through
the characters, set the current character as a symbol and then set the value
as the count of each character.

Explicit Rules:

- Keys must be symbols
- Value must be the counted instances of each character
- Only count lowercase letters
- Must be stored in a hash

Implicit Rules:

- Ignore symbols and spaces
- Ignore letters with uppercase

Example:
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

D: 
Input: String
Output: Hash

A (High Level):

create a method called `letterCount` that accepts one argument (a string)
- initialize local variable `chars` and set to an empty array
- split the string into characters and store into `chars` array
- iterate through the `chars` array
- if the current character is a lowercase letter
  a) store the character into a new hash, set current character as a key
  b) set the value as the count of that character
- return the hash

C:
=end

def letterCount(string)
  chars = string.chars
  chars.each_with_object(counted_chars = {}) do |element, hash|
    if element == element.downcase
      hash[element.to_sym] = chars.count(element)
    end
  end
end


p letterCount('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letterCount('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letterCount('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}