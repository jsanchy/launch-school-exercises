def max_rotation(number)
  result = number.to_s
  counter = result.size
  loop do
    break if counter == 1
    result = rotate_rightmost_digits(result, counter)
    counter -= 1
  end
  result.to_i
end

def rotate_rightmost_digits(num_str, n)
  digits_arr = num_str.chars
  digits_arr[-n..-1] = rotate_array(digits_arr[-n..-1])
  digits_arr.join
end

def rotate_array(arr)
  if arr.empty? then []
  elsif arr.size == 1 then [arr[0]]
  else arr[1..-1] + [arr[0]]
  end
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(100) == 10
p max_rotation(101_001_000_100_001) == 1010010001001
