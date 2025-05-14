puts "Enter number 1:"
num1 = gets.chomp.to_i  # Add validation

puts "Enter number 2:"
num2 = gets.chomp.to_i  # Add validation

puts "Enter type of operation: 'add', 'subtract', 'multiply', or 'divide'"
operation = gets.chomp

case operation
when 'add'
  puts num1 + num2
when 'subtract'
  puts num1 - num2
when 'multiply'
  puts num1 * num2
when 'divide'           # Add divide-by-zero validation
  puts num1.to_f / num2.to_f 
end
