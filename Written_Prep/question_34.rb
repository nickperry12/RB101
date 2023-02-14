# What does the following code return? What does it output? Why? What concept
# does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n|
  n + 1
end

p new_array

=begin

Local variable `arr` is initialized on `line 4` to an Array object containing
10 elements, all of them being Integers. On `line 6` local variable `new_arr` is
initialized to the return value of the invocation of the `#select` method on
`arr`. With the invocation of the `#select` method, a `do..end` block is passed
in with the parmeter `n`. Each element within `arr` is passed into the block and
binds to `n` creating a local block variable.

The `#select` method returns each element from the Array it is called on for
which the block returns a truthy value. Within the block, `n` has the `#+`
called on it, passing in the Integer `1` as an argument; this will increment
each Integer value referenced by `n` by `1`. Each iteration of the block will
return a truthy value, as everything aside from the boolean `false` and `nil`
will have a truthy value. The returned array that will be assigned to `new_arr`
is `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. The reason it won't be the result of
`n + 1` is because `#select` selects the elements for which the block returns a
truthy value, it doesn't perform transformation. 

On `line 10` the `p` method is invoked passing in `new_arr` as an argument,
outputting `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. This demonstrates the concept of
iterating using the `#select` method. Because all iterations of the passed in
block returned a truthy value, all elements from `arr` are selected and returned
in array referenced by `new_arr`. 



=end