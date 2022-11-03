=begin 
Practice Problem 2

How does `count` treat the block's return value? How can we find out?
=end

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

=begin
Because no argument is given, and a block is given instead, `count`
calls the block with each element, and will return the count of elements 
for which the block returns a `truthy` value. The block criteria is
`str.length < 4`, so elements in the array with a length that is less than 4
will have a `truthy` value and will be counted. This can be found in the Ruby
documentation.

Alternatively, when an argument is given to `count`, it returns the count of
elements that is equal to the arugment given (an integer)

When no argument or block is given, it returns the count of all elements in
the collection.

This code will return => ['ant', 'bat']
=end