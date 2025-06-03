# Joey is a playing a game with his friends. They will all ask him a secret number that he has, but he can only say it to Bob. Unfortunately, currently he is saying number 2 to "Bob" instead of the actual secret number. Why is that? What concept does this demonstrate? How can you fix it so he can say the secret number to "Bob" instead of number 2?

# Answer:
=begin
The reason that Joey currently says number `2` to Bob is because of variable shadowing, which is the underlying concept that this code demonstrates. Variable shadowing is a behaviour in Ruby whereby a local variable defined in an outer scope that would otherwise be accessible by an inner scope becomes inaccessible because a parameter with the same name is passed as an argument to the inner scope's block. This is exactly what happens in our case when we named our parameter `num` in line 4 as part of the block passed to method `each`'s invocation. When we do this, the outer scope local variable `num` becomes inaccessible because any reference to `num` in the `do..end` block references the parameter variable `num`, which in this case iterates through the keys of hash variable `friends`.

This can be fixed by renaming our parameter on line 4 from `num` to something else, such as `friend_num`. See revised code below:

=end
num = "77"
friends = {1 => "Bill", 2 => "Bob", 3 => "Jake", 4 => "Aaron"}

friends.each do |friend_num, name|
  puts "#{name} wants a secret number"
  if name == "Bob"
    puts "'Ok', says Joey. Here is the secret number:"
    puts "#{num}"
  else
    puts "No way!"
  end
end