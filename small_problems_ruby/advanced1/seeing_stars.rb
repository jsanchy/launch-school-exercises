def star(n)
  lines = []

  spaces_between_stars = (n - 3) / 2
  loop do
    lines << ('*' +
             ' ' * spaces_between_stars +
             '*' +
             ' ' * spaces_between_stars +
             '*').center(n)

    spaces_between_stars -= 1
    break if spaces_between_stars < 0
  end

  puts lines
  puts '*' * n
  puts lines.reverse
end

puts '8-point stars'
star(7)
=begin
*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
=end

star(9)
=begin
*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *
=end

# Further Exploration

def circle(n)
  lines = []
  half_grid = n / 2
  top_stars = half_grid.even? ? half_grid - 1 : half_grid

  spaces_between_stars = top_stars
  loop do
    lines << ('*' +
             ' ' * spaces_between_stars +
             '*').center(n)

    spaces_between_stars += 2
    break if spaces_between_stars == n - 2
  end

  top_bottom = ('*' * top_stars).center(n)

  puts top_bottom
  puts lines
  (top_stars).times do
    puts ('*' + ' ' * (n - 2) + '*').center(n)
  end
  puts lines.reverse
  puts top_bottom
end

puts 'circles'
circle(7)
circle(9)
circle(11)
circle(13)
circle(15)
circle(17)

def sine(n)
  lines = []
  half_grid = n / 2
  top_stars = half_grid.even? ? half_grid - 1 : half_grid

  spaces_between_stars = top_stars
  loop do
    lines << ('*' +
             ' ' * spaces_between_stars +
             '*').center(n)

    spaces_between_stars += 2
    break if spaces_between_stars >= n - 2
  end

  top_bottom = ('*' * top_stars).center(n)

  puts top_bottom
  puts lines
  (top_stars - 1).times do
    puts ('*' + ' ' * (n - 2) + '*').center(n)
  end
  lines.reverse.each do |line|
    puts ' ' * n + line
  end
  puts ' ' * n + top_bottom
end

puts 'sines'
sine(14)
sine(18)
sine(22)
sine(26)
sine(30)
sine(34)
