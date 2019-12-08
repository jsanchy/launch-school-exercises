BLOCKS = %w(bo xk dq cp na gt re fs jw hu vi ly zm).each(&:freeze).freeze

def block_word?(word)
  used_blocks = []
  word.downcase.chars.none? do |char|
    block = block(char)
    already_used = used_blocks.include?(block)
    used_blocks << block if !already_used
    already_used
  end
end

def block(char)
  BLOCKS.each do |block|
    return block if block.include?(char)
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
