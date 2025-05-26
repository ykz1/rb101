answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer) # method should return 50, which is assigned to new_answer; the variable 'answer' passed as an argument is not mutated because integers are immutable

p answer - 8 # should print 34 because answer remains assigned to value 42 