def merge_sort(array)
  # recursive
  # middle_index = array.size / 2

  # left = array[0...middle_index]
  # right = array[middle_index..-1]

  # return merge(left, right) if left.size <= 1 && right.size <= 1
  # merge(merge_sort(left), merge_sort(right))

  # non-recursive
  array = array.map { |value| [value] }

  loop do
    result = []
    counter = 0

    loop do
      break if counter + 1 >= array.size

      result << merge(array[counter], array[counter + 1])
      counter += 2
    end

    array = array.size.odd? ? (result << array.last) : result
    break if array.size == 1
  end

  array[0]
end

def merge(arr1, arr2)
  result = []

  while !arr1.empty? && !arr2.empty?
    if arr1[0] <= arr2[0]
      result << arr1[0]
      arr1 = arr1[1..-1]
    else
      result << arr2[0]
      arr2 = arr2[1..-1]
    end
  end

  arr1.empty? ? result + arr2 : result + arr1
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
