limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

# result = fib(0, 1)
# puts "result is #{result}"

# The issue is that the local variable 'limit' within the fib method has not been initiatlized when it is referenced in line 4. The local variable 'limit' that is initiatlized and assigned the value 5 on line 1 is out of scope for the fib method.
# There are a few ways we can solve this:
# 1. We can move line 1 to be inside of the fib method definition, this would effectively "hard-code" the number of iterations of the fib sequence to 15 within our method.
# 2. We can pass the value assigned to local variable 'limit' (i.e. 15) to our fib method by adding a third parameter to the method definition. This is the better solution because it makes our method more flexible because it will allow users to change the limit value in the future without having to change a hard-coded value within the method's definition. Lastly, we can set this third parameter a default value of 15. This change has been made in fib2 below:

def fib2(first_num, second_num, limit=15)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib2(0, 1)
puts "result is #{result}"