class Series
  def initialize(numbers_str)
    @numbers = numbers_str.chars.map(&:to_i)
  end

  def slices(count)
    raise ArgumentError if count > @numbers.size

    slices_arr = []
    idx = 0
    while idx + count <= @numbers.size
      slices_arr << @numbers[idx, count]
      idx += 1
    end
    slices_arr
  end
end
