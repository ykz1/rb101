def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i.to_s == number
  # another option below with differences when handling numbers with whitespace mixed alphanumeric strings; accepts both as valid as long as numbers exist in the string
  # (number == '0') || (number.to_i != 0)
end

def operation_to_message(operator)
  message = case operator
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  message
end

name = ''
loop do
  prompt "What is your name?"
  name = gets.chomp

  if name.empty?
    prompt "Enter a valid name"
  else
    break
  end
end

prompt "Hello #{name}"

loop do # main loop
  num1 = ''

  loop do
    prompt "Enter number 1:"
    num1 = gets.chomp.to_i

    if valid_number?(num1)
      break
    else
      prompt "Invalid entry!"
    end
  end

  num2 = ''

  loop do
    prompt "Enter number 2:"
    num2 = gets.chomp.to_i

    if valid_number?(num2)
      break
    else
      prompt "Invalid Entry!"
    end
  end
  operation = ''
  loop do
    operator_prompt = <<-MSG
      What Operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG
    prompt operator_prompt
    operation = gets.chomp
    break if %w(1 2 3 4).include?(operation)
    prompt "Invalid entry!"
  end

  prompt "#{operation_to_message(operation)} your numbers..."

  result =  case operation
            when '1'
              num1 + num2
            when '2'
              num1 - num2
            when '3'
              num1 * num2
            when '4' # Add divide-by-zero validation
              num1.to_f / num2.to_f
            end

  prompt result

  prompt "Do you want to play again? ('y' / 'n')"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
