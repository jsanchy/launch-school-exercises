def fibonacci_last(n)
  # cycle = calculate_last_digit_cycle
  # cycle[(n - 1) % 60]
  calculate_last_digit_cycle[(n - 1) % 60]
end

def calculate_last_digit_cycle
  first = [1, 1]
  counter = 3
  loop do
    return first if do_next_n_match?(first)
    first << slow_fibonacci_last(counter)
    counter += 1
  end
end

def do_next_n_match?(first_n)
  next_n = []
  counter = first_n.size + 1
  loop do
    return false unless first_n[0, next_n.size] == next_n
    return true if next_n.size == first_n.size
    next_n << slow_fibonacci_last(counter)
    counter += 1
  end
end

def slow_fibonacci_last(n)
  return 1 if n == 1 || n == 2
  prev = 1
  last_digit = 1
  counter  = 3
  loop do
    last_digit, prev = (last_digit + prev) % 10, last_digit
    counter += 1
    break if counter > n
  end
  last_digit
end

p fibonacci_last(15)                  # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)                  # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)                 # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)             # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007)           # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789)           # -> 4
p fibonacci_last(123_456_789_987_745) # -> 5
