animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 1` we are initializing local variable `animal` to the String object
`"dog"`. On `line 9` we are calling the `puts` method and passing in the object
referenced by `animal` as an argument. This will output `"cat"` because on
`line 3` we invoke the loop method, passing in a `do..end` block, passing in an
unnamed parameter (unnamed because the parameter won't be used). Within the
block `a` is reassigned to the String `"cat"`. On `line 10` the `puts` method
is called again, passing in the object referenced by `var` as an argument.
However, this will throw an error, because `var` is initialized as a local block
variable on `line 5`, where it is within the inner scope of the `do..end` block
passed to the invocation of `loop`. Due to this, it is not available to the
outer scope. Nothing is returned because an error is thrown.

=end