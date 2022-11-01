=begin
Loopception
The code below is an example of a nested loop. Both loops currently loop
infinitely. Modify the code so each loop stops after the first iteration.

Copy Code
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
  end
end

puts 'This is outside all loops.'
=end

loop do
  counter = 0
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

=begin
Discussion
Looping within a loop is not uncommon. Therefore, it's important to
understand how to avoid infinite loops and where to place break statements.
When it comes to nested loops, it can be difficult to clearly understand
what's going on. As you digest the code, focus on one loop at a time.

We begin by modifying the innermost block. This loop can be stopped by
placing break on the line following #puts. This forces the loop to iterate
only once. After we've fixed the innermost loop, our attention is now
focused on the parent loop. We modify this loop the same way we modified
the child loop: by placing break on the line following the end of the innermost loop.
=end