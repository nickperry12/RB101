=begin

Alphabetical Numbers

Write a method that takes an Array of Integers between 0 and 19, and returns an
Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve,
thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

P:

Our method should take the range of numbers (inclusive) from 0 to 19, and sort
the numbers by the ASCII value of the english word equivalent

The numbers will be sorted by the ASCII value of each string. We can check the
ASCII value of each string by calling the `ord` method on them.

"zero".ord == 122
"nine".ord == 110

Based off this, '9' would come before '0' in our new sorted array.

To handle the conversion of integers into strings, we can create a hash where
they keys are the integers and the values are the string equivalent


Examples:

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

D:

Input: Range of numbers converted to an Array
Intermediate: Hash, key == integer, value == english word equivalent
Output: Sorted array of integers 

Algo:

/* given an array of integers from 0 - 19 */

1. create a hash where the key is the integer and value is the string equivalent
2. create an array filled with the hash values
3. sort the array based on the order of ASCII values
4. iterate over the elements and indexes of the array
5. starting at index 0, reassign the element to the hash key for that string
6. return the array

=end

ALPHA_NUMBERS = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
}

def alphabetic_number_sort(arr)
  array = ALPHA_NUMBERS.values.sort!

  arr.each do |num|
    array[num] = ALPHA_NUMBERS.key(array[num])
  end

  array
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]