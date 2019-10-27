def palindromic_number?(num)
  num_str = num.to_s
  num_str == num_str.reverse
end

puts palindromic_number?(34_543) == true
puts palindromic_number?(123_210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
