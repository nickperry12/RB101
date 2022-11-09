=begin
Practice Problem 10

Given the `munsters` hash below:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

Modify the hash such that each member of the Munster family has an additional
"age_group" key that has one of three values describing the age group the family
member is in (kid, adult, or senior). Your solution should produce the hash
below

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |key, value|
  case value["age"]
  when 0...18
    value["age_group"] = "kid"
  when 18...64
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

p munsters

=begin
In this solution, we are calling the `map` method onto the `munsters` hash to
iterate and transform the hash. We use a case statement on each iteration to
check the value of each persons age. After checking the age, the `age_group` key
is added with the appropriate value for the age range that person falls in.
=end