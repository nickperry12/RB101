def change_name(name)
  name = 'bob' # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 7` we are invoking the `puts` method and passing in local variable
`name` as an argument. On `line 6` the method `change_name` is invoked, passing
in the value referenced by `name`. On `line 5`, local variable `name` is
initialized to reference the String object `"jim"`. When `name` is passed into
the `change_name` method, it binds to the parameter `name`, creating a local
method variable that is scoped to inside the metho. Within the method
definition of `change_name` on `lines 1-3`, local method variable `name` is
reassigned to the String `"bob"`. Because reassignment is non-mutating, a copy
of the value referenced by the outerscope local variable `name` is passed in,
leaving the original object outerscoped `name` references unchanged. This means
that this code will output `"jim"` and return `nil`. It returns `nil` because
`puts name` is the last evaluated expression; `puts` always returns `nil`. 




=end