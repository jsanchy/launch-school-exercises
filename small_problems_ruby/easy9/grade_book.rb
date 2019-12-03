def get_grade(score_1, score_2, score_3)
  avg = (score_1 + score_2 + score_3) / 3
  case avg
  when 0...60 then 'F'
  when 60...70 then 'D'
  when 70...80 then 'C'
  when 80...90 then 'B'
  else 'A'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
