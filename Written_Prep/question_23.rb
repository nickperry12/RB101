arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char| 
  char.upcase
end
puts arr1 
puts arr2

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 1` local variable `arr1` is initialized to the Array object `["a", "b",
"c"]`. On `line 2` we initialize local variable `arr2` to the return value of
`arr1` having the `#dup` method called on it, creating a shallow copy of the
Array referenced by `arr1`. This means the elements in `arr2` will have copies
of the values of the elements in `arr`. On `line 3`, we invoke the destructive
`map!` method on the object referenced by `arr2`, passing in a `do..end` block
with a single parameter named `char`. On each iteration, each element will be
passed to the block and will be bound to the parameter `char`, creating a local
block variable. Within the block on `line 4`, the object referenced by `char`
will have the non-destructive method `upcase` called on it. However, because the
destructive `map!` is used, the returned array will be the same object, but
mutated. On `line 6` the `puts` method is invoked with `arr1` being passed in as
an argument. This will output `["a", "b", "c"]` and return `nil`. On `line 7`
we once again invoke the `puts` method, passing in `arr2` as an argument. This
will output `["A", "B", "C"]` and return `nil`. This demonstrates the concept of
object passing/pass by reference vs pass my value. 

=end