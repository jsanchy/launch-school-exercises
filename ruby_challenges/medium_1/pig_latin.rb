class PigLatin
  VOWELS = /[aeiou]/
  CONSONANTS_MINUS_Y = /[bcdfghjklmnpqrstvwx]/

  def self.translate(words_str)
    words_str.split.map do |word|
      next word + 'ay' if word.downcase.start_with?(VOWELS) ||
                          special_first?(word.downcase)

      vowel_idx = word.index(VOWELS)
      vowel_idx += 1 if special_u?(word, vowel_idx)
      word[vowel_idx..-1] + word[0...vowel_idx] + 'ay'
    end.join(' ')
  end

  def self.special_u?(word, vowel_idx)
    (word[vowel_idx] == 'u' && word[vowel_idx - 1] == 'q')
  end

  def self.special_first?(word)
    word.start_with?(/[xy]/) && word[1] =~ CONSONANTS_MINUS_Y
  end
end
