a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 1` local variable `a` is initialized to the String object `"Bob"`. On
`line 3` we are calling the `times` method on the Integer object `5` and passing
in a `do..end` block, with one parameter named `x`. This will repeat the code
within the `do..end` block 5 times. Within the block on `line 4`, local variable
`a` is being reassigned to the String `"Bill"`. This code will output `"Bill"`
and will return the String object `"Bill"` because the `p` method returns the
value of the object it is called on. Because `a` is initialized outside of the
block, we are able to pass it in and have it accessible within the block,
allowing us to either manipulate the object referenced by `a`, or in this case,
reassign it to another value or object. The concept demonstrated is variable
scoping.

=end