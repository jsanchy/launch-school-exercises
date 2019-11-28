LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def word_cap(string)
  string.split.map(&:capitalize).join(' ')

  # solution 1 without capitalize
  # words = string.split
  # words.map! do |word|
  #   capitalized = to_upper(word[0])
  #   1.upto(word.length - 1) do |i|
  #     capitalized << to_lower(word[i])
  #   end
  #   capitalized
  # end
  # words.join(' ')

  # solution 2 without capitalize
  # chars = string.chars
  # chars[0].upcase!
  # counter = 1
  # loop do
  #   if chars[counter - 1] == ' '
  #     chars[counter].upcase!
  #   else
  #     chars[counter].downcase!
  #   end
  #   counter += 1
  #   break if counter == chars.length
  # end
  # chars.join
end

# def to_upper(char)
#   return UPPER[LOWER.index(char)].slice(0) if LOWER.include?(char)
#   char
# end

# def to_lower(char)
#   return LOWER[UPPER.index(char)].slice(0) if UPPER.include?(char)
#   char
# end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
