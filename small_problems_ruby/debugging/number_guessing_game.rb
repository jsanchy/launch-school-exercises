=begin

A friend of yours wrote a number guessing game. The first version he shows you
picks a random number between 1 and a provided maximum number and offers you a
given number of attempts to guess it.

However, when you try it, you notice that it's not working as expected. Run the
code and observe its behavior. Can you figure out what is wrong?

The recursive call to guess_number was inside the else clause when a player
doesn't guess the right number. So, every time a player guesses incorrectly, a
new number is chosen, regardless of whether they got their 3 attempts or not.
The recursive call should be at the end of the method if the desired behavior is
to keep recursively calling after the player has either guessed correctly or
used up all of their guesses. If not, then just remove the recursive call
completely.

Additionally, if the player guesses correctly, the loop should be exited so that
a new number will be chosen.

=end

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
  # Try again:
  # guess_number(max_number, max_attempts)
end

guess_number(10, 3)
