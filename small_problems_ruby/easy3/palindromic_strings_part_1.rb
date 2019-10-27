# their solution compared string and string.reverse
def palindrome?(str_or_ary)
  ary = str_or_ary.class == String ? str_or_ary.chars : str_or_ary
  stop = ary.length.even? ? 0 : 1
  (return false if ary.shift != ary.pop) while ary.length > stop
  true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts palindrome?([1, 2, 3, 4, 5, 6]) == false
puts palindrome?([1, 2, 3, 3, 2, 1]) == true
puts palindrome?([1, 2, 3, 2, 1]) == true
