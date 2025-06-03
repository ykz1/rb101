# What is the difference between a method which mutates its caller and a method which doesn't? Provide two examples from the Ruby core library of methods that mutate their caller, and two examples of methods which do not. How do you know if a method mutates its caller or not?


# Answer:

=begin

A method which mutates its caller will alter the underlying object that is referenced by its caller. A method which doesn't will leave the object referenced by its caller unchanged. It is also worth noting that if a mutating method is called on a variable, it is the object referenced by that variable which is mutated, and as a result any other variables which reference that same object will also be impacted.

Two examples of non-mutating methods:
1. `Array#map`: when invoked, the block passed to the method will be executed using each element of our calling array, but the result will be stored as elements of a new array which is returned.
2. `String#+`: when invoked, this reassignment method will reassign a new object to the calling variable. This can look like the caller was mutated, but the actual object referenced by the calling variable remains unchanged and instead the variable actually references a new object after the assignment. 

Two examples of mutating methods:
1. `Array#pop``: when invoked, the array object on which the method is called will have its last element removed (thereby mutating the caller)
2. `String#<<`: when invoked, the string object on which the method is called will be extended by the argument passed to the method. 

In Ruby, methods which mutates its caller often have `!` as part of the method name, but this is not always the case as demonstrated by the two examples above. We simply need to familiarize ourselves with each method and its behaviour to make sure we are correctly utilizing each method. Furthermore, when defining custom methods, we should follow best practice and append `!` to any methods which will mutate its caller.


=end