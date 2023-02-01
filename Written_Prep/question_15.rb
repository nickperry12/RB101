def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']

p test(a)
p a

=begin

What is `a`? What if we called `map!` instead of `map`?

On `line 5` we initialize `a` to an Array object containing the Strings `['a',
'b', 'c']`. On `line 7` we invoke the `test` method and pass in `a` as an
argument. The `test` method is defined on `lines 1-3` with one parameter named
`b`. Within the method, `b` has the `map` method called on it with a block
passed in, and one parameter named `letter`. This will return a new Array with
filled with the return values of each iteration of the block. `a` will remain
`['a', 'b', 'c']` because of the use of the non-destructive method `map`, which
means the `test` method as wel is non destructive, leaving the original object
unchanged. If `map!` was called, it would mutate the caller and the original
array would be changed to `["I like the letter: 'a'", "I like the letter: 'b'",
I like the letter: 'c'"]`

=end