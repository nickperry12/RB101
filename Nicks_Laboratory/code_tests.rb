animal = "cat"
pet = animal
animal = "dog"

if pet == "cat"
  animal.upcase!
elsif animal.downcase == "dog"
  feline = pet
else
  new_pet = pet << animal
end

p feline.object_id # => 8
p new_pet.object_id # => 8
p animal.object_id # => 60
p pet.object_id # => 80

p animal
p pet
p new_pet
p feline