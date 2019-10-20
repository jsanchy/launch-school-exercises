=begin

examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

inputs:
positive integer

output:
sum of the input integer's digits

algorithm:
convert input integer to string
split string into array
convert each element of array back to integer
sum the digits in the array
return sum

=end

def sum(int)
  int.to_s.chars.map(&:to_i).reduce(&:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45