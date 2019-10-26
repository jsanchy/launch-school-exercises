SQMETERS_TO_SQFEET = 10.7639
SQMETERS_TO_SQCENTIMETERS = 10_000.0
SQFEET_TO_SQMETERS = 1.0 / SQMETERS_TO_SQFEET
SQFEET_TO_SQCENTIMETERS = SQFEET_TO_SQMETERS * SQMETERS_TO_SQCENTIMETERS
SQFEET_TO_SQINCHES = 144.0

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f
puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f

area_sqfeet = (length * width).round(2)
area_sqinches = (area_sqfeet * SQFEET_TO_SQINCHES).round(2)
area_sqcentimeters = (area_sqfeet * SQFEET_TO_SQCENTIMETERS).round(2)
puts "The area of the room is #{area_sqfeet} square feet (#{area_sqinches} " \
     "square inches, #{area_sqcentimeters} square centimeters)."
