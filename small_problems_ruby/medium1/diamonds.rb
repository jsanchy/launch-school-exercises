def diamond(n)
  first_half = []

  space_count = n / 2
  star_count = 1
  (space_count + 1).times do
    line = ' ' * space_count + '*'
    line << ' ' * (star_count - 2) + '*' if star_count > 2
    first_half << line
    space_count -= 1
    star_count += 2
  end

  last_half = first_half[0..-2].reverse

  puts first_half
  puts last_half
end

diamond(1)
diamond(3)
diamond(9)
