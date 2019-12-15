=begin

The valid_series? method checks whether a series of numbers is valid. For the
purposes of this exercise, a valid series of numbers must contain exactly three
odd numbers. Additionally, the numbers in the series must sum to 47.

Unfortunately, our last test case is not returning the expected result. Why is
that?

The error is in the last line with the ternary operator. The code is supposed to
check if `odd_count` is equal to 3, and if so, return true, otherwise, return
false. However, instead of comparing with `==`, the line assigns `odd_count` to
the result of the ternary operation

  3 ? true: false

3 is truthy, so the ternary operator will always return `true`, and then
`odd_count` will be assigned to that value. So, to fix this behavior, change the
line to replace `=` with `==`, as in:

  odd_count == 3 ? true : false

Furthermore, whenever a ternary operator's truthy consequent is the value `true`
and the falsey consequent is the value `false`, the ternary operator is
unecessary and the return value of the conditional can be used, instead, as in:

  odd_count == 3

=end

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
