=begin
SOURCE:

EXTRACT PROBLEM:

EXAMPLE:

INPUT:

OUPUT:

EXPERIMENT/EDGE:

DATA STRUCTURE:

ALGORITHM:

Understand the problem
Set up your test cases
Describe your inputs, outputs, and data structures
Describe your algorithm
Begin coding
Go back to previous steps when necessary
=end

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

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1
    integer = -integer
    sign = '-'
  when 1
    sign = '+'
  else
    sign = ''
  end
  sign + integer_to_string(integer)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
