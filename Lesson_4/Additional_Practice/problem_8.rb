=begin
Practice Problem 8

What happens when we modify an array while we are iterating over it? What would
be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin
The `each` method iterates through the array, and calls the `p` method on each
element in the array, printing that element to the screen. The `shift` method
is then called onto `numbers` with `1` passed in as an argument, removing the
first `n` (in this case `n` = 1) elements. `1` is printed to the screen and `1`
is removed from the `numbers` array (shift is destructive so this affects the
original array). 

Our original array now looks like this: [2, 3, 4], and `each` now begins the
second iteration starting at index 1. The integer `3` is now at index 1, so 3
is printed to the screen. `shift` once again permanently removes the first
element in the array - the integer `2`. The `numbers` array is now
[3, 4]. On the third iteration, `each` iterates over index 2, which no longer
has a value. This causes the block to cease execution.

Because only the first 2 iterations had any values printed to the screen before
`each` stoped iterating, our output is:
1
3
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin
In this code snippet, we are iterating over the array `numbers` with the `each`
method. Each element is passed as an argument into the block, and is assigned
to the parameter `number`.

On our first iteration, `p number` is called within the block, printing the
element to the screen. The `pop` method is then called onto numbers, with `1`
being passed to `pop` as an argument. When `pop` is passed a non-negative
integer, it removes the `n` trailing elements from the array its called on.
On the first iteration, the number `4` is removed from `numbers`. This
method is destructive.

On our second iteration, `numbers` is now [1, 2, 3]. `p` is called on the
argument `number` once again, and prints the integer `2`. `pop` now removes
the integer `3` from `numbers`. On the third iteration, `each` is now
supposed to iterate over index 2, which is no longer there due to `pop`
removing that element in the previous iteration. This causes `each` to cease
execution. Our output is:
1
2
=end