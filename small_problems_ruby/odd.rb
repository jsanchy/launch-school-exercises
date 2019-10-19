=begin
  
examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

inputs:
integer

outputs:
boolean, true if integer is odd, false otherwise.

alorithm:
check if integer is of the form 2k+1 for integer k.
if yes, return true, otherwise, return false.

=end

def is_odd?(integer)
  integer % 2 == 1
end

def is_odd_using_remainder?(integer)
  integer.abs.remainder(2) == 1
end

puts "false? #{is_odd?(2)}"    # => false
puts "true? #{is_odd?(5)}"    # => true
puts "true? #{is_odd?(-17)}"  # => true
puts "false? #{is_odd?(-8)}"   # => false
puts "false? #{is_odd?(0)}"    # => false
puts "true? #{is_odd?(7)}"    # => true

puts "false? #{is_odd_using_remainder?(2)}"    # => false
puts "true? #{is_odd_using_remainder?(5)}"    # => true
puts "true? #{is_odd_using_remainder?(-17)}"  # => true
puts "false? #{is_odd_using_remainder?(-8)}"   # => false
puts "false? #{is_odd_using_remainder?(0)}"    # => false
puts "true? #{is_odd_using_remainder?(7)}"    # => true