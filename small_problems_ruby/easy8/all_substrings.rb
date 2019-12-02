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

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
