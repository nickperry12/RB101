def cap(str)
  str.capitalize! # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 7` we are calling the `puts` method and passing in local variable
`name` as an argument. On `line 6`, the `cap` method is invoked with local
variable `name` passed in as an argmument. On `line 5` local variable `name` is
initialized to reference the String object `"jim"`. On `lines 1-3`, `cap` is
defined with a single parameter named `str`. When `name` is passed in as an
argument, it is passing in a reference to `name`, binding it to `str` creating
an local method variable and an alias for `name`. On `line 2`, `str` has the
destructive method `capitalize!` called on it, which will mutate the object that
is being referenced in the inner scope by `str` and the outerscope by `name`.
This code snippet will output `"Jim"`, and return `nil`, because `puts name` was
the last evaluated expression. This demonstrates the concept of object
passing/pass by reference vs pass by value.