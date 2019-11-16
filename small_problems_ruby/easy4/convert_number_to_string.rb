DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(integer)
  number_str = ''
  loop do
    number_str.prepend(DIGITS[integer % 10])
    integer /= 10
    break if integer.zero?
  end
  number_str
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
