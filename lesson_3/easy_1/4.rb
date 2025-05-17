numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
p numbers
p "[1, 3, 4, 5] because delete_at(1) will delete the element at index 1, which is 2"

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers
p "[2, 3, 4, 5] because delete(1) will delete all elements matching the value 1"