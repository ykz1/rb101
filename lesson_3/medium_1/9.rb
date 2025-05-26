def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# foo would return "yes" which is then passed as an argument to bar
# Bar then will check whether the parameter passed is "no", it is not because it is "yes" and as a result "no" will be returned