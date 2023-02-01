=begin
What does the following code return? What does it output? Why? What concept does
it demonstrate?

def fix(value) value.upcase! value.concat('!') value end

s = 'hello' t = fix(s)

What values do `s` and `t` have? Why?

On line 10 local variable `s` is initialized and assigned the string object
"hello" On line 11 local variable `t` is initialized and assigned the return
value of the `fix` method with var `s` being passed in as an argument, which
will the be bound to the parameter `value`

On line 4 - 8, method `fix` is defined, with the parameter value being passed
in. Within the method on line 5, `value` has the destructive method `upcase!`
called on it, which will mutate the object passed in, upcasing all the letters

On line 6, the `concat` method is called on `value`, appending "!" to the end of
it On line 7 value is returned

This code will return `value` because it's the last evaluated expression within
`fix` Nothing will be output to the screen by calling this method, because `p`,
`print` or `puts` methods are not being called

`s` will have the value of "HELLO!" `t` = "HELLO!"

When the `fix` method is called on `s` it is mutating the original object, `t`
will have the same value because it is pointing to the same space in memory

This displays the concept of variables as pointers, as well as non-mutating vs
mutating methods.




def fix(value) value.upcase! value.concat('!') value end

s = 'hello' t = fix(s) p s p t

we initialize local variable t to the return value of invoking the fix method
and passing in s as an argument.

we invoke the destructive upcase! method on the string object referenced by
value to mutate the object to all upcased letters. Then on line 3, we invoke the
destructive concat method on the object referenced by value and pass in string
literal  "!" as an argument, which appends the string "!" to the calling object.

=end