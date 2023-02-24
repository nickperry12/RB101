# What does the following code return? What does it output? Why? What concept
# does it demonstrate?

num = 3
num = 2 * num

=begin

This code will not output anything as not methods to do so are called. On `line
4`, local variable `num` is initialized to an integer object with the value of
`3`. On `line 5`, `num` reassigned to the return value of the invocation of the
`#*` method on the integer `2`, passing in the value referenced by `num` as an
argument; the return value is `6`. The code snippet will also return `6` as
the variable reassignment is the last evaluated expression. The concept being
demonstrated is object mutability/mutating methods. Variable reassignment does
not mutate the caller, and integers are immutable objects.

=end