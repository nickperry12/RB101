arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

On `line 11` the `puts` method is invoked, passing in a String object as an
argument: "Your total is #{sum}". `#{sum}` is string interpolation, which
returns the value referenced by `sum` and embeds it into the String. The code
will return `nil` and output "Your total is 10". On `line 1` we initialize the
local variable `arr` and assign it to an Array object [1, 2, 3, 4, 5]. On `line
2` the local variable `counter` is initialized to the Integer object `0` and on
`line 3` local variable `sum` is initialized to the Integer `0`.

On `line 5` we invoke the `loop` method and pass in a `do..end` block. Within
the block on `line 6`, sum is reassigned to the returned value of the current
object referenced by `sum` plus the value returned by calling the `Array#[]`
method on `arr` and passing in `counter` as an argument. On `line 7` `counter`
is then reassigned to the current value of `counter` plus 1. We use the keyword
`break` to break out of the loop if the value referenced by `counter` is equal
to the returned value of calling the `size` method on `arr`. The concept
demonstrated is variable scoping. 

=end