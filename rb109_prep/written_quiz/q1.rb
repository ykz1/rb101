# Examine the code below. Given that each in this context is a method invocation, what structure does do...end define? With reference to this structure, explain why line 7 raises an exception.

# Without altering any of the existing lines of code, how could you add one line of code so that the final line outputs 4 to the screen? Explain why the final line outputs 4 to the screen after that adjustment is made.


# My Answer:
=begin
Given that each ins this context is a method invocation, the do..end structure defines a block which creates its own inner scope. In Ruby, variables defined in an outer scope are accessible to an inner scope, but not vice versa. As a result, the local variable a defined on line 4 is only accessible within the do..end block passed to the method each's invocation. The exception raised on line 7 is a result of this: local variable a is not in scope outside of the do..end block.

Below is one way of adding one line of code such that the final line outputs 4 to the screen. This works because we are now initializing local variable a outside of the do..end block, and each time we reassign a to the value of variable x, we are accessing and reassigning the same variable as defined in our outer scope.
=end

arr = [1, 2, 3, 4]

a = 0

arr.each do |x|
  a = x
end

puts a

