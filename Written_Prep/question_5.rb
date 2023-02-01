def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"
greetings(word)

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

This code snippet will output the Strings `"Hello"` and `"Goodbye"` and will
return `nil`. It returns `nil` because the last evalated expression is
`puts "Goodbye"`, and `puts` returns `nil`. It outputs both strings because
within the method definition on `lines 1-4`, the `puts` method is invoked twice,
with the first time having the object referenced by the parameter `str` passed
in as an argument, and the second `puts` call having the String `"Goodbye"`
passed in as an argument. The concept this demonstrates is variable scope. 