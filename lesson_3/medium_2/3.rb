def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"  # this is a re-assignment of our string_param_one variable and does not mutate the underlying object that was passed using the parameter
  string_param_two << "rutabaga"  # the #push method will mutate the underlying string object that was passed as an argument
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"  # "pumpkins" because it remains unchanged
puts "String_arg_two looks like this now: #{string_arg_two}"  # "pumpkinsrutabaga" because it was mutated in our method