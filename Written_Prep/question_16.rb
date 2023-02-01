a = 5.2
b = 7.3
a = b
b += 1.1

=begin

What is `a` and `b`? Why?

On `line 1` we initialize `a` to the float object `5.2` and on `line 2`, `b` is
initialized to the float object `7.3`. On `line 3` `a` is reassigned to
reference the same object that `b` is initialized to (float object `7.3`). On
`line 4` `b` is reassigned to the return value of `b` + `1.1`. `a` will remain
`7.3` and `b` will now be `8.4`. `a` does not change because reassignment is
non-mutating. `b` is reassigned and now points to an object at a different
space in memory.

=end