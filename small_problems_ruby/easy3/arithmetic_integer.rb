OPERATIONS = [:+, :-, :*, :/, :%, :**].freeze

def prompt(message)
  puts "==> #{message}"
end

prompt 'Enter the first number:'
first = gets.chomp.to_i

second = nil
loop do
  prompt 'Enter the second number:'
  second = gets.chomp.to_i
  break if second != 0
  prompt 'Second number cannot be zero.'
end

OPERATIONS.each do |operation|
  prompt "#{first} #{operation} #{second} = #{first.send(operation, second)}"
end
