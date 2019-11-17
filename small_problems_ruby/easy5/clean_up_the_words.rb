ALPHABET = ('a'..'z').to_a

def cleanup(input_str)
  clean_arr = input_str.chars.map do |char|
    ALPHABET.include?(char.downcase) ? char : ' '
  end

  index = 1
  loop do
    if clean_arr[index - 1] + clean_arr[index] == ' ' + ' '
      clean_arr[index - 1] = ''
    end
    index += 1
    break if index == clean_arr.length
  end
  
  clean_arr.join
end

puts cleanup("---what's my +*& line?") == ' what s my line '
