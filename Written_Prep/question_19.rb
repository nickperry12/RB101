# What does the following code return? What does it output? Why? What concept does it demonstrate?

def increment(x)
  x << 'b'
end

y = 'a'

increment(y)
puts y

=begin

This code will output `"ab"` and return `nil`. On `line 7` local variable `y` is
initialized to the String `'a'`. On `lines 3-5` the `increment` method is
defined, with a single parameter named `x`. Within the method definition, on
`line 4`, the object referenced by `x` has the `<<` method invoked on it,
passing in the String `'b'` as an argument. This appends the String to the
object referenced by `x`. On `line 9` we invoked the `increment` method and pass
in `y` as an argument, resulting in the String `'b'` being appended to the
String referenced by `y`. This mutates the original object, which is why the
code outputs `'ab'`. The code returns `nil` because `puts y` is the last
evaluated expression, and `puts` always returns `nil`. This demonstates the
concept of pass by reference vs pass by value as well as mutating vs
non-mutating methods.

=end