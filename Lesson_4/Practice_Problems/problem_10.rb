=begin
Practice Problem 10

What is the return value of the following code? Why?
=end

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

=begin
The return value of the code will be a new array => [1, nil, nil]

Within the `if` statement, if the element passed into `num` as an argument is
greater than `1`, then the `puts num` statement gets executed, which returns nil.

If the element is not greater than `1`, num is returned. This is why the first
element in the new array is `1` (which is not greater than 1), and the last 
two elements are `nil` (2 and 3 are greater than 1, so the `puts` statement gets
executed).
=end