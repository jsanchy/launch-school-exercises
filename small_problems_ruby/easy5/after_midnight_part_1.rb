HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

def time_of_day(input_int)
  hours = (input_int / MINUTES_PER_HOUR) % HOURS_PER_DAY
  minutes = input_int % MINUTES_PER_HOUR
  hours_str = hours.to_s
  minutes_str = minutes.to_s
  [hours_str, minutes_str].each do |str|
    str.prepend('0') if str.length == 1
  end
  "#{hours_str}:#{minutes_str}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
