=begin

examples:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

inputs:
string of words

output:
string with the order of the words reversed

algorithm:
split string into array of its words
reverse array
join array into a string
return reversed string

=end

def reverse_sentence(str)
  words = str.split
  words.reverse!
  words.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
