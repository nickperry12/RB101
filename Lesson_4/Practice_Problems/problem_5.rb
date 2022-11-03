=begin
Practice Problem 5

What does `shift` do in the following code? How can we find out?
=end

hash = { a: 'ant', b: 'bear' }
hash.shift

=begin
The `shift` method destructively removes the first key-value pair from the hash,
and returns a new array two element array containing the removed key-value pair.
This can be found in the Ruby documentation.

This code block will return => [:a, 'ant]
=end