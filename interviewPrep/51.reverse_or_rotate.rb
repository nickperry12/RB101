=begin
---------------- Problem

6 kyu
Reverse or rotate?
The input is a string str of digits. Cut the string into chunks (a chunk here is
a substring of the initial string) of size sz (ignore the last chunk if its size
is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is
divisible by 2, reverse that chunk; otherwise rotate it to the left by one
position. Put together these modified chunks and return the result as a string.

If
sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of
size sz hence return "".

Examples:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> ""
revrot("563000655734469485", 4) --> "0365065073456944"


Restate the problem:

Create a method that accepts a string of digits as an argument, chunks the
digits into groups of `sz`, put each individual digits in those chunks to the power
of 3 and then finds the sum. If the sum is evenly divisble by 2, reverse the
order of that chunk, if not, rotate it by one position.


Input: String of digits

Output: String




Explicit Rules:
- put each chunk of digits to the power of 3, and if the sum of those digits
  divided by 2 doesn't return a whole number, rotate the positions by 1, if it
  does, reverse the order
- if `size` is greater than the size of `str`, return ''
- if `size` <= 0, or string = '', return ''




Implicit Rules:
- none identified


Modelling:
I: "733049910872815764", 5
O: "330479108928157"

[[7, 3, 3, 0, 4], [9, 9, 1, 0, 8], [7, 2, 8, 1, 5]]



---------------- Examples

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Scratchboard






---------------- Algorithm

/* given an string of digits `str` and an integer `size` */

Split `str` into a collection of chars
  - iterate over the chars and transform each element into an integer

Create subarrays that have a number of elements equal to `size`
  - If there are any left over elements, remove them

Iterate over the array of subarrays and modify each one
  - Put the digits to the power of 3, and find the sum
    - If the sum is evenly divisble by 2, reverse the order of the subarray
    - If not, rotate the positions by 1
  - Flatten the array of subarrays
  - Join together into a string, and return the string

=end

def create_subarrs(arr, size)
  arr = arr.each_slice(size).to_a
  arr = arr.select { |subarr| subarr.size == size}
end

def revrot(str, size)
  return '' if str.empty? || size > str.size
  return '' if size <= 0

  digits = str.chars.map(&:to_i)
  digits = create_subarrs(digits, size)
  digits.map! do |subarr|
    result = subarr.map { |num| num**3 }.sum
    result % 2 == 0 ? subarr.reverse : subarr.rotate
  end

  digits.join
end




p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""