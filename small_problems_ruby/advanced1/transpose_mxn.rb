def transpose(matrix)
  number_of_rows = matrix.size
  number_of_columns = matrix[0].size

  matrix_transpose = []
  number_of_columns.times do
    matrix_transpose << []
  end

  number_of_columns.times do |col|
    number_of_rows.times do |row|
      matrix_transpose[col] << matrix[row][col]
    end
  end

  matrix_transpose
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
