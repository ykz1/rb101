#Examine the code below. Locate and identify the following components of the code: the method definition, the method invocation, the argument, and the parameter. Make sure you include the actual code associated with each component in your answer.

#Why doesn't the code below print 4 to the screen when #puts is called on line 8? Is there a way to change the method definition so that 4 is printed by line 8?

# Answer below:

=begin

Method Definition: the method `double`'s definition is on lines 1 to 3.
```ruby
def double(num)
  num * 2
end

```

Method Invocation: the method `double` is invoked, or called, on line 6.
```ruby
double(int)
```

Argument: when method `double` is invoked on line 6, local variable `int` is passed to the method as an argument.
```ruby
double(int)
```


Parameter: when method `double` is defined on line 1, it is defined with one parameter which is named `num`.
```ruby
def double(num)
```

The code does not print `4` to the screen when `#puts` is called on line 8 primarily because numbers are immutable in Ruby and so there would be no way for `double`'s method definition to change the value of any number argument that is passed to it. Furthermore, even if we were working with another variable type (e.g. a string), `double` does not currently mutate the argument that is passed to it.

In order for line 8 to print `4`, we would need to change line 6 to reassign local variable `int` to the value returned by our method `double`'s invocation. See below for altered code:

=end

def double(num)
  num * 2
end

int = 2
int = double(int)

puts int #=> 2

