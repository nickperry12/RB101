=begin
Exclusive Or

The `||` operator returns a `truthy` value if either or both of its operands are
`truthy`. If both operands are `falsey`, it returns a `falsey` value. The `&&`
operator returns a `truthy` value if both of its operands are `truthy`, and a
`falsey` value if either operand is `falsey`. This works great until you need
only one of two conditions to be `truthy`, the so-called exclusive or.

In this exercise, you will write a method named `xor` that takes two arguments,
and returns `true` if exactly one of its arguments is `truthy`, false otherwise.
Note that we are looking for a boolean result instead of a `truthy/falsy` value
as returned by `||` and `&&`.

P:

We want to create a method that takes two arguments, and returns either `true`
or `false`. The method should evaluate both arguments, if one, and only one of
the arguments is `truthy`, the return value should be `true`. If more than one
is `truthy`, or if both arguments are `falsey`, it should return `false`.

Explicit Rules:
- The return should be either the boolean value `true` or `false`, not just a
`truthy` or `falsey` value.
- If neither argument has a `truthy` value, the method should return false
- Only return `true` if exactly one of the arguments is `truthy`

Implicit Rules:
- Can use any object for as an argument
- Can call methods on our arguments to return a `truthy` or `falsey` value



E:

xor?(5.even?, 4.even?) == true 
xor?(5.odd?, 4.odd?) == true 
xor?(5.odd?,4.even?) == false 
xor?(5.even?, 4.odd?) == false

D:
Input: any object
Output: boolean

A (High Level):

Create a method called `xor` that takes two arguments
- evaluate both arguments
- if one of the arguments returns a `truthy` value
  - return `true`
- if neither return a `truthy` value, return `false`

C:
=end

def xor?(arg_1, arg_2)
  if (arg_1 == true && arg_2 == false) || (arg_1 == false && arg_2 == true)
    true
  else
    false
  end
end

# p xor?(5.even?, 4.even?)
# p xor?(5.odd?, 4.odd?)
# p xor?(5.odd?,4.even?)
# p xor?(5.even?, 4.odd?)

p xor?(5.even?, 4.even?) == true 
p xor?(5.odd?, 4.odd?) == true 
p xor?(5.odd?,4.even?) == false 
p xor?(5.even?, 4.odd?) == false