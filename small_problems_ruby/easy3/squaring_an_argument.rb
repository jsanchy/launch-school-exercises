def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

def power(n, p)
  return 1 if p.zero?
  result = n
  1.upto(p - 1) { |_| result = multiply(result, n) }
  result
end

puts square(5) == 25
puts square(-8) == 64

puts power(2, 31)
