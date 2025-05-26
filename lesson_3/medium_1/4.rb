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

# Differences:
# 1. The first method works directly with the array object provided (the object that the argument 'buffer' points to), and mutates that object. The second method does not mutate the array object provded (the object that argument 'input_array' points to)
# 2. The first method returns the array object provided, while the second method returns a new array object
# 3. Both methods have a meaningful return, but the first method also has meaningful side effects—specifically it mutates one of the variables passed as an argument

