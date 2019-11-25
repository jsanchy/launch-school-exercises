VOWELS = %w(a e i o u A E I O U)

def remove_vowels(strings)
  strings.map do |string|
    no_vowels = ''
    counter = 0
    loop do
      no_vowels << string[counter] unless VOWELS.include?(string[counter])
      counter += 1
      break if counter == string.length
    end
    no_vowels
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
