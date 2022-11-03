=begin
Practice Problem 6

What is the return value of the following statement? Why?
=end

['ant', 'bear', 'caterpillar'].pop.size

=begin
The `pop` method removes the last element of the array and returns that
element. The `size` method is then called on the return value of `pop`.
`size` returns a numerical value of the size of the object is is called on.
In this statement, `size` is being called on the return value of `pop` which is
the string objected `"caterpillar"`.

This statement will return `11`
=end