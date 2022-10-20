greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The local variable [informal_greeting] is initialized to point to the same space in
# memory as the variable [greetings]. So when the [<<] is called onto [informal_greeting],
# it is mutating the object it is pointing to, which is the same object that variable
# [greetings] references. Therefore, any mutating methods called onto [informal_greeting]
# will be reflected with [greetings] as well