=begin
Practice Problem 7

Create a hash that expresses the frequency with which each letter occurs in this
string:

statement = "The Flintstones Rock"

=end

statement = "The Flintstones Rock"

hash = {}

statement.each_char do |element|
  hash[element] = statement.count element
end

p hash

=begin
For this solution, we initialized an empty hash called `hash`. We then iterate
through the string object assigned to variable `statement`. The method
`each_char` iterates through each character in the string, and assigns the
current element to a key in `hash`. Each value is assigned the number of
instances of each element found in the string.
=end