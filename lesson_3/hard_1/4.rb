def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

def dot_separated_ip_address_2?(input_string)
  segments = input_string.split(".")
  return false unless segments.size == 4
  segments.each { |segment| return false unless is_an_ip_number?(segment) }
  true
end


