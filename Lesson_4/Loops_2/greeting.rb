=begin

Greeting

Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

=end

def greeting
  puts "hello!"
end

number_of_greetings = 2

while number_of_greetings > 0 
  greeting
  number_of_greetings -= 1
end

=begin

Discussion

Using a loop makes it easy to do something multiple times. In this case, we want
to call the greeting method two times. To do this, we'll make our conditional
evaluate to true until number_of_greetings is less than 1. We control the value
of number_of_greetings by subtracting 1 on each iteration. Lastly, to print
"Hello!" we just need to invoke the greeting method provided to us.

=end