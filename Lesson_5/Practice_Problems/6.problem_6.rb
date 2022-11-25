=begin

Practice Problem 6

One of the most frequently used real-world string properties is that of "string
substitution", where we take a hard-coded string and modify it with various
parameters from our program.

Given this previously seen family hash, print out the name, age and gender of
each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each_pair do |key, value|
  puts "#{key} is a #{value["age"]} year old #{value["gender"]}"
end

=begin

In this case we need to access both the key (each family member's name) and the
value (the inner hashes containing the details), so we need to use
Hash#each_pair or Hash#each with two block parameters.

=end