=begin

First to Five

The following code increments number_a and number_b by either 0 or 1. loop is
used so that the variables can be incremented more than once, however, break
stops the loop after the first iteration. Use next to modify the code so that
the loop iterates until either number_a or number_b equals 5. Print "5 was
reached!" before breaking out of the loop.

=end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  # next unless number_a == 5 || number_b == 5
  # puts "5 has been reached!"
  # break
  # Further understanding using if/else:

  if number_a == 5 || number_b == 5
    puts "5 has been reached!"
    break
  else
    next
  end
end

=begin

Discussion

We can use next to skip the rest of the current iteration based on a condition.
Here, by placing next before #puts and break, we can skip to the next iteration
so they aren't processed until we stop skipping. We use an unless condition for
next that won't evaluate to true unless either number_a or number_b equal 5.
This lets us put whatever we want after next and not have to worry about it
being processed until next stops skipping.

=end