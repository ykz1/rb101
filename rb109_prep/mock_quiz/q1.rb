greeting = 'Hello'

loop do
  greeting = 'Hi'
  break
end

puts greeting

# Question Prompt:
# Examine the code below. The last line outputs the string 'Hi' rather than the string 'Hello'. Explain what is happening here and identify the underlying principle that this demonstrates.

# Answer below

=begin

First, the local variable `greeting` is assigned to the string `'Hello'`. Next, a `loop` method is invoked with a `do..end` block, which creates its own inner scope. From within the block, the outer scope local variable `greeting` is accessible, and is reassigned to a new string `'Hi'` on line 4. The `loop` iterates one time before terminating with the `break` statement on line 5. Finally, the `puts` method is invoked on line 8, with `greeting`'s value, which is now `'Hi'`, passed as an argument—this is what ultimately gets printed to the screen. 

This block of code demonstrates that local variables initialized in an outer scope are accessible within an inner scope.

=end
