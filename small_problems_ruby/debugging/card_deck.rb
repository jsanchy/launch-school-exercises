=begin

We started working on a card game but got stuck. Check out why the code below
raises a TypeError.

Once you get the program to run and produce a sum, you might notice that the sum
is off: It's lower than it should be. Why is that?

Each of the suits keys in the deck hash refers to the same array of cards, so
when one is changed, all are changed. Thus, when a card is popped and put into
player_cards, 4 times the actual value will be removed from the deck.

This can be fixed by assigning the value of each key in the deck hash to be a
clone of the cards array, rather than the cards array itself.

=end

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# full deck total is 380
deck_sum = deck.sum(0) { |_, cards| cards.sum(0) { |card| score(card) } }
puts "Full deck total: #{deck_sum}"

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_scores = remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_scores.sum
end

player_sum = player_cards.sum(0) { |card| score(card) }

puts "Sum of remaining cards: #{sum}"
puts "Player's cards: #{player_cards}"
puts "Sum is correct? #{player_sum == deck_sum - sum}"
