DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map do |char|
    DIGITS[char]
  end
  integer = 0
  digits.each do |digit|
    integer = integer * 10 + digit
  end
  integer
end

def string_to_signed_integer(string)
  digits_str = if %w(+ -).include?(string[0]) then string[1..-1]
               else                               string
               end
  integer = string_to_integer(digits_str)
  string[0] == '-' ? -integer : integer
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
