a = 'name'
b = 'name'
c = 'name'

# Are these three local variables pointing to the same object?

=begin

These local variables are all initialized to a String with the value `"name"`,
however they only share the same value, they don't point to the space in memory.

=end

puts a.object_id
puts b.object_id
puts c.object_id

# And when we add these two lines of code... ?

a = c
b = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin

On `line 20`, local variable `a` is reassigned to point to the same space in
memory that local variable `c` points to. On `line 21` local variable `b` is
reassigned, and now points to the same space in memory as `a` and `c`. These
will all now be pointing to the same object.

=end

# What about now?
a = 5
b = 5
c = 5

=begin

All 3 local variables here have been reassigned to point to the Integer `5`,
however, they no longer point to the same object, they will just have the same
value.

=end

puts a.object_id
puts b.object_id
puts c.object_id