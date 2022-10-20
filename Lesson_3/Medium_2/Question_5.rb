def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  [a_string_param, an_array_param]
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Because we don't want our method to mutate the arguments being passed into,
# we know that we should probably use reassignment. We can use the [+=] operator
# within the method to achieve that, and then use the keyword [return] to
# have the result of that reassignment be the return value.
# From there, we reassign [my_string] and [my_array] variables to the
# return value from the [tricky_method] method.