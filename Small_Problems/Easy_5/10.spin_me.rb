=begin

Spin Me Around In Circles

You are given a method named `spin_me` that takes a string as an argument and
returns a string that contains the same words, but with each word's characters
reversed. Given the method's implementation, will the returned string be the
same object as the one passed in as an argument or a different object?

P:

Restate the question:

Taking a look at the given example, will the returned string be the same object
(the same object id) as the one passed in or will it be different (a copy)?

Example:

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

Answer:

The returned string will be a copy of the original string. This is because the
original string that gets passed into the method has the `split` method called
onto it. `split` splits the string into substrings and returns an array. The
strings in the array are copies of objects in the original string

=end