=begin

Given 2 strings, find out if there is a substring that appears in both strings. Return true if you find a substring that appears in both strings, or false if not. Only consider substrings that are longer than one letter long. 

=end

# p substr_test('Something', 'Fun') == false 
# p substr_test('Something', 'Home') == true
# p substr_test('Something', '') == false
# p substr_test('', 'Something') == false
# p substr_test('Banana', 'banana') == true
# p substr_test('test', 'lllt') == false
# p substr_test('', '') == false
# p substr_test('1234567', '541256') == true
# p substr_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

=begin
---------------- Problem
Given 2 strings, find out if there is a substring that appears in both strings. Return true if you find a substring that appears in both strings, or false if not. Only consider substrings that are longer than one letter long. 



Restate the problem:

Create a method that accepts two arguments, both strings, and finds a substring that appears in both arguments. If a substring is found, the method should return true, false if not. Only search for substrings that have a size of greater than 1. 


Input: String

Output: Boolean; true or false




Explicit Rules:
- the substrings found must be greater than 1 character
- substring must appear in both arguments



Implicit Rules:
- none identified


---------------- Modelling

Given Strings: '1234567', '541256'

Substring found in both: '56'
Length > 1
Should return true

Given Strings: 'supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou'
Substring: ciou
Length > 2
Should reuturn true

---------------- Examples

p substr_test('Something', 'Fun') == false 
p substr_test('Something', 'Home') == true
p substr_test('Something', '') == false
p substr_test('', 'Something') == false
p substr_test('Banana', 'banana') == true
p substr_test('test', 'lllt') == false
p substr_test('', '') == false
p substr_test('1234567', '541256') == true
p substr_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true




---------------- Data Structures

Strings



---------------- Scratchboard






---------------- Algorithm

/* given two strings */

Initialize `substrings` to an empty collection

Starting at index 0 of the first string
  - Starting at index 1 of the given string
    - Create a substring containing the characters from index 0 up to the current index
      - Append the created substring to our `substrings` collection
  - Repeat this until all we finish iterating on both levels

Iterate through the `substrings` collection
  - If any of the substrings within this collection are included in our second argument
    - Return true
  - Return false if none are found

=end

def substr_test(str1, str2)
  substrings = []

  0.upto(str1.size - 1) do |i|
    i.upto(str1.size - 1) do |ii|
      substrings << str1[i..ii]
    end
  end

  substrings = substrings.select { |substr| substr.size >= 2}

  substrings.each do |substring|
    return true if str2.include?(substring)
  end

  false
end




p substr_test('Something', 'Fun') == false 
p substr_test('Something', 'Home') == true
p substr_test('Something', '') == false
p substr_test('', 'Something') == false
p substr_test('Banana', 'banana') == true
p substr_test('test', 'lllt') == false
p substr_test('', '') == false
p substr_test('1234567', '541256') == true
p substr_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true