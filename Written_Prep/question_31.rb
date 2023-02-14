def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')

puts names

# What does the following code return? What does it output? Why? What concept
# does it demonstrate?

=begin

Local variable `names` is initialized on `line 5` to an Array object with two
elements with the values of `'bob'`, and `'kim'`. On `line 6` the `add_name`
method is invoked, passing in two arguments; the first is the Array referenced
by `names` and a String with the value `'jim'`. On `lines 1-3` the `add_name`
method is defined with two parameters `arr` and `name`. 

When `names` and the String `'jim'` are passed in as arguments, they bind to the
parameters `arr` and `name` respectively, creating a local method variable used
within the method definition. On `line 3`, `arr` is reassigned to the return
value of the `#+` method being called on `arr`, passing in `[name]` as an
argument. `arr` and `names` are no longer pointing to the same space in memory
as a result of reassignment within the method definition.

On `line 6`, the method `puts` is invoked passing in `names` as an argumet, this
will output `'bob'` and `'kim'`, and return `nil` as `puts` always returns
`nil`. `names` remains unaffected due to the previously mentioned variable
reassignment that takes place within the `add_names` method. This demonstrates
the concept of object mutability/mutating methods.

=end