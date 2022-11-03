=begin
Practice Problem 7

What is the block's return value in the following code? How is it determined?
Also, what is the return value of `any?` in this code and what does it output?
=end

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

=begin
The block returns the value of the last evaluated expression. In this block the
last expression evaluated is `num.odd?`. The block iterates through collection,
which in this case is an array, and checks to see if each element (an integer)
is odd. The return value will be a boolean. The last integer in the collection
is 3, which is odd, so the last boolean returned will be true.

The `any?` method looks at the truthiness of the block's return value. If the
block returns a `true` value for any element in the array, `any?` will return
true. In this statement, two elements are odd and will return a value of true,
so the return value of `any?` will be true.
=end