=begin

The code below shows an example of a for loop. Modify the code so that it only
outputs i if i is an odd number.

for i in 1..100
puts i
end

=end

for i in 1..100
  puts i if i.odd?
end

=begin

Discussion

for loops aren't used very often in Ruby, but it's still important to know how
they work. It's typically used to iterate over a collection. In this case, we
use it to iterate over the range 1..100, therefore, the i variable represents
the current iteration number. This makes it easy to count from 1 to 100 by
outputting the value of i.

For this exercise, we'd like to only output the odd numbers. We can do this by
adding an if statement to #puts. We can tell #puts to only output i if i is an
odd number by using the #odd? method on i.

=end