a = "hi there"
b = a
a = "not here"

=begin

What are a and b?

What does the following code return? What does it output? Why? What concept does
it demonstrate?

This code will not output anything as no methods have been invoked to output
anything to the screen. Nothing will be returned as no expressions have been
evaluated, there is only variable assignment. On `line 1` local variable `a` is
initialized to the String object `"hi there"`. On `line 2` local variable `b` is
initialized to the same value `a` references. On `line 3` `a` is reassigned to
the String `"not here"`. `a` is now referencing the String `"not here"` and `b`
is referencing the original object `a` was pointing to, which is the String
`"hi there"`. This demonstrates the concept of variables as pointers. By
reassigning `a`, it is now pointing to a different space in memory, while `b`
still points to the original space it was initialized to. 

=end