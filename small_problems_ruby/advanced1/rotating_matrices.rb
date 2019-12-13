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

# Further Exploration

def rotate(matrix, degrees)
  case degrees
  when 90  then rotate90(matrix)
  when 180 then matrix.reverse.map(&:reverse)
  when 270 then transpose(matrix).reverse
  when 360 then matrix.map(&:clone)
  else          'Error: Please rotate only 90, 180, 270, or 360 degrees'
  end
end

matrix1_90 = rotate(matrix1, 90)
matrix1_180 = rotate(matrix1, 180)
matrix1_270 = rotate(matrix1, 270)
matrix1_360 = rotate(matrix1, 360)
matrix2_90 = rotate(matrix2, 90)
matrix2_180 = rotate(matrix2, 180)
matrix2_270 = rotate(matrix2, 270)
matrix2_360 = rotate(matrix2, 360)

p rotate(matrix1, 91)
p rotate(matrix2, -90)

p matrix1_90 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p matrix1_180 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p matrix1_270 == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]
p matrix1_360 == matrix1

p matrix2_90 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p matrix2_180 == [[8, 0, 1, 5], [2, 4, 7, 3]]
p matrix2_270 == [[2, 8], [4, 0], [7, 1], [3, 5]]
p matrix2_360 == matrix2
