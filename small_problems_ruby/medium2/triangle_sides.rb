def triangle(s_1, s_2, s_3)
  sides = [s_1, s_2, s_3]

  case
  when sides.include?(0) || (sides.min(2).reduce(:+) <= sides.max)
    :invalid
  when s_1 == s_2 && s_1 == s_3
    :equilateral
  when s_1 == s_2 || s_1 == s_3 || s_2 == s_3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
