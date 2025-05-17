=begin

Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

what is != and where should you use it?
A: Does not equal, to be used in conditional evaluations

put ! before something, like !user_name
A: Negate the truthiness of an expression, can be used to find the negative boolean of an expression and also to make it clear that we are looking to use the boolean evaluation of an expression.

put ! after something, like words.uniq!
A: Do this when naming methods to make it more clear that the method has significant side effects, usually used to convey that the calling object will be mutated by the method.

put ? before something
A: This will raise an error.

put ? after something
A: Do this when naming methods to make it more clear that the method should return a boolean value.

put !! before something, like !!user_name
A: Do this to turn an expression into a boolean value to be used in conditional evaluations.

=end