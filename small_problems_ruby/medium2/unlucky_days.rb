require 'date'

def friday_13th(year)
  friday_13th_count = 0
  (1..12).each do |month|
    friday_13th_count += 1 if Date.new(year, month, 13).friday?
  end
  friday_13th_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# Further Exploration
def five_friday_months(year)
  five_friday_months = 0

  (1..12).each do |month|
    five_friday_months += 1 if five_fridays?(year, month)
  end

  five_friday_months
end

def five_fridays?(year, month)
  friday_count = 0

  date = Date.new(year, month, 1)
  loop do
    friday_count += 1 if date.friday?
    date = date.next_day
    break if date.month != month
  end

  friday_count == 5
end

p five_friday_months(2015) == 4
p five_friday_months(1986) == 4
p five_friday_months(2019) == 4
