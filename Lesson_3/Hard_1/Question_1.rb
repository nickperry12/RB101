if 1 + 1 == 2
  greeting = "hello world"
end

p greeting

# Because the local variable [greeting] is initialized within an [if] block, even
# if that block doesn't get executed, the variable will be initialized to nil. It is
# initialized to nil because in Ruby, everything that isn't [false] or [nil] is 
# considered truthy.