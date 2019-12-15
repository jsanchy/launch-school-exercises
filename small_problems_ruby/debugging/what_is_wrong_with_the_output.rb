=begin

Josh wants to print an array of numeric strings in reverse numerical order.
However, the output is wrong. Without removing any code, help Josh get the
expected output.

The operator precedence of the do...end block was too low, so that the block was
being passed to p instead of arr.sort. Thus, sort was being called without a
block, and using string comparison instead of integer comparison to order the
elements.

To make sure the block is passed to arr.sort, either parentheses can be used

  p (arr.sort do |x, y|
      y.to_i <=> x.to_i
    end)

or curly braces, which have higher operator precedence

p arr.sort { |x, y| y.to_i <=> x.to_i }

=end

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Expected output: ["11", "10", "9", "8", "7"]
# Actual output: ["10", "11", "7", "8", "9"]
