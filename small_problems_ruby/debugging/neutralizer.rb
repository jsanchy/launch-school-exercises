=begin

We wrote a neutralize method that removes negative words from sentences.
However, it fails to remove all of them. What exactly happens?

The problem is that the code iterates over an array as it is deleting elements.
When a negative word gets deleted, then the next iterating will skip an element
in the array because the array is now shorter.

=end

def neutralize(sentence)
  words = sentence.split(' ')
  puts "words: #{words}"
  words.reject! do |word|
    puts "word: #{word}"
    negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
