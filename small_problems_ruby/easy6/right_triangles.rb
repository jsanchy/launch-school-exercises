def triangle(n, corner = 'bottom-right')
  lines = []
  counter = 1
  loop do
    lines << ' ' * (n - counter) + '*' * counter
    break if counter == n
    counter += 1
  end

  vertical, horizontal = corner.split('-')
  lines.reverse! if vertical == 'top'
  lines.map!(&:reverse) if horizontal == 'left'
  puts lines
end

triangle(5)
triangle(5, 'top-right')
triangle(5, 'top-left')
triangle(5, 'bottom-left')

triangle(9)
