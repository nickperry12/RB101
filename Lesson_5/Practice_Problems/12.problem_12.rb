=begin

Practice Problem 12

Given the following data structure, and without using the Array#to_h method,
write some code that will return a hash where the key is the first item in each
sub array and the value is the second item.
=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}


arr.each_with_object({}) do |item, hash|
  hash[item[0]] = item[1]
  p hash
end

=begin

Although this task may at first seem complicated because the collection contains
different object types, sometimes nested three levels deep, you only really have
to work at the initial sub-level in order to reach a solution. Remember that any
Ruby object can be a hash key and any Ruby object can be a hash value.

=end