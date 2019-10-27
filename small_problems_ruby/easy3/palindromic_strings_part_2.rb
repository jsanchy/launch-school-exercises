def palindrome?(str_or_ary)
  ary = str_or_ary.class == String ? str_or_ary.chars : str_or_ary
  stop = ary.length.even? ? 0 : 1
  (return false if ary.shift != ary.pop) while ary.length > stop
  true
end

def real_palindrome?(str)
  alphanumeric = str.gsub(/\W/, '')
  palindrome?(alphanumeric.downcase)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
