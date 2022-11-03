=begin
Practice Problem 4

What is the return value of `each_with_object` in thefollowing code? Why?
=end

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

=begin
The method `each_with_object` takes a method argument as well as a block. The
method argument is a collection that will be returned by the method. The first
argument in the block is current element, and the second is the collection
object that was passed into the method as an argument.

Within the block, we are manipulating the hash passed into the method as an
argument. We are iterating through the array and initializing the first index
of each element to a key in the array. We are also initializing each value of the
hash to the current element.

This method will return => {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
=end