DIGITS =
  {
    'zero'  => '0',
    'one'   => '1',
    'two'   => '2',
    'three' => '3',
    'four'  => '4',
    'five'  => '5',
    'six'   => '6',
    'seven' => '7',
    'eight' => '8',
    'nine'  => '9'
  }

def word_to_digit(str)
  words = str.split
  words_and_numerals = map_numbers_in_english_to_numerals(words)

  result = join_without_spaces_between_new_numerals(words_and_numerals, words)

  ten_digits = result.match(/\d{10}/)
  if !!ten_digits
    result.gsub!(/\d{10}/, to_phone_number(ten_digits[0]))
  end

  result
end

def map_numbers_in_english_to_numerals(words_arr)
  words_arr.map do |word|
    lower_word = word.downcase
    key = DIGITS.keys.find { |english, _| lower_word.include?(english) }
    if !!key
      lower_word.gsub(/\b#{key}\b/, DIGITS[key])
    else
      word
    end
  end
end

def join_without_spaces_between_new_numerals(new_arr, old_arr)
  result = ''
  counter = 0
  loop do
    break if counter == old_arr.size - 1

    current_unchanged = new_arr[counter] == old_arr[counter]
    next_unchanged = new_arr[counter + 1] == old_arr[counter + 1]

    result << new_arr[counter]
    result << ' ' if current_unchanged || next_unchanged

    counter += 1
  end
  result << new_arr[counter]
end

def to_phone_number(digits_str)
  "(#{digits_str[0]}#{digits_str[1]}#{digits_str[2]})"\
  " #{digits_str[3]}#{digits_str[4]}#{digits_str[5]}"\
  "-#{digits_str[6]}#{digits_str[7]}#{digits_str[8]}#{digits_str[9]}"
end

p word_to_digit('Please call me at fIve fiVe fivE Five five five one two three'\
                ' four. Thanks.') == 'Please call me at (555) 555-1234. Thanks.'
