def example(str)
  i = 3 
  loop do  
    puts str  
    i -= 1  
    break if i == 0 
  end
end

example('hello')

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

This code will output the String object `"hello"` 3 times and return `nil`. On
`line 10` we call the `example` method and pass in the String `"hello"` as an
argument. On `lines 1-8`, we define the `example` method that takes one
parameter named `str`. Within the method on `line 2`, the local method variable
`i` is initialized and assigned the Integer object `3`. On `line 3` the loop
method is invoked, passing in a `do..end` block. Within the block, the `puts`
method is called, passing in the object referenced by `str` as an argument. `i`
is then reassigned to the value referenced by `i` minus `1`. On `line 6`, the 
`break` method is used to break out of the loop, using the keyword `if` to set
the condition that `i` must be equal to `0` in order to break from the loop.
The concept demonstrated is variable scope. 