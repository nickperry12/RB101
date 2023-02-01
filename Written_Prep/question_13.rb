a = "hi there"
b = a
a << ", Bob"

=begin

What are a and b?

`a` is `"hi there, Bob"`, and `b` is `"hi there, Bob"`. On `line 1` local
variable `a` is initialized to the String object `"hi there"`, and on `line 2`
local variable `b` is initialized to point to the object at same space in memory
as `a`, which is the String `"hi there"`. On `line 3` we are invoking the
`String#<<` method on `a`, and passing in the String `", Bob"` as an argument.
This concatenates the two Strings together to form one string. This is a
mutating method, meaning it is manipulating the object `a` is pointing to, and
not just reassigning it to a different value/object. This is why `b` will
reflect those changes. This demonstates two concepts, variables as pointers as
well as mutating vs non-mutating methods.

=end