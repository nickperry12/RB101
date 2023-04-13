=begin 
https://edabit.com/challenge/5rm6uiwuZTCJYyL6R

An authentic vowel skewer is a skewer with a delicious and juicy mix of consonants and vowels. However, the way they are made must be just right:

    Skewers must begin and end with a consonant.
    Skewers must alternate between consonants and vowels.
    There must be an even spacing between each letter on the skewer, so that there is a consistent flavour throughout.

Create a function which returns whether a given vowel skewer is authentic.
Examples

is_authentic_skewer("B--A--N--A--N--A--S") ➞ true
is_authentic_skewer("A--X--E") ➞ false
# Should start and end with a consonant.

is_authentic_skewer("C-L-A-P") ➞ false
# Should alternate between consonants and vowels.

is_authentic_skewer("M--A---T-E-S") ➞ false
# Should have consistent spacing between letters.

=end 
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and returns true or false dependent on whether the string meets 3 conditions:

1. The string must start and end with a consonant
2. It must alternate between consonants and vowels
3. Must be even spacing between each letter


Input: String

Output: Boolean

Explicit Rules:
- to return true must meet these 3 conditions:
1. The string must start and end with a consonant
2. It must alternate between consonants and vowels
3. Must be even spacing between each letter

Implicit Rules:
- none implied


Modelling:

I: "J--E--Q--A--H--E--K--A--Y--U--X--A--P--I--F"
O: true

First thing to check is if first and last are consonants
=> ['a', 'e', .... ] if these first and last char aren't included
=> result = true

Next check => does it alternate between consonants and vowels?
check all even indexed characters => are they all consonants?
=> if yes, result remains true

check all odd indexed characters => are they all vowels?
=> if yes, result remains true

['J', '-', '-', 'E', '-' ... ]
= create slices => [['J'], ['-', '-'], ... ]
=> select all subarrays where all characters are not alphabetical chars
=> check to see if each subarray within this new subarray are the same length
=> if so, result remains true



---------------- Examples

p is_authentic_skewer("B--A--N--A--N--A--S") == true
p is_authentic_skewer("L-A-B-O-R-A-T-O-R") == true
p is_authentic_skewer("M-----E-----M-----E-----S") == true
p is_authentic_skewer("C-L-A-P") == false
p is_authentic_skewer("B-E-L-L") == false
p is_authentic_skewer("T-I-T-A-N-I-C") == true
p is_authentic_skewer("J--E--Q--A--H--E--K--A--Y--U--X--A--P--I--F") == true
p is_authentic_skewer("F-U-W") == true
p is_authentic_skewer("A--X--E") == false
p is_authentic_skewer("M--A---T-E-S") == false
p is_authentic_skewer("C--H----E---E-S-E") == false

---------------- Data Structures

I: String
Intermediate: Array
O: Boolean

---------------- Algorithm

/* given a string `str` */

Split `str` into an array of chars, assign to `chars`
Initialize `result` to `false`

If all even indexed elements are consonants
  - Reassign `result` to true

Initialize `letters`
  - Remove all special characters from `str`
  - Split into a collection of individual letters
  - Assign to `letters`

Check to see if all even indexed elements within `letters` are vowels

Initialize `chars_between`
  - Select all chars that are a dash
  - Create slices of 2
  - Check if all slices are equal to the size of the first slice
  - If so, result remains 'true'

If any of these conditions are not met, reassign `result` back to `false`

Return `result`

=end

def is_authentic_skewer(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  chars = str.chars
  result = false
  letters = str.gsub(/[^A-Za-z]/, '').chars

  if letters.select.with_index { |_, idx| idx.even? }.all? { |char| !vowels.include?(char.downcase) }
    result = true
  else
    return false
  end

  if letters.select.with_index { |_, idx| idx.odd? }.all? { |char| vowels.include?(char.downcase) }
    result = true
  else
    return false
  end

  dashes = chars.select { |char| char == '-'}.each_slice(2).to_a
  if dashes.all? { |slice| slice.size == dashes[0].size }
    result = true
  else
    return false
  end

  result
end




p is_authentic_skewer("B--A--N--A--N--A--S") == true
p is_authentic_skewer("L-A-B-O-R-A-T-O-R") == true
p is_authentic_skewer("M-----E-----M-----E-----S") == true
p is_authentic_skewer("C-L-A-P") == false
p is_authentic_skewer("B-E-L-L") == false
p is_authentic_skewer("T-I-T-A-N-I-C") == true
p is_authentic_skewer("J--E--Q--A--H--E--K--A--Y--U--X--A--P--I--F") == true
p is_authentic_skewer("F-U-W") == true
p is_authentic_skewer("A--X--E") == false
p is_authentic_skewer("M--A---T-E-S") == false
p is_authentic_skewer("C--H----E---E-S-E") == false
