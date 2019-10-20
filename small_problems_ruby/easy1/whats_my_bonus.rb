=begin

examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

inputs:
positive integer, boolean

outputs:
integer - the bonus for a given salary. 1/2 salary if boolean true
0 if false

algorithm:
return 1/2 the input integer if boolean is true
return 0 if boolean is false

=end

def calculate_bonus(int, bool)
  bool ? int / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000