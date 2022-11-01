=begin

Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  puts number
end

=end

number = 0

until number == 10
  number += 1
  if number.even?
    puts number
  else
    next
  end
end

=begin

Discussion

Sometimes when using a loop, you need to skip to the next iteration. That's
where next comes in. next lets you skip to the next iteration based on certain
conditions. In this exercise, we use next to skip to the next iteration when
number is odd. We can use the method Integer#odd? to evaluate number and return
true if it's an odd number.

=end