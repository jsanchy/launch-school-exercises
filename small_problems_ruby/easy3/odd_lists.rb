def oddities(ary)
  ary.select.with_index { |_, index| index.even? }
end

def oddities_v2(ary)
  odds = []
  i = 0
  while i < ary.length
    odds.push(ary[i])
    i += 2
  end
  odds
end

def oddities_v3(ary)
  odds = []
  i = 0
  while i < ary.length
    odds.push(ary[i]) if i.even?
    i += 1
  end
  odds
end

def evenities(ary)
  ary.select.with_index { |_, index| index.odd? }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(%w(abc def)) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts oddities_v2([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities_v2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities_v2(%w(abc def)) == ['abc']
puts oddities_v2([123]) == [123]
puts oddities_v2([]) == []

puts oddities_v3([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities_v3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities_v3(%w(abc def)) == ['abc']
puts oddities_v3([123]) == [123]
puts oddities_v3([]) == []

puts evenities([2, 3, 4, 5, 6]) == [3, 5]
puts evenities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts evenities(%w(abc def)) == ['def']
puts evenities([123]) == []
puts evenities([]) == []
