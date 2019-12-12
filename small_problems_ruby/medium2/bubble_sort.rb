def bubble_sort!(arr)
  left_to_swap = arr.size
  loop do
    counter = 1
    loop do
      if arr[counter - 1] > arr[counter]
        arr[counter - 1], arr[counter] = arr[counter], arr[counter - 1]
        swapped = true
      end

      counter += 1
      break if counter == left_to_swap
    end

    left_to_swap -= 1
    break unless left_to_swap > 1
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
