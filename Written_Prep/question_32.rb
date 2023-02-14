# What does the following code return? What does it output? Why? What concept
# does it demonstrate?

array = [1, 2, 3, 4, 5]

array.select do |num|
  puts num if num.odd?
end

=begin

Local variable `array` is initialized on `line 4` to an Array object containing
5 elements. On `line 6` the `#select` method is invoked on `array`, passing in a
`do..end` block with the parameter `num`. Within the defined block, `num` is
passed in to the invocation of the `puts` method, but only if the value
referenced by `num` is odd. On each iteration, an element is passed into the
block, binding to `num`.

This code will output `1`, `3` and `5` separated by newlines, and will return an
empty array `[]`. It returns an empty array because the `#select` method returns
a new array filled with the elements from the calling array for which the block
returns a truthy value. But, because each block iteration calls the `puts`
method, which always returns `nil`, each iteration will return a falsy value,
returning an empty array. This demonstrates the concept of iteration using the 
`#select` method.
=end  