MAX_BOX_WIDTH = 80
PADDING_WIDTH = 2
MAX_WIDTH = MAX_BOX_WIDTH - PADDING_WIDTH

def pad_right(string, pad_to_width)
  string + ' ' * (pad_to_width - string.length)
end

def split_after_space(string)
  if string[MAX_WIDTH - 1] == ' '
    string[0, MAX_WIDTH]
  else
    index = MAX_WIDTH - 2
    loop do
      break if string[index] == ' ' || index == 0
      index -= 1
    end
    index > 0 ? string[0, index + 1] : string[0, MAX_WIDTH]
  end
end

def wrap(string)
  if string.length < MAX_WIDTH
    [string]
  else
    line = split_after_space(string)
    [line] + wrap(string[line.length, string.length - line.length])
  end
end

def print_in_box(string)
  sections = wrap(string)

  line_width = sections.map(&:length).max
  horizontal_rule = "+#{'-' * (line_width + PADDING_WIDTH)}+"
  empty_line = "|#{' ' * (line_width + PADDING_WIDTH)}|"
  puts horizontal_rule
  puts empty_line
  sections.each { |section| puts "| #{pad_right(section, line_width)} |" }
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.' +
             'To boldly go where no one has gone before.')
