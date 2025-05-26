greetings = { a: 'hi' } # greetings is initialized as a hash object with one key-value pair
informal_greeting = greetings[:a] # informal_greeting is initialized to point to the same string object that our only value in greetings points to, a string object 'hi'
informal_greeting << ' there' # the underlying string object that informal_greeting is pointing to is mutated through the concatenation method and the string is now 'hi there'

puts informal_greeting  #  => "hi there"
puts greetings  # => { a: 'hi there' } because the underlying string object was mutated on line 3 when informal_greeting, which is another variable pointing at this object, was mutated with the string concatenation method.

