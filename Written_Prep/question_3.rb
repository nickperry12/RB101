a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

The concept demonstrated is local variable scoping and variables as pointers. On
`line 1` we initialize local variable `a` to the Integer object `4`, and on
`line 2` we initialize local variable `b` to the Integer `2`. On `line 4` we
invoke the loop method, passing in a `do..end` block. Within the block on
`lines 5-7`, local block variable `c` is initialized to the Integer `3`, and `a`
is reassigned to the object referenced by `c`. The keyword `break` is used to
break out of the loop. On `line 10` and `line 11` the `puts` method is called,
passing in variables `a` and `c` as arguments. The first `puts` call will output
`4`, and the second `puts` call will throw an error because `c` was initialized
in inner block scope, making it unavailable in the outer scope.