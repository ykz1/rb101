def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"  # assignment, does not mutate object passed
  an_array_param << "rutabaga"  # push method will mutate the underlying array object passed
end

my_string = "pumpkins"
my_array = ["pumpkins"]

tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"  # still 'pumpkins'
puts "My array looks like this now: #{my_array}"  # ["pumpkins", "rutabaga"]

# In order to 1) not mutate either argument, and still 2) change the values of our two variables, we need to...
# 1. Change our method to not use mutating methods, i.e. no side effects
# 2. Have our method provide meaningful return values
# 3. Set our variables (my_string and my_array) to the new values returned by our method
# See below:

def predictable_method(str_param, arr_param)
  str_param += "rutabaga"
  arr_param += ["rutabaga"]

  return str_param, arr_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = predictable_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"  # 'pumpkinsratabaga''
puts "My array looks like this now: #{my_array}"  # ["pumpkins", "rutabaga"]