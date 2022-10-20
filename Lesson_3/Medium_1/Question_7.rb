munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

p mess_with_demographics(munsters)

# The Family's data indeed got ransacked. The reason why is because it isn't
# the value of the object that is getting passed into the method, it's the
# object id. By passing in the [munsters] hash as an argument, Spot was passing
# in the object id. So any changes made to values in the method definition,
# permanently changed the values in the object id.