def valid_integer?(input)
  input.match?(/^\d+$/)
end

def valid_operation?(input)
  input == 's' || input == 'p'
end

integer = nil

loop do
  puts 'Please enter an integer greater than 0:'
  integer = gets.chomp
  break if valid_integer?(integer)
  puts 'Invalid input.'
end

integer = integer.to_i

sum_or_product = nil

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp
  break if valid_operation?(sum_or_product)
  puts 'Invalid input.'
end

range = 1..integer

if sum_or_product == 's'
  operation_name = 'sum'
  operation = :+
elsif sum_or_product == 'p'
  operation_name = 'product'
  operation = :*
end

result = range.inject(&operation)

puts "The #{operation_name} of the integers between 1 and #{integer} " \
     "is #{result}."
