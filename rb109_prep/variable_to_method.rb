def mutate_argument(str)
  str << ' mutated!'
end

outer_str = 'is it?'

p outer_str

mutate_argument(outer_str)

p outer_str