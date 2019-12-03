def sequence(int)
  int > 0 ? (1..int).to_a : (int..1).to_a.reverse
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(0) == [1, 0]
puts sequence(-1) == [1, 0, -1]
puts sequence(-3) == [1, 0, -1, -2, -3]
puts sequence(-5) == [1, 0, -1, -2, -3, -4, -5]
