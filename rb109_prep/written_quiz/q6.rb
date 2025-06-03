# The code below is supposed to loop through array, printing each element on a new line. Instead, it raises an error. Why does this occur, and what does this demonstrate about local variables in Ruby?

# Answer:
=begin

The exception raised is "undefined local variable", because local variable `index` is not in scope when it is referenced on line 6. 

`index` was initialized on line 3 within the `{..}` block passed to method `times`'s invocation. This block creates an inner scope, and as a result this is the only place in our code where `index` is accessible. This demonstrates that local variables defined in an inner scope are not accessible to outer scopes.

To fix this, we can initialize `index` in our outer scope, which would make it accessible in subsequent inner scopes: both the `{..}` block passed to `times`'s invocation, as well as the `do..end` block passed to `loop`'s invocation. 

See revised code below:

=end

array = [0, 1, 2, 3, 4, 5]
index = ''

1.times { index = 0 }

loop do
  puts array[index]
  index += 1
  break if index >= array.length
end