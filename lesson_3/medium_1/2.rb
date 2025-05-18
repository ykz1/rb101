# puts "the value of 40 + 2 is " + (40 + 2)
# In the above line, we are adding or concatenating a string with an integer will result in a type error.
# We can fix by converting the resulting evaluation of our integer operation to string before concatenating with our sentence, see below:

puts "the value of 40 + 2 is " + (40 + 2).to_s

# Alternatively, we can use string interpolation to conduct our integer operation within the string (string interpolation automatically converts the evaluated expression to string):

puts "the value of 40 + 2 is #{40 + 2}"