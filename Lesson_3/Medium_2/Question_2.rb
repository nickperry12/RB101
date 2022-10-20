a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# All three variables will have the same object id. That's because integers are immutable,
# so all three variables are referencing the same immutable integer 42 object.