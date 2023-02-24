# What does the following code return? What does it output? Why? What concept
# does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }

=begin

This code will not output anything as no methods to do so were invoked.

Local variable `arr` is initialized on `line 4` to an array object filled with
Integers. On `line 6` the `#select` method is called on `arr`, passing in a
curly brace `{}` block with the parameter `n`. Each element from the calling
array will be passed into the block to bind to `n` and create a local block
variable. 

`#select` will return a new array filled with elements from the
calling array for which the block returns a truthy value. Within the block on
`line 6`, the `#odd?` method is called on `n`, returning the boolean `true` or
`false` if the value referenced by `n` is odd. This will return an array filled
with odd numbers from the calling array - `[1, 3, 5, 7, 9]`. The code snippet
will return the new array as well, as the calling of `#select` on `arr` is the
last evaluated expression. 

This demonstrates the concept of iterating using the `#select` method.

=end