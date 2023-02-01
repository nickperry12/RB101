def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 8` we are invoking the `puts` method and pass in `a` as an argument.
`a` is initiaized on `line 5` to the Integer `3`. `puts a` will output `3`. On
`line 9` we are invoking the `puts` method once again and passing in `b` as an
argument. On `line 6` `b` is initialized to the return value of invocation of
the `plus` method, with `a` and `2` passed in as arguments. On `lines 1-3`, the
`plus` method is defined with two parameters named `x` and `y`. Within the
method `x` is reassigned to the return value of `x` + `y`. When we pass in `a`
and `2` as an argument to `plus`, the return value will be `5`, which is
assigned to `b` on `line 6`. `puts b` will output 5. This demonstrates the
concept of pass by reference vs pass by value. When `a` is passed in an argument
to `plus`, it is passing in a copy of the value of `a`, not the object itself.
This is why `a` remains unchanged.


=end