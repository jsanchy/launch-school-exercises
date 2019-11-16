def multisum(max)
  multiples = (1..max).select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  multiples.reduce(&:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
