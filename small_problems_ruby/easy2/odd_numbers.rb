(1..99).each { |num| puts num if num.odd? }

# other ways this can be done

# puts (1..99).select { |num| num.odd? }

# 1.upto(99) { |num| puts num if num.odd? }
