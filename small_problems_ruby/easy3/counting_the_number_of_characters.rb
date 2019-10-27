print 'Please write word or multiple words: '
input = gets.chomp
# Can use delete(' ') to remove spaces from string
no_spaces = input.split.join
char_count = no_spaces.length
puts "There are #{char_count} characters in \"#{input}\""
