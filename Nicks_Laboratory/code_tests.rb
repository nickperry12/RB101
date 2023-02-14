array = [1, 'b', 'a', 2, 'c', 3]
result = []

counter = array.size - 1

until counter < 0
  result << array[counter]
  counter -= 1
end

p result