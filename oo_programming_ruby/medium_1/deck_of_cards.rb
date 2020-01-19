class Card
  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    value <=> other.value
  end

  def ==(other)
    value == other.value
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @cards = []
    reset
  end

  def draw
    reset if @cards.empty?
    @cards.shuffle!.pop
  end

  private

  def reset
    SUITS.each do |suit|
      RANKS.each { |rank| @cards << Card.new(rank, suit) }
    end
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.
