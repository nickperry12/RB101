a = 4

loop do 
  a = 5
  b = 3

  break
end

puts a
puts b

=begin
### Example 2

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 1` local variable `a` is initialized to the Integer object `4`. On
`line 3` the `loop` method is invoked passing in a `do..end` block. Within the
block, on `line 4` the variable `a` is being reassigned to the Interger `5`, and
on `line 5` local block variable `b` is initialized to the Integer `3`. On
`line 7` the keyword `break` is used to break out of the loop. On `line 10` and
`line 11` the `puts` method is invoked passing in `a` and `b` as arguments,
respectively. `puts a` will output `5`, while `puts b` will throw an error.
This happens because `b` was initialized within the block passed to the `loop`
method, and meaning it is only available within the inner scope of the block.
The concept here is local variable scope. 

=end