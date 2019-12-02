def fizzbuzz(first, last)
  puts (first..last).to_a.map { |num| fizzbuzz_value(num) }.join(', ')
end

def fizzbuzz_value(number)
  if number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number
  end
end

print 'Enter first number: '
first = gets.chomp.to_i
print 'Enter last number: '
last = gets.chomp.to_i
fizzbuzz(first, last)
