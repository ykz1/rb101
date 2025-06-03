# Examine the code below. Identify what will happen when this code is executed and explain, in detail, why this occurs. Give two examples of how the code could be altered so that the final line outputs 15 to the screen.

# Answer:
=begin
When this code is executed, an exception will be raised (undefined local variable). The variable that is not defined is local variable `x` when it is referenced on line 4. 

Here is exactly what happens when we executed this code: local variable `x` is initialized on line 1 with the value `10`. On line 8, method `add_five` is invoked. `add_five`'s method definition is on lines 3 to 6. On line 4, local variable `sum` is initialized and the program attempts to assign the value of expression `x + 5` but encounters an error because `x` is not in scope. Method definitions have self-contained scope, and so the local variable `x` initialized on line 1 is not in scope when we try to reference it on line 4. 

Below are two examples which fixes this code:
=end

#1. We can change our `add_five` method definition to have a meaningful return value, and use that value in a reassignment of variable `x`. See below:

x = 10

def add_five(num)
  num + 5
end

x = add_five(x)
puts x


#2. We can make make `x` a global variable by renaming it to `$x`. This makes our variable accessible in all scopes, including the self-contained scope of `add_five`'s definition. As a result, the variable `$x` initialized at the beginning of our program is the same variable referenced in `add_five`'s method definition, and is also the same variable referenced on the last line of the program when passed to method `puts`.

$x = 10

def add_five
  sum = $x + 5
  $x = sum
end

add_five
puts $x