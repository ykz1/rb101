# Question prompt:
=begin
In your own words, explain the concept of "Variables as Pointers". As part of your explanation, include a code snippet that accurately demonstrates this concept, and explain the effect it has within that example. (Note: do not copy and paste an explanation or code example from the course materials).
=end

# Answer:
=begin
In Ruby, variables act as pointers which references objects that have allocated locations in memory. This means that variables themselves do not store objects nor values; instead, they simply store the memory addresses of underlying objects which in turn store values. 

Because of this behaviour, there are a few important effects:

1. Multiple variables can reference the same underlying object. And if that object is mutable, then mutating the underlying object referenced while working with one such variable will also impact in all other variables pointing to the same underlying object. See example below: we begin by assigning three local variables `a`, `b`, and `c` to the same underlying string object with value 'Hello'. On line 27, we mutate the underlying object by concatenating `'!'` to the end of the string. Even though variable `a` was the caller of our `concat` method, we can see that the values assigned to variables `b` and `c` are also changed. This demonstrates that variables point to underlying objects, and if an object is mutated, then the all variables pointing to that object will change to reference new values.

2. In a similar vein, when variables are assigned the values of other variables, they are merely assigned the same object references, and they are not actually assigned to always equal another variable. In our example below, on line 34, we reassign local variable `a` to a new string object—even though both string objects have the same value `'Hello!'`, they are different underlying objects, which can be observed when we call the `object_id` method to inspect the ID of each object referenced. Subsequent to this reassignment, any changes to the objected referenced by variable `a` will no longer impact the values assigned to variables `b` or `c`.

=end

a = 'Hello'
b = a
c = a
p a, a.object_id
p b, b.object_id
p c, c.object_id

puts

a << '!'
p a, a.object_id
p b, b.object_id
p c, c.object_id

puts

a = 'Hello!'
p a, a.object_id
p b, b.object_id
p c, c.object_id

puts

a << '!'
p a, a.object_id
p b, b.object_id
p c, c.object_id
