=begin
Write a method that takes one argument, a positive integer, and 
returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.

Understanding the problem: 
Our method should take one argument (an integer), and then
return a collection (a string) with a length that is equal to
the given number. The collection should contain alternating
1's and 0's

Explicit Rules:
The length of the collection should be equal to the given number
The collection should consist of alternating 1's and 0's
Return object should be a string


Implicit Rules:
Input: Integer
Output: String

Clarification: 
Should 1's and 0's be broken up if the collection length is
really long?

Algorithm:

Create a method called 'stringy' that has one parameter
1. initialize an empty collection
2. iterate the following actions the given number of times
2b. if the number is even, add a '1' to the collection
2c. if the number odd, add a '0' to the collection
3. return the final result
=end

def stringy(number)
  string = ''
  number.times do |num|
    string << '1' if num.even?
    string << '0' if num.odd?
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=begin

Further Exploration
Modify stringy so it takes an additional optional argument that
defaults to 1. If the method is called with this argument set to 0,
the method should return a String of alternating 0s and 1s, but
starting with 0 instead of 1.

Understanding the problem: 

We're going to add an optional default paramter with a value of 1.
If the default parameter is changed to 0 within the method, then
instead of the collection starting with 1, it will start with 0.

Explicit Rules:
If the default parameter is changed to 0, then the beginning
of the collection should start with 0. 

Implicit Rules:
Same as before

Algorithm:

Create a method call stringy_two, that now takes 2 parameters
The second parameter is called 'start' and has a default value of 1
1. Initialize an empty collection
2. Iterate these next actions a given number of times
2b. If "start"s value is changed to 0, the first digit added is 0.
Otherwise, it will start with 1
3. Add 1 and 0 repeatedly to the collection
3b. Add these until the iteration has completed the given number of times
4. return the collection

=end

def stringy_two(number, start = 1)
  string = ''
  if start == 1
    number.times do |num|
      string << '1' if num.even?
      string << '0' if num.odd?
    end
  elsif start == 0
    number.times do |num|
      string << '0' if num.even?
      string << '1' if num.odd?
    end
  end
  string
end

puts stringy_two(5, start = 0)
puts stringy_two(2, start = 1)
puts stringy_two(9, start = 0)
puts stringy_two(3, start = 1)
puts stringy_two(6, start = 0)