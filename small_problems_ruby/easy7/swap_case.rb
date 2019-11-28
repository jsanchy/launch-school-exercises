def swapcase(string)
  chars = string.chars.map do |char|
    if char == char.downcase
      char.upcase
    else
      char.downcase
    end
  end
  chars.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
