a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id # will have the same value as a but will be a different object
puts c.object_id # should point to the same object as a

