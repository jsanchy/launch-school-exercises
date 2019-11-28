def interleave(arr_1, arr_2)
  arr_1.zip(arr_2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
