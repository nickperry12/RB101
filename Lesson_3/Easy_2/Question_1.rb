ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.has_key?("Spot")
p ages.include?("Herman")
p ages.include?("Spot")
p ages.key?("Spot")
p ages.key?("Grandpa")