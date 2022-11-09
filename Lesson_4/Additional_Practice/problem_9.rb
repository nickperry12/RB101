=begin

As we have seen previously we can use some built-in string methods to change the
case of a string. A notably missing method is something provided in Rails, but
not in Ruby itself...`titleize`. This method in Ruby on Rails creates a string
that has each word capitalized as it would be in a title. For example, the
string:

words = "the flintstones rock"

would be:

words = "The Flintstones Rock"

Write your own version of the rails `titleize` implementation.
=end

words = "the flintstones rock"

p words.split.map { |word| word.capitalize }.join(' ')

=begin

In this solution, we called the `split` method onto the string objected assigned
to `words`. This separates each word and stores them into an array. We then call
the `map` method on the new array to iterate and transform each element. The
`capitalize` method is called onto the argument `word` which has each element of
the array passed into it on each iteration, capitalizing the first letter of each
element passed in. Once done iteration, the `join` method is called with (' ')
passed in as an argument, this joins each element in the array into a string,
with a space separating each word.

=end