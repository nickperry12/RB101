def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Here the results are flipped. The method now mutates the String object being passed
# into it, while the Array object is being reassigned to a new variable - [an_array_param],
# leaving [my_array] pointing to the original array ["pumpkins"]