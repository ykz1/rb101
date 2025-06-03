# What does it mean to say that a coding language is "pass by value" or "pass by reference"? Provide an example of when Ruby appears to be "pass by value" and when it appears to be "pass by reference".

# Answer:
=begin

A coding language which is "pass by value" will pass the value of a variable when the variable is used as an argument. This effectively leaves a variable's value intact and unchangeable after it is passed as an argument. C is an example of such a language.

In contrast, a coding language which is "pass by reference" will pass the reference (or memory address of the referenced underlying object) or a variable when used as an argument. As a result, mutation is possible whereby the underlying object is changed while our original variable still reference that same object which may have a new value. Ruby is pass-by-reference.

Most of the time, Ruby appears to be pass by reference. See example code below: when we pass `a` as an argument to our method `add_period`'s invocation, it is clear that we are passing a reference to the underlying string object that `a` points to, because we see that `a` references the same object ID before and after invocking `add_period`, but the value of that object is changed (mutated) by our method.


=end

def add_period(str)
  str << '.'
end

a = 'Hello'
p a, a.object_id

add_period(a)
p a, a.object_id

# Ruby sometimes also appears to be "pass by value" because variable reassignments within a method's definition does not affect the variable outside of the method definition. See example: We can see that local variable `str` shares the same value and object reference ID as local variable `b`, but when `str` is reassigned with an appended `'!'`, it then references a new string object while our original variable `a` still references the same object as before with an unchanged value.

def add_exclamation(str)
  p str, str.object_id
  str += '!'
  p str, str.object_id
end

b = 'Hello'
p b, b.object_id

add_exclamation(b)
p b, b.object_id
