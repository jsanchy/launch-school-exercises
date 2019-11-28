def multiply_all_pairs(arr_1, arr_2)
  result = []
  arr_1.each do |val_1|
    arr_2.each do |val_2|
      result << val_1 * val_2
    end
  end
  result.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
