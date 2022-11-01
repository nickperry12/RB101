=begin

Say Hello
Modify the code below so "Hello!" is printed 5 times.

say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end

=end

counter = 0
say_hello = true

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter >= 5
end

=begin
Discussion

Loops are used regularly in Ruby, therefore, it's important to
understand how to control them based on the program's conditions. In this
exercise, the while loop is set to run based on the condition of say_hello.
Since say_hello was initialized as true, the loop will execute at least once.
Upon the first iteration, however, say_hello is set to false. Therefore, when
`while` evaluates the condition of `say_hello` on the second iteration, it won't
execute the block because `say_hello` equals false.

Now that we understand how this while loop works, we need to modify it to fit
the requirements. In this case, we need to only change say_hello to false if
we've said "Hello!" 5 times. We can accomplish this by adding a counter variable
and if condition. We need count to track the number of times the loop has
executed. Once count reaches 5, our if condition will evaluate to true.

We use Ruby's shorthand way of writing the if condition but it could also be
written like this:

`if count == 5 say_hello = false 
end`

Our solution works well, but there
are simpler ways of accomplishing the same thing.

5.times do puts 'Hello!'
end

Although using #times may be simpler and
lets you write less code, it's still important to understand the fundamentals of
how a method like #times actually works. Just keep in mind that there's
usually more than one way to accomplish a given task.
=end