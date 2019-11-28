LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def letter_case_count(string)
  case_counts =
    {
      lowercase: 0,
      uppercase: 0,
      neither: 0
    }

  case_counts[:lowercase] = string.chars.reduce(0) do |count, char|
    if LOWER.include?(char)
      count += 1
    else
      count
    end
  end
  case_counts[:uppercase] = string.chars.reduce(0) do |count, char|
    if UPPER.include?(char)
      count += 1
    else
      count
    end
  end
  case_counts[:neither] = string.length - case_counts[:lowercase] - case_counts[:uppercase]
  case_counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
