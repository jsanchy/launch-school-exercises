class Card
  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
  LOW_TO_HIGH_SUITS = %w(Diamonds Clubs Hearts Spades)

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    value_comparison = value <=> other.value
    return value_comparison unless value_comparison.zero?
    LOW_TO_HIGH_SUITS.index(suit) <=> LOW_TO_HIGH_SUITS.index(other.suit)
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

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts Card.new(2, 'Hearts')
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8

puts cards.min == Card.new(8, 'Diamonds')
puts cards.max == Card.new(8, 'Spades')
