class Integer
  ONES_DIGITS_HASH = {
    0 => '',
    1 => 'I',
    2 => 'II',
    3 => 'III',
    4 => 'IV',
    5 => 'V',
    6 => 'VI',
    7 => 'VII',
    8 => 'VIII',
    9 => 'IX'
  }

  TENS_DIGITS_HASH = {
    0 => '',
    1 => 'X',
    2 => 'XX',
    3 => 'XXX',
    4 => 'XL',
    5 => 'L',
    6 => 'LX',
    7 => 'LXX',
    8 => 'LXXX',
    9 => 'XC'
  }

  HUNDREDS_DIGITS_HASH = {
    0 => '',
    1 => 'C',
    2 => 'CC',
    3 => 'CCC',
    4 => 'CD',
    5 => 'D',
    6 => 'DC',
    7 => 'DCC',
    8 => 'DCCC',
    9 => 'CM'
  }

  THOUSANDS_DIGITS_HASH = {
    1 => 'M',
    2 => 'MM',
    3 => 'MMM'
  }

  DIGITS_ARR = [
    ONES_DIGITS_HASH,
    TENS_DIGITS_HASH,
    HUNDREDS_DIGITS_HASH,
    THOUSANDS_DIGITS_HASH
  ]

  def to_roman
    err_msg = 'argument must be less than or equal to 3000.'
    raise(ArgumentError, err_msg) if self > 3000

    self.digits.each_with_index.inject('') do |roman, (digit, idx)|
      DIGITS_ARR[idx][digit] + roman
    end
  end
end
