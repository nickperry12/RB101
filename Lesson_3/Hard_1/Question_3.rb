# code A

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# code B

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# code C

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# code A will output the following: 
# one is: one
# one is: two
# three is: three
# Within the method we are using reassignment, this does not affect the original object
# referenced by the local variables [one], [two], and [three]. Remember, variables 
# initialized outside of a method cannot be accessed from within the method and
# vice versa. So when we pass the local variables into the method as arguments, we are
# passing in the value. Within the method, the parameters are then reassigned to
# different objects. The original object the local variables point to remain unchanged

# code B will have the same output. This is due to the same reasons as before, the
# method uses reassignment, and the object pointed to by the local variables in the outer
# scope remain unchanged.

# code C will out be different. The output will be
# one is: two
# two is: three
# three is: one
# The difference between this method and the previous two is that it is using
# gsub! method, which is destructive. Meaning that it will mutate the object
# that the local variables are pointing to. This is the key difference between the three methods;
# the first two use reassignment, the third method mutates the objects passed into it. 