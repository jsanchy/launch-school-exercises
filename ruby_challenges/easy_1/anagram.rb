class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.select do |anagram|
      anagram = anagram.downcase
      next false if anagram == @word || anagram.size != @word.size
      @word.each_char.all? { |char| @word.count(char) == anagram.count(char) }
    end
  end
end
