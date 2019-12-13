def rotate90(matrix)
  transpose(matrix).map!(&:reverse)
end

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

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
