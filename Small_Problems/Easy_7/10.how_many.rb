=begin

How Many

Write a method that counts the number of occurrences of each element in a given
array.

vehicles = [ 'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
  'motorcycle', 'car', 'truck' ]

count_occurrences(vehicles)

The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print
each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2

---------------- Problem

Restate the problem:

Create a method that takes an array as an argument, and finds the counted
occurences of each element in the array. If the elements are strings, then the occurences must be case-sensitive. 


Input: Array
Output: String



Explicit Rules:
- string elements in the array are case sensitive and should be counted as such
- find the count of each occurence and output it in a string with the following format: "element" => counted occurences


Implicit Rules:

- none identified


-------- Examples

vehicles = [ 'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
  'motorcycle', 'car', 'truck' ]

Should output:

car => 4
truck => 3
SUV => 1
motorcycle => 2




-------- Data Structures

Array
String
Hash to store the elements as keys, and the occurences as a value for each key



-------- Scratchboard

possibly use the each_with_object method?




-------- Algorithm

/*given an array */

Initialize var `counted_elements` to an empty collection
  - use a Hash

Iterate through the given array
  - for each element, add that element to `counted_elements` and set it as a hash keys
    - make sure the keys are strings
  - for each key, set the value to the number that references the amount of times that element appears in the array

In a String, output each key in the hash along with the value in the following format:
  - element => count
    - separate each element with a newline

=end

vehicles = [ 'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
  'motorcycle', 'car', 'truck']

def count_occurrences(arr)
  counted_elements = Hash.new(0)

  arr.each_with_object(counted_elements) do |item, hash|
    hash[item] += 1
  end

  counted_elements.each do |k, v|
    puts "#{k} => #{v}"
  end
end

p count_occurrences(vehicles)


#car => 4
#truck => 3
#SUV => 1
#motorcycle => 2