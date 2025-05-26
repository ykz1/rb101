if false
  greeting = "hello world"
end

p greeting

# The if statement will always evaluate to false and its block will never be executed.
# However, even though the local variable inside the if clause will never be assigned the value 'hello world', Ruby will still initialize the variable with value 'nil'
# On line 5, when we reference greeting, the variable will return its initialization value of 'nil'
