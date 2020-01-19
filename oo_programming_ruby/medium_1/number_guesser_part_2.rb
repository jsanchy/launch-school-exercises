class GuessingGame
  def initialize(low, high)
    @valid_nums = (low..high).to_a
    @guesses_remaining = Math.log2(@valid_nums.size).to_i + 1
    @num_prompt = "Enter a number between #{low} and #{high}: ".freeze
    @number = nil
    @player_guess = nil
  end

  def play
    pick_number
    loop do
      guess
      check
      break if game_over?
    end
    display_result
  end

  def pick_number
    @number = @valid_nums.sample
  end

  def guess
    loop do
      puts "You have #{@guesses_remaining} guesses remaining."
      print @num_prompt
      @player_guess = gets.chomp.to_i
      break if @valid_nums.include?(@player_guess)
      puts "Invalid guess. #{@num_prompt}"
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
end

game = GuessingGame.new(1, 100)
game.play
