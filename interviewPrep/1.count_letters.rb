=begin
---------------- Problem

Count letters in string In this kata, you've to count lowercase letters in a
given string and return the letter count in a hash with 'letter' as key and
count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char'
instead of string in Crystal. Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1,
:s=>1, :t=>2}

Restate the problem:

Create a method that takes a string for an argument, and returns a hash where
each key is a char from the given string, and the values are the counts of that
char.


Input: String

Output: Hash




Explicit Rules:
- each char will represent a key in our hash, with the value being the count of
that char



Implicit Rules:
- none identified


Modelling:




---------------- Examples

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})

---------------- Data Structures

String
Hash


---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize `result` to a empty hash, with default values being 0

Iterate through the chars of the given string
  - Set each key in our hash to a char from the string
    - Set the values to the count of that char

Return `result`


=end

def letter_count(str)
  str.chars.each_with_object(result = Hash.new(0)) do |char, result|
    result[char.to_sym] += 1
  end
end


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}