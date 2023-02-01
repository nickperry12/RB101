a = [1, 3]
b = [2]
arr = [a, b]
a[1] = 5
p arr

=begin

What is `arr`? Why? What concept does it demonstrate?

On `line 1` local variable `a` is initialized to an Array object with the value
`[1, 3]`. On `line 2` local variable `b` is initialized to another Array object
with the value of `[2]`. On `line 3` local variable `arr` is initialized to an
Array object with the values being referenced by `a` and `b` being assigned to
elements at `index 0` and `index 1`. On `line 4`, `a` has the `Array#[]=` method
called on it, reassigning the element at `index 1` to the integer `5`. This
reassignment will be reflected in `arr` because the element at `index 0` of
`arr` is pointing to the same space in memory as `a`. On `line 5` we are
invoking the `p` method, passing in `arr` as an argument. This will output
`[[1, 5], [2]]`. This demonstrates the concept of object passing/pass by
reference vs pass by value. 

=end