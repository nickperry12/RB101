answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# The output of this code would be 34. This is because the variable answer is 
# being passed as an argument into the metho [mess_with_it]. This method
# does not mutate the local variable [answer] because we are passing 
# in the value of the variable, meaning the original object is copied and
# passed as an argument. 