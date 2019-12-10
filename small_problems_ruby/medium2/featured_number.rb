def featured(int)
  if int.even?
    int += 1
  else
    int += 2
  end

  loop do
    return int if featured?(int)
    int += 2
    break if int.to_s.size > 10
  end

  'There is no possible number that fulfills those requirements.'
end

def featured?(int)
  int_str = int.to_s
  (int % 7 == 0) && int_str.chars.none? { |char| int_str.count(char) > 1 }
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
