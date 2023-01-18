=begin

Mutation

What will the following code print, and why? Don't run the code until you have
tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

On line 8, `array1` is initialized to an array of strings

On line 9, `array2` is initialized to an empty array

On line 10, the `#each` method is called on `array1` to iterate through the
array, and a block is passed in with the parameter `value`. Each element in
`array1` is passed to the block and bound to the parameter `value` creating
a local block variable. Within the block, the element bound `value` is
appended to `array2`

On line 11, `#each` is called on `array1` once again, with a block passed in
containing the parameter `value`. Within the block, the destructive method
`#upcase!` is called on `value` if the value starts with `C` or `S`. Any
elements that begin with those characters will be destructively upcased.

On line 12, we call the puts method on `array2`, which prints a string
representation of each element in the array to the screen. The output will be

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

This is because we are adding the elements within `array1` to `array2`, which
all point to the same space in memory. When the destructive method `#upcase!` is
called on the elements of `array1`, they will affect the elements in `array2` as
they refer to the same object.

=end