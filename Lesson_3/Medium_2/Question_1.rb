a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# local variable a and c will share the same object id. Local variable b will
# have the same value, but will still point to a different space in memory,
# therefore it will have a different object id. C has the same object id because it
# points the same space in memory as [a]. [c] was initialized to object referenced by [a]