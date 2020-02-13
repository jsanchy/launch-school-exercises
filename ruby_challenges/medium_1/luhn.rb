class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    @number.digits
          .map
          .with_index { |digit, idx| idx.odd? ? digit_double(digit) : digit }
          .reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(num)
    num = num * 10
    luhn = new(num)

    return num if luhn.valid?

    sum = luhn.checksum
    check_digit = sum.ceil(-1) - sum

    num + check_digit
  end

  private

  def digit_double(digit)
    double = 2 * digit
    double > 9 ? double - 9 : double
  end
end
