def century(year)
  century = (year - 1) / 100 + 1
  if [11, 12, 13].include?(century % 100)
    century.to_s + 'th'
  elsif century % 10 == 1
    century.to_s + 'st'
  elsif century % 10 == 2
    century.to_s + 'nd'
  elsif century % 10 == 3
    century.to_s + 'rd'
  else
    century.to_s + 'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
