=begin
---------------- Problem

Create a method that takes 2 arguments, an array and a hash. The array will
contain 2 or more elements that, when combined with adjoining spaces, will
produce a person's name. The hash will contain two keys, :title and :occupation,
and the appropriate values. Your method should return a greeting that uses the
person's full name, and mentions the person's title and occupation.


Restate the problem:

Create a method that takes an array as argument1 and a hash as argument2. The
array will contain elements that when joined together with a space as a
delimiter, and the hash will contain two key-value pairs that represent their
title and occupation. The method should return a string, that is a greeting that
uses their full name, and mentions their title and occupation



Input: Array, Hash

Output: String




Explicit Rules:
- Should output a greeting that includes their name, title and occupation



Implicit Rules:
- None identified


Modelling: 




---------------- Examples

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."




---------------- Data Structures

String



---------------- Scratchboard






---------------- Algorithm

/* given an array and hash */

Using string interpolation
  - Output a greeting that interpolates the elements from our array as the name
    - Interpolate the values from the given hash for their title and occupation

=end

def greetings(arr, hash)
  "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]}\
 around."
end



p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) ==
 "Hello, John Q Doe! Nice to have a Master Plumber around."