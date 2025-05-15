def prompt(message)
  puts "=> #{message}"
end

def positive_number?(value)
  value.to_f > 0
end

prompt "Welcome to the loan calculator!"

while true
  prompt "Enter loan amount: "
  amount = gets.chomp
  break if positive_number?(amount)
  prompt "Invalid entry! Your loan amount must be a positive number."
end

amount = amount.to_f

while true
  prompt "Enter your annual interest rate in % ('5' = 5%): "
  apr = gets.chomp
  break if positive_number?(apr)
  prompt "Invalid entry! Your loan amount must be a positive number."
end

interest_monthly = apr.to_f / 100 / 12

while true
  prompt "Enter your loan duration, in months: "
  duration_months = gets.chomp
  break if positive_number?(duration_months)
end

duration_months = duration_months.to_f

prompt "Calculating..."

monthly_payment = amount * (interest_monthly / (1 - (1 + interest_monthly)**(-duration_months)))

prompt "Your monthly payment amount will be #{format('$%.2f', monthly_payment)}"