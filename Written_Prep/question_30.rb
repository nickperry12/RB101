# What does the following code return? What does it output? Why? What concept
# does it demonstrate?

a = %w(a b c)
a[1] = '-'
p a

=begin

On `line 4`, local variable `a` is assigned to an Array object with 3 elements,
all of which are string objects with the following values: `['a', 'b', 'c']`. On
`line 5` we are using the index assignment method `#[]=` to reassign the element
at `index 1` to a String object with the value `'-'`. On `line 6` the `p` method
is invoked passing in the object referenced by `a` as an argument. This will
output the array `['a', '-', 'c']` and return the same object.

This demonstrates the concept of object mutability/mutating methods. While the
element at `index 1` did change due to reassignment and is no longer pointing to
the same space in memory, the Array object referenced by `a` is mutated. `a`
still points to the same space in memory even though one of it's elements was
reassigned, demonstrating that index assignment/reassignment is mutating.

=end