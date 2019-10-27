NUMBER_OF_NUMBERS = 6
SUFFIXES =
  {
    1 => 'st',
    2 => 'nd',
    3 => 'rd'
  }.freeze

def number_suffix(integer)
  last_digit = integer % 10
  suffix =
    if [11, 12, 13].include?(integer)
      'th'
    elsif SUFFIXES.key?(last_digit)
      SUFFIXES[last_digit]
    else
      'th'
    end
  suffix
end

def prompt_number(num)
  num_str = num.to_s + number_suffix(num)
  puts "==> Enter the #{num_str} number:"
end

numbers = []

1.upto(NUMBER_OF_NUMBERS) do |num|
  prompt_number(num)
  input = gets.chomp.to_i
  numbers.push(input)
end

last = numbers.pop

included_or_not =
  if numbers.include?(last)
    'appears'
  else
    'does not appear'
  end

puts "The number #{last} #{included_or_not} in #{numbers}."
