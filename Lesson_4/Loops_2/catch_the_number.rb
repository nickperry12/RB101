=begin

Catch the number

Modify the following code so that the loop stops if number is equal to or
between 0 and 10.

loop do
  number = rand(100)
  puts number
end

=end

loop do
  number = rand(100)
  puts number
  break if (0..10).include?(number)
end

=begin

Discussion

Inside the loop, we're assigning a random integer to number upon each iteration.
Our goal for this exercise is to create a condition that stops the loop if
number is equal to or between 0 and 10. There are a couple ways we could have
implemented this, however, we chose to use the Comparable#between? method.
#between? takes two arguments and returns a boolean, true or false, if the
caller's value is between the two integers provided. In this case, we use it in
an if condition that will execute break when #between? returns true.

=end
