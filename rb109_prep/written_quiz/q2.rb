# Examine the code below. What happens when the puts method is invoked on line 14? What happens when the puts method is invoked on line 21? Explain, in detail, why each of these lines of code output what they do, making specific reference to what happens on line 2, line 5, line 13 and lines 8 through 11. What does this example demonstrate about local variables in Ruby? Be specific about the scopes of the variables a, b, c and arr in your answer.

loop do
  a = 1

  loop do
    b = 2

    loop do
      c = 3
      a = b
      b = c
      c = 4

      arr = [a, b, c]
      puts arr
      break
    end

    break
  end

  puts arr
  break
end

# My answer
=begin
When `puts` is invoked on line 14, the array object referenced by variable `arr` is passed to `puts` as an argument. `arr`'s elements are variables `a`, `b`, and `c`. The respective values assigned to these variables are the numbers  `2`, `3`, and `4`; these are the numbers printed to the screen, each on its own line. 

`a` was initialized on line 2 with value 1, then on line 9 it was reassigned the value of `b`, which was `2`. Note that on line 9, the `a` referenced is the same local variable as the `a` initialized on line 2 because each `do..end` passed to `loop`'s invocation creates a new inner scope, and within each inner scope, all outer scope variables are accessible. For this same reason, on line 9, local variable `b` (which was initialized on line 5 in an outer scope) is accessible. Finally, `c` was initialized on line 8 with value `3`, and then the variable was reassigned on line 11 to value `4`, which is why `4` is printed for variable `c` on line 14.

When `puts` is invoked again on line 21, an exception is raised (undefined local variable). This is because: while local variables initialized in an outer scope are accessible in an inner scope, the reverse is not true. On line 21 we are trying to pass the object referenced by variable `arr` to out invocation of the `puts` method; however, there is no variable `arr` initialized in this scope. The local variable `arr` initialized in line 13 belongs to an innerscope, and is not accessible to our outer scope on line 21. 

This example demonstrates accessibility of variables between outer and inner scopes in Ruby; specifically that variables initialized in outer scopes are accessible by inner scopes (even nested ones), but not vice versa. For clarity, in this example:
- `a` was initialized in the outermost `loop` invocation, and is accessible to all `loop do..end` blocks
- `b` was initialized in the middle `loop do..end` block, and is not accessible to the outermost `loop do..end` block but is accessible to the other two
- `c` and `arr` were initialized in the innermost `loop do..end` block, and they are only accessible within that block

=end