=begin

examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

inputs:
positive integer

outputs:
string (length of input integer) of alternating 1s and 0s, starting with 1

algorithm:
create string '1'
until string.length == input integer
  add '0' to end of string if string.length is odd
  add '1' to end of string if string.length is even
return string  

=end

def stringy(int, start = 1)
  first = start.to_s
  second = (start == 1 ? '0' : '1')
  str = start.to_s
  until str.length == int
    str << (str.length.even? ? first : second)
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'