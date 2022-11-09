=begin

Practice Problem 1

Given the array below:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

Turn this array into a hash where the names are the keys and the values are the
positions in the array.

=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |element, index|
  flintstones_hash[element] = index
end

p flintstones_hash

=begin
In this problem we begin by initializing an empty hash `flintstones_hash`.
We can now call the `each_with_index` method on our original array,
use the block this method takes to manipulate our empty hash. From within the
block, we can assign each element of our array to a key in the empty hash, and
assign the respective index of those elements as the value. 
=end