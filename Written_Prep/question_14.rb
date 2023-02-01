a = [1, 2, 3, 3]
b = a
c = a.uniq


=begin

What are a, b, and c? What if the last line was `c = a.uniq!`?

On `line 1` we initiailize local variable `a` to an Array object containing
the integers `1, 2, 3, 3`. We then initialize `b` on `line 2` to point to the
same object at that space in memory. On `line 3` we initialize `c` to the return
value of the invocation of the `Array#uniq` method on the object referenced by
`a`. `a` and `b` are `[1, 2, 3, 3]` and `c` is `[1, 2, 3]`. If we were to call the
destructive `uniq!` method on `a`, all three variable (`a`,`b` and `c`) will all
be `[1, 2, 3]`, as the destructive `uniq!` method will mutate the calling object. 

=end