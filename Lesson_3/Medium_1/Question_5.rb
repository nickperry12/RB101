limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# the issue is variable scope. Local variables defined outside of a method scope
# are not available inside of it and vice versa. To make this code work, the
# local variable [limit] needs to be passed in as an argument.