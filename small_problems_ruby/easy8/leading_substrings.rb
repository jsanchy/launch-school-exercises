def substrings_at_start(string)
  count = 0
  string.chars.reduce([]) do |sub_strings, _|
    count += 1
    sub_strings << string.slice(0, count)
  end
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
