animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?


On `line 1` local variable `animal` is initialized to the String `"dog"`. On
`line 3` the `loop` method is invoked, passing in a `do..end` block with a
parameter named `animal`. Within the block, `animal` is reassigned to the String
`"cat"` on `line 4`. On `line 8` the `puts` method is invoked passing in
`animal` as an argument. This will output `"dog"` and not `"cat"` due to
variable shadowing. Because the parameter `animal` has the same name as an outer
scoped variable, it blocks access to the outerscope variable; instead of
reassigning `animal` to a different String, it creates a local block variable.
The code returns `nil` because `puts` is the last evaluated expression and
always returns `nil`.

=end