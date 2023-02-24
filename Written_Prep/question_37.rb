 # What does the following code return? What does it output? Why? What concept
 # does it demonstrate?

 odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd
p even

=begin

On `line 4`, local variables `odd` and `even` are initialized to the return
values of the invocation of the `#partition` method on the Array `[1, 2, 3]`.
The `#partition` method is invoked with a `do..end` block with the parameter
`num`, and will return two Array objects, with one Array filled with elements
from the Array it is called on for which the block returns a truthy value, and
the other Array being filled with elements for which the block returns a falsy
value.

Each element from the Array `#partition` is called on will be passed into the
block, binding to parameter `num` creating a local block variable. Within the
block the `#odd?` method is invoked on the current value represented by `num`.
This will return `true` if the current value is an odd integer, and `false` if
it isnt. After the last iteration of the block, `odd` will be initialized to the
Array `[1, 3]`, and `even` will be initialized to the Array `[2]`. 

On `lines 10-11`, the `p` method is invoked, passing in `odd` and `even` as
arguments, outputting the Arrays `[1, 3]`, and `[2]`. `p even` is the last
evaluated expression, so the code will return `[2]`. This demonstrates the
concept of working with collections and popular collection methods.

=end