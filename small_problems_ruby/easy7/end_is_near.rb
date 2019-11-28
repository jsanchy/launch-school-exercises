def penultimate(string)
  return '' if string.empty?
  words = string.split
  return words[0] if words.length == 1
  idx = words.length.odd? ? words.length / 2 : words.length / 2 -1
  words[idx]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'School'
puts penultimate('') == ''
puts penultimate('last') == 'last'
puts penultimate('the last word') == 'last'
