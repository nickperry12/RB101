=begin
Loop on Command
Modify the code below so the loop stops iterating when the user inputs 'yes'.

Copy Code
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
end
=end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes" || answer == "y"
end

=begin

Discussion
This is a practical example of how a loop can be used to retrieve and
handle user input. In the initial code, the loop continued iterating regardless
of the input's value. To change that, we add break with an if condition.
The condition, in this case, needs to be answer == 'yes'. This tells break to only
execute if the input value is 'yes'.

We added a simple error message after break to demonstrate that break doesn't
have to be at the end of the loop to do its job. Also, providing an error message
can be useful in providing a better user experience when dealing with inputs.
=end