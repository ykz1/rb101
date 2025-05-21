def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# Problem with above:
# will fail if input is 0 or negative
# we don't want a begin / end until loop

# Bonus question 1: the purposes of number % divisor == 0 is to check for the numbers that divide evenly into our number

# Bonus question 2: the purpose of line 8 above is to return the array of divisors

def factors2(number)
  return 'All non-zero numbers' if number == 0
  
  if number < 0 
    negative_flag = 1
    number *= -1
  end
  divisor = number
  factors = []
  until divisor == 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors.map! { |x| x * -1 } if negative_flag == 1
  factors

end
p factors2(0)
p factors2(10)
p factors2(-10)