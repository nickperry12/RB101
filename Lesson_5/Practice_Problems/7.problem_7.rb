=begin

Practice Problem 7

Given this code, what would be the final values of a and b? Try to work this out
without running the code.

=end

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# my answer: a = 4, b = [3, 8]
# actual answer: a = 2, b = [3, 8]


=begin

The value of `a` didn't change because we are not referencing `a` at any point.
This code `arr[0] += 2` was modifying the array, `arr` not `a. In effect we are
assigning a new object at that index of the array so that instead of `arr[0]`
containing a it now contains 4 - we can check this by looking at the value of
arr:

arr # => [4, [3, 8]]

The value of b did change because b is an array and we are modifying that array
by assigning a new value at index 0 of that array.

=end