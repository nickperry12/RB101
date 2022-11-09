=begin
Practice Problem 5

In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Find the index of the first name that starts with "Be"
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.rindex { |element| element.include?('Be')}
p flintstones.index { |name| name[0, 2] == 'Be'}
p flintstones.find_index { |name| name.include?('Be')}

=begin
We have 3 solutions we can use here

The first solution uses the `rindex` method which takes a block. Calling this
method on the `flintstones` array returns the index of the last element that
`object == element`. In this case, our criteria is that the element includes
the string object `Be`. The last element to meet this criteria is returned,
in this case the string `Betty` that is at index 3.

The second solution uses the `index` method which returns the index of a
specified element. We called it on the `flintstones` array, and within the
block it takes, we specifiy we are searching for an element who's first index
and second index == 'Be'. The index returned is 3.

The third solution we use the `find_index` method which takes a block. We call
it on the `flintstones` array, and within the block we set the criteria to
return the index of any element that includes `'Be'` within the value. The
index returned is 3.
=end