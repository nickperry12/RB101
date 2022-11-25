=begin

How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

=end

arr = ['10', '11', '9', '7', '8']

p arr.sort { |a,b| b.to_i <=> a.to_i}

=begin

Discussion:

Strings are sorted by comparing character to character. Because `"11"` has one
more character than "9", "9" is considered greater than `"11"`. In order to get
the desired result of the numerical strings being sorted by their numerical
value of greatest to lowest, we need to convert the string objects into integer
objects. We can do this by calling the `String#to_i` method on the local
variables `a` and `b` (which are scoped within the block). When each string is
passed into the block and bound to either variable, they are converted to an
integer and compared, and then sorted according to their numerical value.

=end