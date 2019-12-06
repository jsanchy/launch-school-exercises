def fibonacci(n)
  return 1 if n == 1 || n == 2
  prev = 1
  nth_fib = 1
  counter = 3
  loop do
    nth_fib, prev = nth_fib + prev, nth_fib
    counter += 1
    break if counter > n
  end
  nth_fib
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
