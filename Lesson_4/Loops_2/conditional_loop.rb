=begin

Conditional Loop

Write an if/else statement that executes some code if the process_the_loop
variable is true and some other code when process_the_loop is false.

Specifically:

When process_the_loop is true, execute a loop that iterates exactly once and
prints The loop was processed during that iteration. When process_the_loop is
false, just print The loop wasn't processed!. Use the following code to
initialize process_the_loop. It will randomly assign the variable to either true
or false.

=end

process_the_loop = [true, false].sample

if process_the_loop == true
  loop do
    puts "The loop was processed during this iteration!"
    break
  end
elsif process_the_loop == false
  puts "The loop wasn't processed."
end