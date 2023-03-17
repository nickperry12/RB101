=begin
---------------- Problem

#In this kata, you've to count lowercase letters in a given string and return
#the letter count in a hash with 'letter' as key and count as 'value'. The key
#must be 'symbol' instead of string.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Restate the problem:

Create a method that accepts a string for an argument, and returns a hash with
the letters of the string representing the keys (converted to symbols), and the
values being the count of those characters


Input: String

Output: Hash




Explicit Rules:
- hash key is the char converted to symbol, values are the char count



Implicit Rules:
- none identified


Modelling:

I: 'codewars'
O: {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}

['c', 'o', 'd', ... ]
hash[char.to_sym] += 1


---------------- Examples

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

---------------- Data Structures

I: String
Intermediate: Array
O: Hash

---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Initialize `chars` to the individual chars of `str`

Iterate through `chars` while using it's elements to build a hash `char_count`
  - Set the values to 0
  - Take the current char, convert it to a symbol, and set it as the hash key
    - Increment the current value by 1 everytime that char shows on iteration
Return `char_count`

=end

def letter_count(str)
  chars = str.chars

  chars.each_with_object(char_count = Hash.new(0)) do |char, hash|
    hash[char.to_sym] += 1
  end

  char_count = char_count.sort_by { |k, _| k.to_s }.to_h
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}