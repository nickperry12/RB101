=begin

Practice Problem 16 

A UUID is a type of identifier often used as a way to uniquely identify
items...which may not all be created by the same system. That is, without any
form of synchronization, two or more separate computer systems can create new
items and label them with a UUID with no significant chance of stepping on each
other's toes.

It accomplishes this feat through massive randomization. The number of possible
UUID values is approximately 3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken into 5
sections like this 8-4-4-4-12 and represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.


P:

Need to create a method that returns a UUID when called. A UUID consists of 32
randomized hexadecimal characters. Hexadecimal characters consists of the
numbers 0-9 and the letters a-f. UUIDs are represented as a string, and
have 5 sections with the following lengths: 8-4-4-4-12. 

Mental Model:

Within our method we can store the entire UUID into an array, with each section
being placed into a nested array. We can then output each nested array as a string
using string interpolation. This also allows us to properly format it and
separate each nested array with a "-".

We can create a constant variable `HEXADECIMALS` that contains all the
characters we need and then select a character at random to append into the 
array.

Explicit Rules:
- Must return a string
- Method must have no parameters
- Must have the following format: 8-4-4-4-12
- Can only contain numbers 0-9 and letters a-f

Implicit Rules:
- letters must be lowercase
- characters must be randomized

E/TC:

create_uuid()
=> "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

D:

Input: None
Output: String

A (High Level):

create a method `create_uuid` that has zero parameters
- create an empty array and bind it to a variable `uuid`
  a) places 4 empty arrays into it
- iterate over each index in the array
- generate 8 random hexadecimal chars in the first nested array
- generate 4 random hexadecimal chars in the next 3 nested arrays
- generate 12 random hexadecimal chars in the last nested array
- output each nested array as a string separated by a dash
=end

HEXADECIMALS = ['0',
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  'a',
  'b',
  'c',
  'd',
  'e',
  'f'
]

def create_UUID()
  uuid = []
  counter = 0
  loop do
    uuid[counter] = Array.new
    counter += 1
    break if uuid.size == 5
  end

  uuid.map! do |sub_arr|
    8.times { |i| sub_arr << HEXADECIMALS.sample} if sub_arr == uuid[0]
    4.times { |i| sub_arr << HEXADECIMALS.sample} if sub_arr == uuid[1]
    4.times { |i| sub_arr << HEXADECIMALS.sample} if sub_arr == uuid[2]
    4.times { |i| sub_arr << HEXADECIMALS.sample} if sub_arr == uuid[3]
    12.times { |i| sub_arr << HEXADECIMALS.sample} if sub_arr == uuid[4]
    sub_arr.join
  end

  puts "#{uuid[0]}-#{uuid[1]}-#{uuid[2]}-#{uuid[3]}-#{uuid[4]}"
end

create_UUID()
create_UUID()
create_UUID()
create_UUID()