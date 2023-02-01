def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)

p a

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 6` `a_method` is invoked passing in the value referenced by local
variable `a` as an argument. On `line 5` local variable `a` is initialized to a
String with the value `"hello"`. On `line 1` the method `a_method` is defined
with a single parameter named `string`. When `a` is passed in as an argument,
the value referenced by `a` binds to the parameter `string`, creating a local
method variable, and `string` becomes an an alias for `a`. Within the method
definition on `line 2`, `string` has the `#<<` method called on it, passing in
`" world"` as an argument. This will mutate the original object, changing the
value to `"hello world"`. On `line 8` we invoke the `p` method, which will
output `"hello world"` and return `"hello world"`. This demonstrates the concept
of mutating methods and object passing/pass by value vs pass by reference.

=end