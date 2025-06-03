#The code below defines a last_element method which takes an array as an argument and returns the last element of that array. However, after last_element is invoked with arr passed as an argument, arr no longer references [1, 5, 3, 7] and line 9 outputs false. Why does this happen? Rewrite last_element so that line 8 and line 9 both output true to the screen.

# Answer:
=begin

This happens because our invocation of `Array#pop` on line 2 will mutate its caller. In this case, the array object referenced by local variable `arr` is passed on line 8 as an argument to method `last_element`, and it will be mutated (will have its last element removed) when `Array#pop` is called on it in line 2.

To make the program have our desired outcome, we should rewrite line 2 and use a non-mutating method instead of pop. As a side note, methods in ruby will return the last line evaluated and so we can remove `return` to provide an implicit return. See below for the revised code:

=end

def last_element(arr)
  arr[-1]
end

arr = [1, 5, 3, 7]

puts last_element(arr) == 7 #=> true
puts arr == [1, 5, 3, 7] #=> false

# Note: Ensure that your version of last_element solves for the following test cases as well:

arr_1 = ['Hi', 'hello', 'YO']
arr_2 = [45, 9, 10, 22, 77, 8, 8]

puts last_element(arr_1) == 'YO' #=> true
puts arr_1 == ['Hi', 'hello', 'YO'] #=> true
puts last_element(arr_2) == 8 #=> true
puts arr_2 == [45, 9, 10, 22, 77, 8, 8] #=> true