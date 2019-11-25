def halvsies(array)
  first_size = array.length / 2
  first_size += 1 if array.length.odd?
  [array[0, first_size], array[first_size, array.length - first_size]]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
