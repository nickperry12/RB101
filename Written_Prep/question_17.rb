def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'
puts test(test_str)
puts test_str

=begin

What does the following code return? What does it output? Why? What concept does
it demonstrate?

The following code will return `nil` because the last evaluated expression was
`puts test_str`, and `puts` always returns `nil`. The code will output `"Written
Assessment"`. On `line 6` we initialize local variable `test_str` to the String
object `"Written Assessment"`. On `lines 1-4` the `test` method is defined with
a single parameter named `str`. Within the method definition, on `line 2` `str`
is reassigned to the returned value of `str` + `"!"`, and on `line 3` `str` has
the destructive method `downcase!` called on it, converting all uppercase
characters to lowercase. However, because `str` is reassignedon `line 2`, it no
longer points to the same space in memory it originally did. That's why when
`test_str` is passed in as an argument to `test`, the object it references
remains unchanged and will output `"Written Assessment"`. This demonstrates the
concept of pass by reference vs pass by value.


=end