=begin

Practice Problem 9

Given this data structure, return a new array of the same structure but with the
sub arrays being ordered (alphabetically or numerically as appropriate) in
descending order.

=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |sub_arr|
  sub_arr.sort { |a,b| b <=> a }
end

p new_arr

=begin

From the problem description we know that we need to return a new array but with
the items in it transformed in some way, so map should hopefully be a fairly
obvious choice for the initial method to call on the array.

We also know that we want each sub-array to be ordered, so within the block that
we pass to map we can call sort on the sub-array for that iteration. Since we
want the sub-arrays sorted in reverse order we need to call it with a block,
within which we change the order of a and b.

=end