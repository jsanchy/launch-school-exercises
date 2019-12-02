ALPHA_NUMS = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a

def substrings_at_start(string)
  count = 0
  string.chars.reduce([]) do |sub_strings, _|
    count += 1
    sub_strings << string.slice(0, count)
  end
end

def substrings(string)
  sub_strings = []
  0.upto(string.length - 1) do |count|
    sub_strings << substrings_at_start(string.slice(count..-1))
  end
  sub_strings.flatten
end

def to_alpha_num_str(string)
  string.chars.select { |char| ALPHA_NUMS.include?(char) }.join
end

def palindrome?(string)
  lower_alpha_num = to_alpha_num_str(string).downcase
  lower_alpha_num.size > 1 && lower_alpha_num == lower_alpha_num.reverse
end

def palindromes(string)
  substrings(string).select { |sub_str| palindrome?(sub_str) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
