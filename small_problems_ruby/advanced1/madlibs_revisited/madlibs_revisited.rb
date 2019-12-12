WORDS_HASH = {
               '_noun_'      => %w(fox cat dog head leg),
               '_verb_'      => %w(jumps lifts bites licks),
               '_adjective_' => %w(quick lazy sleepy ugly),
               '_adverb_'    => %w(noisily lazily easily excitedly)
             }

def madlib(file_name)
  text = File.read(file_name)

  WORDS_HASH.each do |key, value|
    text.gsub!(key) { |match| value.sample }
  end
  text
end

puts madlib('text.txt')
