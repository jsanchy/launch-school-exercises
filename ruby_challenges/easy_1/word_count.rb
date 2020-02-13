class Phrase
  WORD_REGEX = /\b\w+s'|\b[\w']+\b/

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words_arr = @phrase.downcase.scan(WORD_REGEX)
    words_arr.uniq.each_with_object(Hash.new(0)) do |word, counts_hsh|
      counts_hsh[word] = words_arr.count(word)
    end
  end
end
