def multiply_list(arr_1, arr_2)
  # further exploration: one line solution using zip
  # arr_1.zip(arr_2).reduce([]) { |result, arr| result << arr[0] * arr[1] }
  result = []
  idx = 0
  loop do
    result << arr_1[idx] * arr_2[idx]
    idx += 1
    break if idx == arr_1.size
  end
  result
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
