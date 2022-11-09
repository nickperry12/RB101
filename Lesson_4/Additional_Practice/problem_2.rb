=begin
Practice Problem 2

Add up all the ages from the munster family hash:

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

=end

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

p ages.values.inject(:+)

age_sum = 0

ages.each { |_, value| age_sum += value }
p age_sum

=begin
There are two ways we can solve this problem. In our first solution, we call
the values method on our hash, which retrieves all the values stored in the
hash. Next, we can the inject method on that return values from the `values`
method. 

`#inject` returns an object formed from operands via either a method named by
`symbol` or a block to which each operand has passed.

When we use the `:+` and pass it to `inject`, it will sum all of the elements
passed into it.

Our second solution calls the `each` method on the original hash. When `each` is
called onto a hash, there are two parameters, the first paramater all keys are
passed into, and the second parameter all values are passed into. We initialize
the variable `age_sum` and assign it a value of 0, and peform the operation
`age_sum = age_sum + value` and repeat this for each element passed in. The
total sum is then assigned to `age_sum`, and the original hash is returned.
=end