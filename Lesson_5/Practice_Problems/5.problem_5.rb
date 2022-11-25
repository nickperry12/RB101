=begin

**** STUDY FOR FURTHER UNDERSTANDING ON HOW TO SOVLE THIS PROBLEM ****

Practice Problem 5

Consider this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

Determine the total age of just the male members of the family.
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each_value do |value|
  if value["gender"] == "male"
    total_age += value["age"]
  end
end

p total_age

=begin

In this example, within each key-value pair in the outer hash the value is
itself a hash. When iterating through the outer hash, we need to access two
values from each inner hash.

Since we're not referencing the key (each family member's name) from the
key-value pairs in the outer hash, we can use Hash#each_value with a single
block parameter.

=end