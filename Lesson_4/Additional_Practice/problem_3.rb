=begin
Practice Problem 3

In the ages hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

Remove people with age 100 or older.
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |key, value| value >= 100}
p ages

=begin
Here we call the `delete_if` method on our hash. `delete_if` will remove
any key-value pair in the hash that meets the criteria set within the block.
=end