def find_fibonacci_index_by_length(number_of_digits)
  return 1 if number_of_digits == 1
  
  cache = [1, 1]
  n = 3
  loop do
    cache << fibonacci(n, cache)
    if cache.last.to_s.length == number_of_digits
      return n
    end
    n += 1
  end
end

def fibonacci(nth_index, cache)
  return 1 if [1, 2].include?(nth_index)
  return cache[nth_index - 1] if nth_index <= cache.length
  fibonacci(nth_index - 1, cache) + fibonacci(nth_index - 2, cache)
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
