=begin

examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

inputs:
string of one or more words

outputs:
string with words reversed that have 5 or more characters

algorithm:
split string into array of words
for each word in array
  if word.length >= 5
    reverse the word
join words in array into a string
return that string

=end


def reverse_words(str)
  words = str.split
  words.map! { |word| word.length >= 5 ? word.reverse : word }
  words.join(' ')
end

puts reverse_words('Professional')          == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School')         == 'hcnuaL loohcS'
