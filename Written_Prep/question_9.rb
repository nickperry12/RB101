a = 4
b = 2
2.times do |a|
  a = 5
  puts a
end

puts a
puts b


=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 1` we are initializing local variable `a` to the Integer object `4`,
and on `line 2` we are initializing local variable `b` to the Integer `2`. We
are then calling the `times` method on the Integer `2` (causing the code within
the block to run twice), and pass in a `do..end` block with a parameter named
`a`. Within the block, on `line 4` the parameter `a` is assigned to the Integer
`5`, creating a local block variable. On `line 5` the `puts` method is invoked
and the value represented by `a` is passed in as an argument. This will output
`5` twice and return `2`, as the `times` method returns the object it was called
on. On `line 8` we invoke the `puts` method and pass local variable `a` as an
argument, outputting `4` and returning `nil`. It outputs `4` due to variable
shadowing; when we have a block parameter with the same name as an outer scoped
variable, it blocks access to the variable in the outer scope. Therefore when
`a` is passed as an argument to `puts` in the outer scope, it will output the
original object it was initialized to. 

=end