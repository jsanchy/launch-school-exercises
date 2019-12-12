def sum_square_difference(n)
  sum = 0
  square_sum = 0

  1.upto(n) do |counter|
    sum += counter
    square_sum += counter ** 2
  end

  sum ** 2 - square_sum
end

p sum_square_difference(3) == 22
  # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
