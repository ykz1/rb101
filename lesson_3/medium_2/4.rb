def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'  # the concatenate method will mutate the referenced object
  an_array_param = ['pumpkins', 'rutabaga'] # this will re-assign our local variable to a new array object without making any change to the array that was passed as an argument to the method
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"  # "pumpkinsrutabaga" because mutated
puts "My array looks like this now: #{my_array}"  # ["pumpkins"] because not mutated

