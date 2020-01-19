class GuessingGame
  NUMBER_OF_GUESSES = 7
  START_NUM = 1
  END_NUM = 100
  VALID_NUMS = (START_NUM..END_NUM).to_a
  NUM_PROMPT = "Enter a number between #{START_NUM} and #{END_NUM}: ".freeze

  def initialize
    @number = nil
    @guesses_remaining = nil
    @player_guess = nil
  end

  def pick_number
    @number = VALID_NUMS.sample
  end

  def reset_guess_count
    @guesses_remaining = NUMBER_OF_GUESSES
  end

  def guess
    loop do
      puts "You have #{@guesses_remaining} guesses remaining."
      print NUM_PROMPT
      @player_guess = gets.chomp.to_i
      break if VALID_NUMS.include?(@player_guess)
      puts "Invalid guess. #{NUM_PROMPT}"
    end

    @guesses_remaining -= 1
  end

  def check
    if guess_correct?
      puts "That's the number!"
    elsif @player_guess < @number
      puts 'Your guess is too low.'
    else
      puts 'Your guess is too high.'
    end
    puts ''
  end

  def guess_correct?
    @player_guess == @number
  end

  def game_over?
    guess_correct? || @guesses_remaining.zero?
  end

  def display_result
    if guess_correct?
      puts 'You won!'
    else
      puts 'You have no more guesses. You lost!'
    end
  end

  def play
    pick_number
    reset_guess_count
    loop do
      guess
      check
      break if game_over?
    end
    display_result
  end
end

game = GuessingGame.new
game.play
