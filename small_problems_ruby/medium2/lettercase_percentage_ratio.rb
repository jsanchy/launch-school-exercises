LOWER = ('a'..'z').to_a.join.freeze
UPPER = ('A'..'Z').to_a.join.freeze

def letter_percentages(str)
  total_count_f = str.size.to_f
  lower_count = str.count(LOWER)
  upper_count = str.count(UPPER)
  neither_count = total_count_f - lower_count - upper_count

  lowercase = (lower_count / total_count_f * 100).round(2)
  uppercase = (upper_count / total_count_f * 100).round(2)
  neither = (neither_count / total_count_f * 100).round(2)

  {
    lowercase: lowercase,
    uppercase: uppercase,
    neither: neither
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == { lowercase: 66.67, uppercase: 33.33, neither: 0.0}