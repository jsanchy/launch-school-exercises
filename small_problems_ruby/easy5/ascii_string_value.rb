def ascii_value(input_str)
  input_str.chars.map { |char| char.ord }.reduce(0, &:+)
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
