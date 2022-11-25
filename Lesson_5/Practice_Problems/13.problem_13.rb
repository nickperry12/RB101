=begin

Practice Problem 13

Given the following data structure, return a new array containing the same
sub-arrays as the original but ordered logically by only taking into
consideration the odd numbers they contain.
=end

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# Should return => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

arr.sort_by do |sub_arr|
  sub_arr.select do |item|
    item.odd?
  end
end

=begin

By calling the `select` method on the sub ararys, and using `odd?` as our
criterion, only odd numbers will be selected and sent to the outer block to be
sorted.

=end