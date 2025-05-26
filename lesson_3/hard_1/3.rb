# Example A:

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

p "All three variables will remain their original values because the assignment of local variables in our method definition will not mutate the string variables passed to the method"

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Example B:

def mess_with_vars_b(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars_b(one, two, three)

p "Similarly here, the reassignment that happens in our method definition will not mutate the string variables passed to the method"

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Example C:

def mess_with_vars_c(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars_c(one, two, three)

p "This one is different, and our local variables will be mutated because #gsub! is a method which mutates its caller, and even though its callers are local variables within our method's definition which are different from the local variables outside of our method's definition, they point to the same underlying objects, which are mutated by #gsub!"

puts "one is: #{one}" # 'two'
puts "two is: #{two}" # 'three'
puts "three is: #{three}" # 'one'