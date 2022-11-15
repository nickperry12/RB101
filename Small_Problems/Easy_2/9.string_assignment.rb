=begin
String Assignment

Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice' 
puts name, save_name

What does this code print out? Think about it for a moment before continuing.

If you said that code printed:

Alice
Bob

you are 100% correct, and the answer should come as no surprise. Now, let's look
at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

What does this print out? Can you explain these results?

Answer:

BOB
BOB

In this case, we are calling the `upcase!` method onto the variable `name`.
The (!) appended to `upcase` means that this method is destructive and will
mutate the caller. This means that when we call `upcase!` onto `name`, we are
changing the value at that space in memory, which the variable `save_name` also
points to. In the previous example, we were assigning a new string object to the
`name` variable, which does not affect the space in memory that `save_name` is
pointing to. This is an example of pass by reference and pass by value. The
first code snippet with reassignment is pass by value, and the second where the
caller is mutated, is pass by reference.

=end