a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# This time, all 3 variables will point to the same object because integers are immutable.