=begin

### Example 1

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 12` local variable `a` is initialized to the String object `"Hello"`.
On `line 13` local variable `b` is initialized to the value referenced by `a`.
On `line 16`, `a` is reassigned to the String object `"Goodbye"`. On `line 18`
we are invoking the `puts` method and passing in `a` as an argument, which will
output `"Goodbye"`. On `line 21` the `puts` method is invoked again, passing in
`b` as an argument, outputting "Hello" to the screen. The difference in outputs
is due to the concept being demonstrated - variables as points. When `b` is
initialized, it's initialized to point to the same space in memory as `a`. `a`
is then reassigned to point to a different space in memory, however, `b` still
points to the original space `a` was pointing to. The following code will return
`nil`, as `puts` is the last expression evaluated, and it always returns `nil`.

=end

a = "Hello"
b = a
a = "Goodbye"

puts a
puts b