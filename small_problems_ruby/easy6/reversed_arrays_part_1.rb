def reverse!(array)
  new_array = []
  while array.length > 0
    new_array << array.pop
  end
  while new_array.length > 0
    array << new_array.shift
  end
  array
end

list = [1,2,3,4]
p result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) == []
puts list == []
