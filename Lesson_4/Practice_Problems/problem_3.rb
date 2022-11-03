=begin
Practice Problem 3

What is the return value of `reject` in the following code? Why?
=end

[1, 2, 3].reject do |num|
  puts num
end

=begin
The `reject` method will return a new array with each element that returned
either `falsey` or `nil` value when evaluated by the block. Because the last and
only evaluated exression within the block is `puts num`, which returns nil, all
of the elements in the original array will be rejected and inserted into the new
array.
=end