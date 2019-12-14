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

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
