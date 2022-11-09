=begin
Practice Problem 4

Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

=end

ages = { "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

p ages.values.min

=begin
Our solution calls the `values` method onto our `ages` hash. This will return an
array filled with the values from each key. We then call the `min` method on
this array to return the smallest value in the array.
=end