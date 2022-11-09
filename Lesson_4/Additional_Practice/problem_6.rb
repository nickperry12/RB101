=begin
Practice Problem 6

Amend this array so that the names are all shortened to just the first three
characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map do |name|
  p name[0..2]
end

=begin
In our solution, we call the `map` method, which takes a block, to iterate
through the `flintstones` array and transform each element. The `slice` method
is called on each element in the array, returing the first characters at index 0
to 2 (the first three letters of the element).
=end