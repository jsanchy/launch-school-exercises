print 'What is the bill? '
bill = gets.to_f
print 'What is the tip percentage? '
tip_percentage = gets.to_f

tip = (bill * (tip_percentage / 100.0)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"
