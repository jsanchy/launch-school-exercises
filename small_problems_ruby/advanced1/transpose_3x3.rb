def transpose(matrix)
  matrix_transpose = [[], [], []]

  3.times do |col|
    3.times do |row|
      matrix_transpose[col] << matrix[row][col]
    end
  end

  matrix_transpose
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Further Exploration

def transpose!(matrix)
  2.times do |row|
    col = row + 1
    while col <= 2
      matrix[row][col], matrix[col][row] = matrix[col][row], matrix[row][col]
      col += 1
    end
  end
end

transpose!(matrix)
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
