=begin

examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

inputs:
positive integer

outputs:
array containing digits of integer

algorithm:
convert to string
split string into array of its characters
convert each character in array to integer
return array of digits

=end


def digit_list(integer)
  integer.to_s.split("").map { |digit| digit.to_i }
  # can use str.chars to achieve same thing as str.split("")
  # can pass &:to_i as argument instead of the block { |x| x.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true