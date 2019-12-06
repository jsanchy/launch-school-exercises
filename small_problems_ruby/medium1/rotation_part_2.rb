def rotate_rightmost_digits(num, n)
  digits_arr = num.to_s.chars
  # The rest can be abbreviated to:
  # digits_arr[-n..-1] = rotate_array(digits_arr[-n..-1])
  # digits_arr.join.to_i
  first_part = digits_arr[0...-n]
  last_n_digits = digits_arr[-n..-1]
  rotated = first_part + rotate_array(last_n_digits)
  rotated.join.to_i
end

def rotate_array(arr)
  if arr.empty? then []
  elsif arr.size == 1 then [arr[0]]
  else arr[1..-1] + [arr[0]]
  end
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
