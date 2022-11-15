=begin

Mutation

What will the following code print, and why? Don't run the code until you have
tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

Notes:

`array1` is filled with string objects
`array2` is empty
We are iterating through `array1` and taking each element and appending it
to `array2`
Next, we are iterating through `array1` again, and calling the destructive
method `upcase!` on each value that starts with `C` or `S`
We are then outputting the elements of `array2` to the screen

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)

Answer:
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

The destructive method `upcase!` was called onto an element of `array1` if that
element started `C` or `S`. While `array1` and `array2` don't point to the same
space in memory, their elements do, because we appended the elements from
`array1` into `array2`, referencing the same object. When we call a destructive method
onto these elements, they will affect the elements in the other array. 
We are passing by reference when we append each element into `array2`.

Further exploration:

This can get us into trouble because any destructive methods we call onto an
element in one array will affect the other, even if we don't want it to. This
could potentially lead to unwanted bugs in your code. 

To avoid this, we could use non-destructive methods, or we could find a way to
assign each element in `array2` through pass by value instead of passing by
reference. Read the documentation on the methods you are using to see whether
that method is destructive or not, as not every method that is destructive will
have a (!) appended to it.

=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2