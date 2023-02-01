def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?


What values do `s` and `t` have? Why?

This code will not output anything, as no methods are called to do so. On `line
7` local variable `s` is initialized to a String object with the value
`"hello"`. On `line 8`, local variable `t` is initialized to the return value of
the invocation of the `fix` method, with `s` being passed in as an argument. On
`lines 1-5`, the `fix` method is defined with a single parameter named `value`.
When `s` is passed into `fix` as an argument, it is passing in the value
referenced by `s`, which binds to the parameter `value` creating an alias for
`s` and a local method variable. On `line 2`, `value` has the destructive method
`upcase!` called on it, mutating and upcasing the object referenced by `value`.
On `line 3`, `value` then has the `concat` method called on it with the string
`"!"` passed in as an argument. This is a destructive method an will concatenate
the string `"!"` to the string referenced by `value`. `s` and `t` will have
reference the same string: `"HELLO!"`. This code snippet will not output
anything but will return the string `"HELLO!"`, demonstrating the concept of
mutating methods/object mutability.

=end