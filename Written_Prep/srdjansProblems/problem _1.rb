a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b


=begin

Without running the code try to answer what will this code example output :

On `line 1` local variable `a` is initialized to the Integer `4`, and on `line
2`, local variable `b` is initialized to the Integer `2`. On `line 4` the
`times` method is invoked on the Integer `2` which will repeat everything in the
passed in block twice. The passed in block has a parameter named `a`. Within the
block, the parameter `a` becomes a local block variable, and gets initialized to
the Integer `5`. On `line 6`, the `puts` method is invoked, passing in local
block variable `a` as an argument. This will output `5` twice. On `line 9` the
`puts` method is invoked passing in outerscoped `a` as an argument, this will
output `4`. On `line 10` `puts` is invoked once again, this time passing in `b`
as an argument. This will output `2`. Outerscoped variable `a` remains unchanged
due to the concept of variable shadowing. Because the local block variable `a`
has the same name as the outer scope local variable `a`, access to the
outerscoped `a` will be blocked, and outerscoped `a` will remain pointing to the
same space in memory as a result.

=end