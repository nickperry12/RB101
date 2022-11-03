=begin
Practice Problem 8

How does `take` work? Is it destructive? How can we find out?
=end

arr = [1, 2, 3, 4, 5]
arr.take(2)

=begin
According to the Ruby documentation, `take` returns a new array containing
the first element `n` elementof self, where `n` is a non-negative Integer

In this statement `arr.take(2)`, the `take` method is passed the integer object
two as an argument. This will take the first two elements of the array and put
return them in a new array.

The return value of the statement is => [1, 2]
=end