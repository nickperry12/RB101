=begin

In this kata, you've to count lowercase letters in a given string and return the
letter count in a hash with 'letter' as key and count as 'value'. The key must
be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

P:

Input: String
Output: Hash

Resate the Question:

Create a method that takes a string as an argument, and counts the lowercase
letterse in a given string. The methd should return a hash, where the key is the
letter and the value is the count.

Explicit Rules:

- the key must be a symbol, not a string

- only count lowercase letters

Implicit Rules:

- the order of the count doesn't matter, values do not need to be sorted from
highest to lowest or vice versa

- are uppercase letters ignored? assumption is yes, as we can infer this from
the explicitly stated rule: 'you've to count lowercase letters in a given 
string'

D:

- we're going to use a hash where they keys are the counted lowercase letters,
these must be converted to symbols, and the values are the count

A:

/* given a string */

1. split the string into chars
2. initialize a variable called counted_letters and assign a empty hash to it
3. iterate over the collection of characters
4. if that character is lowercased, convert that character to a symbol, and
assign it to a hash key
5. assign the value of that key to the counted instances of that character
6. return the counted_letters hash
=end

def letter_count(string)
  chars = string.chars
  chars.each_with_object(counted_letters = {}) do |char, hash|
    if char == char.downcase
      hash[char.to_sym] = chars.count(char)
    end
  end
end

p letter_count('codewars')
p letter_count('activity')
p letter_count('arithmetics')


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}