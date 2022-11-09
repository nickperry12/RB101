=begin
Practice Problem 9

What is the return value of `map` in the following code? Why?
=end

{ a: 'ant', b: 'bear' }.map do |key,value|
  if value.size > 3
    value
  end
end

=begin
`map` is a transformative method, and always performs transformation based
on the return value of the block. In this code block, we have an `if` statement
where the criteria is the size of the argument `value` must be greater than 3.
If the size is greather than 3, then value is returned. On the first iteration,
the element 'ant' is evaluated, and will return false because the size is not
greater than 3. On the second iteraton, the element 'bear' is evaluated, and
will return `true` as the size is greater than 3. Because the criteria is met,
the `if` statement returns the argument `value`.

This code block will return a new collection, an array, with two elements.
=> [nil, 'bear']

`nil` is inserted as the first element, because the first iteration where `ant`
is evaluated to be less than 3, the `if` statement returns `nil`. This happens
when none of the conditions in an `if` statement evaluate to true.
=end