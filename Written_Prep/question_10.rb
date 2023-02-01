n = 10
1.times do |n|
  n = 11
end
  
puts n

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 1` local variable `n` is initialized to the Integer object `10`. We then
call the `times` method on the Integer `1` and pass in a `do..end` block with a
parameter named `n`. Within the block `n` is reassigned to the Integer `11` on
`line 3`. On `line 6` the `puts` method is invoked and `n` is passed in as an
argument. This will output `10` and return `nil`. This code outputs `10` because
of the concept of variable shadowing; because the local block variable `n` has
the same name as the outer scoped local variable `n`, it blocks access to the
outer scope, instead creating a local block variable that is unavailable to
the outer scope. This code returns `nil` because `puts` is the last evaluated
expression, which returns `nil`.

=end