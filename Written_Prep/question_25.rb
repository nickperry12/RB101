def fix(value) 
  value = value.upcase
  value.concat('!')
end
s = 'hello'
t = fix(s)

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

What values do `s` and `t` have? Why?

On `line 6`, local variable `t` is initialized to the return value of the
invocation of the `fix` method with `s` being passed in as an argument. On `line
5` local variable `s` is initialized to a String object with the value
`"hello"`.  On `line 1` we define the `fix` method with a single parameter named
`value`. When `s` is passed into the `fix` method, the value referenced by `s`
is bound to the parameter `value`, creating an alias for `s` as well as creating
a local method variable. Within the method definition on `line 2`, `value` is
reassigned to the retrn value of the calling of the `#upcase` method on `value`.
Because we are using reassignment, this will not affect the original object that
is being referenced by `value` and `s`, instead it will now pass in a copy of
that object. `value` is now pointing to a object located at a different space in
memory than `s`. On `line 3` `value` has the destructive method `#concat` called
on it, with the string `"!"` being passed in as an argument. While this method is
destructive, because we `value` is now pointing to a different space in memory, it
will not affect the object referenced by `s`. `s` will have the value `"hello"`,
and `t` will have the value `"HELLO!"`. This code will not output anything but
will return `"HELLO!"` because `t = fix(s)` is the last evaluated expression.
This demonstrates the concept of object mutability.


=end