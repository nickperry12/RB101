# original code

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# graceful edit to code

def factors_two(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors_two(20)

# Bonus 1
# The purpose of this is to only include numbers in the array that are integers and
# not floats.

# Bonus 2
# The purpose is to make the return value of the method the array we are pushing
# numbers into. The method will return the last expression in the definition.