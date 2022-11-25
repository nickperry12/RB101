=begin

Palindromic Strings (Part 1)

Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. A palindrome reads the same forward and backward.
For this exercise, case matters as does punctuation and spaces.

P:

Write that takes on argument (a string). The method should evaluate the
given string, and return `true` if it's a palindrome, `false` if it isn't.
A palindrome is an expression that reads the same forward and back.

Explicit Rules:
- String case matters (madam is a palindrome, Madam is not.)
- Punctuation and spaces matter

Implicit Rules:
- Method should not covert string case
- String can consist of digits
- Characters matter ('mim' is a palindrome, "m'im" is not)

E:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

D:
Input: String
Output: Boolean

A (High Level):

create a method called `palindrome` that takes one argument
- take the given string and compare it to the reverse
- return the result

C:
=end

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

=begin
Further Exploration

Write a method that determines whether an array is palindromic; that is, the
element values appear in the same sequence both forwards and backwards in the
array. Now write a method that determines whether an array or a string is
palindromic; that is, write a method that can take either an array or a string
argument, and determines whether that argument is a palindrome. You may not use
an if, unless, or case statement or modifier.


P:

Need to write a method that also checks to see if an array is palindromic.
In a palindromic array, the elements are sequenced the same both forwards and
back.

Next, write a method that can take either a string OR an array as an argument,
and will evaluate both objects to see if they are a palindrome. Cannot use an
`if`, `unless` or `case` statement or modifier. 

A (High Level):

Initialize a constant variable 'ALPHABET' and assign an array filled with
the letters of the alphabet to it

Create a method called 'palindromic?' that takes one argument (string or array)
- initialize local variable `reverse_collection` set it to the same collection
object that is passed
- initialize local variable `counter` and set it to collection size - 1
- iterate through the given collection
a) append the last element into `reverse_collection`
b) stop once `reverse_collection` is equal to the size of the original
- check to see if `reverse_collection` is equal to the original
- return true if it is
C:
=end

def palindromic(collection)
  reverse_collection = collection.class.new
  counter = collection.size - 1
  until reverse_collection.size == collection.size
    reverse_collection << collection[counter]
    counter -= 1
  end

  reverse_collection == collection
end

p palindromic('madam') == true
p palindromic('Madam') == false          # (case matters)
p palindromic("madam i'm adam") == false # (all characters matter)
p palindromic('356653') == true