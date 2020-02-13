class SecretHandshake
  CODE_RANGE = (0..31)
  NON_BINARY_REGEX = /[^01]/
  # This array is used in combination with Ruby's Bit Reference for integers,
  # Integer#[], where int[0] is the least significant bit.
  COMMANDS_ARR = ['wink', 'double blink', 'close your eyes', 'jump']

  def initialize(raw_input)
    @raw_input = raw_input
    @code = map_input_to_valid_integer
  end

  def commands
    commands_arr = []

    4.times do |bit_idx|
      commands_arr << COMMANDS_ARR[bit_idx] if code[bit_idx] == 1 # Integer#[]
    end

    return commands_arr.reverse unless code[4].zero?
    commands_arr
  end

  private

  attr_reader :raw_input, :code

  def map_input_to_valid_integer
    return 0 unless valid_code?
    return raw_input if raw_input.is_a?(Integer)
    raw_input.to_i(2)
  end

  def valid_code?
    (raw_input.is_a?(Integer) && valid_integer?(raw_input)) ||
    (raw_input.is_a?(String) && valid_binary_string?)
  end

  def valid_binary_string?
    !(raw_input =~ NON_BINARY_REGEX) && valid_integer?(raw_input.to_i(2))
  end

  def valid_integer?(num)
    CODE_RANGE.include?(num)
  end
end
