def reverse(array)
  # return [] if array.empty?
  # reversed_arr = []
  # idx = -1
  # loop do
  #   reversed_arr << array[idx]
  #   break if idx == -array.length
  #   idx -= 1
  # end
  # reversed_arr

  array.reduce([]) { |reversed, element| reversed.unshift(element) }
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
