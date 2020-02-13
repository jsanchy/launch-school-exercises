class Octal
  BASE = 8

  def initialize(octal_str)
    @octal_str = octal_str
  end

  def to_decimal
    return 0 if @octal_str.match?(/[^0-#{BASE - 1}]/)
    octal_digits = @octal_str.to_i.digits
    octal_digits.each_with_index.inject(0) do |decimal, (octal_digit, idx)|
      decimal + octal_digit * BASE ** idx
    end
  end
end
