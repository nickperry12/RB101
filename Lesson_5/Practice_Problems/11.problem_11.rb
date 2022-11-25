=begin

Practice Problem 11

Given the following data structure use a combination of methods, including
either the select or reject method, to return a new array identical in structure
to the original but containing only the integers that are multiples of 3.
=end

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

# Should return => [[], [3, 12], [9], [15]]

arr.map do |sub_arr|
  sub_arr.select { |num| num % 3 == 0}
end

=begin

We know that we want to return a new array, so map is a good choice to call on
the original array. Technically you could use either select or reject for the
nested arrays as both would work, however choosing to use select makes the code
a bit more readable.

=end