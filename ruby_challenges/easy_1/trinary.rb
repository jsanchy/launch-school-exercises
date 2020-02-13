class Trinary
  BASE = 3

  def initialize(trinary_str)
    @trinary_str = trinary_str
  end

  def to_decimal
    return 0 if @trinary_str.match?(/[^0-#{BASE - 1}]/)
    trinary_digits = @trinary_str.to_i.digits
    trinary_digits.each_with_index.inject(0) do |decimal, (trinary_digit, idx)|
      decimal + trinary_digit * BASE ** idx
    end
  end
end
