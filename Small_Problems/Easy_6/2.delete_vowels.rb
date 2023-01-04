=begin

Delete vowels

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

P:

Given an array of strings, create a method that removes all the vowels from the array of strings. 

We create a constant variable, and assign a string to it that contains all the vowels - both upper and lower case, and then compare each character in the given array of strings to the constant and see if they are included, and if they are - delete them. 

Example:

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

D:

Input: Array of strings
Intermediate: Array
Output: New array of strings without vowels

Algo:

- Initialize a constant variable and assign both upper and lowercase vowels to it

/* given an array of strings */

1) iterate through each string in the Array
2) split the current string on iteration into chars
3) if the current char is a vowel, remove it
4) return the modified array

=end

VOWELS = "aeiouAEIOU"

def remove_vowels(array)
  array.each do |string|
    string.chars.map { |chr| string.delete!(chr) if VOWELS.include?(chr)}
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']