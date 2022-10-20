advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("dino")
p advice.include?("import")

p advice.match?("dino")
p advice.match?("import")

p !!advice["dino"]