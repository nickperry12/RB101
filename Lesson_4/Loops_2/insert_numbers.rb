=begin

Modify the code below so that the user's input gets added to the
numbers array. Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
end
puts numbers

=end

numbers = []

loop do
  puts "Please enter a number to add to the collection:"
  number = gets.chomp.to_i
  numbers << number
  break if numbers.size == 5
end

p numbers

=begin

Discussion

When dealing with user input, it's likely the input will either be evaluated or
added to something. In this case, we're adding an integer to an array.
Array#push works well for this because it will take the value of input and add
it to the end of the numbers array, which is exactly what we need.

Now that we are handling the input properly, the next step is to stop the loop.
We can accomplish this by taking advantage of the Array#size method. #size
returns the number of elements contained in the caller. To stop the loop when
numbers contains 5 elements, we can simply add a break with an if numbers.size
== 5 condition.

=end