=begin
'a', 'b'

=end


def longest_sentence(file_name)
  file = File.open(file_name)
  text = file.readlines.map(&:chomp).join(' ')
  file.close

  characters = text.chars
  sentences = []

  start_index = 0
  current_index = 0
  char_count = 1
  loop do
    break if char_count == text.size
    if %w(. ! ?).include?(characters[current_index])
      sentences << text[start_index, char_count]
      start_index = current_index + 1
      char_count = 1
    end
    current_index += 1
    char_count += 1
  end

  sentences.each(&:strip!)
  longest = sentences.max_by { |sentence| sentence.split.size }
  p "Longest sentence: #{longest}"
  p "Length: #{longest.split.size}"
end

longest_sentence('example_text_1.txt')
longest_sentence('example_text_2.txt')
