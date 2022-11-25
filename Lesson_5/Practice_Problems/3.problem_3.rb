=begin

Practice Problem 3

For each of these collection objects demonstrate how you would reference the
letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

=end

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1[2][1][-1]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2[-1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].key(0)

=begin

Note: the Hash#key method returns the key of an occurrence of a given value. A
couple of things to note when using this method:

If more than one key has the same value the method returns the key for the first
occurrence of that value. If the requested value does not exist in the hash then
nil is returned. For this example you could also have done the following: 

hsh2[:third].keys[0] # => 'g'

Although this looks very similar to the initial solution, Hash#key and Hash#keys
are actually two completely different methods. Hash#key returns a single key
based on a value passed to the method. Hash#keys returns an array of all the
keys in the hash, and the [0] is then referencing the object at index 0 of that
returned array.
=end