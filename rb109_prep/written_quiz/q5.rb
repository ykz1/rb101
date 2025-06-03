# The code below is supposed to output the last element of arr to the screen followed by the first element. However, the code on line 14 raises an error. Why does this happen? What is different about first_num compared to last_num, and what could we do between line 7 and line 9 of the program to fix this bug?


# Answer:
=begin

An exception is raised on line 14 because the local variable `first_num` is not in scope. This is because `first_num` was initialized on line 10 and assigned the value referenced by the first element of array `arr`, and it was initialized in an inner scope created by the `do..end` block passed to `loop`'s invocation on line 9. This means that `first_num` is only accessible within `loop`'s `do..end` block, and is not in scope on line 14.

`first_num` is different in that it was initialized on line 4 within the `for` loop spanning lines 3 to 5. Unlike `loop` inovcations, a `for` loop is not implemented as a method and and its `do..end` is not a true block with its own scope. In fact, we can ommit the `do` and our `for` loop would work just the same (done in edited code below).

Between lines 7 and 9, we can initialize `first_num` in our outer scope to make the program run smoothly. This would make `first_num` accessible in both our outer scope (e.g. when referencing it in on the last line of the code) as well as in our inner scope `do..end` block passed to `loop`'s invocation.

=end

arr = [1, 2, 3, 4]

for x in arr
  last_num = x
end

puts last_num

first_num = ''

loop do
  first_num = arr[0]
  break
end

puts first_num