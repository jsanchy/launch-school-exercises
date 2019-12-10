MATCHING_OPEN = {
                  ')'  => '(',
                  ']'  => '[',
                  '}'  => '{',
                  '\'' => '\'',
                  '"'  => '"'
                }

def balanced?(str)
  char_stack = []

  str.each_char do |char|
    case
    when %W(\( [ {).include?(char)
      char_stack.push(String.new(char))
    when %W(\) ] } ' ").include?(char)
      if char_stack.last == MATCHING_OPEN[char]
        char_stack.pop
      else
        char_stack.push(String.new(char))
      end
    end
  end

  char_stack.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ({[is]} up)') == true
p balanced?('What ({[is}] up)') == false
p balanced?('\'What ({[is]} up)\'""') == true
p balanced?('\'What ({\'[is]\'} "up")\'') == true
p balanced?('\'What ({\'["is]"\'} "up")\'') == false
