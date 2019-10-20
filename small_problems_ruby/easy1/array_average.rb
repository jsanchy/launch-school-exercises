=begin

examples:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

inputs:
non-empty array of positive integers

output:
average of the numbers in the input array

algorithm:
create variable to keep track of sum, intialize to 0
loop through input array
  add element to sum
divide sum by array.length to get average
return average

=end

def average(ints)
  sum = 0
  ints.each { |int| sum += int }
  sum / ints.length
end

def average_float(ints)
  sum = 0
  ints.each { |int| sum += int }
  sum.to_f / ints.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average_float([1, 2]) == 1.5