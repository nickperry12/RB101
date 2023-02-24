 # What does the following code return? What does it output? Why? What concept
 # does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }

=begin

Local variable `arr` is initialized on `line 4` to an Array object containing
all Integers. On `line 6` the `#each` method is called on `arr`, passing in a
curly brace `{}` block with the parameter `n`. 

On each iteration of the passed in block, an element from `arr` is passed in and
binds to `n` and creating a local block variable. Within the block, the `puts`
method is invoked passing in the current value referenced by `n` as an argument.
This will output a string representation of the current value referenced by `n`,
and will return `nil`, because `puts` always returns `nil`. 

This code will return the Array object referenced by `arr`, because the `#each`
method returns the original object it is called on. This demonstrates the
concept of iterating with the `#each` method.

=end