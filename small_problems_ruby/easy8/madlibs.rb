def prompt(message)
  print '>> ' + message
end

def madlib
  prompt('Enter a noun: ')
  noun = gets.chomp
  prompt('Enter a verb: ')
  verb = gets.chomp
  prompt('Enter an adjective: ')
  adjective = gets.chomp
  prompt('Enter an adverb: ')
  adverb = gets.chomp
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

madlib
