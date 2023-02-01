def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)


=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

What values do `s` and `t` have? Why?

On `line 7` local variable `s` is initialized to a String object with the value
`"hello"`, and on `line 8` local variable `t` is initialized to the return value
of invoking the method `fix`, passing in `s` as an argument. On `lines 1-5` the
`fix` method is defined with a single parameter named `value`. When `s` is
passed into fix, the value of `s` is bound to the parameter `value`, creating an
alias for `s` as well as creating a local method variable. On `line 2` value has
the `#<<` method invoked on it, passing the String `"xyz"` as an argument. This
is a destructive method, meaning it will affect the original object referenced
by both `value` and `s`, and will append the String `"xyz"` to the end of the
string referenced by `value` and `s`. On `line 3`, `value` is reassigned to the
return value of `value` having the `upcase` method called on it. Because `value`
is being reassigned, it no longer points to the same space in memory as `s`, and
and now no longer points the same space in memory; `s` will not be affected by
this method call. On `line 4` we call the method `concat` on `value`, passing in
the String `"!"` as an argument. This method is destructive, but because `value`
was reassigned, the changes to `value` will not be reflected with `s`. `s` will
have the value of `"helloxyz"` and `t` will have a value of `"HELLOXYZ!"`. This
code will have no output and a return of `"HELLOXYZ!"` as `t = fix(s)` was the
last evaluated expression. This displays the concept of object mutability and
object passing/pass by reference vs pass by value.

=end