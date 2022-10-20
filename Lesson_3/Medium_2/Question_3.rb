def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The code on line 10 will output "My string looks like this now: pumpkins". 
# This is because the paramter [a_string_param] doesn't mutate the object,
# but is instead reassigned a new value. [a_string_param] and [my_string] no
# longer point to the same object.
# The code on line 11 will output "My array looks like this now: [pumpkin, rutabaga]"
# The << operator mutates the array, meaning the changes will affect the original object.