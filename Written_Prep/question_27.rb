def fix(value)
  value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)

p s
p t

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

What values do `s` and `t` have? Why?

On `line 6` local variable `s` is initialized to a String with the value
`"hello"`, and on `line 7` local variable `t` is initialized to the return value
of the invocation of the `fix` method with the value referenced by `s` being
passed in as an argument. On `lines 1 - 4` the `fix` method is defined with a
single parameter named `value`. When `s` is passed in as an argument, the value
it references binds to `value`, creating an alias for `s` as well as creating a
local method variable. Within the method on `line 2`, `value` is reassigned to
the returned value of `value` having the destructive `#upcase!` method called on
it. This method is mutating but because `value` is being reassigned, it no
longer points to the same space in memory as `s`, leaving that value unaffected.
On `line 3` the `#concat` method is called on `value` with the String `"!"`
passed in as an argument. `s` will be `"hello"` and `t` will be `"HELLO!"`. This
code will not output anything as no methods were invoked to do so, and it will
return `"HELLO!"` as `t = fix(s)` was the last evaluated expression. This
demonstrates the concept of object passing/pass by reference vs pass by value.

=end