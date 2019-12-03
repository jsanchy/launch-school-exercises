def twice(num)
  return num if double_number?(num)
  2 * num
end

def double_number?(num)
  num_str = num.to_s
  digit_count = num_str.size
  center_index = digit_count / 2
  left_side = num_str[0...center_index]
  right_side = num_str[center_index..-1]
  digit_count.even? && (left_side == right_side)
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
