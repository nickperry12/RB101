def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

array = [1, 2, 3, 4, 5]

p rolling_buffer2(array, 5, 6)
p array
p rolling_buffer1(array, 5, 6)
p array

# the difference between the two methods besides the operator they chose to use is
# one method (rolling_buffer1) mutates the array we are passing to the method. 