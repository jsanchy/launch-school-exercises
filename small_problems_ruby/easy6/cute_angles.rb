ANGLE_MODULUS = 360
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(angle)
  angle %= ANGLE_MODULUS
  degrees = angle.to_i

  return %(#{angle}°00'00") if angle == degrees

  left_over_minutes = mantissa(angle) * MINUTES_PER_DEGREE
  minutes = left_over_minutes.to_i

  return %(#{degrees}°#{int_to_str(minutes)}'00") if left_over_minutes == minutes

  left_over_seconds = mantissa(left_over_minutes) * SECONDS_PER_MINUTE
  seconds = left_over_seconds.to_i
  
  %(#{degrees}°#{int_to_str(minutes)}'#{int_to_str(seconds)}")
end

def mantissa(float)
  mantissa_str = float.to_s.split('.')[1]
  mantissa_str.to_i / (10.0 ** mantissa_str.length)
end

def int_to_str(int)
  str = int.to_s
  str = '0' + str if str.length == 1
  str
end

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   degrees_float %= 360
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
