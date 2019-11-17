# Given the following method, the returned string will be a different object
# than the one passed in as an argument. This is because the method first
# calls the split method. This creates a new array with the words (a word being
# any sequence of characters without a space) of the input string as its
# elements. The split method does not mutate the original string. The rest of
# the chained methods only operate on this new array and the original string
# remains unchanged. Specifically, the each method is then called on this new
# array. Each of the array's elements are reversed, in place, meaning that the
# substrings that were created to populate the array are themselves changed.
# Finally, a new string is formed by calling the join method with " " as an
# argument. This newly created string is returned by the method.

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

def same?(a, b)
  if a.object_id == b.object_id then 'YES'
  else 'NO'
  end
end

input = 'hello world'
output = spin_me(input)
puts "input: #{input}"
puts "output: #{output}" # "olleh dlrow"
puts "Are the input and output the same object? #{same?(input, output)}"
