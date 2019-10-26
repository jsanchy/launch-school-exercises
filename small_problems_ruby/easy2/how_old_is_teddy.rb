def print_age(name = 'Teddy')
  # Kernel#rand can be used with a range. Ex: rand(20..200)
  puts "#{name} is #{rand(181) + 20} years old!"
end

puts 'Enter a name:'
input = gets.chomp
input.empty? ? print_age : print_age(input)
