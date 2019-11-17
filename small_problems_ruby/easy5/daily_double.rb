def crunch(string)
  no_doubles = ''
  string.each_char do |char|
    no_doubles << char unless no_doubles[-1] == char
  end
  no_doubles
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
