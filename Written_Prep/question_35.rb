# What does the following code return? What does it output? Why? What concept
# does it demonstrate?

words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array

=begin

On `line 4` local variable `words` is initialized to an Array filled with String
objects. Local variable `new_array` is initialized on `line 6` to the returned
value of the `#map` method being called on the array referenced by `words`. A
`do..end` block is passed in to `#map` with the parameter `word`; each element
from `words` is passed into the block, binding to the `word`, creating a local
block variable.

This will return a new array whose elements are the return values from the given
block; within the block `word` has the `#start_with?` method called on it, with
the String `"t"` passed in as an argument. Each iteration of the block will
return `true` if the String referenced by `word` starts with `"t"`, and will
return `false` if not. 

The returned array will be `[false, true, false, false, true]`, and is assigned
to `new_arr`. The `p` method is invoked on `line 10`, passing in `new_arr` as an
argument. This will output the array referenced by `new_arr`: `[false, true,
false, false, true]`, and will return the value referenced by `new_arr`. This
code demonstrates the concept of iterating with the `#map` method.

=end