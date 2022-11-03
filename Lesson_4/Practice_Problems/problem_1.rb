=begin

What is the return value of the select method below? Why?

=end

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

=begin
The object `array` calls the `select` method on itself. `select` takes a block
with the parameter `num`. `select` iterates over the array and passes each
element as an argument into the block. On line 8, the criteria for the method is
`num` > 5, meaning that any number in the array with a value greater than 5 will
return a `truthy` value. 

Because none of the elements are greater than 5, they return a `falsey` value
and do not get selected to be put into a new array. However, on line 9, there is a string
objected with the value of `hi`. Because this is the last expression evaluated in
the block, and everything besides `nil` and `false` are considered `truthy`, the
return value of the block is now `truthy` and the elements within the original
array are selected to be inserted into the new array.

The return value of this code block is => [1, 2, 3]
=end