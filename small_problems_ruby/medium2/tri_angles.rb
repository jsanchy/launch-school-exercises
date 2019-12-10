def triangle(side1, side2, side3)
  angles = [side1, side2, side3]
  largest_angle = angles.max
  
  case
  when angles.include?(0) || angles.reduce(&:+) != 180
    :invalid
  when largest_angle < 90
    :acute
  when largest_angle == 90
    :right
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
